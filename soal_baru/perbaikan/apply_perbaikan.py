"""Validasi file perbaikan agen lalu tulis perbaikan.sql (bank_soal + soal paket tertaut)."""
import json, glob, re, subprocess, sys
def q(sql):
    out = subprocess.run(["psql","-U","aryautama","-d","polisi-muda","-Atc",sql],capture_output=True,text=True,check=True).stdout
    return json.loads(out) if out.strip() else None
def lit(s): return "'" + str(s).replace("'", "''") + "'"
files = sorted(sys.argv[1:]) if len(sys.argv) > 1 else sorted(glob.glob("*.json"))
items = [(f, it) for f in files for it in json.load(open(f))]
ids = [it["id"] for _, it in items]
cur = q("select json_object_agg(id, json_build_object('cat',category,'status',status,'opts',(select json_agg(o->>'id') from jsonb_array_elements(options) o),'image',image)) from bank_soal where id in (%s)" % ",".join(lit(i) for i in ids)) or {}
links = q("""select json_object_agg(b, qs) from (select s.bank_soal_id::text b, json_agg(json_build_object('qid',s.question_id,'n',(select count(*) from answers a where a.question_id=s.question_id),'title',t.title)) qs
  from bank_soal_sources s join questions q on q.id=s.question_id join tests t on t.id=q.test_id where s.bank_soal_id in (%s) group by 1) x""" % ",".join(lit(i) for i in ids)) or {}
errs, sql, n_q = [], ["BEGIN;"], 0
seen = set()
for f, it in items:
    bid = it["id"]; tag = f"{f}:{bid[:8]}"
    if bid in seen: errs.append(f"{tag}: duplikat id"); continue
    seen.add(bid)
    c = cur.get(bid)
    if not c: errs.append(f"{tag}: bank_soal tidak ada"); continue
    if c["status"] == "nonaktif" and it.get("status") != "nonaktif": errs.append(f"{tag}: soal nonaktif (Live?) tidak boleh diubah"); continue
    if it.get("status") == "nonaktif":
        # Cacat di gambar: isi lama dipertahankan, soal hanya ditahan dari Mini Tryout.
        sql.append(f"UPDATE bank_soal SET status='nonaktif', quality_score={int(it.get('quality_score',2))}, quality_notes={lit(it.get('quality_notes',''))}, reviewed_at=now(), updated_at=now() WHERE id={lit(bid)};")
        continue
    o = it.get("options", [])
    if len(o) != 5 or [x.get("id") for x in o] != c["opts"]: errs.append(f"{tag}: id/urutan opsi tidak sama dengan asli"); continue
    txt = [x["description"].strip() for x in o]
    if any(not t for t in txt) or len({t.lower() for t in txt}) != 5: errs.append(f"{tag}: opsi kosong/kembar"); continue
    if c["cat"] == "personality":
        if sorted(x["point"] for x in o) != [1,2,3,4,5] or not all(x["isCorrect"] for x in o): errs.append(f"{tag}: poin TKP salah"); continue
        key = [x["point"] for x in o].index(5)
    else:
        k = [i for i,x in enumerate(o) if x["isCorrect"]]
        if len(k) != 1 or any(x["point"] != 1 for x in o): errs.append(f"{tag}: kunci salah"); continue
        key = k[0]
    e = it.get("explanation", "")
    m = re.search(r"jawaban yang tepat adalah \(([A-E])\)", e)
    if not all(s in e for s in ("DIKETAHUI:","DITANYAKAN:","JAWAB:")) or not m or m.group(1) != "ABCDE"[key]:
        errs.append(f"{tag}: pembahasan tidak lengkap / huruf kunci tidak cocok"); continue
    status = it.get("status","aktif")
    if status not in ("aktif","nonaktif"): errs.append(f"{tag}: status {status}"); continue
    opts_json = json.dumps([{"id":x["id"],"description":x["description"].strip(),"isCorrect":bool(x["isCorrect"]),"point":int(x["point"])} for x in o], ensure_ascii=False)
    sql.append(f"UPDATE bank_soal SET description={lit(it['description'])}, options={lit(opts_json)}::jsonb, explanation={lit(e)}, status={lit(status)}, quality_score={int(it.get('quality_score',4))}, quality_notes={lit(it.get('quality_notes',''))}, reviewed_at=now(), updated_at=now() WHERE id={lit(bid)};")
    if status == "nonaktif":
        continue  # isi lama dipertahankan di paket; soal hanya ditahan dari Mini Tryout
    for L in links.get(bid, []):
        if L["n"] != 5: errs.append(f"{tag}: soal paket {L['qid'][:8]} punya {L['n']} opsi, dilewati"); continue
        n_q += 1
        sql.append(f"UPDATE questions SET description={lit(it['description'])}, explanation={lit(e)}, updated_at=now() WHERE id={lit(L['qid'])};")
        for i, x in enumerate(o):
            sql.append(f"""UPDATE answers SET description={lit(x['description'].strip())}, is_correct={str(bool(x['isCorrect'])).lower()}, point={int(x['point'])}, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id={lit(L['qid'])} ORDER BY created_at, id OFFSET {i} LIMIT 1);""")
sql.append("COMMIT;")
open("perbaikan.sql","w").write("\n".join(sql)+"\n")
by = {}
for f,it in items: by.setdefault(f,{}).setdefault(it.get("status","aktif")+"/"+it.get("action","?"),0); by[f][it.get("status","aktif")+"/"+it.get("action","?")]+=1
print(json.dumps(by, ensure_ascii=False)); print(f"{len(items)} item, {n_q} soal paket diperbarui, {len(errs)} masalah"); print("\n".join(errs[:40]))
