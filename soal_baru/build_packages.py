"""Bangun SQL paket baru: Kecerdasan 11, Kepribadian 11, dan Live Tryout Psikotes 3 (3 tahap).
Hasil: packages.sql (dipakai identik di DB lokal & produksi) + manifest.json (ID yang dibuat)."""
import json, uuid, secrets, string, sys

def lit(s): return "'" + s.replace("'", "''") + "'"
def load(names): return [it for n in names for it in json.load(open(n))]

INT_L = ["VRB_A_L.json","VRB_B_L.json","VRB_C_L.json","NUM_A_L.json","NUM_B_L.json","FIG_L.json"]
INT_R = [n.replace("_L.json","_R.json") for n in INT_L]
TKP_L = ["TKP_A_L.json","TKP_B_L.json","TKP_C_L.json","TKP_D_L.json"]
TKP_R = [n.replace("_L.json","_R.json") for n in TKP_L]

# Kecermatan baru: 10 kolom, tiap kolom 5 huruf berbeda (tanpa huruf yang mudah tertukar I/O/Q).
pool = [c for c in string.ascii_uppercase if c not in "IOQ"]
rows = []
while len(rows) < 10:
    r = "".join(secrets.SystemRandom().sample(pool, 5))
    if r not in rows: rows.append(r)

T = {k: str(uuid.uuid4()) for k in ("int11","kep11","live_int","live_kep","live_acc")}
tests = [
  # key, category, title, description, time(ms), hidden, locked, items
  ("int11","intelligence","Kecerdasan 11","Tes Kecerdasan Paket 11",7200000,False,True,load(INT_R)),
  ("kep11","personality","Kepribadian 11","Tes Kepribadian Paket 11",2700000,False,True,load(TKP_R)),
  ("live_int","intelligence","Live Tryout Psikotes 3 (Live Tryout)","Live Tryout Psikotes 3 — Kecerdasan, Kepribadian, Kecermatan",7200000,False,True,load(INT_L)),
  ("live_kep","personality","Kepribadian - Live Tryout Psikotes 3","Tahap 2 Live Tryout Psikotes 3",2700000,True,True,load(TKP_L)),
  ("live_acc","accuracy","Kecermatan - Live Tryout Psikotes 3",json.dumps(rows),600000,True,True,[]),
]
expect = {"int11":100,"kep11":70,"live_int":100,"live_kep":70,"live_acc":0}
for k,_,title,*_r,items in tests:
    if len(items)!=expect[k]: sys.exit(f"{title}: {len(items)} soal, harus {expect[k]}")

sql = ["BEGIN;",
"""DO $$ BEGIN IF EXISTS (SELECT 1 FROM tests WHERE title IN ('Kecerdasan 11','Kepribadian 11','Live Tryout Psikotes 3 (Live Tryout)'))
 THEN RAISE EXCEPTION 'Paket baru sudah ada — dibatalkan'; END IF; END $$;"""]
qmap = {}
for k,cat,title,desc,ms,hidden,locked,items in tests:
    sql.append(f"INSERT INTO tests (id,category,title,description,time,number_of_questions,is_hidden,is_locked,is_randomized) VALUES "
               f"('{T[k]}','{cat}',{lit(title)},{lit(desc)},{ms},{len(items)},{str(hidden).lower()},{str(locked).lower()},true);")
    for qi, it in enumerate(items):
        qid = str(uuid.uuid4()); qmap.setdefault(k, []).append(qid)
        sql.append(f"INSERT INTO questions (id,test_id,description,image,explanation,sub_material_code,created_at,updated_at) VALUES "
                   f"('{qid}','{T[k]}',{lit(it['description'])},{lit(it.get('image',''))},{lit(it['explanation'])},'{it['sub_material_code']}',"
                   f"now()+interval '{qi} second',now());")
        for oi, o in enumerate(it["options"]):
            sql.append(f"INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES "
                       f"('{uuid.uuid4()}','{qid}',{lit(o['text'].strip())},{str(bool(o['is_correct'])).lower()},{int(o['point'])},"
                       f"now()+interval '{qi} second'+interval '{oi*10} millisecond',now());")
sql += [
 f"INSERT INTO psychology_chains (id,intelligence_test_id,personality_test_id,accuracy_test_id) VALUES ('{uuid.uuid4()}','{T['live_int']}','{T['live_kep']}','{T['live_acc']}');",
 f"INSERT INTO live_tryouts (id,test_id,status,scheduled_at) VALUES ('{uuid.uuid4()}','{T['live_int']}','waiting','2026-10-18 08:00:00+07');",
 "SELECT sync_bank_soal();",
 # soal Live ditahan dari Mini Tryout sampai acara selesai
 f"""UPDATE bank_soal b SET status='nonaktif', quality_notes='Ditahan: soal Live Tryout Psikotes 3 (18 Okt 2026). Aktifkan setelah live selesai.', updated_at=now()
 FROM bank_soal_sources s JOIN questions q ON q.id=s.question_id
 WHERE s.bank_soal_id=b.id AND q.test_id IN ('{T['live_int']}','{T['live_kep']}');""",
 "COMMIT;"]
open("packages.sql","w").write("\n".join(sql)+"\n")
json.dump({"tests":T,"kecermatan_rows":rows,"counts":{k:len(v) for k,v in qmap.items()}}, open("manifest.json","w"), indent=2)
print("OK", {k:len(v) for k,v in qmap.items()}, "kecermatan:", rows)
