# Spesifikasi Soal Baru Polisimuda (Psikotes Polri) — WAJIB DIIKUTI

## Konteks
Polisimuda = platform latihan seleksi Polri (Tamtama/Bintara/Akpol). Soal dipakai untuk
LIVE TRYOUT PSIKOTES besok dan paket latihan reguler. Semua soal berbahasa Indonesia baku (KBBI/PUEBI).
Tingkat: SULIT / HOTS, setara atau di atas soal seleksi Polri nyata. Pengecoh harus masuk akal dan
menjebak kesalahan berpikir yang umum, bukan pengecoh asal.

## Sumber yang BOLEH dipakai
- Pemetaan: /private/tmp/claude-501/-Users-aryautama-ANTIGRAVITY-Polisimuda2-5/d6429600-d0f9-4e32-9e9b-bf04d534863b/scratchpad/pemetaan.txt
  (bagian 4.3 Penalaran Verbal, 4.4 Numerik, 4.5 Figural, 4.6 TKP, 4.9 Kecerdasan, 4.10 Kepribadian,
  4.13 & 5.19 Model Soal gaya saat ini vs proyeksi, 5.13/5.14 Akpol, Lampiran C Model Soal Tambahan).
- Kurikulum per kode: `psql -U aryautama -d polisi-muda -Atc "select code,name,scope,learning_outcome,level from sub_materials where code like 'VRB%'"`
- Silabus: /Users/aryautama/RAJAWALI MANDARA/SILABUS dan /Users/aryautama/RAJAWALI MANDARA/KURIKULUM RAJAWALI MANDARA
- Contoh gaya & kualitas pembahasan soal yang SUDAH ADA (DB lokal `polisi-muda`, tabel questions/answers/tests).

## DILARANG
- Menyalin/memparafrase soal dari /Users/aryautama/RAJAWALI MANDARA/UPDATE SOAL (hasil scrape situs pesaing berbayar).
- Menduplikasi soal yang sudah ada di DB lokal. Sebelum menulis, cek kemiripan:
  `psql -U aryautama -d polisi-muda -Atc "select left(description,120) from questions where description ilike '%<frasa kunci>%' limit 5"`
- Fakta yang tidak bisa diverifikasi, angka yang meleset, kunci ganda, atau soal ambigu.

## Format keluaran
Tulis 2 file JSON (array) di /Users/aryautama/ANTIGRAVITY/Polisimuda2.5/soal_baru/ :
- `<BATCH>_L.json` → untuk LIVE TRYOUT (set L)
- `<BATCH>_R.json` → untuk paket reguler (set R)
Set L dan R TIDAK boleh berisi soal yang sama atau sekadar ganti angka/kata.

Satu item:
```json
{
  "sub_material_code": "VRB-09",
  "description": "teks soal lengkap (boleh multi-baris dengan \n)",
  "image": "",                     
  "options": [
    {"text": "...", "is_correct": false, "point": 1},
    ... tepat 5 opsi, urutan = A,B,C,D,E
  ],
  "explanation": "DIKETAHUI:\n- ...\n\nDITANYAKAN:\n...\n\nJAWAB:\n1. ...\n2. ...\nJadi, jawaban yang tepat adalah (C) ....\nMengapa opsi lain kurang tepat:\n- (A) ...\n- (B) ...\n- (D) ...\n- (E) ...",
  "difficulty": "sulit"
}
```
- Teks opsi TANPA awalan huruf ("A." dsb.).
- KECERDASAN: tepat 1 opsi `is_correct: true`, semua `point: 1`. Sebar posisi kunci A–E merata
  (maksimal 25% di satu huruf per file), jangan berpola.
- KEPRIBADIAN (TKP): kelima opsi `is_correct: true`, `point` adalah permutasi 1,2,3,4,5 (tepat sekali masing-masing).
  Acak posisi poin 5 (jangan selalu di A). Semua opsi harus terdengar "baik/wajar" — yang membedakan
  adalah tingkat kepatutan, ketuntasan, inisiatif, dan kesesuaian dengan nilai Polri (Tribrata, Catur Prasetya,
  pelayanan prima, netralitas, integritas). Hindari opsi yang jelas buruk.
- `image`: kosong kecuali soal figural (lihat bagian FIG).

## Standar pembahasan (WAJIB lengkap, langkah demi langkah)
Pola persis: `DIKETAHUI:` (data/premis/konteks, poin-poin) → `DITANYAKAN:` → `JAWAB:` (langkah bernomor,
alasan tiap langkah, uji jawaban) → kalimat "Jadi, jawaban yang tepat adalah (X) ..." → "Mengapa opsi lain kurang tepat:"
dengan alasan per opsi. Numerik: tulis semua hitungan. Logika: tunjukkan aturan inferensi/tabel bantu.
KEPRIBADIAN: di JAWAB jelaskan dimensi yang diukur, lalu urutkan kelima opsi dari poin 5 ke 1 beserta alasannya,
format "(B) — 5 poin: ...". Panjang pembahasan tipikal 900–2.500 karakter.

## Verifikasi mandiri sebelum menyimpan
- Kerjakan ulang setiap soal tanpa melihat kunci; untuk hitungan jalankan python untuk memastikan.
- Pastikan hanya satu jawaban benar (Kecerdasan) dan tidak ada opsi yang sama/duplikat.
- Validasi JSON: `python3 -c "import json;d=json.load(open('FILE'));print(len(d))"`
- Akhiri dengan laporan singkat: jumlah per kode, sebaran kunci A–E, dan soal yang Anda ragukan (jika ada).
