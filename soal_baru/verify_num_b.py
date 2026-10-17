"""Verifikasi mandiri batch NUM-B (set L dan R).
Setiap soal dihitung ulang dengan Fraction (eksak), lalu dicocokkan dengan opsi
yang ditandai benar di JSON. Juga memeriksa struktur, kunci tunggal, opsi unik,
sebaran kunci A-E (maks 25% per huruf), dan panjang pembahasan.
Jalankan: python3 verify_num_b.py
"""
import json, os, re
from fractions import Fraction as F
from math import comb, lcm
from collections import Counter

HERE = os.path.dirname(os.path.abspath(__file__))

def idn(x, dec=2):
    """Format angka gaya Indonesia (ribuan '.', desimal ',')."""
    x = F(x)
    if x.denominator == 1:
        return f"{int(x):,}".replace(",", ".")
    s = f"{float(x):,.{dec}f}".rstrip("0").rstrip(".")
    return s.replace(",", "X").replace(".", ",").replace("X", ".")

def hm(minutes):
    minutes = F(minutes)
    h, m = divmod(minutes, 60)
    return f"{int(h)} jam" + (f" {idn(m)} menit" if m else "")

def clock(h, m, add_min):
    t = h * 60 + m + add_min
    return f"{int(t // 60):02d}.{int(t % 60):02d}"

# ---------------- SET L ----------------
def L1():
    s = 60 * 30 - 60 * 6 - 80 * 4
    return idn(F(s, 70))
def L2():
    kota = F(12, 150); tol = kota * F(3, 4)
    return idn(90 * kota + 200 * tol) + " liter"
def L3():
    P = 800000 * F(80, 100) * F(85, 100)
    Q = 800000 * F(65, 100) + 24000
    return "P = Q" if P == Q else ("P > Q" if P > Q else "P < Q")
def L4():
    # cek untuk banyak pasangan a > b >= 1: selalu P < 82
    rel = set()
    for a in range(2, 60):
        for b in range(1, a):
            P = F(76 * a + 88 * b, a + b)
            rel.add("P < Q" if P < 82 else ("P > Q" if P > 82 else "P = Q"))
    assert len(rel) == 1
    return rel.pop()
def L5():
    return "Rp" + idn(40 * 150000 * F(90, 100) * F(95, 100) * F(111, 100))
def L6():
    net = 1275 * F(96, 100)
    n = int(net // 5); sisa = net - 5 * n
    return f"{n} paket, sisa {idn(sisa)} kg"
def L7():
    t = F(60, 40) + F(1, 2) + F(60, 60)
    return idn(F(120) / t) + " km/jam"
def L8():
    head = 72 * F(10, 60); t = head / (90 - 72) * 60
    return clock(21, 50, t)
def L9():
    done = 3 * (F(1, 12) + F(1, 18)); rest = (1 - done) / F(1, 18)
    return idn(3 + rest) + " jam"
def L10():
    net = F(3600, 2) + F(3600, 3) - 600
    return idn((F(3, 4) * 3600) / net * 60) + " menit"
def L11():
    tot = 30 * 72 + 20 * 81 + 30 * 66 + (88 - 48)
    return idn(F(tot, 80))
def L12():
    d = [14, 9, 21, 7, 12, 16, 9, 10, 18, 9]; d[d.index(21)] = 11
    s = sorted(d); med = F(s[4] + s[5], 2)
    return f"{idn(F(sum(d), 10))} menit dan {idn(med)} menit"
def L13():
    op = lambda a, b: a * a - 2 * b
    ot = lambda a, b: op(a + b, a - b)
    return idn(op(ot(2, 3), ot(1, 2)))
def L14():
    sols = [(p, q) for p in range(-20, 21) for q in range(-20, 21) if 3*p+4*q == 18 and 5*p+2*q == 16]
    assert len(sols) == 1; p, q = sols[0]
    h = lambda a, b: p * a + q * b
    return idn(h(h(7, -1), 2))
def L15():
    x = F(28, 4); anak = x + 4; ayah = 5 * x + 4
    ts = [t for t in range(0, 100) if ayah + t == 2 * (anak + t)]
    return idn(ts[0])
def L16():
    union = 120 - 9; s = union + 32; R = (s - 13) // 2
    return idn(R - 32)
def L17():
    p = F(5 * 3, comb(8, 2)); return f"{p.numerator}/{p.denominator}"
def L18():
    cm = F(12) / F(3, 2) * 40000; km = cm / 100000
    return idn(km / 24 * 60) + " menit"
def L19():
    k = lcm(40, 60, 90)
    return f"{len(range(0, 16 * 60 + 1, k))} kali"
def L20():
    net = 30 - F(100, 1000) * 60
    return hm(F(1800) / net)

# ---------------- SET R ----------------
def R1():
    lembar = 45 * 48 // 2; t = F(lembar, 2 * F(1200, 16))
    m = int(t); s = (t - m) * 60
    return f"{m} menit {idn(s)} detik"
def R2():
    sisa = 24 * 30 - 24 * 6; perlu = F(sisa, 30 - 12)
    return idn((perlu - 24) / F(2, 3)) + " orang"
def R3():
    f = F(125, 100) * F(80, 100)
    return "P = Q" if f == 1 else ("P > Q" if f > 1 else "P < Q")
def R4():
    pairs = [(a, 9 - a) for a in range(0, 10) if a * (9 - a) == 20]
    rel = {("P > Q" if 2*a+b > a+2*b else "P < Q" if 2*a+b < a+2*b else "P = Q") for a, b in pairs}
    return rel.pop() if len(rel) == 1 else "Hubungan P dan Q tidak dapat ditentukan"
def R5():
    return "Rp" + idn(F(12000000, 20) + 12000000 * F(12, 1000))
def R6():
    beli = F(1620000, 36)
    jual = 24 * beli * F(125, 100) + 12 * 36000
    pct = (jual - 1620000) / 1620000 * 100
    return ("untung " if pct > 0 else "rugi ") + idn(abs(pct)) + "%"
def R7():
    head = 60 * F(1, 2); t = (162 - head) / (60 + 72)
    return f"pukul {clock(8, 40, t * 60)}, {idn(60 * (F(1, 2) + t))} km dari P"
def R8():
    v = F(54000, 3600); return idn((420 + 180) / v) + " detik"
def R9():
    r = F(1, 6) + F(1, 9) + 2 * F(1, 9); return hm(1 / r * 60)
def R10():
    rates = [F(1, 5), F(1, 3)]; done = F(0); t = F(0); i = 0
    while True:
        r = rates[i % 2]
        if done + r >= 1:
            t += (1 - done) / r; break
        done += r; t += 1; i += 1
    return hm(t * 60)
def R11():
    two = 26 * 76 - 24 * 75; return idn(F(two + 8, 2))
def R12():
    pa, pi = 167 - 162, 170 - 167  # putra : putri
    putra = F(160 * pa, pa + pi); putri = 160 - putra
    assert (putra * 170 + putri * 162) / 160 == 167
    return idn(putra - putri) + " orang"
def R13():
    op = lambda a, b: 3 * a - 2 * b + a * b
    xs = [F(n, 10) for n in range(-200, 201) if op(op(F(n, 10), 2), 1) == 42]
    assert len(xs) == 1; return idn(xs[0])
def R14():
    rule = lambda a, b: a * b - (a + b)
    assert rule(4, 6) == 14 and rule(5, 3) == 7 and rule(3, 8) == 13
    bs = [b for b in range(-50, 51) if rule(7, b) == 17]
    assert len(bs) == 1; return idn(bs[0])
def R15():
    x = F(48000000) * F(5, 8) * F(3, 5) * F(2, 3); return "Rp" + idn(x)
def R16():
    cs = [c for c in range(1, 81) for m in [3 * c - 14] if m > 0 and (m + 4) + m + c == 81]
    assert len(cs) == 1; return f"{cs[0]} tahun"
def R17():
    xs = [x for x in range(0, 151) if 92 + 74 - 3 * x + x == 150]
    assert len(xs) == 1; return f"{74 - 3 * xs[0]} orang"
def R18():
    p = 1 - F(comb(6, 3), comb(10, 3)); return f"{p.numerator}/{p.denominator}"
def R19():
    luas = F(8, 10) * 100 * F(450, 10); return "Rp" + idn(luas * F(5, 6) * 85000)
def R20():
    regu = "ABCDEF"; hari = ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"]
    return f"Regu {regu[(2 + 250) % 6]}, hari {hari[250 % 7]}"

CHECKS = {
    "NUM_B_L.json": [L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15, L16, L17, L18, L19, L20],
    "NUM_B_R.json": [R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20],
}

def main():
    ok = True
    for fname, fns in CHECKS.items():
        data = json.load(open(os.path.join(HERE, fname), encoding="utf-8"))
        assert len(data) == len(fns) == 20, fname
        keys = Counter(); codes = Counter()
        print(f"== {fname}")
        for i, (q, fn) in enumerate(zip(data, fns), 1):
            opts = q["options"]
            assert len(opts) == 5 and all(o["point"] == 1 for o in opts)
            assert len({o["text"] for o in opts}) == 5, f"{fname} #{i} opsi duplikat"
            corr = [j for j, o in enumerate(opts) if o["is_correct"]]
            assert len(corr) == 1, f"{fname} #{i} kunci tidak tunggal"
            assert not re.match(r"^[A-E][.)]\s", opts[0]["text"])
            exp = q["explanation"]
            for part in ("DIKETAHUI:", "DITANYAKAN:", "JAWAB:", "Jadi, jawaban yang tepat adalah", "Mengapa opsi lain kurang tepat:"):
                assert part in exp, f"{fname} #{i} pembahasan kurang '{part}'"
            letter = "ABCDE"[corr[0]]
            assert f"({letter})" in exp.split("Jadi, jawaban yang tepat adalah")[1][:5]
            expect = fn(); got = opts[corr[0]]["text"]
            match = got.startswith(expect)
            ok &= match
            keys[letter] += 1; codes[q["sub_material_code"]] += 1
            print(f"{i:2d} {q['sub_material_code']} kunci {letter} | hitung: {expect!r:38} | json: {got!r:40} | {'OK' if match else 'SALAH'} | {len(exp)} char")
        print("Sebaran kunci:", dict(sorted(keys.items())))
        print("Per kode:", dict(sorted(codes.items())))
        assert max(keys.values()) <= 5, "kunci > 25% di satu huruf"
    # pastikan L dan R tidak berisi deskripsi yang sama
    dL = {q["description"] for q in json.load(open(os.path.join(HERE, "NUM_B_L.json")))}
    dR = {q["description"] for q in json.load(open(os.path.join(HERE, "NUM_B_R.json")))}
    assert not dL & dR
    print("SEMUA COCOK" if ok else "ADA YANG TIDAK COCOK")
    return ok

if __name__ == "__main__":
    raise SystemExit(0 if main() else 1)
