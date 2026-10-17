#!/usr/bin/env python3
"""Verifikasi batch NUM-A (NUM_A_L.json & NUM_A_R.json).

Untuk setiap soal:
  1. Deret/hitungan dibangkitkan ulang dari aturan yang dimaksud, lalu dicocokkan
     dengan suku yang tampil di soal dan teks opsi kunci.
  2. Pemindai pola alternatif: deret lengkap versi kunci dan versi tiap pengecoh diuji
     terhadap sekumpulan model umum (aritmetika, geometri, polinomial tingkat 2-4,
     larik berselang periode 2/3, rekurensi linear orde 1-3, Fibonacci+konstanta,
     selisih geometri, perkalian dua suku + c, operasi bergantian). Pengecoh yang
     cocok dengan model mana pun (dengan data berlebih) ditandai sebagai AMBIGU.
  3. Pemeriksaan format: 5 opsi unik, tepat 1 kunci, poin 1, sebaran kunci <= 25%,
     panjang pembahasan 900-2.500 karakter, kalimat 'Jadi, jawaban ...' sesuai kunci.
Jalankan: python3 verify_num_a.py
"""
import json, os, sys, math
from fractions import Fraction as F
from itertools import product
from collections import Counter

HERE = os.path.dirname(os.path.abspath(__file__))
ABC = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

def fmt(x):
    x = F(x)
    neg = x < 0
    x = abs(x)
    if x.denominator == 1:
        s = f"{x.numerator:,}".replace(",", ".")
    else:
        s = f"{float(x):,.1f}".replace(",", "X").replace(".", ",").replace("X", ".")
    return ("−" if neg else "") + s

def L(n):  # nomor -> huruf, melingkar
    return ABC[(n - 1) % 26]

def N(c):
    return ABC.index(c) + 1

# ---------------------------------------------------------------- model umum
def poly_fit(seq, d):
    """Fit polinomial derajat d pada indeks 0..; benar jika semua cocok & data berlebih."""
    if len(seq) < d + 2:
        return False
    diffs = list(seq)
    for _ in range(d):
        diffs = [b - a for a, b in zip(diffs, diffs[1:])]
    return len(set(diffs)) == 1

def geo_fit(seq):
    if len(seq) < 3 or any(v == 0 for v in seq[:-1]):
        return False
    r = {F(b) / F(a) for a, b in zip(seq, seq[1:])}
    return len(r) == 1

def solve(A, b):
    """Gauss-Jordan pecahan; None jika singular."""
    n = len(A)
    M = [list(map(F, row)) + [F(v)] for row, v in zip(A, b)]
    for c in range(n):
        p = next((r for r in range(c, n) if M[r][c] != 0), None)
        if p is None:
            return None
        M[c], M[p] = M[p], M[c]
        for r in range(n):
            if r != c and M[r][c] != 0:
                f = M[r][c] / M[c][c]
                M[r] = [x - f * y for x, y in zip(M[r], M[c])]
    return [M[i][n] / M[i][i] for i in range(n)]

def linrec_fit(seq, order, const):
    """s[i] = sum p_j s[i-j] (+ c). Harus berlebih minimal 1 persamaan."""
    k = order + (1 if const else 0)
    rows = []
    for i in range(order, len(seq)):
        row = [seq[i - j] for j in range(1, order + 1)] + ([1] if const else [])
        rows.append((row, seq[i]))
    if len(rows) < k + 1:
        return False
    sol = None
    for start in range(len(rows) - k + 1):
        sub = rows[start:start + k]
        sol = solve([r for r, _ in sub], [v for _, v in sub])
        if sol is not None:
            break
    if sol is None:
        return False
    return all(sum(F(a) * b for a, b in zip(r, sol)) == v for r, v in rows)

def prod_fit(seq):
    """s[i] = s[i-1]*s[i-2] + c"""
    if len(seq) < 4:
        return False
    cs = {seq[i] - seq[i - 1] * seq[i - 2] for i in range(2, len(seq))}
    return len(cs) == 1

def diffgeo_fit(seq):
    d = [b - a for a, b in zip(seq, seq[1:])]
    return len(d) >= 3 and geo_fit(d)

def alt_affine_fit(seq):
    """Dua peta affine bergantian: langkah ganjil x->a x + b, langkah genap x->c x + d."""
    odd = [(seq[i], seq[i + 1]) for i in range(0, len(seq) - 1, 2)]
    even = [(seq[i], seq[i + 1]) for i in range(1, len(seq) - 1, 2)]
    def aff(pairs):
        if len(pairs) < 3:
            return None
        for i in range(len(pairs)):
            for j in range(i + 1, len(pairs)):
                (x1, y1), (x2, y2) = pairs[i], pairs[j]
                if x1 != x2:
                    a = F(y2 - y1, 1) / (x2 - x1); b = y1 - a * x1
                    return all(a * x + b == y for x, y in pairs)
        return None
    return bool(aff(odd)) and bool(aff(even))

def interleave_fit(seq, p, known=None):
    """Larik berselang periode p; tiap larik harus aritmetika/kuadrat/geometri.
    Jika known (mask suku yang tampil) diberikan, tiap larik wajib berlebih data
    terhadap suku yang tampil (banyak suku tampil > banyak parameter model)."""
    known = known or [True] * len(seq)
    subs = [(seq[i::p], known[i::p]) for i in range(p)]
    if any(len(s) < 3 for s, _ in subs):
        return False
    for s, m in subs:
        nk = sum(m)
        ok = (poly_fit(s, 1) and nk > 2) or (poly_fit(s, 2) and nk > 3) or (geo_fit(s) and nk > 2)
        if not ok:
            return False
    return True

# (fungsi uji, banyak parameter bebas model)
MODELS = {
    "aritmetika": (lambda s, m: poly_fit(s, 1), 2),
    "geometri": (lambda s, m: geo_fit(s), 2),
    "polinomial-2": (lambda s, m: poly_fit(s, 2), 3),
    "polinomial-3": (lambda s, m: poly_fit(s, 3), 4),
    "polinomial-4": (lambda s, m: poly_fit(s, 4), 5),
    "larik-2": (lambda s, m: interleave_fit(s, 2, m), 0),
    "larik-3": (lambda s, m: interleave_fit(s, 3, m), 0),
    "rek-orde1+c": (lambda s, m: linrec_fit(s, 1, True), 3),
    "rek-orde2": (lambda s, m: linrec_fit(s, 2, False), 4),
    "rek-orde2+c": (lambda s, m: linrec_fit(s, 2, True), 5),
    "rek-orde3": (lambda s, m: linrec_fit(s, 3, False), 6),
    "kali-dua-suku+c": (lambda s, m: prod_fit(s), 3),
    "fibonacci+c": (lambda s, m: len(s) > 3 and len({s[i] - s[i-1] - s[i-2] for i in range(2, len(s))}) == 1, 3),
    "tribonacci": (lambda s, m: len(s) > 4 and all(s[i] == s[i-1] + s[i-2] + s[i-3] for i in range(3, len(s))), 3),
    "selisih-geometri": (lambda s, m: diffgeo_fit(s), 3),
    "operasi-bergantian": (lambda s, m: alt_affine_fit(s), 5),
}

def fitting_models(seq, known=None):
    """Model yang cocok DAN berlebih data terhadap suku yang tampil (known)."""
    seq = [F(x) for x in seq]
    known = known or [True] * len(seq)
    nk = sum(known)
    return [name for name, (f, k) in MODELS.items() if f(seq, known) and nk > k]

# ---------------------------------------------------------------- definisi soal
def gen(start, n, step):
    s = list(start)
    while len(s) < n:
        s.append(step(s))
    return s

def seq_q(shown, full, asked, fmt_ans, parse_opt, scan=True):
    return dict(kind="seq", shown=shown, full=full, asked=asked, fmt_ans=fmt_ans, parse=parse_opt, scan=scan)

def pair_num(t):
    a, b = t.split(" dan ")
    return [F(a.replace(".", "").replace(",", ".").replace("−", "-")),
            F(b.replace(".", "").replace(",", ".").replace("−", "-"))]

def one_num(t):
    t = t.replace(" m", "")
    return [F(t.replace(".", "").replace(",", ".").replace("−", "-"))]

def calc_q(value_text, check=None):
    return dict(kind="calc", answer=value_text, check=check)

# ---- SET L
def L_defs():
    d = []
    # L1 NUM-09
    b = F(103 - 47, 7); a = 47 - 3 * b
    u = [a + i * b for i in range(16)]
    assert u[3] == 47 and u[10] == 103
    d.append(calc_q(fmt(sum(u[:15]))))
    # L2 NUM-09
    n = next(n for n in range(1, 100) if 6 * n + 1 > 257 - 7 * n)
    assert all(7 + 6 * (k - 1) == 6 * k + 1 for k in range(1, 5)) and [250, 243, 236, 229] == [257 - 7 * k for k in range(1, 5)]
    d.append(calc_q(str(n)))
    # L3 NUM-10
    r = F(3, 2); a = F(144) / r ** 2
    assert a * r ** 5 == 486
    d.append(calc_q(fmt(sum(a * r ** i for i in range(4)))))
    # L4 NUM-10
    h = F(18); r = F(2, 3)
    total = h + 2 * (h * r) / (1 - r)
    # cek numerik dengan simulasi 200 pantulan
    sim, t = h, h
    for _ in range(200):
        t *= r; sim += 2 * t
    assert abs(float(sim - total)) < 1e-9
    d.append(calc_q(fmt(total) + " m"))
    # L5 NUM-11  (tingkat tiga tetap 3)
    s = [3]; lv1 = 2; lv2 = 5
    for _ in range(6):
        s.append(s[-1] + lv1); lv1 += lv2; lv2 += 3
    d.append(seq_q([3, 5, 12, 27, 53, 93, None], s[:7], [6], None, one_num))
    # L6 NUM-11 selisih kubik
    s = [2]
    for k in range(1, 7):
        s.append(s[-1] + k ** 3)
    d.append(seq_q([2, 3, 11, 38, 102, 227, None], s, [6], None, one_num))
    # L7 NUM-11 suku ke-20
    s = [2 * n * n - n + 3 for n in range(1, 21)]
    assert s[:6] == [4, 9, 18, 31, 48, 69]
    assert poly_fit(list(map(F, s[:6])), 2)
    d.append(calc_q(fmt(s[19])))
    # L8 NUM-12
    odd = [2]; dd = 3
    for _ in range(5):
        odd.append(odd[-1] + dd); dd += 3
    ev = [50]; dd = -2
    for _ in range(4):
        ev.append(ev[-1] + dd); dd -= 2
    s = [x for pair in zip(odd, ev + [None]) for x in pair if x is not None][:11]
    d.append(seq_q([2, 50, 5, 48, 11, 44, 20, 38, 32, None, None], s, [9, 10], None, pair_num))
    # L9 NUM-12  x3 lalu -1,-2,-3,...
    s = [2]; k = 1
    while len(s) < 10:
        s.append(s[-1] * 3)
        if len(s) < 10:
            s.append(s[-1] - k); k += 1
    d.append(seq_q([2, 6, 5, 15, 13, 39, 36, 108, None, None], s, [8, 9], None, pair_num))
    # L10 NUM-12 periode 3
    A = [5 + 4 * i for i in range(4)]; B = [40 - 6 * i for i in range(4)]; C = [2 * 3 ** i for i in range(4)]
    s = [x for t in zip(A, B, C) for x in t][:12]
    d.append(seq_q([5, 40, 2, 9, 34, 6, 13, 28, 18, 17, None, None], s, [10, 11], None, pair_num))
    # L11 NUM-13 tribonacci
    s = gen([1, 2, 4], 8, lambda s: s[-1] + s[-2] + s[-3])
    d.append(seq_q([1, 2, 4, None, 13, 24, None, 81], s, [3, 6], None, pair_num))
    # L12 NUM-13  x k + k
    s = [1]
    for k in range(1, 6):
        s.append(s[-1] * k + k)
    d.append(seq_q([1, 2, 6, 21, 88, None], s, [5], None, one_num))
    # L13 NUM-13  a+b-2
    s = gen([5, 8], 8, lambda s: s[-1] + s[-2] - 2)
    d.append(seq_q([5, 8, 11, 17, 26, None, 65, None], s, [5, 7], None, pair_num))
    # L14 NUM-14 huruf, lompatan 1,3,5,7,9
    s = [8]
    for j in (1, 3, 5, 7, 9):
        s.append(s[-1] + j)
    d.append(dict(kind="letters", shown="H, I, L, Q, X", tracks=[s], answer=L(s[-1])))
    # L15 NUM-14 dua larik huruf
    o = [2]; e = [26]
    for j in (3, 4, 5, 6):
        o.append(o[-1] + j)
    for j in (2, 3, 4, 5):
        e.append(e[-1] - j)
    shown = ", ".join(L(x) for pair in zip(o[:4], e[:4]) for x in pair)
    d.append(dict(kind="letters", shown=shown, tracks=[o, e], answer=f"{L(o[4])} dan {L(e[4])}"))
    # L16 NUM-14 campuran
    nums = [k * (k + 1) for k in range(1, 7)]
    let = [2]
    for j in (2, 3, 4, 5, 6):
        let.append(let[-1] + j)
    shown = ", ".join(f"{a}{L(b)}" for a, b in zip(nums[:5], let[:5]))
    d.append(dict(kind="letters", shown=shown, tracks=[let], numtracks=[nums], answer=f"{nums[5]}{L(let[5])}"))
    # L17 NUM-28
    val = F(498, 1000) * 2016 + F(199, 10) * 51
    opts = [1983, 2014, 2019, 2024, 2028]
    best = min(opts, key=lambda o: abs(o - val))
    gap = sorted(abs(o - val) for o in opts)
    assert gap[1] - gap[0] > 3, "opsi terdekat tidak cukup terpisah"
    d.append(calc_q(fmt(best)))
    # L18 NUM-28
    d.append(calc_q(fmt(1003 ** 2 - 997 ** 2 + 49 * 51 - 50 ** 2)))
    return d

# ---- SET R
def R_defs():
    d = []
    # R1
    S = lambda n: 3 * n * n + 5 * n
    d.append(calc_q(fmt(S(12) - S(11))))
    # R2
    cnt = sum(1 for x in range(100, 1000) if x % 6 == 0 and x % 9 != 0)
    d.append(calc_q(fmt(cnt)))
    # R3 geometri r=3/4
    s = [F(1024) * F(3, 4) ** i for i in range(6)]
    d.append(seq_q([1024, None, 576, 432, None, 243], s, [1, 4], None, pair_num))
    # R4 bakteri
    k = next(k for k in range(50) if 40 * 3 ** k > 25000)
    minutes = 8 * 60 + 20 * k
    d.append(calc_q(f"{minutes // 60:02d}.{minutes % 60:02d}"))
    # R5 bertingkat turun
    s = [100]; l1 = -3; l2 = -3
    for _ in range(6):
        s.append(s[-1] + l1); l1 += l2; l2 -= 2
    d.append(seq_q([100, 97, 91, 80, 62, 35, None], s[:7], [6], None, one_num))
    # R6 selisih kuadrat
    s = [2]
    for k in range(2, 8):
        s.append(s[-1] + k * k)
    d.append(seq_q([2, 6, 15, None, 56, 92, None], s, [3, 6], None, pair_num))
    # R7 suku pertama > 1000
    U = lambda n: 7 + 3 * n * (n - 1) // 2
    assert [U(n) for n in range(1, 7)] == [7, 10, 16, 25, 37, 52]
    n = next(n for n in range(1, 200) if U(n) > 1000)
    d.append(calc_q(str(n)))
    # R8 larik ganjil x(-2), genap -3
    o = [3 * (-2) ** i for i in range(5)]; e = [20 - 3 * i for i in range(5)]
    s = [x for t in zip(o, e) for x in t][:10]
    d.append(seq_q([3, 20, -6, 17, 12, 14, -24, 11, None, None], s, [8, 9], None, pair_num))
    # R9 +2,x2,+3,x2,...
    s = [1]; k = 2
    while len(s) < 9:
        s.append(s[-1] + k); k += 1
        if len(s) < 9:
            s.append(s[-1] * 2)
    d.append(seq_q([1, 3, 6, 9, 18, 22, 44, None, None], s, [7, 8], None, pair_num))
    # R10
    o = [1]
    for j in (1, 2, 3, 4, 5):
        o.append(o[-1] + j)
    e = [F(81) / 3 ** i for i in range(5)]
    s = [x for t in zip(o, e + [None]) for x in t if x is not None][:11]
    d.append(seq_q([1, 81, 2, 27, 4, 9, 7, 3, 11, None, None], s, [9, 10], None, pair_num))
    # R11 2a+b
    s = gen([1, 2], 6, lambda s: 2 * s[-1] + s[-2])
    d.append(seq_q([1, 2, 5, 12, 29, None], s, [5], None, one_num))
    # R12 ab-1
    s = gen([2, 3], 6, lambda s: s[-1] * s[-2] - 1)
    d.append(seq_q([2, 3, 5, 14, 69, None], s, [5], None, one_num))
    # R13 Fibonacci, U5=23, U8=97
    sols = [(x, y) for x in range(-200, 201) for y in range(-200, 201) if 2 * x + 3 * y == 23 and 8 * x + 13 * y == 97]
    assert len(sols) == 1
    x, y = sols[0]
    s = gen([x, y], 10, lambda s: s[-1] + s[-2])
    assert s[4] == 23 and s[7] == 97 and sum(s[:8]) == s[9] - s[1]
    d.append(calc_q(fmt(sum(s[:8]))))
    # R14 huruf lompatan 1,2,4,8,16
    s = [2]
    for j in (1, 2, 4, 8, 16):
        s.append(s[-1] + j)
    d.append(dict(kind="letters", shown="B, C, E, I, Q", tracks=[s], answer=L(s[-1])))
    # R15 kelompok tiga huruf
    groups = ["".join(L(st + k * stp) for st, stp in ((1, 1), (3, 2), (5, 3))) for k in range(5)]
    d.append(dict(kind="letters", shown=", ".join(groups[:4]), tracks=[[1 + k for k in range(5)], [3 + 2 * k for k in range(5)], [5 + 3 * k for k in range(5)]], answer=groups[4]))
    # R16 campuran 3, C, 7, G, 15, O, 31, E, 63
    nums = gen([3], 5, lambda s: 2 * s[-1] + 1)
    shown = ", ".join(x for k in range(4) for x in ((str(nums[k]), L(nums[k])) if k < 3 else (str(nums[k]),)))
    d.append(dict(kind="letters", shown=shown, tracks=[nums[:4]], numtracks=[nums], answer=f"{L(nums[3])} dan {nums[4]}"))
    # R17
    d.append(calc_q(fmt(4998 * 5002 - 4997 * 5003)))
    # R18
    val = F(304, 100) * F(1986, 10) / F(247, 1000)
    opts = [2400, 2420, 2440, 2460, 2480]
    best = min(opts, key=lambda o: abs(o - val))
    gap = sorted(abs(o - val) for o in opts)
    assert gap[1] - gap[0] > 8
    d.append(calc_q(fmt(best)))
    return d

# ---------------------------------------------------------------- pemeriksaan
def shown_text(shown):
    return ", ".join("..." if v is None else fmt(v) for v in shown)

def check_file(fname, defs, expected_codes):
    data = json.load(open(os.path.join(HERE, fname)))
    errs, warns = [], []
    assert len(data) == len(defs) == 18, (len(data), len(defs))
    keys = []
    for i, (q, df) in enumerate(zip(data, defs), 1):
        tag = f"{fname}#{i} {q['sub_material_code']}"
        opts = q["options"]
        texts = [o["text"] for o in opts]
        if len(opts) != 5: errs.append(f"{tag}: opsi != 5")
        if len(set(texts)) != 5: errs.append(f"{tag}: opsi duplikat")
        if any(o["point"] != 1 for o in opts): errs.append(f"{tag}: poin bukan 1")
        corr = [j for j, o in enumerate(opts) if o["is_correct"]]
        if len(corr) != 1: errs.append(f"{tag}: kunci != 1"); continue
        k = corr[0]; keys.append("ABCDE"[k])
        key_text = texts[k]
        ex = q["explanation"]
        if not (900 <= len(ex) <= 2500): errs.append(f"{tag}: panjang pembahasan {len(ex)}")
        if f"Jadi, jawaban yang tepat adalah ({'ABCDE'[k]}) {key_text}." not in ex:
            errs.append(f"{tag}: kalimat 'Jadi' tidak cocok dengan kunci")
        for sec in ("DIKETAHUI:", "DITANYAKAN:", "JAWAB:", "Mengapa opsi lain kurang tepat:"):
            if sec not in ex: errs.append(f"{tag}: bagian {sec} hilang")
        for j in range(5):
            if j != k and f"- ({'ABCDE'[j]}) {texts[j]}:" not in ex:
                errs.append(f"{tag}: alasan opsi {'ABCDE'[j]} hilang")
        if q["difficulty"] != "sulit" or q["image"] != "":
            errs.append(f"{tag}: difficulty/image")

        if df["kind"] == "calc":
            if key_text != df["answer"]:
                errs.append(f"{tag}: kunci '{key_text}' != hitung ulang '{df['answer']}'")
        elif df["kind"] == "seq":
            full = [F(x) for x in df["full"]]
            shown = df["shown"]
            for v, f_ in zip(shown, full):
                if v is not None and F(v) != f_:
                    errs.append(f"{tag}: suku tampil {v} != aturan {f_}")
            st = shown_text(shown)
            if st not in q["description"]:
                errs.append(f"{tag}: teks deret '{st}' tidak ada di soal")
            exp = [full[p] for p in df["asked"]]
            got = df["parse"](key_text)
            if got != exp:
                errs.append(f"{tag}: kunci {got} != aturan {exp}")
            # pemindai pola alternatif
            if df.get("scan", True):
                kseq = list(full[:len(shown)])
                mask = [v is not None for v in shown]
                kfit = fitting_models(kseq, mask)
                for j, t in enumerate(texts):
                    if j == k: continue
                    try:
                        vals = df["parse"](t)
                    except Exception:
                        continue
                    alt = list(kseq)
                    for p, v in zip(df["asked"], vals):
                        alt[p] = v
                    fm = fitting_models(alt, mask)
                    if fm:
                        errs.append(f"{tag}: pengecoh '{t}' cocok dengan model {fm} -> AMBIGU")
                n_vis = len(shown)
                tail = all(p >= n_vis - len(df["asked"]) for p in df["asked"])
                if tail:
                    # model yang cocok dg suku tampil harus juga cocok dg deret versi kunci
                    vis = [F(v) for v in shown[:n_vis - len(df["asked"])]]
                    for name, (f_, k_) in MODELS.items():
                        if f_(vis, None) and len(vis) > k_ and not f_(kseq, None):
                            errs.append(f"{tag}: suku tampil cocok dg model '{name}' yang memberi jawaban lain -> AMBIGU")
                else:
                    # suku hilang di tengah: coba semua isian bulat di sekitar tetangga
                    ranges = []
                    for p in df["asked"]:
                        nb = [F(v) for v in shown[max(0, p - 1):p + 2] if v is not None]
                        lo, hi = int(min(nb)) - 5, int(max(nb)) + 5
                        if p == n_vis - 1:
                            hi = int(max(nb) * 3) + 5
                        ranges.append(range(lo, hi + 1))
                    hits = set()
                    for combo in product(*ranges):
                        alt = list(kseq)
                        for p, v in zip(df["asked"], combo):
                            alt[p] = F(v)
                        if fitting_models(alt, mask):
                            hits.add(combo)
                    keyc = tuple(int(kseq[p]) for p in df["asked"])
                    others = hits - {keyc}
                    if others:
                        errs.append(f"{tag}: isian lain juga berpola: {sorted(others)[:5]} -> AMBIGU")
                    print(f"  {tag}: brute-force isian -> hanya {sorted(hits)} yang berpola umum")
                print(f"  {tag}: deret lengkap {', '.join(fmt(x) for x in full)} | model umum yang cocok dg versi kunci: {kfit or '-'}")
        elif df["kind"] == "letters":
            if df["shown"] not in q["description"]:
                errs.append(f"{tag}: teks deret huruf '{df['shown']}' tidak ada di soal")
            if key_text != df["answer"]:
                errs.append(f"{tag}: kunci '{key_text}' != aturan '{df['answer']}'")
            # tiap jalur huruf (nomor tanpa dililit) harus berpola polinomial/geometri selisih
            for tr in df["tracks"]:
                trF = [F(x) for x in tr]
                if not (any(poly_fit(trF, dd) for dd in (1, 2)) or diffgeo_fit(trF) or linrec_fit(trF, 1, True)):
                    errs.append(f"{tag}: jalur {tr} tidak berpola sederhana")
            print(f"  {tag}: jalur nomor {df['tracks']} -> {df['answer']}")
    cnt = Counter(keys)
    if max(cnt.values()) > 4: errs.append(f"{fname}: sebaran kunci > 25% {cnt}")
    codes = Counter(q["sub_material_code"] for q in data)
    if codes != expected_codes: errs.append(f"{fname}: sebaran kode {codes}")
    return data, keys, cnt, codes, errs, warns

def main():
    exp = Counter({"NUM-09": 2, "NUM-10": 2, "NUM-11": 3, "NUM-12": 3, "NUM-13": 3, "NUM-14": 3, "NUM-28": 2})
    all_err = []
    descs = {}
    for fname, defs in (("NUM_A_L.json", L_defs()), ("NUM_A_R.json", R_defs())):
        print(f"== {fname}")
        data, keys, cnt, codes, errs, warns = check_file(fname, defs, exp)
        print(f"  kunci: {''.join(keys)}  sebaran: {dict(sorted(cnt.items()))}")
        print(f"  kode : {dict(sorted(codes.items()))}")
        for w in warns: print("  INFO", w)
        all_err += errs
        descs[fname] = [q["description"] for q in data]
    # tidak ada soal identik antar-set
    if set(descs["NUM_A_L.json"]) & set(descs["NUM_A_R.json"]):
        all_err.append("ada soal identik di L dan R")
    if all_err:
        print("\nGAGAL:")
        for e in all_err: print(" -", e)
        sys.exit(1)
    print("\nSEMUA PEMERIKSAAN LULUS")

if __name__ == "__main__":
    main()
