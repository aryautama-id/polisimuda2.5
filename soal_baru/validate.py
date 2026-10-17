"""Validasi semua file soal baru terhadap SPEC.md."""
import json, glob, re, sys, subprocess, collections
codes = set(subprocess.run(["psql","-U","aryautama","-d","polisi-muda","-Atc","select code from sub_materials"],
                           capture_output=True,text=True).stdout.split())
FAM = {"intelligence": ("VRB-","NUM-","FIG-"), "personality": ("TKP-",)}
errs, seen = [], {}
summary = collections.defaultdict(lambda: collections.Counter())
for f in sorted(glob.glob("*_[LR].json")):
    cat = "personality" if f.startswith("TKP") else "intelligence"
    items = json.load(open(f))
    for i, it in enumerate(items, 1):
        tag = f"{f}#{i}"
        c = it.get("sub_material_code","")
        if c not in codes or not c.startswith(FAM[cat]): errs.append(f"{tag}: kode {c!r} tidak valid")
        d = it.get("description","").strip()
        if len(d) < 10: errs.append(f"{tag}: soal kosong/terlalu pendek")
        key = re.sub(r"\s+"," ",d.lower())+"|"+__import__("hashlib").md5(it.get("image","").encode()).hexdigest()
        if key in seen: errs.append(f"{tag}: duplikat dengan {seen[key]}")
        seen[key] = tag
        o = it.get("options",[])
        if len(o) != 5: errs.append(f"{tag}: {len(o)} opsi")
        txt = [x.get("text","").strip() for x in o]
        if any(not t for t in txt) or len({t.lower() for t in txt}) != len(txt): errs.append(f"{tag}: opsi kosong/kembar")
        if any(re.match(r"^[A-E][.)]\s", t) for t in txt): errs.append(f"{tag}: opsi berawalan huruf")
        if cat == "intelligence":
            k = [j for j,x in enumerate(o) if x.get("is_correct")]
            if len(k)!=1 or any(x.get("point")!=1 for x in o): errs.append(f"{tag}: kunci/poin salah {k}")
            else:
                L = "ABCDE"[k[0]]; summary[f]["kunci_"+L]+=1
                m = re.search(r"jawaban yang tepat adalah \(([A-E])\)", it.get("explanation",""))
                if not m or m.group(1)!=L: errs.append(f"{tag}: huruf di pembahasan {m and m.group(1)} != kunci {L}")
        else:
            if sorted(x.get("point") for x in o)!=[1,2,3,4,5] or not all(x.get("is_correct") for x in o): errs.append(f"{tag}: poin TKP salah")
            else: summary[f]["poin5_"+"ABCDE"[[x["point"] for x in o].index(5)]]+=1
        e = it.get("explanation","")
        for s in ("DIKETAHUI:","DITANYAKAN:","JAWAB:"):
            if s not in e: errs.append(f"{tag}: pembahasan tanpa {s}")
        if len(e) < 700: errs.append(f"{tag}: pembahasan pendek ({len(e)})")
        if c.startswith("FIG") and not it.get("image","").startswith("data:image/"): errs.append(f"{tag}: FIG tanpa gambar")
        summary[f]["n"]+=1; summary[f][c]+=1
for f,s in summary.items(): print(f, dict(sorted(s.items())))
print(f"\n{len(errs)} masalah"); print("\n".join(errs[:60]))
