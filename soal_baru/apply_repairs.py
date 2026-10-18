"""Simulasikan repairs.json terhadap DB lokal, lalu tulis repairs.sql (idempoten per id)."""
import json, subprocess, uuid, sys
rep = json.load(open("repairs.json"))
def q(sql):
    return json.loads(subprocess.run(["psql","-U","aryautama","-d","polisi-muda","-Atc",sql],capture_output=True,text=True,check=True).stdout or "null")
def lit(s): return "'" + s.replace("'", "''") + "'"
ids = [r["question_id"] for r in rep]
cur = q("select json_object_agg(q.id, json_build_object('cat',t.category,'ans',(select json_agg(json_build_object('id',a.id,'d',a.description,'c',a.is_correct,'p',a.point) order by a.created_at,a.id) from answers a where a.question_id=q.id))) from questions q join tests t on t.id=q.test_id where q.id in (%s)" % ",".join(lit(i) for i in ids))
errs, sql = [], ["BEGIN;"]
for r in rep:
    qid = r["question_id"]; st = cur[qid]; ans = {a["id"]: dict(a) for a in st["ans"]}; order = [a["id"] for a in st["ans"]]
    for ch in r.get("answers", []):
        if ch["id"] not in ans: errs.append(f"{qid}: answer {ch['id']} tidak ada"); continue
        if ch.get("delete"):
            order.remove(ch["id"]); sql.append(f"DELETE FROM user_answers WHERE answer_id='{ch['id']}'; DELETE FROM answers WHERE id='{ch['id']}';")
        else:
            a = ans[ch["id"]]; sets = []
            if "description" in ch: a["d"] = ch["description"]; sets.append("description="+lit(ch["description"]))
            if "is_correct" in ch: a["c"] = ch["is_correct"]; sets.append(f"is_correct={str(ch['is_correct']).lower()}")
            if "point" in ch: a["p"] = ch["point"]; sets.append(f"point={int(ch['point'])}")
            if sets: sql.append(f"UPDATE answers SET {', '.join(sets)}, updated_at=now() WHERE id='{ch['id']}';")
    for k, ad in enumerate(r.get("add", []), 1):
        nid = str(uuid.uuid4()); ans[nid] = {"d": ad["description"], "c": ad["is_correct"], "p": ad["point"]}; order.append(nid)
        sql.append(f"INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('{nid}','{qid}',{lit(ad['description'])},{str(ad['is_correct']).lower()},{int(ad['point'])},now()+interval '{k} second',now());")
    if r.get("explanation"):
        sql.append(f"UPDATE questions SET explanation={lit(r['explanation'])}, updated_at=now() WHERE id='{qid}';")
    fin = [ans[i] for i in order]; txt = [a["d"].strip().lower() for a in fin]
    if len(fin)!=5 or any(not t for t in txt) or len(set(txt))!=5: errs.append(f"{qid}: hasil akhir {len(fin)} opsi / kosong / kembar")
    if st["cat"]=="personality":
        if sorted(a["p"] for a in fin)!=[1,2,3,4,5] or not all(a["c"] for a in fin): errs.append(f"{qid}: poin TKP salah")
    elif sum(a["c"] for a in fin)!=1: errs.append(f"{qid}: jumlah kunci {sum(a['c'] for a in fin)}")
# selaraskan bank soal dengan soal sumber yang diperbaiki
sql.append("""UPDATE bank_soal b SET
  options = (SELECT jsonb_agg(jsonb_build_object('id',a.id::text,'description',a.description,'isCorrect',a.is_correct,'point',a.point) ORDER BY a.created_at,a.id) FROM answers a WHERE a.question_id=s.question_id),
  explanation = q.explanation, updated_at = now()
FROM bank_soal_sources s JOIN questions q ON q.id=s.question_id
WHERE s.bank_soal_id=b.id AND s.question_id IN (%s)
  AND s.question_id = (SELECT min(s2.question_id::text)::uuid FROM bank_soal_sources s2 WHERE s2.bank_soal_id=b.id AND s2.question_id IN (%s));""" % (",".join(lit(i) for i in ids), ",".join(lit(i) for i in ids)))
sql.append("COMMIT;")
open("repairs.sql","w").write("\n".join(sql)+"\n")
print(f"{len(rep)} soal, {len(sql)-2} perintah SQL, {len(errs)} masalah"); print("\n".join(errs))
