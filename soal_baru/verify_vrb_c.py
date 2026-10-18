#!/usr/bin/env python3
"""
Verifikasi brute-force batch VRB-C (VRB-14/15/16/17/18/20).

Untuk setiap soal di VRB_C_L.json dan VRB_C_R.json:
  1. Enumerasi SEMUA permutasi/penugasan yang mungkin, saring dengan syarat soal.
  2. Evaluasi kelima opsi terhadap himpunan solusi sesuai tipe pertanyaan:
       value   -> nilai yang ditanyakan harus tunggal di semua solusi
       pasti   -> tepat satu opsi bernilai benar di SEMUA solusi
       mungkin -> tepat satu opsi bernilai benar di SETIDAKNYA satu solusi
       tidak   -> tepat satu opsi yang TIDAK pernah benar di solusi mana pun
  3. Cocokkan opsi yang terbukti benar dengan is_correct di JSON, cocokkan teks opsi,
     cek kalimat "Jadi, jawaban yang tepat adalah (X)" di pembahasan, dan sebaran kunci.
Jalankan:  python3 verify_vrb_c.py
"""
import json, os, re, sys
from itertools import permutations, combinations, product
from collections import Counter

HERE = os.path.dirname(os.path.abspath(__file__))
LET = "ABCDE"

def perm_solutions(names, pred, slots=None):
    slots = slots or list(range(1, len(names) + 1))
    out = []
    for p in permutations(slots, len(names)):
        d = dict(zip(names, p))
        if pred(d):
            out.append(d)
    return out

def judge(kind, worlds, opts):
    """opts: list of (text, fn). fn(world)->bool (or value for 'value')."""
    assert worlds, "tidak ada solusi yang memenuhi syarat!"
    if kind == "value":
        fn = opts  # (fn_value, [texts])
        vals = {fn[0](w) for w in worlds}
        assert len(vals) == 1, f"jawaban tidak tunggal: {vals}"
        v = vals.pop()
        idx = [i for i, t in enumerate(fn[1]) if t == v]
        assert len(idx) == 1, f"nilai {v!r} tidak muncul tepat sekali di opsi"
        return idx[0], fn[1]
    texts = [t for t, _ in opts]
    if kind == "pasti":
        good = [i for i, (_, f) in enumerate(opts) if all(f(w) for w in worlds)]
    elif kind == "mungkin":
        good = [i for i, (_, f) in enumerate(opts) if any(f(w) for w in worlds)]
    elif kind == "tidak":
        good = [i for i, (_, f) in enumerate(opts) if not any(f(w) for w in worlds)]
    else:
        raise ValueError(kind)
    assert len(good) == 1, f"{kind}: opsi yang lolos = {[LET[i] for i in good]}"
    return good[0], texts

# ---------------------------------------------------------------- helpers
def circ_tools(d, n):
    dist = lambda a, b: min((d[a] - d[b]) % n, (d[b] - d[a]) % n)
    right = lambda a, b: (d[a] - d[b]) % n == 1      # a tepat di KANAN b (semua menghadap pusat)
    return dist, right

def inv(d):
    return {v: k for k, v in d.items()}

# ======================================================== SET L
def L1():
    N = "Arga Bening Cakra Dimas Elsa Fajar".split()
    W = perm_solutions(N, lambda d: d['Fajar'] < d['Cakra'] < d['Dimas'] and d['Bening'] == d['Dimas'] + 1
                       and abs(d['Arga'] - d['Elsa']) == 3 and (not d['Arga'] < d['Cakra'] or d['Elsa'] == 6)
                       and d['Fajar'] != 1)
    return judge("value", W, (lambda w: inv(w)[w['Dimas'] - 1], ["Cakra", "Elsa", "Arga", "Fajar", "Bening"]))

def L2():
    N = "P Q R S T U V".split()
    W = perm_solutions(N, lambda d: d['Q'] < d['R'] < d['T'] and abs(d['P'] - d['S']) == 2 and d['U'] % 2 == 0
                       and d['V'] < d['Q'] and d['V'] != 1 and (not d['S'] < d['P'] or d['V'] == 2))
    return judge("tidak", W, [
        ("R tiba tepat setelah U.", lambda w: w['R'] == w['U'] + 1),
        ("Q tiba pada urutan keempat.", lambda w: w['Q'] == 4),
        ("U tiba tepat sebelum T.", lambda w: w['T'] == w['U'] + 1),
        ("V tiba tepat setelah P.", lambda w: w['V'] == w['P'] + 1),
        ("S tiba pada urutan ketiga.", lambda w: w['S'] == 3)])

def L3():
    N = "Gita Hendra Irfan Joko Kirana Lukman".split()
    W = perm_solutions(N, lambda d: d['Gita'] < d['Hendra'] < d['Irfan'] and abs(d['Joko'] - d['Hendra']) != 1
                       and d['Kirana'] % 2 == 1 and (not d['Lukman'] < d['Hendra'] or d['Joko'] == 6)
                       and d['Irfan'] != 6)
    W = [w for w in W if w['Kirana'] == w['Irfan'] + 1]          # premis tambahan pertanyaan
    return judge("pasti", W, [
        ("Gita menyerahkan laporan paling awal.", lambda w: w['Gita'] == 1),
        ("Joko menyerahkan laporan paling akhir.", lambda w: w['Joko'] == 6),
        ("Lukman menyerahkan laporan sebelum Irfan.", lambda w: w['Lukman'] < w['Irfan']),
        ("Hendra menyerahkan laporan pada urutan kedua.", lambda w: w['Hendra'] == 2),
        ("Tepat dua laporan diserahkan sesudah laporan Irfan.", lambda w: 6 - w['Irfan'] == 2)])

def L4():
    N = "Gilang Hana Indra Jihan Kevin Laras".split()
    W = []
    for p in permutations(range(1, 6)):
        d = dict(zip(N[1:], p)); d['Gilang'] = 0          # rotasi dibakukan
        dist, right = circ_tools(d, 6)
        if dist('Gilang', 'Jihan') == 3 and right('Hana', 'Gilang') and dist('Kevin', 'Jihan') != 1 \
           and (dist('Laras', 'Hana') != 1 or dist('Indra', 'Kevin') == 3):
            W.append(d)
    # kiri Jihan = kursi yang Jihan berada tepat di kanannya
    return judge("value", W, (lambda w: inv(w)[(w['Jihan'] - 1) % 6], ["Laras", "Indra", "Kevin", "Hana", "Gilang"]))

def L5():
    N = "Intelkam Reskrim Narkoba Lantas Samapta Propam Binmas".split()
    W = perm_solutions(N, lambda d: d['Lantas'] < d['Reskrim'] < d['Propam'] and abs(d['Narkoba'] - d['Samapta']) == 3
                       and d['Intelkam'] == d['Binmas'] + 1 and d['Lantas'] != 1
                       and (d['Propam'] != 7 or d['Samapta'] % 2 == 0) and d['Narkoba'] < d['Binmas'])
    return judge("mungkin", W, [
        ("Intelkam berada di lantai 5.", lambda w: w['Intelkam'] == 5),
        ("Reskrim berada di lantai 4.", lambda w: w['Reskrim'] == 4),
        ("Samapta berada di lantai 7.", lambda w: w['Samapta'] == 7),
        ("Binmas berada di lantai 6.", lambda w: w['Binmas'] == 6),
        ("Narkoba berada di lantai 2.", lambda w: w['Narkoba'] == 2)])

def L6():
    N = "Maya Nanda Oki Putri Rafi Sari".split()
    seats = [('U', i) for i in (1, 2, 3)] + [('S', i) for i in (1, 2, 3)]
    opp = lambda a, b: a[0] != b[0] and a[1] == b[1]
    W = []
    for p in permutations(seats):
        d = dict(zip(N, p))
        if opp(d['Maya'], d['Rafi']) and d['Nanda'][0] == d['Sari'][0] and d['Nanda'][1] == d['Sari'][1] + 1 \
           and d['Oki'][0] == 'U' and d['Oki'][1] in (1, 3) and (d['Maya'][0] != 'U' or d['Putri'][0] == 'S') \
           and not opp(d['Sari'], d['Oki']):
            W.append(d)
    return judge("value", W, (lambda w: [n for n in N if opp(w[n], w['Nanda'])][0], ["Oki", "Putri", "Rafi", "Maya", "Sari"]))

def L7():
    N = "Agni Bram Citra Dewo Esti Fuad".split()
    W = perm_solutions(N, lambda d: d['Bram'] == d['Citra'] + 2 and d['Dewo'] < d['Agni'] and d['Esti'] not in (1, 6)
                       and (d['Fuad'] != 3 or d['Agni'] == 6) and abs(d['Citra'] - d['Esti']) != 1)
    W = [w for w in W if w['Fuad'] == 3]
    return judge("value", W, (lambda w: inv(w)[1], ["Citra", "Esti", "Dewo", "Agni", "Bram"]))

def L8():
    N = "Arman Bunga Candra Dinda Erlan Febri Galuh".split()
    W = []
    for alfa in combinations(N, 3):
        A = set(alfa); a = lambda x: x in A
        if a('Arman') != a('Bunga') and (not a('Candra') or a('Dinda')) and a('Erlan') == a('Febri') \
           and not a('Galuh') and (a('Arman') or a('Erlan')):
            W.append(A)
    return judge("pasti", W, [
        ("Erlan masuk Tim Alfa.", lambda A: 'Erlan' in A),
        ("Arman masuk Tim Alfa.", lambda A: 'Arman' in A),
        ("Candra masuk Tim Bravo.", lambda A: 'Candra' not in A),
        ("Bunga dan Galuh berada dalam tim yang sama.", lambda A: ('Bunga' in A) == ('Galuh' in A)),
        ("Candra dan Dinda berada dalam tim yang sama.", lambda A: ('Candra' in A) == ('Dinda' in A))])

def L9():
    N = "Hari Irma Juna Kemal Lia Mursid".split()
    o = {'P': 1, 'S': 2, 'M': 3}
    W = []
    for p in set(permutations("PPSSMM")):
        d = dict(zip(N, p))
        if d['Hari'] != d['Irma'] and d['Juna'] != 'S' and (d['Kemal'] != 'P' or d['Lia'] == 'M') \
           and d['Mursid'] in (d['Hari'], d['Irma']) and o[d['Lia']] < o[d['Juna']]:
            W.append(d)
    return judge("tidak", W, [
        ("Kemal dan Lia bertugas pada shift yang sama.", lambda w: w['Kemal'] == w['Lia']),
        ("Kemal bertugas pada shift pagi.", lambda w: w['Kemal'] == 'P'),
        ("Hari dan Juna bertugas pada shift yang sama.", lambda w: w['Hari'] == w['Juna']),
        ("Mursid bertugas pada shift siang.", lambda w: w['Mursid'] == 'S'),
        ("Irma bertugas pada shift malam.", lambda w: w['Irma'] == 'M')])

# ---- kekerabatan: model keluarga eksplisit + enumerasi variasi yang dibiarkan terbuka oleh soal
class Fam:
    def __init__(s): s.g, s.fa, s.mo, s.sp, s.age = {}, {}, {}, {}, {}
    def add(s, n, g, fa=None, mo=None, age=0): s.g[n] = g; s.fa[n] = fa; s.mo[n] = mo; s.age[n] = age
    def marry(s, a, b): s.sp[a] = b; s.sp[b] = a
    def children(s, x): return [c for c in s.g if s.fa[c] == x or s.mo[c] == x]
    def siblings(s, x): return [c for c in s.g if c != x and s.fa[c] and s.fa[c] == s.fa[x] and s.mo[c] == s.mo[x]]
    def father_in_law(s, x): return s.fa[s.sp[x]]
    def daughters_in_law(s, x): return [s.sp[c] for c in s.children(x) if s.g[c] == 'L' and c in s.sp]
    def grandchildren(s, x): return [g for c in s.children(x) for g in s.children(c)]

def L10():
    answers = set(); nworld = 0
    for brothers_of_hadi, married_flags, nadia_brother, younger_sis in product(range(3), product([0, 1], repeat=2), [0, 1], [0, 1]):
        f = Fam()
        f.add('AyahNadia', 'L'); f.add('IbuNadia', 'P')
        f.add('Sari', 'P', 'AyahNadia', 'IbuNadia', age=30)            # satu-satunya kakak perempuan
        f.add('Nadia', 'P', 'AyahNadia', 'IbuNadia', age=25)
        if nadia_brother: f.add('KakakLaki', 'L', 'AyahNadia', 'IbuNadia', age=28)
        if younger_sis: f.add('AdikPr', 'P', 'AyahNadia', 'IbuNadia', age=20)
        f.add('F', 'L'); f.add('IbuHadi', 'P'); f.add('Hadi', 'L', 'F', 'IbuHadi'); f.marry('Sari', 'Hadi')
        for i in range(brothers_of_hadi):
            f.add(f'SdrHadi{i}', 'L', 'F', 'IbuHadi')
            if married_flags[i]: f.add(f'IstriSdr{i}', 'P'); f.marry(f'SdrHadi{i}', f'IstriSdr{i}')
        kakak_pr = [x for x in f.siblings('Nadia') if f.g[x] == 'P' and f.age[x] > f.age['Nadia']]
        if len(kakak_pr) != 1: continue
        mp = f.daughters_in_law(f.father_in_law(kakak_pr[0]))
        if len(mp) != 1: continue                                       # "satu-satunya menantu perempuan"
        nworld += 1
        man = f.sp[mp[0]]
        rel = "kakak ipar (suami kakak perempuan)" if f.sp.get(man) in kakak_pr else "lain"
        answers.add(rel)
    assert nworld > 0 and answers == {"kakak ipar (suami kakak perempuan)"}, answers
    opts = ["ayah mertua kakak perempuannya", "saudara laki-laki dari suami kakak perempuannya",
            "sepupunya", "kakak iparnya, yaitu suami kakak perempuannya", "kakak laki-lakinya"]
    return 3, opts

def L11():
    G = {'Arif': 'L', 'Bagus': 'L', 'Candra': 'L', 'Desi': 'P', 'Erna': 'P', 'Fitri': 'P', 'Gita': 'P'}
    roles = ['K', 'N', 'A1', 'M', 'A2', 'C1', 'C2']     # kakek, nenek, anak menikah, menantu, anak lajang, 2 cucu
    blood = {'K': {'A1', 'A2', 'C1', 'C2'}, 'N': {'A1', 'A2', 'C1', 'C2'}, 'A1': {'K', 'N', 'A2', 'C1', 'C2'},
             'A2': {'K', 'N', 'A1', 'C1', 'C2'}, 'M': {'C1', 'C2'},
             'C1': {'K', 'N', 'A1', 'A2', 'M', 'C2'}, 'C2': {'K', 'N', 'A1', 'A2', 'M', 'C1'}}
    W = []
    for p in permutations(G):
        r = dict(zip(roles, p)); x = inv(r)
        if G[r['K']] != 'L' or G[r['N']] != 'P' or G[r['A1']] == G[r['M']] or r['C1'] > r['C2']:
            continue
        bibi = lambda a, b: x[b] in ('C1', 'C2') and x[a] == 'A2' and G[a] == 'P'
        if x['Fitri'] not in blood[x['Desi']] and bibi('Fitri', 'Candra') and (x['Arif'] != 'K' or x['Gita'] == 'M'):
            W.append(x)
    father_of = lambda x, a, b: (x[a] == 'K' and x[b] in ('A1', 'A2')) or (x[b] in ('C1', 'C2') and x[a] in ('A1', 'M') and G[a] == 'L')
    return judge("pasti", W, [
        ("Arif adalah ayah Candra.", lambda x: father_of(x, 'Arif', 'Candra')),
        ("Gita adalah cucu Bagus.", lambda x: x['Gita'] in ('C1', 'C2') and x['Bagus'] in ('K', 'N')),
        ("Erna adalah istri Bagus.", lambda x: {x['Erna'], x['Bagus']} in ({'K', 'N'}, {'A1', 'M'})),
        ("Fitri adalah kakak ipar Arif.", lambda x: False if {x['Fitri'], x['Arif']} <= {'A1', 'A2'} else
                                          (x['Fitri'] == 'A2' and x['Arif'] == 'M')),
        ("Desi adalah anak kandung Bagus.", lambda x: x['Bagus'] in ('K',) and x['Desi'] in ('A1', 'A2'))])

def L12():
    N = "Ardi Bima Cahya Dani Eko".split(); I = "senter radio borgol rompi helm".split()
    W = []
    for pn in permutations(range(1, 6)):
        p = dict(zip(N, pn)); own = inv(p)
        for pi in permutations(range(1, 6)):
            q = dict(zip(I, pi))
            if p['Ardi'] == 3 and p['Dani'] in (1, 5) and q['senter'] != p['Dani'] and p['Eko'] % 2 == 0 \
               and p['Bima'] < p['Cahya'] and abs(q['radio'] - p['Ardi']) == 1 and own[q['radio']] != 'Cahya' \
               and q['radio'] < q['borgol'] < q['rompi'] and q['helm'] in (1, 5) and abs(q['senter'] - q['radio']) == 1 \
               and (own[q['borgol']] == 'Ardi' or q['helm'] == p['Cahya']):
                W.append((p, q))
    assert len(W) == 1
    def val(w):
        p, q = w; it = inv(q); own = inv(p)
        return f"{it[p['Cahya']]}; {own[q['helm']]}"
    return judge("value", W, (val, ["helm; Cahya", "rompi; Bima", "borgol; Dani", "senter; Eko", "rompi; Dani"]))

def L13():
    K = ['menembak', 'bahasa asing', 'komputer', 'bela diri']
    pairs = [frozenset(c) for c in combinations(K, 2)]
    N = "Pandu Qomar Rizal Satria Tegar Umar".split()
    W = []
    for pa in product(pairs, repeat=6):
        d = dict(zip(N, pa))
        if len(set(pa)) == 6 and 'menembak' in d['Pandu'] and 'menembak' in d['Qomar'] \
           and 'bahasa asing' in d['Rizal'] and not ({'komputer', 'menembak'} & d['Rizal']) \
           and not (d['Satria'] & d['Pandu']) and 'komputer' in d['Qomar'] and 'komputer' in d['Umar'] \
           and ('bahasa asing' not in d['Satria'] or 'menembak' not in d['Tegar']):
            W.append(d)
    assert len(W) == 1
    nm = lambda s: " dan ".join(k for k in K if k in s)
    return judge("value", W, (lambda w: nm(w['Tegar']), ["bahasa asing dan komputer", "menembak dan bahasa asing",
                                                         "menembak dan bela diri", "komputer dan bela diri",
                                                         "bahasa asing dan bela diri"]))

# ---- sandi: keluarga aturan geser huruf  shift_i = a*i + b (i = posisi 1..n), opsional dibalik dulu
A2N = lambda c: ord(c) - 65
N2A = lambda n: chr(n % 26 + 65)
def enc(word, a, b, rev):
    w = word[::-1] if rev else word
    return "".join(N2A(A2N(c) + a * (i + 1) + b) for i, c in enumerate(w))
RULES = [(a, b, rev) for a in range(-3, 4) for b in range(-6, 7) for rev in (False, True)]

def L14():
    ex = {"PATROLI": "QCWVTRP", "RAZIA": "SCCMF"}
    ok = [r for r in RULES if all(enc(k, *r) == v for k, v in ex.items())]
    ans = {enc("SATWA", *r) for r in ok}
    assert len(ans) == 1, ans
    opts = ["TCWBF", "TCWAF", "TBUXB", "XEWYB", "UCVYC"]
    return judge("value", [0], (lambda w: ans.copy().pop(), opts))

# ---- bahasa buatan tingkat kata: urutan S,V,O tak diketahui; penanda jamak tak diketahui (prefiks/sufiks 1-3 huruf)
def lang_solve(examples, target):
    results = set()
    roles = ('S', 'V', 'O')
    for order in permutations(roles):
        for kind in ('suf', 'pre'):
            cands = set()
            for fw, _ in examples:
                for w in fw.split():
                    for L in (1, 2, 3):
                        cands.add(w[-L:] if kind == 'suf' else w[:L])
            for mk in cands:
                lex = {}; ok = True
                for fw, (S, V, O) in examples:
                    words = fw.split()
                    if len(words) != 3: ok = False; break
                    sem = dict(zip(order, words))
                    for role, (mean, pl) in (('S', S), ('O', O)):
                        w = sem[role]
                        has = w.endswith(mk) if kind == 'suf' else w.startswith(mk)
                        if has != pl: ok = False; break
                        root = (w[:-len(mk)] if kind == 'suf' else w[len(mk):]) if pl else w
                        if lex.setdefault(mean, root) != root: ok = False; break
                    if not ok: break
                    if lex.setdefault(V, sem['V']) != sem['V']: ok = False; break
                if not ok or len(set(lex.values())) != len(lex): continue
                (S, pS), V, (O, pO) = target
                if S not in lex or V not in lex or O not in lex: continue
                mkw = lambda m, pl: (lex[m] + mk if kind == 'suf' else mk + lex[m]) if pl else lex[m]
                out = dict(S=mkw(S, pS), V=lex[V], O=mkw(O, pO))
                results.add(" ".join(out[r] for r in order))
    return results

def L15():
    ex = [("suda kelo baran", (("petugas", False), "memeriksa", ("dokumen", False))),
          ("tiwa kelo moren", (("warga", False), "memeriksa", ("kendaraan", False))),
          ("baranni pasu moren", (("warga", False), "membantu", ("petugas", True))),
          ("tiwani kelo baranni", (("petugas", True), "memeriksa", ("kendaraan", True)))]
    res = lang_solve(ex, (("warga", True), "membantu", ("petugas", False)))
    assert len(res) == 1, res
    opts = ["morenni pasu baran", "baranni pasu moren", "baran kelo morenni", "baran pasu morenni", "morenni baran pasu"]
    return judge("value", [0], (lambda w: next(iter(res)), opts))

# ======================================================== SET R
def R1():
    N = "Raka Sena Tirta Umar Vino Wira Yoga".split()
    W = perm_solutions(N, lambda d: d['Umar'] == d['Sena'] + 2 and d['Raka'] < d['Tirta'] < d['Yoga']
                       and d['Vino'] not in (1, 7) and d['Wira'] == d['Yoga'] + 1
                       and (d['Umar'] > 4 or d['Raka'] == 1) and d['Tirta'] % 2 == 0)
    return judge("pasti", W, [
        ("Sena finis ketiga.", lambda w: w['Sena'] == 3),
        ("Raka finis pertama.", lambda w: w['Raka'] == 1),
        ("Wira finis terakhir.", lambda w: w['Wira'] == 7),
        ("Vino finis tepat di depan Umar.", lambda w: w['Umar'] == w['Vino'] + 1),
        ("Tirta finis kedua.", lambda w: w['Tirta'] == 2)])

def R2():
    N = "Bagas Cindy Dodi Evi Ferry Gina".split()
    W = perm_solutions(N, lambda d: d['Cindy'] < d['Dodi'] and d['Cindy'] < d['Evi'] and d['Bagas'] == d['Gina'] + 1
                       and d['Ferry'] not in (1, 6) and (not d['Evi'] < d['Dodi'] or d['Bagas'] == 6)
                       and abs(d['Cindy'] - d['Ferry']) == 2)
    return judge("mungkin", W, [
        ("Ferry berada di peringkat 4.", lambda w: w['Ferry'] == 4),
        ("Gina berada di peringkat 2.", lambda w: w['Gina'] == 2),
        ("Dodi berada di peringkat 3.", lambda w: w['Dodi'] == 3),
        ("Evi berada di peringkat 2.", lambda w: w['Evi'] == 2),
        ("Bagas berada di peringkat 4.", lambda w: w['Bagas'] == 4)])

def R3():
    N = "K L M N O P".split()
    W = perm_solutions(N, lambda d: d['L'] < d['M'] < d['O'] and d['O'] == d['K'] + 3 and d['N'] != 1
                       and d['P'] != d['M'] + 1 and (not d['K'] < d['L'] or d['N'] == 6))
    W = [w for w in W if w['M'] == 4]
    return judge("tidak", W, [
        ("Berkas P diproses pada urutan kelima.", lambda w: w['P'] == 5),
        ("Berkas K diproses pada urutan ketiga.", lambda w: w['K'] == 3),
        ("Berkas N diproses pada urutan ketiga.", lambda w: w['N'] == 3),
        ("Berkas L diproses pada urutan ketiga.", lambda w: w['L'] == 3),
        ("Berkas O diproses pada urutan keenam.", lambda w: w['O'] == 6)])

def R4():
    N = "Anisa Bayu Cakra Dewi Erik Fina Gani".split()
    W = []
    for p in permutations(range(1, 7)):
        d = dict(zip(N[1:], p)); d['Anisa'] = 0
        dist, right = circ_tools(d, 7)
        if right('Bayu', 'Anisa') and dist('Dewi', 'Bayu') == 2 and dist('Erik', 'Anisa') > 1 and dist('Erik', 'Bayu') > 1 \
           and right('Erik', 'Cakra') and dist('Fina', 'Anisa') == 3 \
           and (dist('Cakra', 'Bayu') != 1 or dist('Erik', 'Dewi') == 1):
            W.append(d)
    return judge("value", W, (lambda w: inv(w)[(w['Fina'] - 1) % 7], ["Bayu", "Cakra", "Dewi", "Erik", "Gani"]))

def R5():
    N = "Hafiz Irwan Jaka Kurnia Lutfi Miko".split()
    rooms = [(f, s) for f in (1, 2, 3) for s in 'BT']
    W = []
    for p in permutations(rooms):
        d = dict(zip(N, p))
        if d['Hafiz'][0] > d['Jaka'][0] and d['Irwan'][0] == d['Kurnia'][0] \
           and d['Lutfi'][1] == d['Miko'][1] and d['Lutfi'][0] == d['Miko'][0] + 1 and d['Jaka'][0] != 1 \
           and (d['Hafiz'][1] != 'B' or d['Miko'][0] == 1) and d['Kurnia'][1] == 'T':
            W.append(d)
    def below_h(w):
        f, s = w['Hafiz']
        return inv(w)[(f - 1, s)]
    return judge("value", W, (below_h, ["Miko", "Kurnia", "Jaka", "Lutfi", "Irwan"]))

def R6():
    N = "patwal rantis sedan truk minibus derek".split()
    W = []
    for p in permutations(range(1, 8), 6):
        d = dict(zip(N, p)); e = (set(range(1, 8)) - set(p)).pop()
        ad = lambda a, b: abs(a - b) == 1
        if e not in (1, 7) and ad(d['truk'], d['derek']) and d['sedan'] == d['rantis'] + 3 and d['patwal'] in (1, 7) \
           and (not ad(d['minibus'], e) or d['sedan'] == 7) and not ad(d['rantis'], d['truk']):
            d['_kosong'] = e; W.append(d)
    return judge("tidak", W, [
        ("Truk diparkir tepat di sebelah barat petak kosong.", lambda w: w['_kosong'] == w['truk'] + 1),
        ("Minibus diparkir di petak 1.", lambda w: w['minibus'] == 1),
        ("Petak kosong adalah petak 6.", lambda w: w['_kosong'] == 6),
        ("Rantis diparkir di petak 2.", lambda w: w['rantis'] == 2),
        ("Derek diparkir tepat di sebelah timur rantis.", lambda w: w['derek'] == w['rantis'] + 1)])

def R7():
    N = "Arum Bowo Cici Dharma Eli Faisal".split()
    day = lambda s: (s + 1) // 2; pagi = lambda s: s % 2 == 1
    W = perm_solutions(N, lambda d: day(d['Bowo']) == day(d['Eli']) and pagi(d['Arum']) and day(d['Arum']) != 2
                       and d['Cici'] < d['Dharma'] and day(d['Cici']) != day(d['Dharma']) and day(d['Faisal']) != 1
                       and (not pagi(d['Eli']) or day(d['Dharma']) == 3))
    W = [w for w in W if day(w['Dharma']) == 2]
    return judge("pasti", W, [
        ("Faisal mengajar pada Selasa pagi.", lambda w: w['Faisal'] == 3),
        ("Cici mengajar pada Senin pagi.", lambda w: w['Cici'] == 1),
        ("Bowo mengajar pada hari Selasa.", lambda w: day(w['Bowo']) == 2),
        ("Eli mengajar pada Rabu siang.", lambda w: w['Eli'] == 6),
        ("Dharma mengajar pada sesi pagi.", lambda w: pagi(w['Dharma']))])

def R8():
    N = "Galih Hesti Iwan Jeni Kiki Lusi Mamat".split()
    W = []
    for p in set(permutations([1, 1, 1, 2, 2, 3, 3])):
        d = dict(zip(N, p))
        if d['Galih'] != d['Hesti'] and d['Jeni'] == d['Kiki'] and (d['Lusi'] != 2 or d['Mamat'] == 3) \
           and d['Hesti'] != 1 and d['Iwan'] != d['Galih'] and d['Iwan'] != 3:
            W.append(d)
    W = [w for w in W if w['Galih'] == 2]
    return judge("pasti", W, [
        ("Lusi masuk Regu 2.", lambda w: w['Lusi'] == 2),
        ("Hesti masuk Regu 3.", lambda w: w['Hesti'] == 3),
        ("Mamat masuk Regu 3.", lambda w: w['Mamat'] == 3),
        ("Jeni masuk Regu 2.", lambda w: w['Jeni'] == 2),
        ("Kiki dan Lusi berada dalam regu yang sama.", lambda w: w['Kiki'] == w['Lusi'])])

def R9():
    N = "Nando Oscar Prita Qiara Rendi Siska Taufik".split()
    W = []
    for t in combinations(N, 4):
        t = set(t)
        if (not ('Nando' in t and 'Oscar' in t)) and (('Prita' in t) == ('Qiara' in t)) \
           and (('Rendi' in t) + ('Siska' in t) == 1) and ('Taufik' in t or 'Nando' in t) \
           and not ('Qiara' in t and 'Rendi' in t):
            W.append(t)
    return judge("pasti", W, [
        ("Taufik dipilih.", lambda t: 'Taufik' in t),
        ("Nando dipilih.", lambda t: 'Nando' in t),
        ("Rendi dipilih.", lambda t: 'Rendi' in t),
        ("Nando dan Taufik sama-sama dipilih.", lambda t: {'Nando', 'Taufik'} <= t),
        ("Oscar tidak dipilih.", lambda t: 'Oscar' not in t)])

def R10():
    answers = set(); nworld = 0
    for nkids in range(0, 4):
        for genders in product('LP', repeat=nkids):
            f = Fam()
            f.add('Ayah', 'L'); f.add('Ibu', 'P')
            f.add('Bima', 'L', 'Ayah', 'Ibu', age=35); f.add('Rudi', 'L', 'Ayah', 'Ibu', age=28)  # Rudi: lajang, tanpa anak
            f.add('Laras', 'P'); f.marry('Bima', 'Laras')
            for i, g in enumerate(genders): f.add(f'Anak{i}', g, 'Bima', 'Laras')
            kakak = [x for x in f.siblings('Rudi') if f.g[x] == 'L' and f.age[x] > f.age['Rudi']]
            if len(kakak) != 1: continue
            cucu = f.grandchildren(f.father_in_law(f.sp[kakak[0]]))
            if len(cucu) != 1 or f.g[cucu[0]] != 'L': continue        # "satu-satunya cucu", anak laki-laki
            nworld += 1
            c = cucu[0]
            rel = "keponakan" if (f.fa[c] in f.siblings('Rudi') or f.mo[c] in f.siblings('Rudi')) else "lain"
            answers.add(rel)
    assert nworld > 0 and answers == {"keponakan"}, answers
    return 2, ["cucunya", "adik iparnya", "keponakannya", "sepupunya", "adik kandungnya"]

def R11():
    Lk = ['Sigit', 'Taufan', 'Umar']; Pr = ['Ratih', 'Vina', 'Wulan']
    spouse = {'A1': 'I1', 'I1': 'A1', 'A2': 'I2', 'I2': 'A2', 'S': 'T', 'T': 'S'}
    parents = {'S': {'A1', 'I1'}, 'T': {'A2', 'I2'}}     # S = suami muda (anak A1-I1), T = istri muda (anak A2-I2)
    def rel(x, a, b):
        ra, rb = x[a], x[b]
        if spouse[ra] == rb: return 'pasangan'
        if rb in parents and ra in parents[rb]: return 'orang tua'
        sp = spouse[rb]
        if sp in parents and ra in parents[sp]: return 'mertua'
        spa = spouse[ra]
        if spa in parents and rb in parents[spa]: return 'menantu'
        if (ra in {'A1', 'I1'} and rb in {'A2', 'I2'}) or (ra in {'A2', 'I2'} and rb in {'A1', 'I1'}): return 'besan'
        return 'lain'
    W = []
    for pl in permutations(Lk):
        for pp in permutations(Pr):
            r = {'A1': pl[0], 'S': pl[1], 'A2': pl[2], 'I1': pp[0], 'T': pp[1], 'I2': pp[2]}; x = inv(r)
            if rel(x, 'Ratih', 'Taufan') == 'besan' and rel(x, 'Vina', 'Wulan') != 'mertua' \
               and rel(x, 'Wulan', 'Ratih') != 'besan' \
               and (rel(x, 'Ratih', 'Umar') != 'orang tua' or rel(x, 'Vina', 'Sigit') == 'menantu'):
                W.append(x)
    assert len(W) == 1
    name = {'mertua': 'ayah mertua', 'besan': 'besan', 'orang tua': 'ayah kandung', 'menantu': 'menantu'}
    return judge("value", W, (lambda x: name.get(rel(x, 'Taufan', 'Sigit'), 'lain'),
                              ["besan", "ayah mertua", "ayah kandung", "kakak ipar", "menantu"]))

def R12():
    N = "Arya Bunga Candra Dian Edo".split(); K = "penipuan narkotika pencurian siber perjudian".split()
    W = []
    for ph in permutations(range(1, 6)):
        h = dict(zip(N, ph))
        for pk in permutations(K):
            k = dict(zip(N, pk)); hk = {k[n]: h[n] for n in N}
            if hk['siber'] == hk['narkotika'] + 1 and hk['perjudian'] == hk['siber'] + 1 \
               and abs(hk['penipuan'] - hk['pencurian']) != 1 and h['Bunga'] == 3 and k['Arya'] == 'narkotika' \
               and hk['pencurian'] < h['Candra'] and (h['Dian'] > h['Candra'] or k['Dian'] == 'penipuan'):
                W.append((h, k, hk))
    assert len(W) == 1
    hari = {1: 'Senin', 2: 'Selasa', 3: 'Rabu', 4: 'Kamis', 5: 'Jumat'}
    def val(w):
        h, k, hk = w; who = [n for n in N if k[n] == 'pencurian'][0]
        return f"{who}, hari {hari[h[who]]}"
    return judge("value", W, (val, ["Edo, hari Senin", "Dian, hari Jumat", "Candra, hari Jumat",
                                    "Dian, hari Senin", "Edo, hari Jumat"]))

def R13():
    data = {'Fajar': (172, 68, 88), 'Gilang': (168, 74, 72), 'Hanafi': (175, 71, 78),
            'Irfan': (164, 90, 90), 'Jefri': (169, 66, 86), 'Kemal': (171, 63, 95)}
    def lolos(t, a, p):
        s1 = t >= 165
        s2 = a >= 70 or (65 <= a <= 69 and p >= 85)
        s3 = t >= 170 or p >= 75
        s4 = a + p >= 150
        return s1 and s2 and s3 and s4
    L = [n for n, v in data.items() if lolos(*v)]
    v = " dan ".join(L) if len(L) == 2 else ", ".join(L[:-1]) + ", dan " + L[-1]
    return judge("value", [0], (lambda w: v, ["Fajar, Hanafi, dan Jefri", "Fajar, Jefri, dan Kemal", "Hanafi dan Jefri",
                                              "Fajar, Irfan, dan Jefri", "Fajar dan Jefri"]))

def R14():
    ex = {"SIGAP": "RCIKU", "TEGAS": "UCIGV"}
    ok = [r for r in RULES if all(enc(k, *r) == v for k, v in ex.items())]
    assert ok
    code = "VCPCOC"
    opts = ["AMANAH", "TANAMA", "AMARAN", "AMANAT", "ANAMAT"]
    match = [o for o in opts if all(enc(o, *r) == code for r in ok)]
    assert len(match) == 1 and not any(enc(o, *r) == code for o in opts if o != match[0] for r in ok), match
    return judge("value", [0], (lambda w: match[0], opts))

def R15():
    # morfem 4 huruf; hipotesis: urutan pewatas-inti (modifier sebelum/ sesudah nomina), penguat sebelum/sesudah
    # adjektiva, penanda jamak prefiks/sufiks. Leksikon disimpulkan dari contoh; jawaban harus tunggal.
    ex = [("lumakipa", ("N", "petugas", "A", "jujur")),
          ("soterobi", ("N", "warga", "A", "sigap")),
          ("lumarobina", ("N", "warga", "A", "jujur", "PL")),
          ("dekosote", ("I", "sangat", "A", "sigap"))]
    results = set()
    for adj_first, int_first, pl_suf in product([True, False], repeat=3):
        def build(lex, item):
            parts = dict(zip(item[0::2], item[1::2])) if len(item) % 2 == 0 else None
            return parts
        # coba semua segmentasi kata menjadi potongan; panjang morfem tetap 4, penanda jamak 2
        lex = {}; ok = True
        for word, item in ex:
            pl = item[-1] == "PL"; core = item[:-1] if pl else item
            parts = dict(zip(core[0::2], core[1::2]))
            body = word
            if pl:
                mk = word[-2:] if pl_suf else word[:2]
                if lex.setdefault("PL", mk) != mk: ok = False; break
                body = word[:-2] if pl_suf else word[2:]
            if 'N' in parts:
                seq = [parts['A'], parts['N']] if adj_first else [parts['N'], parts['A']]
            else:
                seq = [parts['I'], parts['A']] if int_first else [parts['A'], parts['I']]
            chunks = [body[0:4], body[4:8]]
            if "".join(chunks) != body: ok = False; break
            for m, c in zip(seq, chunks):
                if lex.setdefault(m, c) != c: ok = False; break
            if not ok: break
        if not ok or len(set(lex.values())) != len(lex): continue
        ia = [lex['sangat'], lex['jujur']] if int_first else [lex['jujur'], lex['sangat']]
        np_ = ia + [lex['petugas']] if adj_first else [lex['petugas']] + ia
        w = "".join(np_)
        w = w + lex['PL'] if pl_suf else lex['PL'] + w
        results.add(w)
    assert len(results) == 1, results
    opts = ["kipanadekoluma", "lumadekokipana", "dekolumakipana", "dekolumakipa", "nadekolumakipa"]
    return judge("value", [0], (lambda w: next(iter(results)), opts))

MODELS = {
    "VRB_C_L.json": [("VRB-14", L1), ("VRB-14", L2), ("VRB-14", L3), ("VRB-15", L4), ("VRB-15", L5), ("VRB-15", L6),
                     ("VRB-16", L7), ("VRB-16", L8), ("VRB-16", L9), ("VRB-17", L10), ("VRB-17", L11),
                     ("VRB-18", L12), ("VRB-18", L13), ("VRB-20", L14), ("VRB-20", L15)],
    "VRB_C_R.json": [("VRB-14", R1), ("VRB-14", R2), ("VRB-14", R3), ("VRB-15", R4), ("VRB-15", R5), ("VRB-15", R6),
                     ("VRB-16", R7), ("VRB-16", R8), ("VRB-16", R9), ("VRB-17", R10), ("VRB-17", R11),
                     ("VRB-18", R12), ("VRB-18", R13), ("VRB-20", R14), ("VRB-20", R15)],
}

def main():
    bad = 0
    for fn, models in MODELS.items():
        path = os.path.join(HERE, fn)
        data = json.load(open(path, encoding="utf-8"))
        assert len(data) == len(models), f"{fn}: {len(data)} item vs {len(models)} model"
        keys = []
        for i, (item, (code, model)) in enumerate(zip(data, models), 1):
            tag = f"{fn}#{i:02d} {code}"
            try:
                idx, texts = model()
                assert item["sub_material_code"] == code, "kode beda"
                assert [o["text"] for o in item["options"]] == texts, f"teks opsi beda:\n{[o['text'] for o in item['options']]}\n{texts}"
                assert len(set(texts)) == 5, "opsi duplikat"
                corr = [j for j, o in enumerate(item["options"]) if o["is_correct"]]
                assert corr == [idx], f"kunci JSON {[LET[j] for j in corr]} != brute-force {LET[idx]}"
                assert all(o["point"] == 1 for o in item["options"])
                m = re.search(r"Jadi, jawaban yang tepat adalah \(([A-E])\)", item["explanation"])
                assert m and m.group(1) == LET[idx], "kalimat kunci di pembahasan tidak cocok"
                tail = item["explanation"].split("Mengapa opsi lain kurang tepat:")[1]
                listed = re.findall(r"^- \(([A-E])\)", tail, re.M)
                assert sorted(listed) == sorted(set(LET) - {LET[idx]}), f"daftar opsi lain: {listed}"
                for sec in ("DIKETAHUI:", "DITANYAKAN:", "JAWAB:"):
                    assert sec in item["explanation"], sec
                keys.append(LET[idx])
                print(f"OK  {tag}  kunci={LET[idx]}  ({len(item['explanation'])} char)")
            except AssertionError as e:
                bad += 1
                print(f"ERR {tag}: {e}")
        c = Counter(keys)
        print(f"   {fn}: sebaran kunci {dict(sorted(c.items()))}, kode {dict(Counter(it['sub_material_code'] for it in data))}")
        if c and max(c.values()) > len(data) * 0.25:
            bad += 1; print("ERR sebaran kunci > 25% di satu huruf")
    print("SEMUA LOLOS" if not bad else f"{bad} MASALAH")
    sys.exit(1 if bad else 0)

if __name__ == "__main__":
    main()
