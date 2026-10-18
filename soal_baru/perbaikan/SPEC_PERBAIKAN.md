# Spesifikasi Perbaikan & Revisi Bank Soal Polisimuda

DB lokal: `psql -U aryautama -d polisi-muda`. JANGAN mengubah database — tulis file JSON saja.

Tabel `bank_soal`: id, category, sub_material_code, description, image, options (jsonb array
`[{"id","description","isCorrect","point"}]`, urutan = A..E), explanation, status, quality_score, quality_notes.

## Target (untuk kategori yang ditugaskan)
1. PERBAIKI semua baris `status='perlu_perbaikan'` — baca `quality_notes` (alasan cacat), lalu perbaiki
   sampai soal benar, jawaban tunggal, dan bebas ambigu.
2. REVISI baris `status='aktif' AND quality_score=3` — pertajam redaksi, pengecoh, dan pembahasan; pastikan kunci benar.
JANGAN menyentuh soal Live Tryout Psikotes 3 / Kecerdasan 11 / Kepribadian 11 (status 'nonaktif' atau dibuat 17 Okt 2026).

## Aturan isi
- Bahasa Indonesia baku. Soal Bahasa Inggris tetap berbahasa Inggris (pembahasan berbahasa Indonesia).
- Pertahankan topik, kode sub materi, dan tingkat kesulitan; boleh ubah teks soal, opsi, kunci, pembahasan.
- Tepat 5 opsi, teks unik dan tidak kosong, tanpa awalan huruf.
  Non-TKP: tepat 1 `isCorrect: true`, semua point 1. TKP (category personality): semua isCorrect true,
  point permutasi 1..5 dan urutan poin harus masuk akal (5 = paling tuntas, sesuai aturan & nilai Polri).
- PAKAI ULANG `id` opsi yang ada (5 id lama, urut A..E). Jangan buat id baru.
- Soal bergambar (`image` tidak kosong): Anda tidak bisa mengubah gambar. Bila cacatnya ada di gambar dan tidak bisa
  diselesaikan lewat teks/opsi, set `"status": "nonaktif"` dengan alasan di quality_notes.
- Pembahasan WAJIB format: `DIKETAHUI:` → `DITANYAKAN:` → `JAWAB:` (langkah bernomor, alasan) →
  "Jadi, jawaban yang tepat adalah (X) ..." → "Mengapa opsi lain kurang tepat:" per opsi. TKP: urutkan opsi 5→1.
  Huruf (X) harus sesuai posisi kunci akhir.
- Verifikasi hitungan dengan python; logika dengan tabel kebenaran bila perlu.
- Jangan menyalin dari /Users/aryautama/RAJAWALI MANDARA/UPDATE SOAL.

## Keluaran
`/Users/aryautama/ANTIGRAVITY/Polisimuda2.5/soal_baru/perbaikan/<KATEGORI>.json` — array:
```json
{"id":"<bank_soal id>","action":"fix"|"revise","description":"...","options":[{"id":"...","description":"...","isCorrect":true,"point":1}, ...5],
 "explanation":"...","status":"aktif"|"nonaktif","quality_score":4|5,"quality_notes":"ringkas: apa yang diperbaiki"}
```
Sertakan SEMUA baris target (yang tidak perlu diubah pun tetap dicantumkan dengan isi lengkap terbaru).
Akhiri dengan validasi python (5 opsi, id sama dengan aslinya, kunci/poin valid, huruf pembahasan cocok) dan laporan ringkas:
jumlah fix/revise/nonaktif dan daftar yang Anda ragukan.
