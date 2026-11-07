#!/usr/bin/env python3
"""Generator soal Penalaran Figural (FIG) Polisimuda.

Setiap soal DIBANGUN dari aturan (transformasi geometri, aturan arsiran, jumlah unsur,
Latin square, operasi himpunan garis), sehingga kunci benar secara konstruksi.
Pengecoh = jawaban benar yang dirusak pada tepat satu aturan.

Keluaran: FIG_L.json, FIG_R.json (+ folder svg_preview/ berisi SVG tiap soal).
Jalankan:  python3 fig_gen.py
"""
import base64
import json
import math
import os

OUT_DIR = os.path.dirname(os.path.abspath(__file__))
SW = 3.2           # tebal garis utama
HATCH_SW = 2.0     # tebal garis arsiran
HATCH_SP = 6.5     # jarak garis arsiran
FONT = "Arial, Helvetica, sans-serif"

# ---------------------------------------------------------------------------
# Primitif geometri (koordinat lokal sel: kira-kira [-50, 50], sumbu y ke bawah)
# ---------------------------------------------------------------------------


def poly(pts, f="w", sw=SW):
    return {"t": "poly", "p": [tuple(map(float, p)) for p in pts], "f": f, "sw": sw}


def pline(pts, sw=SW):
    return {"t": "pline", "p": [tuple(map(float, p)) for p in pts], "sw": sw}


def circ(c, r, f="w", sw=SW):
    return {"t": "circ", "c": tuple(map(float, c)), "r": float(r), "f": f, "sw": sw}


def dot(c, r=4.6, f="b"):
    return circ(c, r, f, sw=1.6)


def reg(n, r, start=-90.0, c=(0, 0)):
    return [(c[0] + r * math.cos(math.radians(start + 360.0 * i / n)),
             c[1] + r * math.sin(math.radians(start + 360.0 * i / n))) for i in range(n)]


def M_rot(deg):
    """Rotasi searah jarum jam (sumbu y ke bawah) sebesar deg derajat."""
    a = math.radians(deg)
    return (math.cos(a), -math.sin(a), math.sin(a), math.cos(a), 0.0, 0.0)


M_ID = (1.0, 0.0, 0.0, 1.0, 0.0, 0.0)
M_MV = (-1.0, 0.0, 0.0, 1.0, 0.0, 0.0)   # cermin sumbu tegak (kiri-kanan)
M_MH = (1.0, 0.0, 0.0, -1.0, 0.0, 0.0)   # cermin sumbu datar (atas-bawah)
M_MD1 = (0.0, 1.0, 1.0, 0.0, 0.0, 0.0)   # cermin diagonal "\" (kiri atas - kanan bawah)
M_MD2 = (0.0, -1.0, -1.0, 0.0, 0.0, 0.0)  # cermin diagonal "/" (kanan atas - kiri bawah)


def M_scale(s):
    return (s, 0.0, 0.0, s, 0.0, 0.0)


def M_tr(dx, dy):
    return (1.0, 0.0, 0.0, 1.0, float(dx), float(dy))


def M_mul(A, B):
    """A setelah B (A o B)."""
    a, b, c, d, e, f = A
    a2, b2, c2, d2, e2, f2 = B
    return (a * a2 + b * c2, a * b2 + b * d2, c * a2 + d * c2, c * b2 + d * d2,
            a * e2 + b * f2 + e, c * e2 + d * f2 + f)


def M_refl(phi_deg):
    """Pencerminan terhadap garis melalui pusat bersudut phi."""
    t = math.radians(2 * phi_deg)
    return (math.cos(t), math.sin(t), math.sin(t), -math.cos(t), 0.0, 0.0)


def tp(p, M):
    a, b, c, d, e, f = M
    return (a * p[0] + b * p[1] + e, c * p[0] + d * p[1] + f)


def tf(fig, M):
    out = []
    det = abs(M[0] * M[3] - M[1] * M[2])
    for el in fig:
        el = dict(el)
        if el["t"] == "circ":
            el["c"] = tp(el["c"], M)
            el["r"] = el["r"] * math.sqrt(det)
        else:
            el["p"] = [tp(p, M) for p in el["p"]]
        out.append(el)
    return out


def rot(fig, deg):
    return tf(fig, M_rot(deg))


def refill(fig, mapping):
    out = []
    for el in fig:
        el = dict(el)
        if "f" in el and el["f"] in mapping:
            el["f"] = mapping[el["f"]]
        out.append(el)
    return out


INVERT = {"w": "b", "b": "w"}

# ---------------------------------------------------------------------------
# Kesamaan bangun (toleransi) -> deteksi opsi kembar & simetri
# ---------------------------------------------------------------------------
TOL = 1.2


def _close(p, q, tol=TOL):
    return abs(p[0] - q[0]) <= tol and abs(p[1] - q[1]) <= tol


def _poly_eq(P, Q):
    n = len(P)
    if n != len(Q):
        return False
    for seq in (Q, list(reversed(Q))):
        for s in range(n):
            if all(_close(P[i], seq[(s + i) % n]) for i in range(n)):
                return True
    return False


def _pline_eq(P, Q):
    if len(P) != len(Q):
        return False
    return all(_close(a, b) for a, b in zip(P, Q)) or \
        all(_close(a, b) for a, b in zip(P, reversed(Q)))


def el_eq(a, b):
    if a["t"] != b["t"]:
        return False
    if a.get("f") != b.get("f"):
        return False
    if a["t"] == "circ":
        return _close(a["c"], b["c"]) and abs(a["r"] - b["r"]) <= TOL
    if a["t"] == "poly":
        return _poly_eq(a["p"], b["p"])
    return _pline_eq(a["p"], b["p"])


def fig_eq(F, G):
    if len(F) != len(G):
        return False
    used = [False] * len(G)
    for a in F:
        ok = False
        for j, b in enumerate(G):
            if not used[j] and el_eq(a, b):
                used[j] = ok = True
                break
        if not ok:
            return False
    return True


def dihedral_images(fig, step=45):
    imgs = []
    for k in range(0, 360, step):
        imgs.append(("rot%d" % k, rot(fig, k)))
        imgs.append(("mir%d" % k, rot(tf(fig, M_MV), k)))
    return imgs


def assert_no_symmetry(fig, name, step=45):
    imgs = dihedral_images(fig, step)
    for i in range(len(imgs)):
        for j in range(i + 1, len(imgs)):
            assert not fig_eq(imgs[i][1], imgs[j][1]), \
                "%s punya simetri: %s == %s" % (name, imgs[i][0], imgs[j][0])


def has_mirror_axis(fig):
    for k in range(360):
        if fig_eq(tf(fig, M_refl(k * 0.5)), fig):
            return True
    return False


def assert_distinct(figs, name):
    for i in range(len(figs)):
        for j in range(i + 1, len(figs)):
            assert not fig_eq(figs[i], figs[j]), "%s: opsi %d dan %d identik" % (name, i, j)


# ---------------------------------------------------------------------------
# Penamaan arah/posisi (untuk pembahasan)
# ---------------------------------------------------------------------------
DIR8 = {-90: "atas", -45: "kanan atas", 0: "kanan", 45: "kanan bawah", 90: "bawah",
        135: "kiri bawah", 180: "kiri", -135: "kiri atas"}


def norm_ang(a):
    a = (a + 180.0) % 360.0 - 180.0
    if abs(a + 180) < 1e-6:
        a = 180.0
    return a


def ang_of(p):
    return norm_ang(math.degrees(math.atan2(p[1], p[0])))


def dir_name(a):
    a = norm_ang(a)
    k = int(round(a / 45.0)) * 45
    if k == -180:
        k = 180
    return DIR8[k]


def clock(a):
    h = ((norm_ang(a) + 90.0) / 30.0) % 12
    h = int(round(h)) % 12
    return 12 if h == 0 else h


# ---------------------------------------------------------------------------
# Render SVG
# ---------------------------------------------------------------------------
class Ctx:
    def __init__(self):
        self.defs = []
        self.n = 0


def _fmt(v):
    return ("%.1f" % v).rstrip("0").rstrip(".")


def _pts(P):
    return " ".join("%s,%s" % (_fmt(x), _fmt(y)) for x, y in P)


def _hatch_lines(bbox):
    x0, y0, x1, y1 = bbox
    out = []
    c = x0 + y0 - (x1 - x0)
    while c <= x1 + y1 + (x1 - x0):
        # garis x + y = c  (arah "/")
        out.append('<line x1="%s" y1="%s" x2="%s" y2="%s" stroke="#000" stroke-width="%s"/>' % (
            _fmt(x0 - 5), _fmt(c - x0 + 5), _fmt(x1 + 5), _fmt(c - x1 - 5), _fmt(HATCH_SW)))
        c += HATCH_SP * math.sqrt(2)
    return "".join(out)


def render_el(el, ox, oy, s, ctx):
    def P(p):
        return (ox + s * p[0], oy + s * p[1])

    sw = el["sw"]
    if el["t"] == "pline":
        return '<polyline points="%s" fill="none" stroke="#000" stroke-width="%s" stroke-linecap="round" stroke-linejoin="round"/>' % (
            _pts([P(p) for p in el["p"]]), _fmt(sw))
    f = el["f"]
    fillc = {"w": "#fff", "b": "#000", "h": "#fff", "n": "none"}[f]
    if el["t"] == "poly":
        pts = _pts([P(p) for p in el["p"]])
        shape = '<polygon points="%s" %%s/>' % pts
        xs = [P(p)[0] for p in el["p"]]
        ys = [P(p)[1] for p in el["p"]]
        bbox = (min(xs), min(ys), max(xs), max(ys))
    else:
        cx, cy = P(el["c"])
        r = el["r"] * s
        shape = '<circle cx="%s" cy="%s" r="%s" %%s/>' % (_fmt(cx), _fmt(cy), _fmt(r))
        bbox = (cx - r, cy - r, cx + r, cy + r)
    out = shape % ('fill="%s" stroke="none"' % fillc)
    if f == "h":
        ctx.n += 1
        cid = "c%d" % ctx.n
        ctx.defs.append('<clipPath id="%s">%s</clipPath>' % (cid, shape % ""))
        out += '<g clip-path="url(#%s)">%s</g>' % (cid, _hatch_lines(bbox))
    out += shape % ('fill="none" stroke="#000" stroke-width="%s" stroke-linejoin="round"' % _fmt(sw))
    return out


def render_fig(fig, cx, cy, s, ctx):
    return "".join(render_el(el, cx, cy, s, ctx) for el in fig)


def cell_box(x, y, w, h):
    return '<rect x="%s" y="%s" width="%s" height="%s" rx="6" fill="#fff" stroke="#000" stroke-width="2"/>' % (
        _fmt(x), _fmt(y), _fmt(w), _fmt(h))


def text(x, y, t, size=30, weight="bold"):
    return '<text x="%s" y="%s" font-family="%s" font-size="%d" font-weight="%s" text-anchor="middle" dominant-baseline="central" fill="#000">%s</text>' % (
        _fmt(x), _fmt(y), FONT, size, weight, t)


def qmark_cell(x, y, w, h):
    return cell_box(x, y, w, h) + text(x + w / 2, y + h / 2 + 1, "?", 46)


W = 640


def build_svg(layout, options):
    ctx = Ctx()
    body = []
    y = 16
    kind = layout[0]
    if kind == "analogy":
        A, B, C = layout[1]
        cw, gap = 112, 44
        tot = 4 * cw + 3 * gap
        x0 = (W - tot) / 2
        s = 0.96
        xs = [x0 + i * (cw + gap) for i in range(4)]
        for i, F in enumerate([A, B, C]):
            body.append(cell_box(xs[i], y, cw, cw))
            body.append(render_fig(F, xs[i] + cw / 2, y + cw / 2, s, ctx))
        body.append(qmark_cell(xs[3], y, cw, cw))
        for i, sym in enumerate([":", "=", ":"]):
            body.append(text(xs[i] + cw + gap / 2, y + cw / 2, sym, 34))
        y += cw
    elif kind == "series":
        frames = layout[1]
        n = len(frames) + 1
        cw, gap = 108, 18
        tot = n * cw + (n - 1) * gap
        x0 = (W - tot) / 2
        for i in range(n):
            x = x0 + i * (cw + gap)
            if i < len(frames):
                body.append(cell_box(x, y, cw, cw))
                body.append(render_fig(frames[i], x + cw / 2, y + cw / 2, 0.94, ctx))
            else:
                body.append(qmark_cell(x, y, cw, cw))
        y += cw
    elif kind == "matrix":
        grid = layout[1]
        cw, gap = 104, 8
        tot = 3 * cw + 2 * gap
        x0 = (W - tot) / 2
        for r in range(3):
            for c in range(3):
                x = x0 + c * (cw + gap)
                yy = y + r * (cw + gap)
                if grid[r][c] is None:
                    body.append(qmark_cell(x, yy, cw, cw))
                else:
                    body.append(cell_box(x, yy, cw, cw))
                    body.append(render_fig(grid[r][c], x + cw / 2, yy + cw / 2, 0.92, ctx))
        y += 3 * cw + 2 * gap
    elif kind == "combine":
        rows = layout[1]  # [[F1,F2,F3],[G1,G2,None]]
        cw, gap = 110, 50
        tot = 3 * cw + 2 * gap
        x0 = (W - tot) / 2
        for r, row in enumerate(rows):
            yy = y + r * (cw + 14)
            for c in range(3):
                x = x0 + c * (cw + gap)
                if row[c] is None:
                    body.append(qmark_cell(x, yy, cw, cw))
                else:
                    body.append(cell_box(x, yy, cw, cw))
                    body.append(render_fig(row[c], x + cw / 2, yy + cw / 2, 0.94, ctx))
            body.append(text(x0 + cw + gap / 2, yy + cw / 2, "+", 34))
            body.append(text(x0 + 2 * cw + 1.5 * gap, yy + cw / 2, "=", 34))
        y += 2 * cw + 14
    elif kind == "odd":
        y -= 16
    else:
        raise ValueError(kind)

    if kind != "odd":
        y += 22
        body.append('<line x1="24" y1="%s" x2="%s" y2="%s" stroke="#000" stroke-width="1" stroke-dasharray="4 4"/>' % (
            _fmt(y), _fmt(W - 24), _fmt(y)))
        y += 22
    else:
        y += 16
    ow, og = 106, 20
    tot = 5 * ow + 4 * og
    x0 = (W - tot) / 2
    for i, F in enumerate(options):
        x = x0 + i * (ow + og)
        body.append(cell_box(x, y, ow, ow))
        body.append(render_fig(F, x + ow / 2, y + ow / 2, 0.9, ctx))
        body.append(text(x + ow / 2, y + ow + 20, "ABCDE"[i], 24))
    y += ow + 42
    H = int(math.ceil(y))
    svg = ('<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d">'
           '<defs>%s</defs><rect width="%d" height="%d" fill="#fff"/>%s</svg>') % (
        W, H, W, H, "".join(ctx.defs), W, H, "".join(body))
    return svg


# ---------------------------------------------------------------------------
# Bangun-bangun dasar
# ---------------------------------------------------------------------------
def dots_rows(n, cy=0.0, sp=12.0, r=4.6, cx=0.0, f="b"):
    rows = {1: [1], 2: [2], 3: [3], 4: [2, 2], 5: [2, 3], 6: [3, 3], 7: [3, 4], 8: [4, 4]}[n]
    out = []
    h = (len(rows) - 1) * sp
    for i, k in enumerate(rows):
        yy = cy - h / 2 + i * sp
        w = (k - 1) * sp
        for j in range(k):
            out.append(dot((cx - w / 2 + j * sp, yy), r, f))
    return out


def dots_grid(n, cols=4, sp=14.0, r=4.6, cy=0.0):
    out = []
    rows = (n + cols - 1) // cols
    h = (rows - 1) * sp
    for i in range(n):
        rr, cc = divmod(i, cols)
        k = min(cols, n - rr * cols)
        w = (k - 1) * sp
        out.append(dot((-w / 2 + cc * sp, cy - h / 2 + rr * sp), r))
    return out


def arrow_poly(length=30, shaft=3.5, head=10, headlen=12, f="b"):
    """Panah menghadap +x, berpusat di 0."""
    L = length / 2
    return poly([(-L, -shaft), (L - headlen, -shaft), (L - headlen, -head), (L, 0),
                 (L - headlen, head), (L - headlen, shaft), (-L, shaft)], f)


NAMES_POLY = {3: "segitiga", 4: "segi empat", 5: "segi lima", 6: "segi enam", 7: "segi tujuh", 8: "segi delapan"}
FILL_NAME = {"w": "putih", "b": "hitam", "h": "berarsir"}


# ---------------------------------------------------------------------------
# Kerangka item
# ---------------------------------------------------------------------------
class Item:
    def __init__(self, code, desc, layout, correct, distractors, known, asked, steps, ans_desc,
                 opt_desc=None):
        self.code = code
        self.desc = desc
        self.layout = layout
        self.correct = correct          # (fig, deskripsi)
        self.distractors = distractors  # [(fig, deskripsi, alasan_salah)]
        self.known = known
        self.asked = asked
        self.steps = steps
        self.ans_desc = ans_desc
        self.opt_desc = opt_desc        # True -> sertakan deskripsi tiap opsi di DIKETAHUI


def assemble(item, key):
    figs = [None] * 5
    descs = [None] * 5
    reasons = {}
    figs[key] = item.correct[0]
    descs[key] = item.correct[1]
    others = [i for i in range(5) if i != key]
    for pos, (F, d, why) in zip(others, item.distractors):
        figs[pos] = F
        descs[pos] = d
        reasons[pos] = why
    assert_distinct(figs, item.code)
    K = "ABCDE"[key]
    known = list(item.known)
    if item.opt_desc:
        known.append("Pilihan jawaban:")
        for i in range(5):
            known.append("  (%s) %s" % ("ABCDE"[i], descs[i]))
    steps = [s.replace("{K}", K) for s in item.steps]
    exp = "DIKETAHUI:\n" + "\n".join(k if k.startswith("  ") else "- " + k for k in known)
    exp += "\n\nDITANYAKAN:\n" + item.asked
    exp += "\n\nJAWAB:\n" + "\n".join("%d. %s" % (i + 1, s) for i, s in enumerate(steps))
    exp += "\nJadi, jawaban yang tepat adalah (%s) %s." % (K, item.ans_desc)
    exp += "\nMengapa opsi lain kurang tepat:"
    for i in others:
        exp += "\n- (%s) %s" % ("ABCDE"[i], reasons[i])
    svg = build_svg(item.layout, figs)
    return {
        "sub_material_code": item.code,
        "description": item.desc,
        "image": "data:image/svg+xml;base64," + base64.b64encode(svg.encode("utf-8")).decode("ascii"),
        "options": [{"text": "ABCDE"[i], "is_correct": i == key, "point": 1} for i in range(5)],
        "explanation": exp,
        "difficulty": "sulit",
    }, svg


D_ANALOGY = ("Perhatikan gambar berikut. Hubungan gambar pertama dengan gambar kedua sama dengan hubungan "
             "gambar ketiga dengan gambar pada kotak bertanda tanya. Gambar manakah yang tepat mengisi tanda tanya?")
D_SERIES = "Perhatikan deret gambar berikut. Gambar manakah yang tepat mengisi tanda tanya?"
D_MATRIX = ("Perhatikan susunan gambar 3 × 3 berikut. Setiap baris dan setiap kolom mengikuti aturan tertentu. "
            "Gambar manakah yang tepat mengisi kotak bertanda tanya?")
D_ODD = ("Perhatikan kelima gambar berikut. Empat gambar memiliki kesamaan aturan, sedangkan satu gambar berbeda. "
         "Gambar manakah yang berbeda dari yang lain?")


# ===========================================================================
# SET L
# ===========================================================================
def L01():
    # A: persegi + segitiga hitam di sudut + tangkai berujung lingkaran
    A = [poly([(-28, -28), (28, -28), (28, 28), (-28, 28)], "w"),
         poly([(28, -28), (28, -4), (4, -28)], "b"),
         pline([(-28, 0), (-40, 0)]), circ((-45, 0), 5.5, "w")]
    C = [circ((0, 0), 28, "w"),
         poly([(-21, -21), (-9, -21), (-9, -9), (-21, -9)], "b"),
         pline([(28, 0), (38, 0)]), poly([(38, -7), (48, 0), (38, 7)], "w")]
    assert_no_symmetry(A, "L01-A")
    assert_no_symmetry(C, "L01-C")
    B = refill(rot(A, 90), INVERT)
    ans = refill(rot(C, 90), INVERT)
    d1 = refill(rot(C, -90), INVERT)
    d2 = rot(C, 90)
    d3 = tf(ans, M_MV)
    d4 = refill(rot(C, 180), INVERT)
    # pastikan transformasi A->B unik (tidak ada rotasi/cermin lain yang memberi B)
    hits = [n for n, im in dihedral_images(A) if fig_eq(refill(im, INVERT), B)]
    assert hits == ["rot90"], hits
    known = [
        "Gambar 1: persegi putih; di sudut kanan atas ada segitiga kecil hitam; dari sisi kiri keluar tangkai pendek berujung lingkaran kecil putih.",
        "Gambar 2: persegi hitam; segitiga kecil (kini putih) berada di sudut kanan bawah; tangkai berujung lingkaran kecil (kini hitam) keluar dari sisi atas.",
        "Gambar 3: lingkaran putih; persegi kecil hitam di bagian kiri atas lingkaran; dari sisi kanan keluar tangkai berujung segitiga kecil putih.",
    ]
    steps = [
        "Bandingkan posisi unsur gambar 1 dan 2. Segitiga kecil pindah dari sudut kanan atas ke kanan bawah, tangkai pindah dari kiri ke atas. Perpindahan kanan atas → kanan bawah dan kiri → atas sama-sama merupakan putaran 90° searah jarum jam (bukan pencerminan, karena kedua unsur bergeser seperempat putaran ke arah yang sama).",
        "Bandingkan warnanya. Persegi putih menjadi hitam, segitiga hitam menjadi putih, lingkaran ujung tangkai putih menjadi hitam. Jadi aturan kedua: semua warna dibalik (hitam ↔ putih).",
        "Terapkan dua aturan itu pada gambar 3. Putar 90° searah jarum jam: persegi kecil di kiri atas pindah ke kanan atas; tangkai di kanan pindah ke bawah.",
        "Balik warnanya: lingkaran besar menjadi hitam, persegi kecil menjadi putih, segitiga ujung tangkai menjadi hitam.",
        "Hasil: lingkaran hitam dengan persegi kecil putih di kanan atas dan tangkai di bawah berujung segitiga hitam. Gambar ini terdapat pada opsi ({K}).",
    ]
    return Item("FIG-01", D_ANALOGY, ("analogy", [A, B, C]),
                (ans, "lingkaran hitam, persegi kecil putih di kanan atas, tangkai ke bawah berujung segitiga hitam"),
                [(d1, "", "Unsur diputar 90° berlawanan arah jarum jam (persegi kecil di kiri bawah, tangkai ke atas); arah putaran salah."),
                 (d2, "", "Arah putaran sudah benar, tetapi warna tidak dibalik (lingkaran masih putih, persegi kecil masih hitam)."),
                 (d3, "", "Merupakan bayangan cermin dari jawaban benar (persegi kecil di kiri atas, tangkai ke bawah); hasil pencerminan tidak dapat diperoleh dengan perputaran."),
                 (d4, "", "Gambar diputar 180° (persegi kecil di kanan bawah, tangkai ke kiri), bukan 90°.")],
                known, "Gambar yang hubungannya dengan gambar 3 sama dengan hubungan gambar 1 ke gambar 2.",
                steps, "lingkaran hitam dengan persegi kecil putih di kanan atas dan tangkai ke bawah berujung segitiga hitam")


def L02():
    outerA = poly([(-30, 30), (30, 30), (30, -8), (4, -34), (-30, -22)], "w")
    innerA = poly([(-9, -10), (-3, -10), (-3, 10), (9, 10), (9, 16), (-9, 16)], "b")  # huruf L
    innerA = tf([innerA], M_tr(0, -2))[0]
    outerC = poly([(-30, 28), (32, 28), (10, -28), (-30, -28)], "w")
    innerC = poly([(-7, -15), (-7, 15), (-2, 15), (-2, -1), (12, -8), (-2, -15)], "b")  # bendera
    for nm, F in (("oA", [outerA]), ("iA", [innerA]), ("oC", [outerC]), ("iC", [innerC])):
        assert_no_symmetry(F, "L02-" + nm, step=90)
    # bagian dalam diputar terhadap pusat sel (0,0) -> pusat unsur dalam diletakkan dekat (0,0)
    A = [outerA, innerA]
    B = tf([outerA], M_MV) + rot([innerA], 90)
    C = [outerC, innerC]
    ans = tf([outerC], M_MV) + rot([innerC], 90)
    d1 = tf(C, M_MV)
    d2 = rot([outerC], 180) + rot([innerC], 90)
    d3 = tf([outerC], M_MV) + rot([innerC], -90)
    d4 = [outerC] + rot([innerC], 90)
    # uji: pada A->B, bagian dalam hanya cocok dengan rotasi 90 CW
    hits = [n for n, im in dihedral_images([innerA], 90) if fig_eq(im, B[1:])]
    assert hits == ["rot90"], hits
    hits = [n for n, im in dihedral_images([outerA], 90) if fig_eq(im, B[:1])]
    assert hits == ["mir0"], hits
    known = [
        "Gambar 1: bangun luar berbentuk rumah dengan atap miring tidak simetris (puncak atap condong ke kanan, sisi kiri lebih tinggi daripada sisi kanan); di dalamnya ada bangun hitam berbentuk huruf L (batang tegak di kiri, kaki mendatar ke kanan di bawah).",
        "Gambar 2: bangun luar sama tetapi puncak atap kini condong ke kiri (sisi kanan lebih tinggi); bangun hitam di dalam kini berbentuk L yang batangnya mendatar di atas dan kakinya turun di kiri.",
        "Gambar 3: bangun luar trapesium siku-siku dengan sisi miring di kanan; di dalamnya bendera hitam kecil (tiang tegak, kain bendera di kanan atas tiang menunjuk ke kanan).",
    ]
    steps = [
        "Pisahkan bangun luar dan bangun dalam karena keduanya bisa memiliki aturan berbeda.",
        "Bangun luar: puncak atap yang condong ke kanan menjadi condong ke kiri, sedangkan alas tetap di bawah. Ini pencerminan terhadap sumbu tegak (kiri ↔ kanan). Jika diputar, alas tidak mungkin tetap di bawah sekaligus atap berbalik arah.",
        "Bangun dalam (huruf L): kaki yang semula mengarah ke kanan di bawah kini mengarah ke bawah di kiri, dan batang tegak menjadi mendatar di atas. Ini putaran 90° searah jarum jam. Pencerminan kiri-kanan akan membuat kakinya mengarah ke kiri di bawah, sehingga bangun dalam TIDAK dicerminkan.",
        "Aturan: bangun luar dicerminkan terhadap sumbu tegak, bangun dalam diputar 90° searah jarum jam.",
        "Terapkan pada gambar 3: trapesium dicerminkan, sehingga sisi miring berpindah ke kiri dan alas tetap di bawah.",
        "Bendera diputar 90° searah jarum jam: tiang menjadi mendatar dan kain bendera yang semula menunjuk ke kanan kini menunjuk ke bawah, terletak di ujung kanan tiang.",
        "Gambar yang memenuhi keduanya terdapat pada opsi ({K}).",
    ]
    return Item("FIG-02", D_ANALOGY, ("analogy", [A, B, C]),
                (ans, ""),
                [(d1, "", "Seluruh gambar dicerminkan, termasuk bendera (kain bendera menunjuk ke kiri). Padahal pada contoh, bangun dalam diputar, bukan dicerminkan."),
                 (d2, "", "Trapesium diputar 180° (sisi miring di kiri tetapi sisi panjang berada di atas), bukan dicerminkan terhadap sumbu tegak."),
                 (d3, "", "Trapesium sudah benar, tetapi bendera diputar 90° berlawanan arah jarum jam (kain bendera menunjuk ke atas)."),
                 (d4, "", "Bendera sudah benar, tetapi trapesium tidak dicerminkan (sisi miring masih di kanan).")],
                known, "Gambar yang hubungannya dengan gambar 3 sama dengan hubungan gambar 1 ke gambar 2.",
                steps, "trapesium dengan sisi miring di kiri dan bendera yang tiangnya mendatar dengan kain menunjuk ke bawah")


def poly_with_dots(n, k, r=42, rot_deg=0, f="w"):
    return [poly(reg(n, r, -90 + rot_deg), f)] + dots_rows(k, cy=0.0, sp=13.0, r=4.2)


def L03():
    A = poly_with_dots(3, 5, r=46)
    B = poly_with_dots(4, 3, r=42, rot_deg=45)
    C = poly_with_dots(5, 7, r=44)
    ans = poly_with_dots(6, 5, r=42)
    d = [(poly_with_dots(6, 7, r=42), "segi enam dengan 7 titik",
          "Jumlah sisi sudah bertambah satu, tetapi jumlah titik tidak dikurangi (tetap 7)."),
         (poly_with_dots(6, 6, r=42), "segi enam dengan 6 titik",
          "Jumlah titik hanya dikurangi satu (7 → 6), padahal aturannya berkurang dua."),
         (poly_with_dots(5, 5, r=44), "segi lima dengan 5 titik",
          "Jumlah titik benar (5), tetapi jumlah sisi tidak bertambah (masih segi lima)."),
         (poly_with_dots(7, 5, r=43), "segi tujuh dengan 5 titik",
          "Jumlah titik benar, tetapi sisi bertambah dua (5 → 7), padahal seharusnya bertambah satu.")]
    known = [
        "Gambar 1: segitiga (3 sisi) berisi 5 titik hitam.",
        "Gambar 2: segi empat (4 sisi) berisi 3 titik hitam.",
        "Gambar 3: segi lima (5 sisi) berisi 7 titik hitam.",
    ]
    steps = [
        "Hitung unsur gambar 1 → 2. Sisi: 3 → 4, berarti bertambah 1. Titik: 5 → 3, berarti berkurang 2.",
        "Uji tafsiran lain agar tidak terkecoh: jumlah sisi + titik 3 + 5 = 8 dan 4 + 3 = 7 (tidak tetap), jadi tafsiran 'jumlah tetap' gugur. Aturan yang konsisten: sisi +1 dan titik −2.",
        "Terapkan pada gambar 3: sisi 5 + 1 = 6 (segi enam); titik 7 − 2 = 5.",
        "Cek silang: pada contoh, banyak titik gambar 2 (3) sama dengan banyak sisi gambar 1 (3); pada jawaban, banyak titik (5) juga sama dengan banyak sisi gambar 3 (5). Kedua sudut pandang memberi hasil yang sama, yaitu segi enam berisi 5 titik.",
        "Segi enam dengan 5 titik terdapat pada opsi ({K}).",
    ]
    return Item("FIG-03", D_ANALOGY, ("analogy", [A, B, C]),
                (ans, "segi enam dengan 5 titik"), d, known,
                "Gambar yang hubungannya dengan gambar 3 sama dengan hubungan gambar 1 ke gambar 2.",
                steps, "segi enam berisi 5 titik")


def nest2(outer, inner, fo, fi, ro=40, ri=15):
    def shape(kind, r, f):
        if kind == "circle":
            return circ((0, 0), r, f)
        n = {"tri": 3, "sq": 4, "hex": 6, "pent": 5}[kind]
        st = -45 if kind == "sq" else -90
        rr = r * (1.0 if kind != "tri" else 1.15)
        return poly(reg(n, rr, st, c=(0, 0 if kind != "tri" else 0)), f)
    return [shape(outer, ro, fo), shape(inner, ri, fi)]


def L04():
    A = nest2("hex", "circle", "h", "b", 42, 15)
    B = nest2("circle", "hex", "h", "b", 40, 16)
    C = nest2("tri", "sq", "b", "w", 44, 13)
    ans = nest2("sq", "tri", "b", "w", 42, 14)
    d = [(nest2("sq", "tri", "w", "b", 42, 14), "",
          "Bentuk sudah bertukar, tetapi warnanya ikut berpindah bersama bentuknya (persegi besar putih, segitiga kecil hitam). Pada contoh, warna tetap pada posisinya: bangun besar tetap berarsir, bangun kecil tetap hitam."),
         (nest2("tri", "sq", "w", "b", 44, 13), "",
          "Bentuk tidak ditukar; yang ditukar justru warnanya (segitiga besar putih, persegi kecil hitam)."),
         (nest2("sq", "tri", "b", "h", 42, 14), "",
          "Bentuk benar dan bangun besar tetap hitam, tetapi bangun kecil diberi arsiran, padahal warna bangun kecil semestinya tetap putih."),
         (nest2("sq", "tri", "h", "w", 42, 14), "",
          "Bentuk benar dan bangun kecil tetap putih, tetapi bangun besar berarsir, padahal warna bangun besar semestinya tetap hitam.")]
    known = [
        "Gambar 1: segi enam besar berarsir dengan lingkaran kecil hitam di tengahnya.",
        "Gambar 2: lingkaran besar berarsir dengan segi enam kecil hitam di tengahnya.",
        "Gambar 3: segitiga besar hitam dengan persegi kecil putih di tengahnya.",
    ]
    steps = [
        "Amati bentuk gambar 1 → 2. Segi enam yang semula besar menjadi kecil, lingkaran yang semula kecil menjadi besar. Jadi bentuk luar dan bentuk dalam bertukar ukuran (bertukar posisi).",
        "Amati warna. Posisi luar tetap berarsir (gambar 1 luar berarsir, gambar 2 luar berarsir) dan posisi dalam tetap hitam. Jadi warna melekat pada posisi, bukan pada bentuk.",
        "Ujilah tafsiran 'warna ikut bentuk': jika demikian, lingkaran besar di gambar 2 seharusnya hitam. Kenyataannya berarsir, sehingga tafsiran itu gugur.",
        "Terapkan pada gambar 3: segitiga (luar) dan persegi (dalam) bertukar, menjadi persegi besar dengan segitiga kecil di dalamnya.",
        "Warna mengikuti posisi: luar tetap hitam, dalam tetap putih. Hasilnya persegi besar hitam dengan segitiga kecil putih di tengahnya, yaitu opsi ({K}).",
    ]
    return Item("FIG-04", D_ANALOGY, ("analogy", [A, B, C]), (ans, ""), d, known,
                "Gambar yang hubungannya dengan gambar 3 sama dengan hubungan gambar 1 ke gambar 2.",
                steps, "persegi besar hitam dengan segitiga kecil putih di tengahnya")


def L05():
    tri = [poly([(0, -38), (30, 26), (-30, 26)], "w"), dot((-10, 12)), dot((10, 12))]
    pent = [poly(reg(5, 36), "w"), dot((0, -16)), dot((0, 12))]
    trap = [poly([(-36, 18), (36, 18), (18, -18), (-18, -18)], "w"), dot((-13, 4)), dot((13, 4))]
    arrow = [poly([(0, -40), (24, -12), (9, -12), (9, 36), (-9, 36), (-9, -12), (-24, -12)], "w"),
             dot((0, 8)), dot((0, 24))]
    kite = [poly([(0, -38), (24, -6), (0, 38), (-24, -6)], "w"), dot((0, -16)), dot((9, 8))]
    normals = [(rot(tri, 30), "segitiga sama kaki dengan dua titik yang letaknya setangkup terhadap garis tinggi segitiga"),
               (rot(pent, -15), "segi lima beraturan dengan dua titik pada garis yang melalui satu titik sudut dan titik tengah sisi di hadapannya"),
               (rot(trap, 90), "trapesium sama kaki (berbaring) dengan dua titik yang letaknya setangkup"),
               (rot(arrow, -45), "panah miring dengan dua titik tepat di garis tengah batang panah")]
    odd = (rot(kite, 160), "layang-layang dengan satu titik di garis tengah dan satu titik bergeser ke samping garis tengah")
    for F, _ in normals:
        assert has_mirror_axis(F)
    assert not has_mirror_axis(odd[0])
    known = ["Setiap gambar terdiri atas satu bangun datar putih dan dua titik hitam; bangun-bangun itu diletakkan dengan kemiringan berbeda-beda."]
    steps = [
        "Bentuk bangun semuanya berbeda dan kemiringannya acak, jadi pembeda bukan jenis bangun atau arah hadap. Periksa sifat yang lebih dalam: simetri lipat (sumbu simetri) seluruh gambar, termasuk letak titik.",
        "Segitiga sama kaki: sumbu simetrinya garis tinggi dari puncak. Kedua titik berhadapan setangkup terhadap garis itu, sehingga seluruh gambar tetap simetris.",
        "Segi lima beraturan: sumbu dari satu titik sudut ke titik tengah sisi di hadapannya. Kedua titik terletak tepat pada sumbu itu, sehingga gambar simetris.",
        "Trapesium sama kaki: sumbunya tegak lurus kedua sisi sejajar. Kedua titik setangkup terhadap sumbu itu, sehingga gambar simetris.",
        "Panah: sumbunya garis tengah batang. Kedua titik berada tepat di garis itu, sehingga gambar simetris.",
        "Layang-layang memiliki satu sumbu (diagonal panjang). Satu titik ada di sumbu, tetapi titik kedua bergeser ke samping tanpa pasangan setangkup. Akibatnya gambar ini tidak memiliki sumbu simetri sama sekali.",
        "Jadi empat gambar memiliki simetri lipat, sedangkan satu gambar tidak, yaitu opsi ({K}).",
    ]
    return Item("FIG-05", D_ODD, ("odd",), odd,
                [(F, d, "Gambar ini memiliki sumbu simetri lipat, sehingga termasuk kelompok yang sama.") for F, d in normals],
                known, "Gambar yang tidak mengikuti sifat yang dimiliki empat gambar lainnya.", steps,
                "layang-layang yang salah satu titiknya keluar dari sumbu simetri sehingga gambar tidak simetris", opt_desc=True)


def L06():
    base = [poly([(0, -40), (13, -20), (-13, -20)], "w"), pline([(0, -20), (0, 36)]),
            dot((-12, 26), 5.5), pline([(0, -6), (16, -6)])]
    assert_no_symmetry(base, "L06")
    normals = [(rot(base, a), "panah menghadap ke %s" % dir_name(-90 + a)) for a in (0, 135, 270, 45)]
    odd_fig = rot(tf(base, M_MV), 225)
    for F, _ in normals:
        assert not fig_eq(F, odd_fig)
    for k in range(0, 360, 45):
        assert not fig_eq(rot(base, k), odd_fig)
    odd = (odd_fig, "panah menghadap ke %s" % dir_name(-90 + 225))
    known = [
        "Setiap gambar berupa panah (ujung segitiga putih) dengan dua unsur tambahan: titik hitam di dekat pangkal panah dan garis pendek (palang) di dekat kepala panah.",
        "Arah hadap kelima panah berbeda-beda.",
    ]
    steps = [
        "Karena arah hadap berbeda-beda, bayangkan setiap gambar diputar hingga panah menghadap ke atas, lalu periksa letak kedua unsur tambahan.",
        "Pada empat gambar, setelah panah menghadap ke atas: titik hitam berada di KIRI batang dekat pangkal, sedangkan palang berada di KANAN batang dekat kepala. Keempatnya sebenarnya satu gambar yang diputar dengan sudut berbeda (0°, 45°, 135°, dan 270°).",
        "Pada satu gambar, setelah panah menghadap ke atas, titik hitam ada di KANAN batang dan palang di KIRI batang. Susunan ini tidak bisa diperoleh dengan memutar, karena perputaran tidak pernah menukar sisi kiri-kanan. Gambar itu adalah bayangan cermin.",
        "Cara cepat: berdiri di pangkal panah menghadap ke ujungnya; pada gambar biasa titik ada di tangan kiri, sedangkan pada gambar cermin titik ada di tangan kanan.",
        "Gambar yang merupakan bayangan cermin adalah opsi ({K}).",
    ]
    return Item("FIG-06", D_ODD, ("odd",), odd,
                [(F, d, "Gambar ini hasil perputaran gambar yang sama (%s); jika diputar hingga panah menghadap ke atas, titik hitam berada di kiri batang dan palang di kanan batang." % d) for F, d in normals],
                known, "Gambar yang tidak dapat diperoleh dengan memutar gambar-gambar lainnya.", steps,
                "panah yang merupakan bayangan cermin (titik hitam di kanan batang dan palang di kiri batang)", opt_desc=True)


POS8 = [(-27, -27), (0, -27), (27, -27), (27, 0), (27, 27), (0, 27), (-27, 27), (-27, 0)]
POS8N = ["kiri atas", "tengah atas", "kanan atas", "tengah kanan", "kanan bawah", "tengah bawah", "kiri bawah", "tengah kiri"]


def frame_dot_tri(d, t):
    return [poly([(-42, -42), (42, -42), (42, 42), (-42, 42)], "w"),
            dot(POS8[d % 8], 8.5), poly(reg(3, 12, -90, c=(POS8[t % 8][0], POS8[t % 8][1] + 2)), "w")]


def L07():
    d0, t0 = 0, 5
    frames = []
    for k in range(4):
        d, t = (d0 + k) % 8, (t0 - 2 * k) % 8
        assert d != t
        frames.append(frame_dot_tri(d, t))
    D4, T4 = (d0 + 4) % 8, (t0 - 8) % 8
    ans = frame_dot_tri(D4, T4)
    T3 = (t0 - 6) % 8
    D3 = (d0 + 3) % 8
    ds = [(frame_dot_tri(D4, T3), "", "Titik benar, tetapi segitiga tidak berpindah (tetap di %s seperti gambar ke-4)." % POS8N[T3]),
          (frame_dot_tri(D3, T4), "", "Segitiga benar, tetapi titik tidak bergerak (masih di %s seperti gambar ke-4)." % POS8N[D3 % 8]),
          (frame_dot_tri(D4, T3 + 2), "", "Titik benar, tetapi segitiga bergerak dua langkah searah jarum jam (ke %s), padahal arahnya berlawanan jarum jam." % POS8N[(T3 + 2) % 8]),
          (frame_dot_tri(D3 - 1, T4), "", "Segitiga benar, tetapi titik bergerak mundur (berlawanan jarum jam) ke %s." % POS8N[(D3 - 1) % 8])]
    for F, _, _ in ds:
        pass
    seq = ["gambar %d: titik di %s, segitiga di %s" % (k + 1, POS8N[(d0 + k) % 8], POS8N[(t0 - 2 * k) % 8]) for k in range(4)]
    known = ["Setiap persegi memuat titik hitam dan segitiga putih yang menempati salah satu dari 8 posisi tepi (4 sudut dan 4 tengah sisi)."] + \
        [s[0].upper() + s[1:] + "." for s in seq]
    steps = [
        "Lacak titik hitam: kiri atas → tengah atas → kanan atas → tengah kanan. Titik bergerak SATU posisi searah jarum jam setiap langkah.",
        "Lacak segitiga: tengah bawah → tengah kanan → tengah atas → tengah kiri. Setiap langkah segitiga melompati satu posisi, artinya bergerak DUA posisi berlawanan arah jarum jam (contoh: dari tengah bawah, lewat kanan bawah, ke tengah kanan).",
        "Langkah ke-5 untuk titik: dari tengah kanan maju satu posisi searah jarum jam → kanan bawah.",
        "Langkah ke-5 untuk segitiga: dari tengah kiri mundur dua posisi berlawanan jarum jam (lewat kiri bawah) → tengah bawah.",
        "Jadi gambar ke-5: titik di kanan bawah, segitiga di tengah bawah. Kedua unsur tidak bertabrakan. Gambar ini adalah opsi ({K}).",
    ]
    return Item("FIG-07", D_SERIES, ("series", frames), (ans, ""), ds, known,
                "Gambar ke-5 yang melanjutkan deret.", steps, "titik hitam di kanan bawah dan segitiga di tengah bawah")


def octo_spokes(spokes, dotv, center_f):
    V = reg(8, 40, -90)
    out = [poly(V, "w")]
    for v in spokes:
        x, y = V[v]
        L = math.hypot(x, y)
        out.append(pline([(x / L * 9, y / L * 9), (x, y)]))
    if dotv is not None:
        x, y = V[dotv]
        out.append(dot((x * 0.72, y * 0.72), 6.5))
    out.append(circ((0, 0), 9, center_f))
    return out


def L08():
    frames = []
    for k in range(1, 5):
        frames.append(octo_spokes(range(k), k - 1, "w" if k % 2 == 1 else "b"))
    ans = octo_spokes(range(5), 4, "w")
    ds = [(octo_spokes(range(5), 4, "b"), "", "Jari-jari dan letak titik benar, tetapi lingkaran pusat hitam. Warna pusat berselang putih-hitam, sehingga setelah hitam (gambar ke-4) seharusnya putih."),
          (octo_spokes(range(5), 0, "w"), "", "Ada 5 jari-jari dan pusat putih, tetapi titik hitam berada di jari-jari pertama, bukan di jari-jari yang paling baru ditambahkan."),
          (octo_spokes(range(6), 5, "w"), "", "Jari-jari bertambah dua sekaligus (menjadi 6), padahal setiap langkah hanya bertambah satu."),
          (octo_spokes([0, 1, 2, 3, 5], 5, "w"), "", "Jari-jari baru melompati satu titik sudut, sehingga tidak bersebelahan searah jarum jam dengan jari-jari sebelumnya.")]
    known = [
        "Setiap gambar berupa segi delapan dengan lingkaran kecil di pusat dan sejumlah jari-jari dari pusat ke titik sudut.",
        "Gambar 1: 1 jari-jari (ke sudut atas), titik hitam pada jari-jari itu, pusat putih.",
        "Gambar 2: 2 jari-jari, titik hitam pada jari-jari ke-2 (sudut kanan atas), pusat hitam.",
        "Gambar 3: 3 jari-jari, titik hitam pada jari-jari ke-3 (sudut kanan), pusat putih.",
        "Gambar 4: 4 jari-jari, titik hitam pada jari-jari ke-4 (sudut kanan bawah), pusat hitam.",
    ]
    steps = [
        "Aturan 1 (penambahan tetap): setiap langkah bertambah tepat satu jari-jari, dipasang pada titik sudut berikutnya searah jarum jam. Jadi 1, 2, 3, 4 → gambar ke-5 memiliki 5 jari-jari (sudut atas sampai sudut bawah) tanpa celah.",
        "Aturan 2: titik hitam selalu berada pada jari-jari yang PALING BARU ditambahkan. Pada gambar ke-5 titik berada pada jari-jari ke-5, yaitu yang menuju sudut bawah.",
        "Aturan 3 (berselang): lingkaran pusat berganti putih, hitam, putih, hitam, sehingga gambar ke-5 berwarna putih.",
        "Gabungkan: 5 jari-jari berurutan, titik hitam di jari-jari ke arah bawah, pusat putih. Gambar ini adalah opsi ({K}).",
    ]
    return Item("FIG-08", D_SERIES, ("series", frames), (ans, ""), ds, known,
                "Gambar ke-5 yang melanjutkan deret.", steps,
                "segi delapan dengan 5 jari-jari berurutan, titik hitam pada jari-jari ke arah bawah, dan pusat putih")


def clock_arrow(a, head_f):
    u = (math.cos(math.radians(a)), math.sin(math.radians(a)))
    n = (-u[1], u[0])
    tip = (36 * u[0], 36 * u[1])
    base = (10 * u[0], 10 * u[1])
    head = poly([tip, (base[0] + 13 * n[0], base[1] + 13 * n[1]), (base[0] - 13 * n[0], base[1] - 13 * n[1])], head_f)
    return [circ((0, 0), 44, "w"), pline([(-24 * u[0], -24 * u[1]), base], sw=3.6), head]


def L09():
    angs = [-90, -30, 30, 90]
    fills = ["w", "h", "b", "w"]
    frames = [clock_arrow(a, f) for a, f in zip(angs, fills)]
    ans = clock_arrow(150, "h")
    ds = [(clock_arrow(150, "b"), "", "Arah panah benar (jam 8), tetapi kepala panah hitam. Urutan warna putih → berarsir → hitam berulang, sehingga setelah putih seharusnya berarsir."),
          (clock_arrow(150, "w"), "", "Arah panah benar, tetapi kepala panah tetap putih seperti gambar ke-4; urutan warna tidak dilanjutkan."),
          (clock_arrow(210, "h"), "", "Warna benar, tetapi panah berputar 120° (ke arah jam 10), padahal setiap langkah hanya 60°."),
          (clock_arrow(30, "h"), "", "Warna benar, tetapi panah berputar mundur 60° berlawanan arah jarum jam (ke arah jam 4).")]
    known = [
        "Gambar 1: panah menunjuk arah jam 12, kepala panah putih.",
        "Gambar 2: panah menunjuk arah jam 2, kepala panah berarsir.",
        "Gambar 3: panah menunjuk arah jam 4, kepala panah hitam.",
        "Gambar 4: panah menunjuk arah jam 6, kepala panah putih.",
    ]
    steps = [
        "Aturan arah: dari jam 12 ke jam 2, jam 4, lalu jam 6. Setiap langkah panah berpindah 2 'jam'. Karena satu jam = 30°, panah berputar 60° searah jarum jam setiap langkah.",
        "Langkah ke-5: dari jam 6 ditambah 60° → arah jam 8 (kiri bawah).",
        "Aturan warna kepala panah: putih → berarsir → hitam → putih. Ini siklus tiga warna yang berulang.",
        "Langkah ke-5: setelah putih (gambar ke-4) datang berarsir, seperti urutan gambar 1 → 2.",
        "Gambar ke-5: panah menunjuk jam 8 dengan kepala berarsir, yaitu opsi ({K}).",
    ]
    return Item("FIG-09", D_SERIES, ("series", frames), (ans, ""), ds, known,
                "Gambar ke-5 yang melanjutkan deret.", steps, "panah menunjuk arah jam 8 dengan kepala panah berarsir")


def two_hands(La, Sa):
    def u(a):
        return (math.cos(math.radians(a)), math.sin(math.radians(a)))
    lu, su = u(La), u(Sa)
    ln = (-lu[1], lu[0])
    tip = (36 * lu[0], 36 * lu[1])
    b = (24 * lu[0], 24 * lu[1])
    return [circ((0, 0), 44, "w"),
            pline([(0, 0), b], sw=4),
            poly([tip, (b[0] + 7 * ln[0], b[1] + 7 * ln[1]), (b[0] - 7 * ln[0], b[1] - 7 * ln[1])], "b"),
            pline([(0, 0), (16 * su[0], 16 * su[1])], sw=3.4),
            dot((21 * su[0], 21 * su[1]), 6),
            dot((0, 0), 3.5)]


def L10():
    L0, S0 = -90, 0
    frames = []
    for k in range(4):
        La, Sa = L0 + 90 * k, S0 - 45 * k
        assert norm_ang(La) != norm_ang(Sa)
        frames.append(two_hands(La, Sa))
    ans = two_hands(L0 + 360, S0 - 180)
    ds = [(two_hands(-90, -135), "", "Jarum panjang benar (kembali ke atas), tetapi jarum pendek tidak bergerak (masih di kiri atas seperti gambar ke-4)."),
          (two_hands(90, 180), "", "Jarum pendek benar, tetapi jarum panjang berputar mundur 90° (dari kiri ke bawah), padahal arahnya searah jarum jam."),
          (two_hands(-90, 135), "", "Jarum panjang benar, tetapi jarum pendek berputar 90° (dari kiri atas ke kiri bawah), padahal setiap langkah hanya 45°."),
          (two_hands(180, -90), "", "Kedua jarum tertukar: jarum panjang menunjuk ke kiri dan jarum pendek ke atas.")]
    known = [
        "Setiap gambar berupa lingkaran dengan dua jarum: jarum panjang berujung panah dan jarum pendek berujung titik hitam.",
        "Gambar 1: jarum panjang ke atas, jarum pendek ke kanan.",
        "Gambar 2: jarum panjang ke kanan, jarum pendek ke kanan atas.",
        "Gambar 3: jarum panjang ke bawah, jarum pendek ke atas.",
        "Gambar 4: jarum panjang ke kiri, jarum pendek ke kiri atas.",
    ]
    steps = [
        "Pisahkan kedua jarum karena masing-masing punya aturan sendiri.",
        "Jarum panjang: atas → kanan → bawah → kiri. Setiap langkah berputar 90° searah jarum jam. Langkah ke-5: dari kiri berputar 90° → kembali ke ATAS. Jangan terkecoh mengira jarum harus menunjuk arah baru.",
        "Jarum pendek: kanan → kanan atas → atas → kiri atas. Setiap langkah berputar 45° berlawanan arah jarum jam. Langkah ke-5: dari kiri atas berputar 45° → KIRI.",
        "Gambar ke-5: jarum panjang ke atas dan jarum pendek ke kiri. Gambar ini adalah opsi ({K}).",
    ]
    return Item("FIG-09", D_SERIES, ("series", frames), (ans, ""), ds, known,
                "Gambar ke-5 yang melanjutkan deret.", steps, "jarum panjang menunjuk ke atas dan jarum pendek menunjuk ke kiri")


def latin_cell(S, F, N):
    if S == 0:
        sh = circ((0, -10), 25, F)
    elif S == 1:
        sh = poly([(-22, -32), (22, -32), (22, 12), (-22, 12)], F)
    else:
        sh = poly([(0, -38), (27, 12), (-27, 12)], F)
    return [sh] + [dot(((j - (N - 1) / 2) * 14, 31), 5) for j in range(N)]


SN = ["lingkaran", "persegi", "segitiga"]
FN = ["putih", "hitam", "berarsir"]


def L11():
    S = [[0, 1, 2], [1, 2, 0], [2, 0, 1]]
    F = [[0, 1, 2], [2, 0, 1], [1, 2, 0]]
    N = [[2, 3, 1], [1, 2, 3], [3, 1, 2]]
    FF = ["w", "b", "h"]
    grid = [[latin_cell(S[r][c], FF[F[r][c]], N[r][c]) for c in range(3)] for r in range(3)]
    grid[2][2] = None
    ans = latin_cell(1, "w", 2)
    ds = [(latin_cell(2, "w", 2), "", "Warna dan jumlah titik benar, tetapi bentuknya segitiga, padahal baris ke-3 sudah memiliki segitiga."),
          (latin_cell(1, "b", 2), "", ""),
          (latin_cell(1, "w", 3), "", "Bentuk dan warna benar, tetapi titiknya 3, padahal baris ke-3 sudah memiliki 3 titik."),
          (latin_cell(1, "w", 1), "", "Bentuk dan warna benar, tetapi titiknya 1, padahal baris ke-3 sudah memiliki 1 titik.")]
    ds[1] = (ds[1][0], "", "Bentuk dan jumlah titik benar, tetapi bangunnya hitam, padahal pada kolom ke-3 warna hitam sudah muncul (baris ke-2), dan pada baris ke-3 pun sudah ada bangun hitam.")
    known = []
    for r in range(3):
        cells = []
        for c in range(3):
            if r == 2 and c == 2:
                cells.append("?")
            else:
                cells.append("%s %s, %d titik" % (SN[S[r][c]], FN[F[r][c]], N[r][c]))
        known.append("Baris %d: %s." % (r + 1, "; ".join(cells)))
    steps = [
        "Setiap sel memiliki tiga sifat: bentuk bangun, warna bangun, dan jumlah titik di bawahnya. Periksa setiap sifat secara terpisah.",
        "Bentuk: setiap baris dan setiap kolom memuat lingkaran, persegi, dan segitiga masing-masing tepat satu kali. Baris ke-3 sudah memiliki segitiga dan lingkaran, sehingga kurang PERSEGI. Cek kolom ke-3: segitiga, lingkaran → kurang persegi (cocok).",
        "Warna: setiap baris dan kolom memuat putih, hitam, dan berarsir masing-masing sekali. Baris ke-3 sudah memiliki hitam dan berarsir, sehingga kurang PUTIH. Cek kolom ke-3: berarsir, hitam → kurang putih (cocok).",
        "Jumlah titik: setiap baris dan kolom memuat 1, 2, dan 3 titik masing-masing sekali. Baris ke-3 sudah memiliki 3 dan 1, sehingga kurang 2. Cek kolom ke-3: 1, 3 → kurang 2 (cocok).",
        "Sel yang hilang: persegi putih dengan 2 titik, yaitu opsi ({K}).",
    ]
    return Item("FIG-10", D_MATRIX, ("matrix", grid), (ans, ""), ds, known,
                "Gambar yang tepat untuk sel baris ke-3 kolom ke-3.", steps, "persegi putih dengan 2 titik")


# segmen pada kisi 3x3 (titik -30, 0, 30)
SEG = {
    0: ((-30, -30), (30, -30)), 1: ((-30, 30), (30, 30)), 2: ((-30, -30), (-30, 30)), 3: ((30, -30), (30, 30)),
    4: ((-30, -30), (30, 30)), 5: ((30, -30), (-30, 30)), 6: ((0, -30), (0, 30)), 7: ((-30, 0), (30, 0)),
    8: ((0, -30), (30, 0)), 9: ((30, 0), (0, 30)), 10: ((0, 30), (-30, 0)), 11: ((-30, 0), (0, -30)),
}
SEGN = {0: "sisi atas", 1: "sisi bawah", 2: "sisi kiri", 3: "sisi kanan", 4: "diagonal \\",
        5: "diagonal /", 6: "garis tengah tegak", 7: "garis tengah mendatar",
        8: "serong kanan atas", 9: "serong kanan bawah", 10: "serong kiri bawah", 11: "serong kiri atas"}


def segfig(S):
    out = []
    for x in (-30, 0, 30):
        for y in (-30, 0, 30):
            out.append(dot((x, y), 2.4))
    for s in sorted(S):
        out.append(pline(list(SEG[s]), sw=3.6))
    return out


def segdesc(S):
    return ", ".join(SEGN[s] for s in sorted(S)) if S else "kosong"


def check_setop(rows, op):
    ops = {"and": lambda a, b: a & b, "or": lambda a, b: a | b, "xor": lambda a, b: a ^ b,
           "a-b": lambda a, b: a - b, "b-a": lambda a, b: b - a}
    for a, b, c in rows:
        good = [k for k, f in ops.items() if f(a, b) == c]
        assert good == [op], (good, op)


def L12():
    r1 = ({0, 4, 6, 8, 10}, {0, 5, 6, 9, 10})
    r2 = ({1, 2, 5, 7, 11}, {2, 3, 5, 8, 11})
    r3 = ({0, 3, 4, 7, 9, 11}, {1, 3, 4, 6, 9})
    rows = [(a, b, a & b) for a, b in (r1, r2)]
    check_setop(rows, "and")
    ansS = r3[0] & r3[1]
    grid = [[segfig(a), segfig(b), segfig(c)] for a, b, c in rows] + [[segfig(r3[0]), segfig(r3[1]), None]]
    ds = [(segfig(r3[0] | r3[1]), "", "Merupakan gabungan semua garis dari kolom 1 dan 2. Pada baris contoh, kolom 3 tidak memuat garis yang hanya dimiliki salah satu gambar."),
          (segfig(r3[0] ^ r3[1]), "", "Hanya memuat garis yang TIDAK sama (garis sama dihapus). Aturan ini kebalikan dari aturan yang benar."),
          (segfig(ansS - {9}), "", "Garis serong kanan bawah tidak ada, padahal garis itu dimiliki kedua gambar sehingga harus tetap muncul."),
          (segfig(ansS | {7}), "", "Memuat garis tengah mendatar, padahal garis itu hanya dimiliki gambar kolom 1, bukan kolom 2.")]
    known = ["Setiap sel berupa susunan garis pada kisi 3 × 3 titik. Istilah: diagonal \\ = kiri atas–kanan bawah, diagonal / = kanan atas–kiri bawah, garis serong = garis yang menghubungkan titik tengah dua sisi yang bersebelahan (mis. serong kanan bawah = tengah kanan–tengah bawah)."]
    for i, (a, b, c) in enumerate(rows):
        known.append("Baris %d: kolom 1 = {%s}; kolom 2 = {%s}; kolom 3 = {%s}." % (i + 1, segdesc(a), segdesc(b), segdesc(c)))
    known.append("Baris 3: kolom 1 = {%s}; kolom 2 = {%s}; kolom 3 = ?" % (segdesc(r3[0]), segdesc(r3[1])))
    steps = [
        "Uji beberapa kemungkinan operasi pada baris 1. Gabungan kolom 1 dan 2 memuat 7 garis, sedangkan kolom 3 hanya memuat 3 garis, jadi bukan penggabungan.",
        "Garis yang sama pada kolom 1 dan 2 di baris 1 adalah sisi atas, garis tengah tegak, dan garis serong kiri bawah. Kolom 3 memuat tepat ketiga garis itu. Jadi kolom 3 = garis yang dimiliki KEDUA gambar (irisan).",
        "Cek baris 2: garis yang sama pada kolom 1 dan 2 adalah sisi kiri, diagonal /, dan garis serong kiri atas, persis isi kolom 3. Aturan terbukti. Aturan 'hapus garis yang sama' juga gugur karena justru garis yang sama yang tersisa.",
        "Garis yang ada di keduanya: %s. Garis lain (sisi atas, garis tengah mendatar, garis serong kiri atas, sisi bawah, garis tengah tegak) hanya dimiliki satu gambar, sehingga dibuang." % segdesc(ansS),
        "Hasilnya tiga garis: sisi kanan, diagonal \\, dan serong kanan bawah, yaitu opsi ({K}).",
    ]
    return Item("FIG-10", D_MATRIX, ("matrix", grid), (segfig(ansS), ""), ds, known,
                "Gambar pada baris 3 kolom 3.", steps, "susunan tiga garis: sisi kanan, diagonal \\, dan garis serong kanan bawah")


# ===========================================================================
# SET R
# ===========================================================================
def R01():
    key = [circ((-26, 0), 12, "w"), pline([(-14, 0), (34, 0)]), pline([(22, 0), (22, 11)]), pline([(30, 0), (30, 11)]),
           dot((-26, 0), 4)]
    flag = [pline([(-8, 38), (-8, -36)]), poly([(-8, -36), (24, -25), (-8, -14)], "b"), pline([(-22, 38), (6, 38)]),
            circ((-8, 6), 5, "w")]
    assert_no_symmetry(key, "R01-key")
    assert_no_symmetry(flag, "R01-flag")
    S = M_scale(0.62)
    A = key
    B = tf(rot(key, 135), S)
    C = flag
    ans = tf(rot(flag, 135), S)
    hits = [n for n, im in dihedral_images(key) if fig_eq(tf(im, S), B)]
    assert hits == ["rot135"], hits
    ds = [(tf(rot(flag, -135), S), "", "Diperkecil dengan benar, tetapi diputar 135° berlawanan arah jarum jam."),
          (tf(rot(flag, 45), S), "", "Diperkecil dengan benar, tetapi hanya diputar 45° searah jarum jam."),
          (rot(flag, 135), "", "Arah dan besar putaran benar, tetapi ukurannya tidak diperkecil."),
          (tf(ans, M_MV), "", "Merupakan bayangan cermin dari jawaban benar (kain bendera berada di sisi yang berlawanan); pencerminan tidak dapat diperoleh dengan perputaran.")]
    known = [
        "Gambar 1: kunci besar mendatar; kepala bulat di kiri, batang ke kanan, dua gerigi menghadap ke bawah.",
        "Gambar 2: kunci yang sama tetapi lebih kecil (sekitar 0,6 kali), dengan batang mengarah ke kiri bawah dan kepala di kanan atas.",
        "Gambar 3: bendera besar; tiang tegak, kain bendera hitam di kanan atas tiang, alas mendatar di bawah, dan lingkaran kecil di tengah tiang.",
    ]
    steps = [
        "Tentukan perputaran pada contoh. Ujung batang kunci semula menunjuk ke kanan (0°), lalu menunjuk ke kiri bawah. Arah kanan → kanan bawah (45°) → bawah (90°) → kiri bawah (135°) adalah putaran 135° searah jarum jam.",
        "Pastikan itu perputaran, bukan pencerminan. Pada gambar 1 gerigi menghadap ke bawah, yaitu di sisi kanan jika kita berjalan dari kepala ke ujung batang. Pada gambar 2 gerigi tetap di sisi kanan arah jalan itu. Sisi yang tidak tertukar menandakan perputaran.",
        "Aturan kedua: ukuran gambar 2 lebih kecil daripada gambar 1 (diperkecil).",
        "Terapkan pada bendera: tiang yang semula menunjuk ke atas (ujung kain) diputar 135° searah jarum jam. Atas → kanan atas → kanan → kanan bawah, sehingga ujung tiang yang berkain kini menunjuk ke kanan bawah dan alas berada di kiri atas.",
        "Kain bendera yang semula di kanan tiang tetap berada di sisi yang sama relatif terhadap tiang, lalu seluruh gambar diperkecil. Gambar ini adalah opsi ({K}).",
    ]
    return Item("FIG-01", D_ANALOGY, ("analogy", [A, B, C]), (ans, ""), ds, known,
                "Gambar yang hubungannya dengan gambar 3 sama dengan hubungan gambar 1 ke gambar 2.", steps,
                "bendera yang diputar 135° searah jarum jam (ujung tiang berkain menunjuk ke kanan bawah) dan diperkecil")


def R02():
    A = [poly([(-34, -22), (30, -22), (-34, 32)], "w"), dot((-24, -12), 5.5), pline([(30, -22), (42, -36)]),
         circ((42, -40), 4.5, "b")]
    C = [poly([(-30, -36), (-14, -36), (-14, 18), (30, 18), (30, 34), (-30, 34)], "w"), dot((-22, -26), 5),
         poly([(30, 18), (42, 26), (30, 34)], "b")]
    assert_no_symmetry(A, "R02-A")
    assert_no_symmetry(C, "R02-C")
    B = tf(A, M_MD1)
    hits = [n for n, im in dihedral_images(A) if fig_eq(im, B)]
    assert len(hits) == 1
    ans = tf(C, M_MD1)
    ds = [(tf(C, M_MD2), "", "Dicerminkan terhadap diagonal yang salah (garis kanan atas–kiri bawah)."),
          (rot(C, 90), "", "Diputar 90° searah jarum jam. Hasilnya mirip, tetapi sisi bangun tertukar sehingga bukan hasil pencerminan."),
          (rot(C, -90), "", "Diputar 90° berlawanan arah jarum jam; perputaran tidak sama dengan pencerminan diagonal."),
          (tf(C, M_MV), "", "Dicerminkan terhadap sumbu tegak (kiri-kanan), bukan terhadap diagonal.")]
    known = [
        "Gambar 1: segitiga siku-siku dengan sudut siku-siku di kiri atas; kaki mendatar (atas) lebih panjang daripada kaki tegak (kiri); titik hitam di dekat sudut siku-siku; tangkai berujung titik keluar dari sudut kanan atas ke arah kanan atas.",
        "Gambar 2: segitiga siku-siku dengan sudut siku-siku tetap di kiri atas, tetapi kini kaki tegak (kiri) yang lebih panjang; tangkai keluar dari sudut kiri bawah ke arah kiri bawah.",
        "Gambar 3: bangun berbentuk huruf L (batang tegak di kiri, kaki mendatar ke kanan di bawah) dengan titik hitam di ujung atas batang dan segitiga hitam kecil di ujung kanan kaki.",
    ]
    steps = [
        "Cari sumbu pencerminan pada contoh. Sudut siku-siku di kiri atas tidak berpindah, sedangkan kaki mendatar dan kaki tegak bertukar. Titik yang tidak bergerak berada di sumbu, sehingga sumbunya adalah diagonal dari kiri atas ke kanan bawah (\\).",
        "Uji: sudut kanan atas (ujung kaki mendatar) berpindah ke kiri bawah, persis bayangannya terhadap diagonal \\. Perputaran 90° tidak cocok karena perputaran akan memindahkan sudut siku-siku dari kiri atas.",
        "Aturan pencerminan diagonal \\: setiap titik (x, y) menjadi (y, x). Unsur di kanan pindah ke bawah, unsur di atas pindah ke kiri, dan sebaliknya.",
        "Terapkan pada huruf L: batang tegak di kiri menjadi batang mendatar di atas; kaki mendatar di bawah menjadi kaki tegak di kanan. Titik hitam di ujung atas batang pindah ke ujung kiri batang mendatar; segitiga hitam di ujung kanan kaki pindah ke ujung bawah kaki tegak dan menunjuk ke bawah.",
        "Hasilnya bangun seperti angka 7 bersiku (batang mendatar di atas, kaki turun di kanan) dengan segitiga hitam di ujung bawah. Gambar ini adalah opsi ({K}).",
    ]
    return Item("FIG-02", D_ANALOGY, ("analogy", [A, B, C]), (ans, ""), ds, known,
                "Gambar yang hubungannya dengan gambar 3 sama dengan hubungan gambar 1 ke gambar 2.", steps,
                "hasil pencerminan huruf L terhadap diagonal kiri atas–kanan bawah (batang mendatar di atas, kaki turun di kanan, segitiga hitam di ujung bawah)")


def R03():
    P1, P2 = {0, 4, 7, 8}, {4, 6, 7, 10}
    Q1, Q2 = {1, 3, 5, 6, 9}, {2, 5, 6, 11}
    check_setop([(P1, P2, P1 ^ P2)], "xor")
    ansS = Q1 ^ Q2
    ds = [(segfig(Q1 | Q2), "", "Semua garis digabung, termasuk garis yang sama (diagonal / dan garis tengah tegak), padahal garis yang sama seharusnya hilang."),
          (segfig(Q1 & Q2), "", "Hanya menyisakan garis yang sama, kebalikan dari aturan."),
          (segfig(ansS - {11}), "", "Garis serong kiri atas hilang, padahal garis itu hanya dimiliki gambar kedua sehingga harus tetap muncul."),
          (segfig(ansS | {6}), "", "Garis tengah tegak masih ada, padahal garis itu dimiliki kedua gambar sehingga harus hilang.")]
    layout = ("combine", [[segfig(P1), segfig(P2), segfig(P1 ^ P2)], [segfig(Q1), segfig(Q2), None]])
    known = [
        "Setiap gambar berupa susunan garis pada kisi 3 × 3 titik. Garis serong = garis yang menghubungkan titik tengah dua sisi yang bersebelahan (mis. serong kiri atas = tengah kiri–tengah atas).",
        "Baris 1: gambar 1 = {%s}; gambar 2 = {%s}; hasil = {%s}." % (segdesc(P1), segdesc(P2), segdesc(P1 ^ P2)),
        "Baris 2: gambar 1 = {%s}; gambar 2 = {%s}; hasil = ?" % (segdesc(Q1), segdesc(Q2)),
    ]
    steps = [
        "Pelajari baris 1. Garis yang dimiliki kedua gambar adalah diagonal \\ dan garis tengah mendatar. Keduanya TIDAK muncul pada hasil.",
        "Garis yang hanya dimiliki salah satu gambar (sisi atas dan garis serong kanan atas dari gambar 1; garis tengah tegak dan garis serong kiri bawah dari gambar 2) semuanya muncul pada hasil.",
        "Aturan: kedua gambar ditumpuk; garis yang bertumpuk (sama) saling menghapus, garis yang tidak bertumpuk dipertahankan.",
        "Baris 2: garis yang sama pada kedua gambar adalah diagonal / dan garis tengah tegak, sehingga keduanya dihapus.",
        "Garis yang tersisa: dari gambar 1 sisi bawah, sisi kanan, dan garis serong kanan bawah; dari gambar 2 sisi kiri dan garis serong kiri atas.",
        "Hasil = {%s}, yaitu opsi ({K})." % segdesc(ansS),
    ]
    return Item("FIG-03", ("Perhatikan gambar berikut. Pada baris pertama, gambar hasil diperoleh dengan menumpuk gambar pertama dan "
                           "gambar kedua menurut aturan tertentu. Dengan aturan yang sama, gambar manakah yang tepat mengisi tanda tanya pada baris kedua?"),
                layout, (segfig(ansS), ""), ds, known, "Gambar hasil pada baris kedua.", steps,
                "susunan lima garis: sisi bawah, sisi kanan, sisi kiri, garis serong kanan bawah, dan garis serong kiri atas")


def nest3(outer, fo, fm, fi, outer_rot=0, mid_rot=0, kind="A"):
    if kind == "A":
        o = poly(reg(3, 52, -90 + outer_rot), fo)
        m = circ((0, 0), 21, fm)
        i = poly(reg(4, 15, -45 + mid_rot), fi)
        return [o, m, i]
    o = poly(reg(5, 50, -90 + outer_rot), fo)
    m = poly(reg(4, 33, -45 + mid_rot), fm)
    i = circ((0, 0), 13, fi)
    return [o, m, i]


def R04():
    A = nest3(None, "b", "w", "h", 0, 0, "A")
    B = nest3(None, "h", "b", "w", 180, 0, "A")
    C = nest3(None, "w", "h", "b", 0, 0, "C")
    ans = nest3(None, "b", "w", "h", 180, 0, "C")
    ds = [(nest3(None, "h", "b", "w", 180, 0, "C"), "", "Segi lima sudah diputar, tetapi warna digeser ke arah LUAR (luar = berarsir, tengah = hitam, dalam = putih), kebalikan dari aturan."),
          (nest3(None, "b", "w", "h", 0, 0, "C"), "", "Warna sudah benar, tetapi segi lima tidak diputar 180° (masih menghadap ke atas)."),
          (nest3(None, "w", "h", "b", 180, 0, "C"), "", "Segi lima sudah diputar, tetapi warna tidak bergeser sama sekali."),
          (nest3(None, "b", "w", "h", 180, 45, "C"), "", "Warna dan putaran segi lima benar, tetapi persegi di lapisan tengah ikut diputar 45° menjadi belah ketupat, padahal hanya bangun terluar yang berputar.")]
    known = [
        "Gambar 1: tiga lapis bangun. Luar: segitiga menghadap ke atas, hitam. Tengah: lingkaran putih. Dalam: persegi berarsir.",
        "Gambar 2: luar: segitiga menghadap ke bawah, berarsir. Tengah: lingkaran hitam. Dalam: persegi putih.",
        "Gambar 3: luar: segi lima menghadap ke atas, putih. Tengah: persegi berarsir. Dalam: lingkaran hitam.",
    ]
    steps = [
        "Bentuk: hanya bangun terluar yang berubah arah (segitiga menghadap atas → bawah, yaitu diputar 180°). Lingkaran dan persegi di dalamnya tidak berubah.",
        "Warna, lapis demi lapis: hitam (luar) pindah ke tengah; putih (tengah) pindah ke dalam; arsir (dalam) pindah ke luar. Jadi setiap warna bergeser SATU lapis ke dalam, dan warna terdalam kembali ke lapisan luar.",
        "Terapkan pada gambar 3: warna luar putih → pindah ke tengah; warna tengah berarsir → pindah ke dalam; warna dalam hitam → pindah ke luar.",
        "Hasil warna: luar hitam, tengah putih, dalam berarsir. Segi lima diputar 180° sehingga menghadap ke bawah, sedangkan persegi tengah dan lingkaran dalam tetap.",
        "Gambar ini adalah opsi ({K}).",
    ]
    return Item("FIG-04", D_ANALOGY, ("analogy", [A, B, C]), (ans, ""), ds, known,
                "Gambar yang hubungannya dengan gambar 3 sama dengan hubungan gambar 1 ke gambar 2.", steps,
                "segi lima menghadap ke bawah berwarna hitam, persegi tengah putih, dan lingkaran dalam berarsir")


def group_polys(ns, rots):
    if len(ns) == 2:
        cs, r = [(-22, 0), (22, 0)], 19
    else:
        cs, r = [(0, -22), (-23, 18), (23, 18)], 16.5
    out = []
    for (cx, cy), n, a in zip(cs, ns, rots):
        out.append(poly(reg(n, r, -90 + a, c=(cx, cy)), "w"))
    return out


def R05():
    normals = [((6, 6), (0, 30)), ((3, 3, 6), (180, 0, 10)), ((3, 4, 5), (0, 45, 36)), ((4, 4, 4), (45, 0, 20))]
    oddn = ((3, 5), (60, 0))
    nm = lambda ns: " + ".join(NAMES_POLY[n] for n in ns)
    norm_items = []
    for ns, rs in normals:
        d = "%s (jumlah sisi %s = %d)" % (nm(ns), " + ".join(map(str, ns)), sum(ns))
        norm_items.append((group_polys(ns, rs), d, "Jumlah seluruh sisi = %s = %d, sama dengan kelompok mayoritas." % (" + ".join(map(str, ns)), sum(ns))))
    oddF = group_polys(*oddn)
    known = ["Setiap gambar memuat dua atau tiga segi banyak beraturan berwarna putih."]
    steps = [
        "Jenis bangun dan banyak bangun tidak dapat dijadikan pembeda. Gambar dengan dua bangun ada dua, dengan tiga bangun ada tiga; segitiga, persegi, segi lima, dan segi enam masing-masing muncul pada lebih dari satu gambar. Karena itu periksa besaran gabungan, yaitu JUMLAH SISI seluruh bangun dalam satu gambar.",
        "Segi enam + segi enam: 6 + 6 = 12.",
        "Segitiga + segitiga + segi enam: 3 + 3 + 6 = 12.",
        "Segitiga + segi empat + segi lima: 3 + 4 + 5 = 12.",
        "Segi empat + segi empat + segi empat: 4 + 4 + 4 = 12.",
        "Segitiga + segi lima: 3 + 5 = 8, satu-satunya yang tidak berjumlah 12.",
        "Jadi gambar yang berbeda adalah opsi ({K}).",
    ]
    return Item("FIG-05", D_ODD, ("odd",), (oddF, "segitiga + segi lima (jumlah sisi 3 + 5 = 8)"),
                norm_items, known, "Gambar yang tidak mengikuti aturan yang sama dengan empat gambar lainnya.", steps,
                "segitiga + segi lima, satu-satunya gambar dengan jumlah sisi 8 (gambar lain berjumlah 12)", opt_desc=True)


def hexsect(black, hatch, dotsec, mirror=False, rotk=0):
    V = reg(6, 44, -90)
    out = [poly(V, "w")]
    for i in range(6):
        f = "b" if i == black else ("h" if i == hatch else "w")
        if f != "w":
            out.append(poly([(0, 0), V[i], V[(i + 1) % 6]], f))
    for i in range(6):
        out.append(pline([(0, 0), V[i]]))
    cx = (V[dotsec][0] + V[(dotsec + 1) % 6][0]) / 3
    cy = (V[dotsec][1] + V[(dotsec + 1) % 6][1]) / 3
    out.append(dot((cx, cy), 5))
    F = out
    if mirror:
        F = tf(F, M_MV)
    return rot(F, 60 * rotk)


def R06():
    base = dict(black=0, hatch=2, dotsec=1)
    normals = []
    for k in (0, 2, 3, 5):
        normals.append((hexsect(**base, rotk=k), "", ""))
    odd = hexsect(**base, mirror=True, rotk=1)
    for k in range(6):
        assert not fig_eq(hexsect(**base, rotk=k), odd)
    known = [
        "Setiap gambar berupa segi enam yang dibagi menjadi 6 segitiga dari pusat. Satu segitiga hitam, satu berarsir, dan satu segitiga putih bertitik hitam; posisinya berbeda-beda pada tiap gambar.",
    ]
    steps = [
        "Pada setiap gambar, segitiga bertitik selalu berada di antara segitiga hitam dan segitiga berarsir. Jadi pembeda bukan 'bersebelahan atau tidak', melainkan urutan putarannya.",
        "Telusuri searah jarum jam mulai dari segitiga hitam. Pada empat gambar urutannya: hitam → bertitik → berarsir. Keempat gambar itu sebenarnya satu pola yang diputar 0°, 120°, 180°, dan 300°.",
        "Pada satu gambar, penelusuran searah jarum jam dari segitiga hitam menghasilkan: hitam → tiga segitiga polos → berarsir → bertitik. Artinya urutan hitam → bertitik → berarsir hanya terbaca jika ditelusuri BERLAWANAN arah jarum jam.",
        "Urutan yang terbalik arah tidak dapat diperoleh dengan memutar; itu ciri bayangan cermin. Jadi gambar tersebut berbeda dari empat gambar lain.",
        "Gambar yang berbeda adalah opsi ({K}).",
    ]
    return Item("FIG-06", D_ODD, ("odd",), (odd, ""),
                [(F, "", "Jika ditelusuri searah jarum jam dari segitiga hitam, urutannya hitam → bertitik → berarsir. Gambar ini hasil perputaran pola dasar.") for F, _, _ in normals],
                known, "Gambar yang tidak dapat diperoleh dengan memutar pola yang sama.", steps,
                "segi enam yang urutan hitam → bertitik → berarsir-nya berlawanan arah jarum jam (bayangan cermin)")


def pie8(black, hatch):
    out = [circ((0, 0), 44, "w")]
    for i, f in ((hatch, "h"), (black, "b")):
        a0 = -90 + 45 * i
        pts = [(0, 0)] + [(44 * math.cos(math.radians(a0 + t)), 44 * math.sin(math.radians(a0 + t))) for t in range(0, 46, 5)]
        out.append(poly(pts, f, sw=2.4))
    for i in range(4):
        a = math.radians(-90 + 45 * i)
        out.append(pline([(44 * math.cos(a), 44 * math.sin(a)), (-44 * math.cos(a), -44 * math.sin(a))], sw=2.4))
    out.append(circ((0, 0), 44, "n"))
    return out


SEC8 = ["jam 12–1.30", "jam 1.30–3", "jam 3–4.30", "jam 4.30–6", "jam 6–7.30", "jam 7.30–9", "jam 9–10.30", "jam 10.30–12"]


def R07():
    b0, h0 = 2, 7
    frames = []
    for k in range(4):
        b, h = (b0 - k) % 8, (h0 + 3 * k) % 8
        assert b != h
        frames.append(pie8(b, h))
    B4, H4 = (b0 - 4) % 8, (h0 + 12) % 8
    ans = pie8(B4, H4)
    ds = [(pie8(B4, (h0 + 9) % 8), "", "Juring hitam benar, tetapi juring berarsir tidak berpindah (masih di posisi gambar ke-4)."),
          (pie8((b0 - 3 + 1) % 8, H4), "", "Juring berarsir benar, tetapi juring hitam bergerak searah jarum jam, padahal arahnya berlawanan."),
          (pie8(B4, (h0 + 9 + 2) % 8), "", "Juring hitam benar, tetapi juring berarsir hanya bergeser 2 juring, padahal setiap langkah bergeser 3 juring."),
          (pie8((b0 - 5) % 8, H4), "", "Juring berarsir benar, tetapi juring hitam bergeser 2 juring, padahal hanya 1 juring per langkah.")]
    known = ["Setiap lingkaran dibagi 8 juring sama besar (masing-masing 45°). Setiap gambar memuat satu juring hitam dan satu juring berarsir. Posisi juring dinyatakan dengan arah jam."]
    for k in range(4):
        known.append("Gambar %d: juring hitam di %s, juring berarsir di %s." % (k + 1, SEC8[(b0 - k) % 8], SEC8[(h0 + 3 * k) % 8]))
    steps = [
        "Juring hitam: %s → %s → %s → %s. Setiap langkah bergeser 1 juring (45°) BERLAWANAN arah jarum jam." % tuple(SEC8[(b0 - k) % 8] for k in range(4)),
        "Juring berarsir: %s → %s → %s → %s. Setiap langkah bergeser 3 juring (135°) SEARAH jarum jam." % tuple(SEC8[(h0 + 3 * k) % 8] for k in range(4)),
        "Langkah ke-5 juring hitam: dari %s mundur 1 juring → %s." % (SEC8[(b0 - 3) % 8], SEC8[B4]),
        "Langkah ke-5 juring berarsir: dari %s maju 3 juring → %s." % (SEC8[(h0 + 9) % 8], SEC8[H4]),
        "Gambar ke-5: juring hitam di %s dan juring berarsir di %s, yaitu opsi ({K})." % (SEC8[B4], SEC8[H4]),
    ]
    return Item("FIG-07", D_SERIES, ("series", frames), (ans, ""), ds, known, "Gambar ke-5 yang melanjutkan deret.", steps,
                "juring hitam di %s dan juring berarsir di %s" % (SEC8[B4], SEC8[H4]))


def frame_dots(shape, n):
    if shape == "sq":
        fr = poly([(-42, -42), (42, -42), (42, 42), (-42, 42)], "w")
    elif shape == "ci":
        fr = circ((0, 0), 45, "w")
    else:
        fr = poly(reg(3, 50, -90, c=(0, 8)), "w")
    return [fr] + dots_grid(n, cols=4, sp=13.5, r=4.4, cy=0 if shape != "tr" else 14)


def R08():
    seq = [("sq", 1), ("ci", 2), ("sq", 4), ("ci", 7)]
    frames = [frame_dots(s, n) for s, n in seq]
    ans = frame_dots("sq", 11)
    ds = [(frame_dots("ci", 11), "", "Jumlah titik benar (11), tetapi bingkainya lingkaran, padahal setelah lingkaran (gambar ke-4) bingkai kembali persegi."),
          (frame_dots("sq", 10), "", "Bingkai benar, tetapi titik hanya bertambah 3 (7 + 3 = 10), seolah-olah penambahannya tetap."),
          (frame_dots("sq", 12), "", "Bingkai benar, tetapi titik bertambah 5 (7 + 5 = 12); pola penambahan +1, +2, +3, +4 dilewati."),
          (frame_dots("sq", 14), "", "Bingkai benar, tetapi titik dikalikan dua (7 × 2 = 14); pola deret ini penjumlahan bertingkat, bukan perkalian.")]
    known = [
        "Gambar 1: bingkai persegi, 1 titik.", "Gambar 2: bingkai lingkaran, 2 titik.",
        "Gambar 3: bingkai persegi, 4 titik.", "Gambar 4: bingkai lingkaran, 7 titik.",
    ]
    steps = [
        "Jumlah titik: 1, 2, 4, 7. Selisihnya: 2 − 1 = 1; 4 − 2 = 2; 7 − 4 = 3. Penambahannya naik satu setiap langkah (pola bertingkat).",
        "Selisih berikutnya 4, sehingga jumlah titik gambar ke-5 = 7 + 4 = 11.",
        "Uji pola lain: jika dikalikan dua, 1 → 2 → 4 → 8; padahal gambar ke-4 memuat 7 titik, sehingga pola perkalian gugur.",
        "Bingkai berselang: persegi, lingkaran, persegi, lingkaran, sehingga gambar ke-5 berbingkai persegi.",
        "Gambar ke-5: bingkai persegi berisi 11 titik (4 + 4 + 3), yaitu opsi ({K}).",
    ]
    return Item("FIG-08", D_SERIES, ("series", frames), (ans, ""), ds, known, "Gambar ke-5 yang melanjutkan deret.", steps,
                "bingkai persegi berisi 11 titik")


def square8(shaded):
    # persegi dibagi 8 segitiga oleh diagonal & garis tengah; sektor 0 = atas-kanan (tengah atas -> kanan atas), searah jarum jam
    P = [(0, -42), (42, -42), (42, 0), (42, 42), (0, 42), (-42, 42), (-42, 0), (-42, -42)]
    out = [poly([(-42, -42), (42, -42), (42, 42), (-42, 42)], "w")]
    for i in sorted(shaded):
        out.append(poly([(0, 0), P[i % 8], P[(i + 1) % 8]], "b", sw=2.4))
    out.append(pline([(-42, -42), (42, 42)], sw=2.4))
    out.append(pline([(42, -42), (-42, 42)], sw=2.4))
    out.append(pline([(0, -42), (0, 42)], sw=2.4))
    out.append(pline([(-42, 0), (42, 0)], sw=2.4))
    out.append(poly([(-42, -42), (42, -42), (42, 42), (-42, 42)], "n"))
    return out


SQ8N = ["atas-kanan", "kanan-atas", "kanan-bawah", "bawah-kanan", "bawah-kiri", "kiri-bawah", "kiri-atas", "atas-kiri"]


def R09():
    s0 = 0
    blk = lambda st, n: {(st + j) % 8 for j in range(n)}
    frames = [square8(blk(s0 + k, k + 1)) for k in range(4)]
    ansS = blk(s0 + 4, 5)
    ds = [(square8(blk(s0 + 3, 5)), "", "Jumlah segitiga hitam benar (5), tetapi segitiga hitam pertama tidak bergeser; blok masih dimulai dari posisi yang sama dengan gambar ke-4."),
          (square8(blk(s0 + 4, 4)), "", "Awal blok sudah bergeser dengan benar, tetapi jumlah segitiga hitam tidak bertambah (tetap 4)."),
          (square8(blk(s0 + 5, 5)), "", "Jumlah benar, tetapi awal blok bergeser dua langkah sekaligus."),
          (square8(blk(s0, 5)), "", "Jumlah benar, tetapi awal blok kembali ke posisi gambar pertama; pergeseran awal blok diabaikan.")]
    known = ["Setiap persegi dibagi menjadi 8 segitiga sama besar oleh dua diagonal dan dua garis tengah. Sejumlah segitiga yang berdampingan diarsir hitam."]
    for k in range(4):
        st = (s0 + k) % 8
        known.append("Gambar %d: %d segitiga hitam, dimulai dari segitiga %s lalu berlanjut searah jarum jam." % (k + 1, k + 1, SQ8N[st]))
    steps = [
        "Aturan 1 (jumlah): segitiga hitam berjumlah 1, 2, 3, 4, sehingga bertambah satu setiap langkah. Gambar ke-5 memuat 5 segitiga hitam.",
        "Aturan 2 (posisi awal): segitiga hitam pertama (paling belakang menurut arah jarum jam) bergeser satu segitiga searah jarum jam setiap langkah: %s → %s → %s → %s." % tuple(SQ8N[(s0 + k) % 8] for k in range(4)),
        "Gambar ke-5: awal blok bergeser lagi ke segitiga %s, lalu 5 segitiga hitam berurutan searah jarum jam: %s." % (SQ8N[(s0 + 4) % 8], ", ".join(SQ8N[(s0 + 4 + j) % 8] for j in range(5))),
        "Segitiga putih yang tersisa: %s. Pola ini menjadi cara cepat memeriksa opsi." % ", ".join(SQ8N[i] for i in range(8) if i not in ansS),
        "Gambar yang sesuai adalah opsi ({K}).",
    ]
    return Item("FIG-09", D_SERIES, ("series", frames), (square8(ansS), ""), ds, known, "Gambar ke-5 yang melanjutkan deret.", steps,
                "persegi dengan 5 segitiga hitam berurutan mulai dari segitiga %s" % SQ8N[(s0 + 4) % 8])


CORN = [(-1, -1), (1, -1), (1, 1), (-1, 1)]
CORNN = ["kiri atas", "kanan atas", "kanan bawah", "kiri bawah"]


def arrow_corner(a, c):
    sx, sy = CORN[c % 4]
    tri = poly([(42 * sx, 42 * sy), (20 * sx, 42 * sy), (42 * sx, 20 * sy)], "h")
    arr = rot([arrow_poly(40, 3.5, 9, 12, "b")], a)[0]
    return [poly([(-42, -42), (42, -42), (42, 42), (-42, 42)], "w"), tri, arr]


def R10():
    frames = [arrow_corner(-90 - 45 * k, k) for k in range(4)]
    ans = arrow_corner(-270, 4)
    ds = [(arrow_corner(-270, 3), "", "Arah panah benar, tetapi segitiga berarsir tidak berpindah (masih di kiri bawah)."),
          (arrow_corner(-225, 4), "", "Segitiga berarsir benar, tetapi panah tidak berputar (masih menunjuk ke kiri bawah seperti gambar ke-4)."),
          (arrow_corner(-180, 4), "", "Segitiga berarsir benar, tetapi panah berputar 45° searah jarum jam (menunjuk ke kiri), padahal arahnya berlawanan jarum jam."),
          (arrow_corner(-270, 5), "", "Arah panah benar, tetapi segitiga berarsir bergeser dua sudut (ke kanan atas).")]
    known = ["Setiap persegi memuat panah hitam di tengah dan segitiga berarsir di salah satu sudut."]
    for k in range(4):
        known.append("Gambar %d: panah menunjuk ke %s, segitiga berarsir di sudut %s." % (k + 1, dir_name(-90 - 45 * k), CORNN[k]))
    steps = [
        "Panah: atas → kiri atas → kiri → kiri bawah. Setiap langkah berputar 45° berlawanan arah jarum jam. Langkah ke-5: dari kiri bawah berputar 45° → BAWAH.",
        "Segitiga berarsir: kiri atas → kanan atas → kanan bawah → kiri bawah. Setiap langkah berpindah satu sudut searah jarum jam. Langkah ke-5: dari kiri bawah → KIRI ATAS (kembali ke posisi awal).",
        "Kedua aturan berjalan bersamaan dengan arah putaran yang berlawanan. Kesalahan umum adalah menganggap keduanya berputar ke arah yang sama.",
        "Gambar ke-5: panah menunjuk ke bawah dan segitiga berarsir di sudut kiri atas, yaitu opsi ({K}).",
    ]
    return Item("FIG-09", D_SERIES, ("series", frames), (ans, ""), ds, known, "Gambar ke-5 yang melanjutkan deret.", steps,
                "panah menunjuk ke bawah dengan segitiga berarsir di sudut kiri atas")


def chiral_small(kind):
    if kind == 0:   # bendera
        F = [pline([(-6, 26), (-6, -26)]), poly([(-6, -26), (18, -17), (-6, -8)], "b")]
    elif kind == 1:  # huruf L tebal
        F = [poly([(-14, -24), (-4, -24), (-4, 12), (18, 12), (18, 22), (-14, 22)], "w")]
    else:            # panah dengan palang di satu sisi
        F = [poly([(0, -28), (10, -14), (-10, -14)], "b"), pline([(0, -14), (0, 26)]), pline([(0, 10), (12, 10)])]
    return tf(F, M_tr(0, -10))


def rot_about(F, deg, c):
    return tf(F, M_mul(M_tr(c[0], c[1]), M_mul(M_rot(deg), M_tr(-c[0], -c[1]))))


def mcell(kind, base_rot, k, n):
    F = rot_about(chiral_small(kind), base_rot + 90 * k, (0, -8))
    return F + [dot(((j - (n - 1) / 2) * 13, 37), 4.6) for j in range(n)]


def R11():
    kinds = [0, 1, 2]
    base = [0, 90, 270]
    base_n = [1, 2, 0]
    for kd in kinds:
        assert_no_symmetry(chiral_small(kd), "R11-%d" % kd, step=90)
    grid = [[mcell(kinds[r], base[r], c, base_n[c] + r) for c in range(3)] for r in range(3)]
    grid[2][2] = None
    ans = mcell(2, 270, 2, 2)
    ds = [(mcell(2, 270, 0, 2), "", "Jumlah titik benar, tetapi panah menunjuk ke kiri, artinya diputar 90° berlawanan arah jarum jam dari kolom 2, padahal aturannya searah jarum jam."),
          (mcell(2, 270, 2, 3), "", "Arah panah benar, tetapi titiknya 3, padahal kolom 3 dimulai dari 0 titik dan bertambah satu per baris (0, 1, 2)."),
          (mcell(2, 270, 2, 1), "", "Arah panah benar, tetapi titiknya hanya 1, sama dengan baris ke-2, sehingga tidak bertambah."),
          (rot_about(tf(chiral_small(2), M_MV), 270 + 180, (0, -8)) + [dot(((j - 0.5) * 13, 37), 4.6) for j in range(2)], "",
           "Jumlah titik benar dan panah menghadap arah yang benar, tetapi palang berada di sisi yang salah. Gambar ini bayangan cermin, bukan hasil perputaran.")]
    known = [
        "Baris 1: bendera hitam yang diputar dari kiri ke kanan; jumlah titik 1, 2, 0.",
        "Baris 2: bangun huruf L yang diputar dari kiri ke kanan; jumlah titik 2, 3, 1.",
        "Baris 3: panah hitam berpalang di satu sisi; kolom 1 panah menunjuk ke kiri dengan 3 titik, kolom 2 panah menunjuk ke atas dengan 4 titik, kolom 3 = ?",
    ]
    steps = [
        "Aturan mendatar (baris): dari kolom 1 ke kolom 2 lalu ke kolom 3, bangun berputar 90° searah jarum jam setiap kali. Contoh baris 1: ujung tiang yang berkain menunjuk ke atas → ke kanan → ke bawah.",
        "Baris 3: panah menunjuk ke kiri (kolom 1) → ke atas (kolom 2) → kolom 3 harus menunjuk ke KANAN. Palang yang di kolom 2 berada di sisi kanan batang ikut berputar, sehingga di kolom 3 palang berada di sisi bawah batang.",
        "Aturan menurun (kolom): jumlah titik bertambah satu dari baris ke baris. Kolom 1: 1, 2, 3. Kolom 2: 2, 3, 4. Kolom 3: 0, 1, ? → 2.",
        "Sel yang hilang: panah menunjuk ke kanan dengan palang di sisi bawah batang, dan 2 titik. Gambar ini adalah opsi ({K}).",
    ]
    return Item("FIG-10", D_MATRIX, ("matrix", grid), (ans, ""), ds, known, "Gambar pada baris 3 kolom 3.", steps,
                "panah menunjuk ke kanan dengan palang di sisi bawah batang, disertai 2 titik")


def poly_dots_cell(n, k):
    r = {3: 40, 4: 36, 5: 38}[n]
    st = -45 if n == 4 else -90
    cy = 5 if n == 3 else 0
    return [poly(reg(n, r, st, c=(0, cy if n == 3 else 0)), "w")] + dots_rows(k, cy=cy + (4 if n == 3 else 0), sp=10.5, r=3.9)


def R12():
    S = [[3, 4, 5], [5, 3, 4], [4, 5, 3]]
    D = [[1, 2, 3], [3, 1, 4], [2, 3, 5]]
    for r in range(3):
        assert D[r][2] == D[r][0] + D[r][1]
    grid = [[poly_dots_cell(S[r][c], D[r][c]) for c in range(3)] for r in range(3)]
    grid[2][2] = None
    ans = poly_dots_cell(3, 5)
    ds = [(poly_dots_cell(3, 6), "", "Bentuk benar, tetapi titiknya 6 (2 × 3, hasil perkalian), padahal aturannya penjumlahan."),
          (poly_dots_cell(3, 4), "", "Bentuk benar, tetapi titiknya 4 (titik kolom 2 ditambah 1), padahal aturannya kolom 1 + kolom 2."),
          (poly_dots_cell(4, 5), "", "Jumlah titik benar, tetapi bentuknya segi empat, padahal baris 3 sudah memiliki segi empat."),
          (poly_dots_cell(5, 5), "", "Jumlah titik benar, tetapi bentuknya segi lima, padahal baris 3 sudah memiliki segi lima.")]
    known = [
        "Baris 1: segitiga 1 titik; segi empat 2 titik; segi lima 3 titik.",
        "Baris 2: segi lima 3 titik; segitiga 1 titik; segi empat 4 titik.",
        "Baris 3: segi empat 2 titik; segi lima 3 titik; ?",
    ]
    steps = [
        "Aturan bentuk: setiap baris dan setiap kolom memuat segitiga, segi empat, dan segi lima masing-masing sekali. Baris 3 sudah memiliki segi empat dan segi lima, sehingga kurang SEGITIGA. Kolom 3 (segi lima, segi empat) juga kurang segitiga.",
        "Aturan titik: uji pada baris 1, kolom 1 + kolom 2 = 1 + 2 = 3 = kolom 3. Baris 2: 3 + 1 = 4 = kolom 3. Aturan terbukti.",
        "Uji pola tandingan agar tidak terkecoh: 'kolom 2 + 1' berlaku di baris 1 (2 + 1 = 3), tetapi gagal di baris 2 (1 + 1 = 2 ≠ 4). Perkalian juga gagal (1 × 2 = 2 ≠ 3).",
        "Baris 3: 2 + 3 = 5 titik.",
        "Sel yang hilang: segitiga berisi 5 titik, yaitu opsi ({K}).",
    ]
    return Item("FIG-10", D_MATRIX, ("matrix", grid), (ans, ""), ds, known, "Gambar pada baris 3 kolom 3.", steps,
                "segitiga berisi 5 titik")


# ===========================================================================
SET_L = [L01, L02, L03, L04, L05, L06, L07, L08, L09, L10, L11, L12]
SET_R = [R01, R02, R03, R04, R05, R06, R07, R08, R09, R10, R11, R12]
KEYS_L = "CAEBDACEBDCA"
KEYS_R = "BDAECDBAECBD"


def main():
    prev = os.path.join(OUT_DIR, "svg_preview")
    os.makedirs(prev, exist_ok=True)
    for tag, funcs, keys in (("L", SET_L, KEYS_L), ("R", SET_R, KEYS_R)):
        items = []
        for i, (fn, k) in enumerate(zip(funcs, keys)):
            it = fn()
            rec, svg = assemble(it, "ABCDE".index(k))
            items.append(rec)
            with open(os.path.join(prev, "FIG_%s_%02d.svg" % (tag, i + 1)), "w") as fh:
                fh.write(svg)
        with open(os.path.join(OUT_DIR, "FIG_%s.json" % tag), "w") as fh:
            json.dump(items, fh, ensure_ascii=False, indent=2)
        print(tag, len(items), "item; kunci:", keys)


if __name__ == "__main__":
    main()
