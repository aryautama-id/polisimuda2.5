BEGIN;
UPDATE bank_soal SET description='Agar persatuan bangsa (sila ke-3) tetap terjaga, konflik antarkelompok sebaiknya diselesaikan dengan cara yang sesuai dengan nilai sila ke-4 Pancasila, yaitu Kerakyatan yang Dipimpin oleh Hikmat Kebijaksanaan dalam Permusyawaratan/Perwakilan. Dalam praktiknya, cara tersebut diwujudkan melalui ...', options='[{"id": "019983d1-6935-7eaa-9533-dbffcbd494d6", "description": "Perintah dari pimpinan tertinggi yang wajib dipatuhi semua kelompok.", "isCorrect": false, "point": 1}, {"id": "019983d1-6936-73a6-9263-87a4a3fb34a6", "description": "Pemungutan suara langsung sehingga kelompok terbesar menentukan hasilnya.", "isCorrect": false, "point": 1}, {"id": "019983d1-6936-7b2a-8889-f45f7345a0f3", "description": "Musyawarah untuk mencapai mufakat yang diliputi semangat kekeluargaan.", "isCorrect": true, "point": 1}, {"id": "019983d1-6937-715d-aed3-7faab6265b21", "description": "Mediasi oleh pihak asing yang dianggap netral.", "isCorrect": false, "point": 1}, {"id": "019983d1-6937-7743-ba2e-eb813d1b63a2", "description": "Penegakan hukum yang keras tanpa membuka ruang dialog.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Konflik antarkelompok berpotensi memecah persatuan bangsa (nilai sila ke-3).
- Penyelesaiannya diminta sesuai nilai sila ke-4: kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan.

DITANYAKAN:
Wujud praktik nilai sila ke-4 dalam menyelesaikan konflik antarkelompok.

JAWAB:
1. Inti sila ke-4 adalah pengambilan keputusan melalui musyawarah untuk mencapai mufakat yang diliputi semangat kekeluargaan, tanpa memaksakan kehendak kepada pihak lain.
2. Musyawarah mempertemukan semua kelompok yang berselisih sehingga keputusan dapat diterima bersama; hasil yang diterima bersama itulah yang menjaga persatuan (sila ke-3).
3. Pemungutan suara hanya ditempuh bila mufakat benar-benar tidak tercapai, sehingga bukan cara utama yang dikehendaki sila ke-4.

Jadi, jawaban yang tepat adalah (C) Musyawarah untuk mencapai mufakat yang diliputi semangat kekeluargaan.

Mengapa opsi lain kurang tepat:
- (A) Perintah sepihak dari atas meniadakan musyawarah dan tidak menyentuh akar konflik.
- (B) Keputusan berdasarkan suara terbanyak berisiko mengalahkan kelompok kecil dan hanya cara terakhir bila mufakat gagal.
- (D) Melibatkan pihak asing dalam konflik dalam negeri mengabaikan kemandirian bangsa menyelesaikan masalahnya sendiri.
- (E) Penegakan hukum perlu, tetapi tanpa dialog konflik sosial justru dapat semakin tajam; ini bukan wujud nilai permusyawaratan.', status='aktif', quality_score=4, quality_notes='Revisi: rujukan sila dibetulkan (musyawarah mufakat = sila ke-4, persatuan = sila ke-3); opsi B dipertegas sebagai voting; pembahasan ditulis ulang.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-6935-79fd-a20e-e4b4df7b6dd3';
UPDATE questions SET description='Agar persatuan bangsa (sila ke-3) tetap terjaga, konflik antarkelompok sebaiknya diselesaikan dengan cara yang sesuai dengan nilai sila ke-4 Pancasila, yaitu Kerakyatan yang Dipimpin oleh Hikmat Kebijaksanaan dalam Permusyawaratan/Perwakilan. Dalam praktiknya, cara tersebut diwujudkan melalui ...', explanation='DIKETAHUI:
- Konflik antarkelompok berpotensi memecah persatuan bangsa (nilai sila ke-3).
- Penyelesaiannya diminta sesuai nilai sila ke-4: kerakyatan yang dipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan.

DITANYAKAN:
Wujud praktik nilai sila ke-4 dalam menyelesaikan konflik antarkelompok.

JAWAB:
1. Inti sila ke-4 adalah pengambilan keputusan melalui musyawarah untuk mencapai mufakat yang diliputi semangat kekeluargaan, tanpa memaksakan kehendak kepada pihak lain.
2. Musyawarah mempertemukan semua kelompok yang berselisih sehingga keputusan dapat diterima bersama; hasil yang diterima bersama itulah yang menjaga persatuan (sila ke-3).
3. Pemungutan suara hanya ditempuh bila mufakat benar-benar tidak tercapai, sehingga bukan cara utama yang dikehendaki sila ke-4.

Jadi, jawaban yang tepat adalah (C) Musyawarah untuk mencapai mufakat yang diliputi semangat kekeluargaan.

Mengapa opsi lain kurang tepat:
- (A) Perintah sepihak dari atas meniadakan musyawarah dan tidak menyentuh akar konflik.
- (B) Keputusan berdasarkan suara terbanyak berisiko mengalahkan kelompok kecil dan hanya cara terakhir bila mufakat gagal.
- (D) Melibatkan pihak asing dalam konflik dalam negeri mengabaikan kemandirian bangsa menyelesaikan masalahnya sendiri.
- (E) Penegakan hukum perlu, tetapi tanpa dialog konflik sosial justru dapat semakin tajam; ini bukan wujud nilai permusyawaratan.', updated_at=now() WHERE id='019983d1-6935-79fd-a20e-e4b4df7b6dd3';
UPDATE answers SET description='Perintah dari pimpinan tertinggi yang wajib dipatuhi semua kelompok.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6935-79fd-a20e-e4b4df7b6dd3' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Pemungutan suara langsung sehingga kelompok terbesar menentukan hasilnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6935-79fd-a20e-e4b4df7b6dd3' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Musyawarah untuk mencapai mufakat yang diliputi semangat kekeluargaan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6935-79fd-a20e-e4b4df7b6dd3' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mediasi oleh pihak asing yang dianggap netral.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6935-79fd-a20e-e4b4df7b6dd3' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Penegakan hukum yang keras tanpa membuka ruang dialog.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6935-79fd-a20e-e4b4df7b6dd3' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Dalam rapat dewan guru, seorang guru senior mengusulkan agar siswa yang nilai rapornya di bawah rata-rata dilarang mengikuti kegiatan ekstrakurikuler supaya lebih fokus pada akademik. Anda meyakini ekstrakurikuler adalah sarana penting pembentukan karakter dan minat setiap siswa. Sikap yang paling sesuai dengan sila ke-5 Pancasila (keadilan sosial) sekaligus tetap menjaga musyawarah dalam rapat adalah...', options='[{"id": "019993b1-83f0-7a4f-a7b3-3b0f2bd9f002", "description": "Menyampaikan keberatan dalam rapat bahwa setiap siswa berhak atas kesempatan yang sama, lalu mengusulkan pendampingan belajar bagi siswa bernilai rendah tanpa mencabut hak ekstrakurikulernya.", "isCorrect": true, "point": 1}, {"id": "019993b1-83f1-734d-aae8-d2bd0c86e6c5", "description": "Menyetujui usulan guru senior demi menjaga keharmonisan di lingkungan kerja.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f1-775b-8601-d9fd13a977bf", "description": "Mengusulkan agar larangan tersebut hanya berlaku bagi siswa yang nilainya sangat rendah.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f1-7cbc-be53-4504247db4ea", "description": "Mengusulkan bimbingan belajar wajib yang dijadwalkan menggantikan jam ekstrakurikuler bagi siswa bernilai rendah.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f2-73bd-b21b-baaa14ae7964", "description": "Diam selama rapat, tetapi kemudian tetap membiarkan semua siswa ikut ekstrakurikuler tanpa memberi tahu forum.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Guru senior mengusulkan larangan ekstrakurikuler bagi siswa bernilai rapor di bawah rata-rata.
- Ekstrakurikuler adalah sarana pembentukan karakter dan minat siswa.
- Kriteria: sesuai keadilan sosial dan tetap menjaga musyawarah dalam rapat.

DITANYAKAN:
Sikap yang adil bagi semua siswa dan disampaikan melalui musyawarah.

JAWAB:
1. Keadilan sosial berarti setiap siswa memperoleh kesempatan yang sama untuk berkembang; nilai rendah tidak boleh menjadi alasan mencabut hak pembinaan karakter.
2. Musyawarah menuntut keberatan disampaikan secara terbuka dan santun di forum, disertai solusi, bukan sekadar menolak atau diam.
3. Opsi A memenuhi keduanya: menolak pencabutan hak secara terbuka dan menawarkan pendampingan belajar sebagai jalan keluar masalah akademik.

Jadi, jawaban yang tepat adalah (A) Menyampaikan keberatan dalam rapat bahwa setiap siswa berhak atas kesempatan yang sama, lalu mengusulkan pendampingan belajar bagi siswa bernilai rendah tanpa mencabut hak ekstrakurikulernya.

Mengapa opsi lain kurang tepat:
- (B) Mengorbankan hak siswa demi kenyamanan hubungan kerja bertentangan dengan keadilan sosial.
- (C) Membatasi larangan pada kelompok tertentu tetap mencabut hak sebagian siswa, jadi masih diskriminatif.
- (D) Bimbingan belajarnya baik, tetapi karena menggantikan jam ekstrakurikuler, hak siswa tetap tercabut.
- (E) Tidak menyampaikan pendapat di forum lalu bertindak sendiri melanggar semangat musyawarah dan tidak transparan.', status='aktif', quality_score=4, quality_notes='Revisi: opsi D diubah menjadi pengganti ekstrakurikuler (tetap mencabut hak) dan E menjadi sikap tidak transparan sehingga kunci B tunggal; stem menambah kriteria musyawarah.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-83f0-7587-bc8a-0f6b430f5144';
UPDATE questions SET description='Dalam rapat dewan guru, seorang guru senior mengusulkan agar siswa yang nilai rapornya di bawah rata-rata dilarang mengikuti kegiatan ekstrakurikuler supaya lebih fokus pada akademik. Anda meyakini ekstrakurikuler adalah sarana penting pembentukan karakter dan minat setiap siswa. Sikap yang paling sesuai dengan sila ke-5 Pancasila (keadilan sosial) sekaligus tetap menjaga musyawarah dalam rapat adalah...', explanation='DIKETAHUI:
- Guru senior mengusulkan larangan ekstrakurikuler bagi siswa bernilai rapor di bawah rata-rata.
- Ekstrakurikuler adalah sarana pembentukan karakter dan minat siswa.
- Kriteria: sesuai keadilan sosial dan tetap menjaga musyawarah dalam rapat.

DITANYAKAN:
Sikap yang adil bagi semua siswa dan disampaikan melalui musyawarah.

JAWAB:
1. Keadilan sosial berarti setiap siswa memperoleh kesempatan yang sama untuk berkembang; nilai rendah tidak boleh menjadi alasan mencabut hak pembinaan karakter.
2. Musyawarah menuntut keberatan disampaikan secara terbuka dan santun di forum, disertai solusi, bukan sekadar menolak atau diam.
3. Opsi A memenuhi keduanya: menolak pencabutan hak secara terbuka dan menawarkan pendampingan belajar sebagai jalan keluar masalah akademik.

Jadi, jawaban yang tepat adalah (A) Menyampaikan keberatan dalam rapat bahwa setiap siswa berhak atas kesempatan yang sama, lalu mengusulkan pendampingan belajar bagi siswa bernilai rendah tanpa mencabut hak ekstrakurikulernya.

Mengapa opsi lain kurang tepat:
- (B) Mengorbankan hak siswa demi kenyamanan hubungan kerja bertentangan dengan keadilan sosial.
- (C) Membatasi larangan pada kelompok tertentu tetap mencabut hak sebagian siswa, jadi masih diskriminatif.
- (D) Bimbingan belajarnya baik, tetapi karena menggantikan jam ekstrakurikuler, hak siswa tetap tercabut.
- (E) Tidak menyampaikan pendapat di forum lalu bertindak sendiri melanggar semangat musyawarah dan tidak transparan.', updated_at=now() WHERE id='019993b1-83f0-7587-bc8a-0f6b430f5144';
UPDATE answers SET description='Menyampaikan keberatan dalam rapat bahwa setiap siswa berhak atas kesempatan yang sama, lalu mengusulkan pendampingan belajar bagi siswa bernilai rendah tanpa mencabut hak ekstrakurikulernya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f0-7587-bc8a-0f6b430f5144' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menyetujui usulan guru senior demi menjaga keharmonisan di lingkungan kerja.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f0-7587-bc8a-0f6b430f5144' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengusulkan agar larangan tersebut hanya berlaku bagi siswa yang nilainya sangat rendah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f0-7587-bc8a-0f6b430f5144' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengusulkan bimbingan belajar wajib yang dijadwalkan menggantikan jam ekstrakurikuler bagi siswa bernilai rendah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f0-7587-bc8a-0f6b430f5144' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Diam selama rapat, tetapi kemudian tetap membiarkan semua siswa ikut ekstrakurikuler tanpa memberi tahu forum.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f0-7587-bc8a-0f6b430f5144' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda guru di daerah terpencil. Banyak siswa putus sekolah karena harus membantu orang tua bertani atau melaut pada jam sekolah. Anda ingin siswa tetap bersekolah sambil membantu keluarga. Inisiatif yang paling mencerminkan gotong royong dan keadilan sosial adalah...', options='[{"id": "019993b1-83f4-7e40-976e-d02a0c754610", "description": "Mengadakan bimbingan belajar tambahan di luar jam sekolah, termasuk akhir pekan, bagi siswa yang sering absen.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f5-7553-99ee-a38e28aebefb", "description": "Melaporkan masalah ini ke dinas pendidikan lalu menunggu bantuan dari pusat.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f5-79de-9ee5-7c352cc4c1c9", "description": "Menggalang dana dari masyarakat untuk memberikan uang saku kepada siswa yang putus sekolah.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f5-7e1c-9c25-b10134f9b806", "description": "Mengubah jam belajar kelas Anda sendiri secara sepihak tanpa membicarakannya dengan sekolah maupun orang tua.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f6-73e9-bc39-5e5633dedf35", "description": "Mengajak orang tua, tokoh masyarakat, dan pihak sekolah bermusyawarah menyusun jadwal belajar yang menyesuaikan waktu kerja anak, lalu melaksanakannya bersama-sama.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Banyak siswa putus sekolah karena membantu orang tua bertani atau melaut.
- Tujuan: siswa tetap sekolah sambil tetap membantu keluarga.
- Kriteria: gotong royong dan keadilan sosial.

DITANYAKAN:
Inisiatif yang melibatkan kebersamaan sekaligus menjamin hak pendidikan siswa.

JAWAB:
1. Gotong royong berarti masalah bersama diselesaikan dengan melibatkan semua pihak yang berkepentingan: orang tua, masyarakat, dan sekolah.
2. Keadilan sosial berarti anak dari keluarga petani atau nelayan tetap memperoleh hak pendidikan (Pasal 31 ayat 1 UUD NRI 1945).
3. Opsi E menjawab akar masalah (bentrok waktu kerja dan sekolah) melalui kesepakatan bersama, sehingga dapat dijalankan dan didukung semua pihak.

Jadi, jawaban yang tepat adalah (E) Mengajak orang tua, tokoh masyarakat, dan pihak sekolah bermusyawarah menyusun jadwal belajar yang menyesuaikan waktu kerja anak, lalu melaksanakannya bersama-sama.

Mengapa opsi lain kurang tepat:
- (A) Menambah jam belajar justru menambah beban anak yang sudah bekerja dan tidak menyelesaikan bentrok waktu.
- (B) Hanya melapor lalu menunggu bersifat pasif dan tidak menggerakkan kebersamaan masyarakat.
- (C) Bantuan uang tidak menyelesaikan kebutuhan tenaga anak bagi keluarga dan bersifat sementara.
- (D) Mengubah jadwal secara sepihak melampaui kewenangan guru dan bukan gotong royong.', status='aktif', quality_score=4, quality_notes='Revisi: opsi D dijadikan tindakan sepihak dan E dipertegas (musyawarah + pelaksanaan bersama) sehingga hanya E memenuhi gotong royong dan keadilan sosial.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-83f4-79a1-8505-0bcab8b792f3';
UPDATE questions SET description='Anda guru di daerah terpencil. Banyak siswa putus sekolah karena harus membantu orang tua bertani atau melaut pada jam sekolah. Anda ingin siswa tetap bersekolah sambil membantu keluarga. Inisiatif yang paling mencerminkan gotong royong dan keadilan sosial adalah...', explanation='DIKETAHUI:
- Banyak siswa putus sekolah karena membantu orang tua bertani atau melaut.
- Tujuan: siswa tetap sekolah sambil tetap membantu keluarga.
- Kriteria: gotong royong dan keadilan sosial.

DITANYAKAN:
Inisiatif yang melibatkan kebersamaan sekaligus menjamin hak pendidikan siswa.

JAWAB:
1. Gotong royong berarti masalah bersama diselesaikan dengan melibatkan semua pihak yang berkepentingan: orang tua, masyarakat, dan sekolah.
2. Keadilan sosial berarti anak dari keluarga petani atau nelayan tetap memperoleh hak pendidikan (Pasal 31 ayat 1 UUD NRI 1945).
3. Opsi E menjawab akar masalah (bentrok waktu kerja dan sekolah) melalui kesepakatan bersama, sehingga dapat dijalankan dan didukung semua pihak.

Jadi, jawaban yang tepat adalah (E) Mengajak orang tua, tokoh masyarakat, dan pihak sekolah bermusyawarah menyusun jadwal belajar yang menyesuaikan waktu kerja anak, lalu melaksanakannya bersama-sama.

Mengapa opsi lain kurang tepat:
- (A) Menambah jam belajar justru menambah beban anak yang sudah bekerja dan tidak menyelesaikan bentrok waktu.
- (B) Hanya melapor lalu menunggu bersifat pasif dan tidak menggerakkan kebersamaan masyarakat.
- (C) Bantuan uang tidak menyelesaikan kebutuhan tenaga anak bagi keluarga dan bersifat sementara.
- (D) Mengubah jadwal secara sepihak melampaui kewenangan guru dan bukan gotong royong.', updated_at=now() WHERE id='019993b1-83f4-79a1-8505-0bcab8b792f3';
UPDATE answers SET description='Mengadakan bimbingan belajar tambahan di luar jam sekolah, termasuk akhir pekan, bagi siswa yang sering absen.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f4-79a1-8505-0bcab8b792f3' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Melaporkan masalah ini ke dinas pendidikan lalu menunggu bantuan dari pusat.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f4-79a1-8505-0bcab8b792f3' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menggalang dana dari masyarakat untuk memberikan uang saku kepada siswa yang putus sekolah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f4-79a1-8505-0bcab8b792f3' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengubah jam belajar kelas Anda sendiri secara sepihak tanpa membicarakannya dengan sekolah maupun orang tua.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f4-79a1-8505-0bcab8b792f3' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengajak orang tua, tokoh masyarakat, dan pihak sekolah bermusyawarah menyusun jadwal belajar yang menyesuaikan waktu kerja anak, lalu melaksanakannya bersama-sama.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f4-79a1-8505-0bcab8b792f3' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang teman sering membuang sampah sembarangan di kampus dengan alasan membersihkan adalah tugas petugas kebersihan. Sikap Anda yang paling sesuai dengan pengamalan sila ke-5 Pancasila, khususnya menjaga keseimbangan antara hak dan kewajiban serta menghormati hak orang lain, adalah...', options='[{"id": "019993b1-d588-72dc-90fa-d169ebee0228", "description": "Membiarkan teman Anda dan diam-diam membersihkan sampahnya sendiri.", "isCorrect": false, "point": 1}, {"id": "019993b1-d588-77d7-9806-05b2784fd2a7", "description": "Membiarkan kebiasaan tersebut karena bukan urusan Anda.", "isCorrect": false, "point": 1}, {"id": "019993b1-d588-7d09-ad0a-0532e5138d84", "description": "Langsung melaporkan teman Anda ke dosen agar diberi sanksi.", "isCorrect": false, "point": 1}, {"id": "019993b1-d589-74ce-93ae-deefaf959d5c", "description": "Menyarankan teman Anda memberi uang tambahan kepada petugas kebersihan.", "isCorrect": false, "point": 1}, {"id": "019993b1-d589-7ab9-a941-410b75dda379", "description": "Menegur teman Anda secara langsung dengan santun dan menjelaskan bahwa menjaga kebersihan adalah kewajiban setiap pengguna fasilitas bersama.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Teman membuang sampah sembarangan di kampus.
- Alasannya: kebersihan adalah tugas petugas kebersihan.
- Kriteria: sila ke-5, menjaga keseimbangan hak dan kewajiban serta menghormati hak orang lain.

DITANYAKAN:
Sikap yang paling tepat terhadap teman tersebut.

JAWAB:
1. Setiap pengguna fasilitas kampus berhak menikmati lingkungan bersih, tetapi juga berkewajiban menjaganya. Teman tersebut hanya menuntut hak tanpa menjalankan kewajiban.
2. Membuang sampah sembarangan juga merugikan hak orang lain atas lingkungan yang sehat.
3. Langkah yang paling tepat adalah menegur langsung secara santun dan meluruskan anggapan keliru itu, karena menyentuh penyebab perilakunya.

Jadi, jawaban yang tepat adalah (E) Menegur teman Anda secara langsung dengan santun dan menjelaskan bahwa menjaga kebersihan adalah kewajiban setiap pengguna fasilitas bersama.

Mengapa opsi lain kurang tepat:
- (A) Membersihkan sendiri tanpa menegur tidak mengubah anggapan dan kebiasaan teman.
- (B) Membiarkan berarti tidak peduli pada kepentingan bersama.
- (C) Langsung melapor ke dosen tanpa menegur lebih dahulu tidak proporsional untuk pelanggaran ringan.
- (D) Membayar petugas justru membenarkan anggapan bahwa kebersihan bukan kewajibannya.', status='aktif', quality_score=5, quality_notes='Revisi: rujukan ''Ketuhanan dan Kebersihan'' yang dipaksakan diganti sila ke-5 (keseimbangan hak dan kewajiban, menghormati hak orang lain); opsi A dan C dipertegas.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d587-7c70-a61f-0a8631e90633';
UPDATE questions SET description='Seorang teman sering membuang sampah sembarangan di kampus dengan alasan membersihkan adalah tugas petugas kebersihan. Sikap Anda yang paling sesuai dengan pengamalan sila ke-5 Pancasila, khususnya menjaga keseimbangan antara hak dan kewajiban serta menghormati hak orang lain, adalah...', explanation='DIKETAHUI:
- Teman membuang sampah sembarangan di kampus.
- Alasannya: kebersihan adalah tugas petugas kebersihan.
- Kriteria: sila ke-5, menjaga keseimbangan hak dan kewajiban serta menghormati hak orang lain.

DITANYAKAN:
Sikap yang paling tepat terhadap teman tersebut.

JAWAB:
1. Setiap pengguna fasilitas kampus berhak menikmati lingkungan bersih, tetapi juga berkewajiban menjaganya. Teman tersebut hanya menuntut hak tanpa menjalankan kewajiban.
2. Membuang sampah sembarangan juga merugikan hak orang lain atas lingkungan yang sehat.
3. Langkah yang paling tepat adalah menegur langsung secara santun dan meluruskan anggapan keliru itu, karena menyentuh penyebab perilakunya.

Jadi, jawaban yang tepat adalah (E) Menegur teman Anda secara langsung dengan santun dan menjelaskan bahwa menjaga kebersihan adalah kewajiban setiap pengguna fasilitas bersama.

Mengapa opsi lain kurang tepat:
- (A) Membersihkan sendiri tanpa menegur tidak mengubah anggapan dan kebiasaan teman.
- (B) Membiarkan berarti tidak peduli pada kepentingan bersama.
- (C) Langsung melapor ke dosen tanpa menegur lebih dahulu tidak proporsional untuk pelanggaran ringan.
- (D) Membayar petugas justru membenarkan anggapan bahwa kebersihan bukan kewajibannya.', updated_at=now() WHERE id='019993b1-d587-7c70-a61f-0a8631e90633';
UPDATE answers SET description='Membiarkan teman Anda dan diam-diam membersihkan sampahnya sendiri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d587-7c70-a61f-0a8631e90633' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membiarkan kebiasaan tersebut karena bukan urusan Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d587-7c70-a61f-0a8631e90633' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Langsung melaporkan teman Anda ke dosen agar diberi sanksi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d587-7c70-a61f-0a8631e90633' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyarankan teman Anda memberi uang tambahan kepada petugas kebersihan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d587-7c70-a61f-0a8631e90633' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menegur teman Anda secara langsung dengan santun dan menjelaskan bahwa menjaga kebersihan adalah kewajiban setiap pengguna fasilitas bersama.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d587-7c70-a61f-0a8631e90633' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Kampus Anda mewajibkan mahasiswa mengikuti kegiatan sosial di lingkungan sekitar. Beberapa teman menolak dengan alasan tidak punya waktu. Anda tahu sikap itu kurang mencerminkan nilai gotong royong dalam Pancasila. Tindakan yang paling efektif untuk menumbuhkan kesadaran mereka adalah...', options='[{"id": "019993b1-d59d-7aeb-b3c3-0aee794f33cd", "description": "Memaksa mereka ikut dengan ancaman akan dikucilkan dari pergaulan.", "isCorrect": false, "point": 1}, {"id": "019993b1-d59e-7103-81dc-3aec89265dd5", "description": "Mengajak mereka berdialog secara persuasif tentang manfaat kegiatan bagi warga dan membantu mengatur jadwal agar mereka dapat ikut serta.", "isCorrect": true, "point": 1}, {"id": "019993b1-d59e-7631-acd8-06e9c552cdc0", "description": "Melaporkan mereka ke dosen pembimbing agar diberi nilai rendah.", "isCorrect": false, "point": 1}, {"id": "019993b1-d59e-7bd2-88e4-566dc4406c7c", "description": "Mengabaikan mereka dan fokus pada tugas Anda sendiri.", "isCorrect": false, "point": 1}, {"id": "019993b1-d59f-717a-8015-3b26ab0191fb", "description": "Menyelenggarakan kegiatan terpisah khusus bagi mereka agar tidak bercampur dengan peserta lain.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Kampus mewajibkan kegiatan sosial di lingkungan sekitar.
- Beberapa teman menolak karena merasa tidak punya waktu.
- Tujuan: menumbuhkan kesadaran gotong royong.

DITANYAKAN:
Tindakan paling efektif untuk menumbuhkan kesadaran gotong royong teman-teman.

JAWAB:
1. Kesadaran tumbuh dari pemahaman, bukan dari paksaan atau hukuman. Gotong royong juga berarti saling membantu sesama anggota kelompok.
2. Alasan teman adalah keterbatasan waktu, sehingga solusi yang efektif harus menyentuh alasan itu.
3. Opsi B menjelaskan manfaat kegiatan sekaligus membantu mengatasi hambatan waktu, sehingga mereka terdorong ikut secara sukarela.

Jadi, jawaban yang tepat adalah (B) Mengajak mereka berdialog secara persuasif tentang manfaat kegiatan bagi warga dan membantu mengatur jadwal agar mereka dapat ikut serta.

Mengapa opsi lain kurang tepat:
- (A) Paksaan dan ancaman pengucilan menimbulkan keterpaksaan, bukan kesadaran.
- (C) Melapor agar diberi nilai rendah bersifat menghukum dan tidak menumbuhkan kesadaran.
- (D) Mengabaikan berarti tidak peduli dan bertentangan dengan semangat gotong royong.
- (E) Memisahkan mereka justru menjauhkan dari kebersamaan yang ingin ditumbuhkan.', status='aktif', quality_score=4, quality_notes='Perbaikan dari temuan: kunci B ditetapkan di data; frasa janggal ''Gotong Royong bagian dari pembangunan berkelanjutan'' dihapus; opsi B dipertegas menyentuh alasan waktu.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d59d-75b3-8e9b-ec05ef12e052';
UPDATE questions SET description='Kampus Anda mewajibkan mahasiswa mengikuti kegiatan sosial di lingkungan sekitar. Beberapa teman menolak dengan alasan tidak punya waktu. Anda tahu sikap itu kurang mencerminkan nilai gotong royong dalam Pancasila. Tindakan yang paling efektif untuk menumbuhkan kesadaran mereka adalah...', explanation='DIKETAHUI:
- Kampus mewajibkan kegiatan sosial di lingkungan sekitar.
- Beberapa teman menolak karena merasa tidak punya waktu.
- Tujuan: menumbuhkan kesadaran gotong royong.

DITANYAKAN:
Tindakan paling efektif untuk menumbuhkan kesadaran gotong royong teman-teman.

JAWAB:
1. Kesadaran tumbuh dari pemahaman, bukan dari paksaan atau hukuman. Gotong royong juga berarti saling membantu sesama anggota kelompok.
2. Alasan teman adalah keterbatasan waktu, sehingga solusi yang efektif harus menyentuh alasan itu.
3. Opsi B menjelaskan manfaat kegiatan sekaligus membantu mengatasi hambatan waktu, sehingga mereka terdorong ikut secara sukarela.

Jadi, jawaban yang tepat adalah (B) Mengajak mereka berdialog secara persuasif tentang manfaat kegiatan bagi warga dan membantu mengatur jadwal agar mereka dapat ikut serta.

Mengapa opsi lain kurang tepat:
- (A) Paksaan dan ancaman pengucilan menimbulkan keterpaksaan, bukan kesadaran.
- (C) Melapor agar diberi nilai rendah bersifat menghukum dan tidak menumbuhkan kesadaran.
- (D) Mengabaikan berarti tidak peduli dan bertentangan dengan semangat gotong royong.
- (E) Memisahkan mereka justru menjauhkan dari kebersamaan yang ingin ditumbuhkan.', updated_at=now() WHERE id='019993b1-d59d-75b3-8e9b-ec05ef12e052';
UPDATE answers SET description='Memaksa mereka ikut dengan ancaman akan dikucilkan dari pergaulan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59d-75b3-8e9b-ec05ef12e052' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengajak mereka berdialog secara persuasif tentang manfaat kegiatan bagi warga dan membantu mengatur jadwal agar mereka dapat ikut serta.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59d-75b3-8e9b-ec05ef12e052' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Melaporkan mereka ke dosen pembimbing agar diberi nilai rendah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59d-75b3-8e9b-ec05ef12e052' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengabaikan mereka dan fokus pada tugas Anda sendiri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59d-75b3-8e9b-ec05ef12e052' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyelenggarakan kegiatan terpisah khusus bagi mereka agar tidak bercampur dengan peserta lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59d-75b3-8e9b-ec05ef12e052' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Dalam pemilihan Ketua OSIS, salah satu calon yang merupakan teman dekat Anda menyebarkan hoaks dan fitnah tentang calon lain sehingga siswa terpecah. Sebagai teman dekatnya, langkah yang paling tepat sesuai Demokrasi Pancasila yang menjunjung kejujuran dan keadilan adalah...', options='[{"id": "019993b1-d5b2-7599-9246-94625e5f1234", "description": "Mendiamkan saja karena hal itu dianggap bagian dari strategi politik.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5b2-7c41-bf1c-832cb7af912f", "description": "Membuat unggahan tandingan yang menyerang balik calon tersebut.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5b3-72d3-956e-f3c9c0873b6e", "description": "Mendesak panitia langsung mendiskualifikasi calon tersebut tanpa proses klarifikasi.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5b3-76ff-b00f-92bce4c54748", "description": "Menemui calon tersebut, mengingatkan bahwa fitnah merusak pemilihan yang jujur dan adil, memintanya menghentikan dan meralat kampanyenya, serta melapor ke panitia bila ia tetap melanjutkan.", "isCorrect": true, "point": 1}, {"id": "019993b1-d5b3-7b24-b29d-b2e5c63be441", "description": "Menolak memilih kedua calon sebagai bentuk protes.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Seorang calon Ketua OSIS menyebarkan hoaks dan fitnah tentang calon lain.
- Siswa menjadi terpecah.
- Anda adalah teman dekat calon tersebut.
- Kriteria: Demokrasi Pancasila yang menjunjung kejujuran dan keadilan.

DITANYAKAN:
Langkah yang paling tepat untuk menghentikan kampanye fitnah tersebut.

JAWAB:
1. Demokrasi Pancasila menuntut persaingan yang jujur, adil, dan mengutamakan persatuan; fitnah merusak ketiganya.
2. Sebagai teman dekat, Anda memiliki akses untuk mengingatkan langsung; teguran pribadi memberi kesempatan memperbaiki diri dan meralat informasi palsu.
3. Bila teguran tidak diindahkan, pelanggaran tetap harus dilaporkan kepada panitia sebagai penyelenggara. Opsi D memuat kedua langkah itu secara bertahap.

Jadi, jawaban yang tepat adalah (D) Menemui calon tersebut, mengingatkan bahwa fitnah merusak pemilihan yang jujur dan adil, memintanya menghentikan dan meralat kampanyenya, serta melapor ke panitia bila ia tetap melanjutkan.

Mengapa opsi lain kurang tepat:
- (A) Fitnah bukan strategi yang sah; mendiamkannya membiarkan kecurangan.
- (B) Serangan balik memperuncing perpecahan antarsiswa.
- (C) Meminta sanksi tanpa klarifikasi mengabaikan asas keadilan bagi pihak yang dituduh.
- (E) Tidak memilih tidak menghentikan fitnah dan merugikan calon yang jujur.', status='aktif', quality_score=4, quality_notes='Revisi: rujukan Pasal 28E ayat (3) yang kurang relevan dihapus; opsi D dilengkapi eskalasi ke panitia dan opsi C diubah menjadi tuntutan tanpa klarifikasi sehingga kunci D tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d5b2-716d-ac9e-f2adda41808d';
UPDATE questions SET description='Dalam pemilihan Ketua OSIS, salah satu calon yang merupakan teman dekat Anda menyebarkan hoaks dan fitnah tentang calon lain sehingga siswa terpecah. Sebagai teman dekatnya, langkah yang paling tepat sesuai Demokrasi Pancasila yang menjunjung kejujuran dan keadilan adalah...', explanation='DIKETAHUI:
- Seorang calon Ketua OSIS menyebarkan hoaks dan fitnah tentang calon lain.
- Siswa menjadi terpecah.
- Anda adalah teman dekat calon tersebut.
- Kriteria: Demokrasi Pancasila yang menjunjung kejujuran dan keadilan.

DITANYAKAN:
Langkah yang paling tepat untuk menghentikan kampanye fitnah tersebut.

JAWAB:
1. Demokrasi Pancasila menuntut persaingan yang jujur, adil, dan mengutamakan persatuan; fitnah merusak ketiganya.
2. Sebagai teman dekat, Anda memiliki akses untuk mengingatkan langsung; teguran pribadi memberi kesempatan memperbaiki diri dan meralat informasi palsu.
3. Bila teguran tidak diindahkan, pelanggaran tetap harus dilaporkan kepada panitia sebagai penyelenggara. Opsi D memuat kedua langkah itu secara bertahap.

Jadi, jawaban yang tepat adalah (D) Menemui calon tersebut, mengingatkan bahwa fitnah merusak pemilihan yang jujur dan adil, memintanya menghentikan dan meralat kampanyenya, serta melapor ke panitia bila ia tetap melanjutkan.

Mengapa opsi lain kurang tepat:
- (A) Fitnah bukan strategi yang sah; mendiamkannya membiarkan kecurangan.
- (B) Serangan balik memperuncing perpecahan antarsiswa.
- (C) Meminta sanksi tanpa klarifikasi mengabaikan asas keadilan bagi pihak yang dituduh.
- (E) Tidak memilih tidak menghentikan fitnah dan merugikan calon yang jujur.', updated_at=now() WHERE id='019993b1-d5b2-716d-ac9e-f2adda41808d';
UPDATE answers SET description='Mendiamkan saja karena hal itu dianggap bagian dari strategi politik.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b2-716d-ac9e-f2adda41808d' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membuat unggahan tandingan yang menyerang balik calon tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b2-716d-ac9e-f2adda41808d' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mendesak panitia langsung mendiskualifikasi calon tersebut tanpa proses klarifikasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b2-716d-ac9e-f2adda41808d' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menemui calon tersebut, mengingatkan bahwa fitnah merusak pemilihan yang jujur dan adil, memintanya menghentikan dan meralat kampanyenya, serta melapor ke panitia bila ia tetap melanjutkan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b2-716d-ac9e-f2adda41808d' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menolak memilih kedua calon sebagai bentuk protes.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b2-716d-ac9e-f2adda41808d' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda sangat ingin lolos sekolah kedinasan. Orang tua menyarankan Anda berjanji kepada Tuhan (bernazar) yang sangat memberatkan, yaitu berpuasa sebulan penuh berturut-turut bila lolos, padahal kondisi fisik Anda sedang lemah karena juga menyelesaikan skripsi. Janji itu belum Anda ucapkan. Sikap yang paling mencerminkan pengamalan sila ke-1 secara rasional sekaligus tetap menghormati orang tua adalah...', options='[{"id": "019b0657-ebf5-7ebc-a22c-8fd2abd81877", "description": "Menolak saran itu begitu saja dan menyatakan kepada orang tua bahwa bernazar tidak ada gunanya.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebf6-7511-b521-8531a0b19732", "description": "Menyetujui nazar itu demi menyenangkan orang tua sambil berniat menggantinya dengan denda bila nanti tidak sanggup.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebf6-799d-99e2-0f58e290ff71", "description": "Mengucapkan nazar tersebut dan memaksakan diri menjalankannya meskipun kesehatan terganggu.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebf6-7ea7-ab7e-2f239cb59489", "description": "Menjelaskan dengan santun bahwa ibadah tidak semestinya membahayakan diri, lalu mengusulkan wujud syukur yang sanggup dilaksanakan, misalnya bersedekah atau kegiatan sosial bila lolos.", "isCorrect": true, "point": 1}, {"id": "019b0657-ebf7-73d6-af85-9d352211212d", "description": "Menolak membahasnya dan menyerahkan hasil seleksi sepenuhnya pada takdir tanpa perlu berusaha lebih.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Orang tua menyarankan nazar puasa sebulan penuh bila Anda lolos.
- Kondisi fisik Anda lemah karena juga menyelesaikan skripsi; nazar belum diucapkan.
- Kriteria: sila ke-1 secara rasional dan tetap menghormati orang tua.

DITANYAKAN:
Sikap terbaik terhadap saran nazar yang memberatkan.

JAWAB:
1. Pengamalan sila ke-1 menuntut ketakwaan yang tulus dan tidak mencelakakan diri; ajaran agama pada umumnya tidak membebani di luar kemampuan.
2. Karena nazar belum diucapkan, Anda masih dapat memilih bentuk syukur yang sanggup dilaksanakan.
3. Menghormati orang tua berarti menyampaikan pertimbangan dengan santun dan menawarkan alternatif, bukan menolak kasar. Opsi D memenuhi semua kriteria.

Jadi, jawaban yang tepat adalah (D) Menjelaskan dengan santun bahwa ibadah tidak semestinya membahayakan diri, lalu mengusulkan wujud syukur yang sanggup dilaksanakan, misalnya bersedekah atau kegiatan sosial bila lolos.

Mengapa opsi lain kurang tepat:
- (A) Menolak secara kasar dan meremehkan nazar tidak menghormati orang tua maupun keyakinan.
- (B) Menyetujui sambil berniat tidak menjalankan adalah janji yang tidak tulus.
- (C) Memaksakan diri hingga kesehatan terganggu tidak rasional dan membahayakan diri.
- (E) Bersikap fatalistis tanpa usaha bertentangan dengan pandangan bahwa manusia wajib berikhtiar.', status='aktif', quality_score=4, quality_notes='Revisi: ditegaskan nazar belum diucapkan dan kriteria menghormati orang tua; opsi A dibuat tidak santun dan E fatalistis sehingga hanya D yang rasional sekaligus santun.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ebf5-7851-b6aa-13028435da9c';
UPDATE questions SET description='Anda sangat ingin lolos sekolah kedinasan. Orang tua menyarankan Anda berjanji kepada Tuhan (bernazar) yang sangat memberatkan, yaitu berpuasa sebulan penuh berturut-turut bila lolos, padahal kondisi fisik Anda sedang lemah karena juga menyelesaikan skripsi. Janji itu belum Anda ucapkan. Sikap yang paling mencerminkan pengamalan sila ke-1 secara rasional sekaligus tetap menghormati orang tua adalah...', explanation='DIKETAHUI:
- Orang tua menyarankan nazar puasa sebulan penuh bila Anda lolos.
- Kondisi fisik Anda lemah karena juga menyelesaikan skripsi; nazar belum diucapkan.
- Kriteria: sila ke-1 secara rasional dan tetap menghormati orang tua.

DITANYAKAN:
Sikap terbaik terhadap saran nazar yang memberatkan.

JAWAB:
1. Pengamalan sila ke-1 menuntut ketakwaan yang tulus dan tidak mencelakakan diri; ajaran agama pada umumnya tidak membebani di luar kemampuan.
2. Karena nazar belum diucapkan, Anda masih dapat memilih bentuk syukur yang sanggup dilaksanakan.
3. Menghormati orang tua berarti menyampaikan pertimbangan dengan santun dan menawarkan alternatif, bukan menolak kasar. Opsi D memenuhi semua kriteria.

Jadi, jawaban yang tepat adalah (D) Menjelaskan dengan santun bahwa ibadah tidak semestinya membahayakan diri, lalu mengusulkan wujud syukur yang sanggup dilaksanakan, misalnya bersedekah atau kegiatan sosial bila lolos.

Mengapa opsi lain kurang tepat:
- (A) Menolak secara kasar dan meremehkan nazar tidak menghormati orang tua maupun keyakinan.
- (B) Menyetujui sambil berniat tidak menjalankan adalah janji yang tidak tulus.
- (C) Memaksakan diri hingga kesehatan terganggu tidak rasional dan membahayakan diri.
- (E) Bersikap fatalistis tanpa usaha bertentangan dengan pandangan bahwa manusia wajib berikhtiar.', updated_at=now() WHERE id='019b0657-ebf5-7851-b6aa-13028435da9c';
UPDATE answers SET description='Menolak saran itu begitu saja dan menyatakan kepada orang tua bahwa bernazar tidak ada gunanya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf5-7851-b6aa-13028435da9c' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menyetujui nazar itu demi menyenangkan orang tua sambil berniat menggantinya dengan denda bila nanti tidak sanggup.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf5-7851-b6aa-13028435da9c' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengucapkan nazar tersebut dan memaksakan diri menjalankannya meskipun kesehatan terganggu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf5-7851-b6aa-13028435da9c' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menjelaskan dengan santun bahwa ibadah tidak semestinya membahayakan diri, lalu mengusulkan wujud syukur yang sanggup dilaksanakan, misalnya bersedekah atau kegiatan sosial bila lolos.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf5-7851-b6aa-13028435da9c' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menolak membahasnya dan menyerahkan hasil seleksi sepenuhnya pada takdir tanpa perlu berusaha lebih.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf5-7851-b6aa-13028435da9c' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda ingin kuliah Seni Rupa, tetapi orang tua memaksa Anda masuk STAN dan mengancam tidak membiayai kuliah bila Anda menolak. Terjadi konflik hebat. Penerapan sila ke-4 (musyawarah dengan hikmat kebijaksanaan) yang paling tepat dalam menyelesaikan konflik ini adalah...', options='[{"id": "019b0657-ec12-7257-918d-70f1344b4eb8", "description": "Menuruti orang tua dengan terpaksa sambil berjanji dalam hati akan keluar setelah mandiri secara finansial.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec12-781f-9fe9-954a526692d0", "description": "Diam-diam mendaftar Seni Rupa dan mencari beasiswa tanpa memberi tahu orang tua.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec12-7d05-b160-ebeada17b405", "description": "Mengajak orang tua berdiskusi kembali dengan kepala dingin, membawa data prospek karier seni rupa, mendengarkan kekhawatiran mereka, dan mencari kesepakatan bersama.", "isCorrect": true, "point": 1}, {"id": "019b0657-ec13-7312-8e71-28b66634b8f9", "description": "Meminta kerabat yang sukses di bidang seni membujuk orang tua, sementara Anda menghindari pembicaraan langsung dengan mereka.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec13-7904-b730-ae90ab90ce0c", "description": "Langsung mendaftar jurusan DKV tanpa membicarakannya dengan orang tua karena menganggapnya sudah jalan tengah.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda ingin kuliah Seni Rupa; orang tua memaksa masuk STAN.
- Orang tua mengancam tidak membiayai bila Anda menolak.
- Kriteria: penerapan sila ke-4 dalam resolusi konflik.

DITANYAKAN:
Langkah penyelesaian konflik yang sesuai musyawarah dengan hikmat kebijaksanaan.

JAWAB:
1. Musyawarah berarti para pihak duduk bersama, menyampaikan alasan dengan akal sehat, saling mendengarkan, dan mencari keputusan yang dapat diterima bersama.
2. Data prospek karier membuat diskusi rasional, sedangkan mendengarkan kekhawatiran orang tua menunjukkan hikmat kebijaksanaan.
3. Opsi C satu-satunya yang melibatkan Anda dan orang tua secara langsung dalam dialog untuk mencapai kesepakatan.

Jadi, jawaban yang tepat adalah (C) Mengajak orang tua berdiskusi kembali dengan kepala dingin, membawa data prospek karier seni rupa, mendengarkan kekhawatiran mereka, dan mencari kesepakatan bersama.

Mengapa opsi lain kurang tepat:
- (A) Menurut dengan terpaksa sambil berencana keluar bukan mufakat dan tidak jujur.
- (B) Bertindak diam-diam menghindari musyawarah dan tidak jujur kepada orang tua.
- (D) Pihak ketiga boleh membantu, tetapi menghindari dialog langsung berarti Anda tidak ikut bermusyawarah.
- (E) Memutuskan sepihak, meski dianggap kompromi, tetap bukan hasil musyawarah.', status='aktif', quality_score=4, quality_notes='Revisi: opsi D diubah menjadi menghindari dialog dan E menjadi keputusan sepihak sehingga kunci C tunggal sebagai wujud musyawarah.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ec11-7bff-8298-e79060112056';
UPDATE questions SET description='Anda ingin kuliah Seni Rupa, tetapi orang tua memaksa Anda masuk STAN dan mengancam tidak membiayai kuliah bila Anda menolak. Terjadi konflik hebat. Penerapan sila ke-4 (musyawarah dengan hikmat kebijaksanaan) yang paling tepat dalam menyelesaikan konflik ini adalah...', explanation='DIKETAHUI:
- Anda ingin kuliah Seni Rupa; orang tua memaksa masuk STAN.
- Orang tua mengancam tidak membiayai bila Anda menolak.
- Kriteria: penerapan sila ke-4 dalam resolusi konflik.

DITANYAKAN:
Langkah penyelesaian konflik yang sesuai musyawarah dengan hikmat kebijaksanaan.

JAWAB:
1. Musyawarah berarti para pihak duduk bersama, menyampaikan alasan dengan akal sehat, saling mendengarkan, dan mencari keputusan yang dapat diterima bersama.
2. Data prospek karier membuat diskusi rasional, sedangkan mendengarkan kekhawatiran orang tua menunjukkan hikmat kebijaksanaan.
3. Opsi C satu-satunya yang melibatkan Anda dan orang tua secara langsung dalam dialog untuk mencapai kesepakatan.

Jadi, jawaban yang tepat adalah (C) Mengajak orang tua berdiskusi kembali dengan kepala dingin, membawa data prospek karier seni rupa, mendengarkan kekhawatiran mereka, dan mencari kesepakatan bersama.

Mengapa opsi lain kurang tepat:
- (A) Menurut dengan terpaksa sambil berencana keluar bukan mufakat dan tidak jujur.
- (B) Bertindak diam-diam menghindari musyawarah dan tidak jujur kepada orang tua.
- (D) Pihak ketiga boleh membantu, tetapi menghindari dialog langsung berarti Anda tidak ikut bermusyawarah.
- (E) Memutuskan sepihak, meski dianggap kompromi, tetap bukan hasil musyawarah.', updated_at=now() WHERE id='019b0657-ec11-7bff-8298-e79060112056';
UPDATE answers SET description='Menuruti orang tua dengan terpaksa sambil berjanji dalam hati akan keluar setelah mandiri secara finansial.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec11-7bff-8298-e79060112056' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Diam-diam mendaftar Seni Rupa dan mencari beasiswa tanpa memberi tahu orang tua.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec11-7bff-8298-e79060112056' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengajak orang tua berdiskusi kembali dengan kepala dingin, membawa data prospek karier seni rupa, mendengarkan kekhawatiran mereka, dan mencari kesepakatan bersama.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec11-7bff-8298-e79060112056' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Meminta kerabat yang sukses di bidang seni membujuk orang tua, sementara Anda menghindari pembicaraan langsung dengan mereka.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec11-7bff-8298-e79060112056' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Langsung mendaftar jurusan DKV tanpa membicarakannya dengan orang tua karena menganggapnya sudah jalan tengah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec11-7bff-8298-e79060112056' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Dalam musyawarah keluarga, seluruh kerabat menekan Anda masuk sekolah kedinasan agar masa depan terjamin, padahal Anda sudah diterima di jurusan Sastra Indonesia PTN yang sesuai minat Anda untuk melestarikan bahasa. Pendapat Anda tidak didengar karena dianggap masih anak kecil. Penerapan sila ke-4 yang paling tepat dalam situasi ini adalah...', options='[{"id": "019b0bef-1fb5-7d38-92cc-d519f7ea8f8a", "description": "Menerima keputusan keluarga besar karena suara terbanyak harus selalu dituruti.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fb6-72b0-94da-a992b4c041e8", "description": "Mogok bicara sebagai bentuk protes agar orang tua luluh.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fb6-7638-8759-66312b8fa701", "description": "Menyampaikan argumen yang logis dan data prospek karier bidang sastra secara santun dalam forum keluarga, serta meminta pendapat Anda dipertimbangkan sebagai pihak yang menjalani pilihan itu.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fb6-7924-a015-36c9118ac6a4", "description": "Mengikuti tes kedinasan setengah hati, lalu diam-diam mendaftar ulang di jurusan Sastra Indonesia.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fb6-7dad-8f73-a96f6c1806c6", "description": "Meminta guru yang disegani keluarga berbicara mewakili Anda, sementara Anda memilih tidak hadir dalam forum keluarga.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Kerabat menekan Anda masuk sekolah kedinasan.
- Anda sudah diterima di Sastra Indonesia PTN sesuai minat.
- Pendapat Anda tidak didengar karena dianggap masih kecil.
- Kriteria: penerapan sila ke-4.

DITANYAKAN:
Sikap yang mencerminkan musyawarah dengan hikmat kebijaksanaan.

JAWAB:
1. Sila ke-4 menghendaki setiap peserta musyawarah berhak menyampaikan pendapat, dan keputusan diambil dengan akal sehat serta semangat kekeluargaan, bukan sekadar suara terbanyak.
2. Agar didengar, pendapat perlu disampaikan secara langsung, santun, dan berdasar data.
3. Opsi C memenuhi semuanya: hadir, berargumen rasional, santun, dan meminta pendapat dipertimbangkan.

Jadi, jawaban yang tepat adalah (C) Menyampaikan argumen yang logis dan data prospek karier bidang sastra secara santun dalam forum keluarga, serta meminta pendapat Anda dipertimbangkan sebagai pihak yang menjalani pilihan itu.

Mengapa opsi lain kurang tepat:
- (A) Musyawarah mufakat bukan sekadar mengikuti suara terbanyak tanpa menyampaikan pendapat.
- (B) Mogok bicara menutup dialog dan bukan cara bermusyawarah.
- (D) Berpura-pura mengikuti lalu bertindak diam-diam tidak jujur dan mengkhianati musyawarah.
- (E) Mediator dapat membantu, tetapi absen dari forum berarti tidak ikut bermusyawarah atas urusan Anda sendiri.', status='aktif', quality_score=4, quality_notes='Revisi: opsi E diubah menjadi menghindari forum sehingga tidak lagi setara dengan kunci C; pembahasan ditulis ulang.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fb5-7936-b482-b196b63e37ad';
UPDATE questions SET description='Dalam musyawarah keluarga, seluruh kerabat menekan Anda masuk sekolah kedinasan agar masa depan terjamin, padahal Anda sudah diterima di jurusan Sastra Indonesia PTN yang sesuai minat Anda untuk melestarikan bahasa. Pendapat Anda tidak didengar karena dianggap masih anak kecil. Penerapan sila ke-4 yang paling tepat dalam situasi ini adalah...', explanation='DIKETAHUI:
- Kerabat menekan Anda masuk sekolah kedinasan.
- Anda sudah diterima di Sastra Indonesia PTN sesuai minat.
- Pendapat Anda tidak didengar karena dianggap masih kecil.
- Kriteria: penerapan sila ke-4.

DITANYAKAN:
Sikap yang mencerminkan musyawarah dengan hikmat kebijaksanaan.

JAWAB:
1. Sila ke-4 menghendaki setiap peserta musyawarah berhak menyampaikan pendapat, dan keputusan diambil dengan akal sehat serta semangat kekeluargaan, bukan sekadar suara terbanyak.
2. Agar didengar, pendapat perlu disampaikan secara langsung, santun, dan berdasar data.
3. Opsi C memenuhi semuanya: hadir, berargumen rasional, santun, dan meminta pendapat dipertimbangkan.

Jadi, jawaban yang tepat adalah (C) Menyampaikan argumen yang logis dan data prospek karier bidang sastra secara santun dalam forum keluarga, serta meminta pendapat Anda dipertimbangkan sebagai pihak yang menjalani pilihan itu.

Mengapa opsi lain kurang tepat:
- (A) Musyawarah mufakat bukan sekadar mengikuti suara terbanyak tanpa menyampaikan pendapat.
- (B) Mogok bicara menutup dialog dan bukan cara bermusyawarah.
- (D) Berpura-pura mengikuti lalu bertindak diam-diam tidak jujur dan mengkhianati musyawarah.
- (E) Mediator dapat membantu, tetapi absen dari forum berarti tidak ikut bermusyawarah atas urusan Anda sendiri.', updated_at=now() WHERE id='019b0c6a-abf2-7572-bc93-dbbd5aa7848a';
UPDATE answers SET description='Menerima keputusan keluarga besar karena suara terbanyak harus selalu dituruti.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf2-7572-bc93-dbbd5aa7848a' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mogok bicara sebagai bentuk protes agar orang tua luluh.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf2-7572-bc93-dbbd5aa7848a' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menyampaikan argumen yang logis dan data prospek karier bidang sastra secara santun dalam forum keluarga, serta meminta pendapat Anda dipertimbangkan sebagai pihak yang menjalani pilihan itu.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf2-7572-bc93-dbbd5aa7848a' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengikuti tes kedinasan setengah hati, lalu diam-diam mendaftar ulang di jurusan Sastra Indonesia.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf2-7572-bc93-dbbd5aa7848a' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminta guru yang disegani keluarga berbicara mewakili Anda, sementara Anda memilih tidak hadir dalam forum keluarga.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf2-7572-bc93-dbbd5aa7848a' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Dalam musyawarah keluarga, seluruh kerabat menekan Anda masuk sekolah kedinasan agar masa depan terjamin, padahal Anda sudah diterima di jurusan Sastra Indonesia PTN yang sesuai minat Anda untuk melestarikan bahasa. Pendapat Anda tidak didengar karena dianggap masih anak kecil. Penerapan sila ke-4 yang paling tepat dalam situasi ini adalah...', explanation='DIKETAHUI:
- Kerabat menekan Anda masuk sekolah kedinasan.
- Anda sudah diterima di Sastra Indonesia PTN sesuai minat.
- Pendapat Anda tidak didengar karena dianggap masih kecil.
- Kriteria: penerapan sila ke-4.

DITANYAKAN:
Sikap yang mencerminkan musyawarah dengan hikmat kebijaksanaan.

JAWAB:
1. Sila ke-4 menghendaki setiap peserta musyawarah berhak menyampaikan pendapat, dan keputusan diambil dengan akal sehat serta semangat kekeluargaan, bukan sekadar suara terbanyak.
2. Agar didengar, pendapat perlu disampaikan secara langsung, santun, dan berdasar data.
3. Opsi C memenuhi semuanya: hadir, berargumen rasional, santun, dan meminta pendapat dipertimbangkan.

Jadi, jawaban yang tepat adalah (C) Menyampaikan argumen yang logis dan data prospek karier bidang sastra secara santun dalam forum keluarga, serta meminta pendapat Anda dipertimbangkan sebagai pihak yang menjalani pilihan itu.

Mengapa opsi lain kurang tepat:
- (A) Musyawarah mufakat bukan sekadar mengikuti suara terbanyak tanpa menyampaikan pendapat.
- (B) Mogok bicara menutup dialog dan bukan cara bermusyawarah.
- (D) Berpura-pura mengikuti lalu bertindak diam-diam tidak jujur dan mengkhianati musyawarah.
- (E) Mediator dapat membantu, tetapi absen dari forum berarti tidak ikut bermusyawarah atas urusan Anda sendiri.', updated_at=now() WHERE id='019b0bef-1fb5-7936-b482-b196b63e37ad';
UPDATE answers SET description='Menerima keputusan keluarga besar karena suara terbanyak harus selalu dituruti.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb5-7936-b482-b196b63e37ad' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mogok bicara sebagai bentuk protes agar orang tua luluh.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb5-7936-b482-b196b63e37ad' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menyampaikan argumen yang logis dan data prospek karier bidang sastra secara santun dalam forum keluarga, serta meminta pendapat Anda dipertimbangkan sebagai pihak yang menjalani pilihan itu.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb5-7936-b482-b196b63e37ad' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengikuti tes kedinasan setengah hati, lalu diam-diam mendaftar ulang di jurusan Sastra Indonesia.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb5-7936-b482-b196b63e37ad' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminta guru yang disegani keluarga berbicara mewakili Anda, sementara Anda memilih tidak hadir dalam forum keluarga.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb5-7936-b482-b196b63e37ad' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda sangat ingin masuk IPDN, tetapi beredar berita viral tentang kekerasan senioritas di kampus tersebut. Orang tua melarang Anda mendaftar karena khawatir akan keselamatan Anda. Anda ingin tetap mengejar cita-cita tanpa mengabaikan kekhawatiran orang tua. Sikap yang paling mencerminkan sila ke-2 (Kemanusiaan yang Adil dan Beradab) adalah...', options='[{"id": "019b0bef-1fb9-727c-987d-c539f4c95dbd", "description": "Bersama orang tua mencari informasi resmi tentang pembenahan sistem pengasuhan dan saluran pengaduan di kampus itu, lalu mendaftar dengan komitmen menolak, tidak melakukan, dan melaporkan segala bentuk kekerasan.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fb9-75cb-a03b-00df6bb95ba8", "description": "Tetap mendaftar tanpa memedulikan larangan orang tua karena cita-cita adalah hak pribadi.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fb9-79e4-8cca-3d1dce8c372a", "description": "Tetap mendaftar dan berlatih bela diri agar dapat membalas bila ditindas senior.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fb9-7d42-948d-c85eab897c7e", "description": "Membatalkan cita-cita dan menyimpulkan semua sekolah kedinasan pasti penuh kekerasan.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fba-72c7-9bf2-9d3490060b76", "description": "Meyakinkan orang tua bahwa berita tersebut pasti hoaks tanpa memeriksa kebenarannya.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda ingin masuk IPDN; ada berita viral kekerasan senioritas.
- Orang tua khawatir akan keselamatan Anda.
- Anda ingin tetap mengejar cita-cita tanpa mengabaikan kekhawatiran orang tua.
- Kriteria: sila ke-2.

DITANYAKAN:
Sikap yang paling menjunjung nilai kemanusiaan dalam situasi tersebut.

JAWAB:
1. Sila ke-2 menuntut penghormatan pada martabat manusia, menolak kekerasan, dan bersikap adil dalam menilai informasi.
2. Kekhawatiran orang tua dijawab dengan data, bukan sangkalan atau pembangkangan; mencari informasi resmi bersama orang tua menghormati mereka.
3. Komitmen menolak, tidak melakukan, dan melaporkan kekerasan menunjukkan sikap beradab dan ikut memutus rantai kekerasan. Opsi A memenuhi semua kriteria.

Jadi, jawaban yang tepat adalah (A) Bersama orang tua mencari informasi resmi tentang pembenahan sistem pengasuhan dan saluran pengaduan di kampus itu, lalu mendaftar dengan komitmen menolak, tidak melakukan, dan melaporkan segala bentuk kekerasan.

Mengapa opsi lain kurang tepat:
- (B) Mengabaikan kekhawatiran orang tua tidak memenuhi kriteria soal dan tidak menghormati mereka.
- (C) Menyiapkan diri untuk membalas kekerasan justru melanggengkan kekerasan.
- (D) Menggeneralisasi tanpa data tidak adil dan sekaligus mengorbankan cita-cita.
- (E) Menyangkal tanpa memeriksa kebenaran tidak jujur dan meremehkan keselamatan.', status='aktif', quality_score=4, quality_notes='Revisi: kriteria (cita-cita + kekhawatiran orang tua + sila ke-2) dipertegas; kunci A digabung dengan langkah verifikasi dan pelaporan sehingga opsi lain jelas kurang.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fb8-7d91-85dd-df0f42978786';
UPDATE questions SET description='Anda sangat ingin masuk IPDN, tetapi beredar berita viral tentang kekerasan senioritas di kampus tersebut. Orang tua melarang Anda mendaftar karena khawatir akan keselamatan Anda. Anda ingin tetap mengejar cita-cita tanpa mengabaikan kekhawatiran orang tua. Sikap yang paling mencerminkan sila ke-2 (Kemanusiaan yang Adil dan Beradab) adalah...', explanation='DIKETAHUI:
- Anda ingin masuk IPDN; ada berita viral kekerasan senioritas.
- Orang tua khawatir akan keselamatan Anda.
- Anda ingin tetap mengejar cita-cita tanpa mengabaikan kekhawatiran orang tua.
- Kriteria: sila ke-2.

DITANYAKAN:
Sikap yang paling menjunjung nilai kemanusiaan dalam situasi tersebut.

JAWAB:
1. Sila ke-2 menuntut penghormatan pada martabat manusia, menolak kekerasan, dan bersikap adil dalam menilai informasi.
2. Kekhawatiran orang tua dijawab dengan data, bukan sangkalan atau pembangkangan; mencari informasi resmi bersama orang tua menghormati mereka.
3. Komitmen menolak, tidak melakukan, dan melaporkan kekerasan menunjukkan sikap beradab dan ikut memutus rantai kekerasan. Opsi A memenuhi semua kriteria.

Jadi, jawaban yang tepat adalah (A) Bersama orang tua mencari informasi resmi tentang pembenahan sistem pengasuhan dan saluran pengaduan di kampus itu, lalu mendaftar dengan komitmen menolak, tidak melakukan, dan melaporkan segala bentuk kekerasan.

Mengapa opsi lain kurang tepat:
- (B) Mengabaikan kekhawatiran orang tua tidak memenuhi kriteria soal dan tidak menghormati mereka.
- (C) Menyiapkan diri untuk membalas kekerasan justru melanggengkan kekerasan.
- (D) Menggeneralisasi tanpa data tidak adil dan sekaligus mengorbankan cita-cita.
- (E) Menyangkal tanpa memeriksa kebenaran tidak jujur dan meremehkan keselamatan.', updated_at=now() WHERE id='019b0c6a-abf5-795a-bfdf-465b45d14b8d';
UPDATE answers SET description='Bersama orang tua mencari informasi resmi tentang pembenahan sistem pengasuhan dan saluran pengaduan di kampus itu, lalu mendaftar dengan komitmen menolak, tidak melakukan, dan melaporkan segala bentuk kekerasan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf5-795a-bfdf-465b45d14b8d' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Tetap mendaftar tanpa memedulikan larangan orang tua karena cita-cita adalah hak pribadi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf5-795a-bfdf-465b45d14b8d' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Tetap mendaftar dan berlatih bela diri agar dapat membalas bila ditindas senior.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf5-795a-bfdf-465b45d14b8d' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Membatalkan cita-cita dan menyimpulkan semua sekolah kedinasan pasti penuh kekerasan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf5-795a-bfdf-465b45d14b8d' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meyakinkan orang tua bahwa berita tersebut pasti hoaks tanpa memeriksa kebenarannya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abf5-795a-bfdf-465b45d14b8d' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Anda sangat ingin masuk IPDN, tetapi beredar berita viral tentang kekerasan senioritas di kampus tersebut. Orang tua melarang Anda mendaftar karena khawatir akan keselamatan Anda. Anda ingin tetap mengejar cita-cita tanpa mengabaikan kekhawatiran orang tua. Sikap yang paling mencerminkan sila ke-2 (Kemanusiaan yang Adil dan Beradab) adalah...', explanation='DIKETAHUI:
- Anda ingin masuk IPDN; ada berita viral kekerasan senioritas.
- Orang tua khawatir akan keselamatan Anda.
- Anda ingin tetap mengejar cita-cita tanpa mengabaikan kekhawatiran orang tua.
- Kriteria: sila ke-2.

DITANYAKAN:
Sikap yang paling menjunjung nilai kemanusiaan dalam situasi tersebut.

JAWAB:
1. Sila ke-2 menuntut penghormatan pada martabat manusia, menolak kekerasan, dan bersikap adil dalam menilai informasi.
2. Kekhawatiran orang tua dijawab dengan data, bukan sangkalan atau pembangkangan; mencari informasi resmi bersama orang tua menghormati mereka.
3. Komitmen menolak, tidak melakukan, dan melaporkan kekerasan menunjukkan sikap beradab dan ikut memutus rantai kekerasan. Opsi A memenuhi semua kriteria.

Jadi, jawaban yang tepat adalah (A) Bersama orang tua mencari informasi resmi tentang pembenahan sistem pengasuhan dan saluran pengaduan di kampus itu, lalu mendaftar dengan komitmen menolak, tidak melakukan, dan melaporkan segala bentuk kekerasan.

Mengapa opsi lain kurang tepat:
- (B) Mengabaikan kekhawatiran orang tua tidak memenuhi kriteria soal dan tidak menghormati mereka.
- (C) Menyiapkan diri untuk membalas kekerasan justru melanggengkan kekerasan.
- (D) Menggeneralisasi tanpa data tidak adil dan sekaligus mengorbankan cita-cita.
- (E) Menyangkal tanpa memeriksa kebenaran tidak jujur dan meremehkan keselamatan.', updated_at=now() WHERE id='019b0bef-1fb8-7d91-85dd-df0f42978786';
UPDATE answers SET description='Bersama orang tua mencari informasi resmi tentang pembenahan sistem pengasuhan dan saluran pengaduan di kampus itu, lalu mendaftar dengan komitmen menolak, tidak melakukan, dan melaporkan segala bentuk kekerasan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb8-7d91-85dd-df0f42978786' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Tetap mendaftar tanpa memedulikan larangan orang tua karena cita-cita adalah hak pribadi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb8-7d91-85dd-df0f42978786' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Tetap mendaftar dan berlatih bela diri agar dapat membalas bila ditindas senior.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb8-7d91-85dd-df0f42978786' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Membatalkan cita-cita dan menyimpulkan semua sekolah kedinasan pasti penuh kekerasan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb8-7d91-85dd-df0f42978786' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meyakinkan orang tua bahwa berita tersebut pasti hoaks tanpa memeriksa kebenarannya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fb8-7d91-85dd-df0f42978786' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda dan sahabat mendaftar formasi yang sama di sebuah sekolah kedinasan dengan kuota satu orang untuk daerah Anda. Menjelang tes, sahabat kehilangan buku catatannya dan Anda menemukannya. Jika dikembalikan, ia bisa belajar dan mungkin mengalahkan Anda. Sikap yang paling mencerminkan sila ke-2 (adil dan beradab) adalah...', options='[{"id": "019b0bef-1fbd-7dbf-bfc4-6477a4ee3267", "description": "Segera mengembalikan buku itu kepadanya dan bersaing secara sportif, karena kemenangan hanya bermakna bila diraih dengan jujur.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fbe-7197-854d-85978c2f6647", "description": "Mengembalikan buku itu setelah Anda menyalin poin-poin pentingnya tanpa izin.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fbe-75aa-8464-76fdb1a8f4e9", "description": "Menyimpan buku itu sampai ujian selesai dengan alasan lupa.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fbe-7878-b93b-cb462da2a8ec", "description": "Mengembalikan buku itu tetapi merahasiakan bahwa Anda juga mendaftar formasi yang sama.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fbe-7c12-9ca4-7b20faf3865f", "description": "Menitipkan buku itu ke bagian barang temuan tanpa memberi tahu sahabat, agar Anda tidak dianggap membantu pesaing.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda dan sahabat bersaing untuk kuota satu orang.
- Anda menemukan buku catatan sahabat menjelang tes.
- Kriteria: sila ke-2, adil dan beradab.

DITANYAKAN:
Sikap yang adil dan beradab terhadap buku milik sahabat.

JAWAB:
1. Buku itu milik sahabat; menahannya atau memanfaatkannya tanpa izin melanggar hak orang lain.
2. Bersikap adil dan beradab berarti mengembalikan barang milik orang lain sesegera mungkin dan bersaing secara jujur.
3. Opsi A satu-satunya yang mengembalikan segera, terbuka, dan sportif.

Jadi, jawaban yang tepat adalah (A) Segera mengembalikan buku itu kepadanya dan bersaing secara sportif, karena kemenangan hanya bermakna bila diraih dengan jujur.

Mengapa opsi lain kurang tepat:
- (B) Menyalin isi catatan tanpa izin memanfaatkan hak milik orang lain.
- (C) Menyembunyikan buku dengan alasan lupa adalah tindakan tidak jujur dan curang.
- (D) Merahasiakan fakta pendaftaran tidak jujur kepada sahabat.
- (E) Sengaja tidak memberi tahu pemilik membuat buku tidak segera kembali, sehingga sama-sama menghambat sahabat.', status='aktif', quality_score=5, quality_notes='Revisi: opsi E (sebelumnya juga mengembalikan + belajar bersama) diganti sikap pasif yang menghambat sehingga kunci A tunggal; stem menyebut sila ke-2.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fbd-7934-ab86-01f3243c8c53';
UPDATE questions SET description='Anda dan sahabat mendaftar formasi yang sama di sebuah sekolah kedinasan dengan kuota satu orang untuk daerah Anda. Menjelang tes, sahabat kehilangan buku catatannya dan Anda menemukannya. Jika dikembalikan, ia bisa belajar dan mungkin mengalahkan Anda. Sikap yang paling mencerminkan sila ke-2 (adil dan beradab) adalah...', explanation='DIKETAHUI:
- Anda dan sahabat bersaing untuk kuota satu orang.
- Anda menemukan buku catatan sahabat menjelang tes.
- Kriteria: sila ke-2, adil dan beradab.

DITANYAKAN:
Sikap yang adil dan beradab terhadap buku milik sahabat.

JAWAB:
1. Buku itu milik sahabat; menahannya atau memanfaatkannya tanpa izin melanggar hak orang lain.
2. Bersikap adil dan beradab berarti mengembalikan barang milik orang lain sesegera mungkin dan bersaing secara jujur.
3. Opsi A satu-satunya yang mengembalikan segera, terbuka, dan sportif.

Jadi, jawaban yang tepat adalah (A) Segera mengembalikan buku itu kepadanya dan bersaing secara sportif, karena kemenangan hanya bermakna bila diraih dengan jujur.

Mengapa opsi lain kurang tepat:
- (B) Menyalin isi catatan tanpa izin memanfaatkan hak milik orang lain.
- (C) Menyembunyikan buku dengan alasan lupa adalah tindakan tidak jujur dan curang.
- (D) Merahasiakan fakta pendaftaran tidak jujur kepada sahabat.
- (E) Sengaja tidak memberi tahu pemilik membuat buku tidak segera kembali, sehingga sama-sama menghambat sahabat.', updated_at=now() WHERE id='019b0bef-1fbd-7934-ab86-01f3243c8c53';
UPDATE answers SET description='Segera mengembalikan buku itu kepadanya dan bersaing secara sportif, karena kemenangan hanya bermakna bila diraih dengan jujur.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbd-7934-ab86-01f3243c8c53' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengembalikan buku itu setelah Anda menyalin poin-poin pentingnya tanpa izin.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbd-7934-ab86-01f3243c8c53' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menyimpan buku itu sampai ujian selesai dengan alasan lupa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbd-7934-ab86-01f3243c8c53' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengembalikan buku itu tetapi merahasiakan bahwa Anda juga mendaftar formasi yang sama.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbd-7934-ab86-01f3243c8c53' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menitipkan buku itu ke bagian barang temuan tanpa memberi tahu sahabat, agar Anda tidak dianggap membantu pesaing.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbd-7934-ab86-01f3243c8c53' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Anda dan sahabat mendaftar formasi yang sama di sebuah sekolah kedinasan dengan kuota satu orang untuk daerah Anda. Menjelang tes, sahabat kehilangan buku catatannya dan Anda menemukannya. Jika dikembalikan, ia bisa belajar dan mungkin mengalahkan Anda. Sikap yang paling mencerminkan sila ke-2 (adil dan beradab) adalah...', explanation='DIKETAHUI:
- Anda dan sahabat bersaing untuk kuota satu orang.
- Anda menemukan buku catatan sahabat menjelang tes.
- Kriteria: sila ke-2, adil dan beradab.

DITANYAKAN:
Sikap yang adil dan beradab terhadap buku milik sahabat.

JAWAB:
1. Buku itu milik sahabat; menahannya atau memanfaatkannya tanpa izin melanggar hak orang lain.
2. Bersikap adil dan beradab berarti mengembalikan barang milik orang lain sesegera mungkin dan bersaing secara jujur.
3. Opsi A satu-satunya yang mengembalikan segera, terbuka, dan sportif.

Jadi, jawaban yang tepat adalah (A) Segera mengembalikan buku itu kepadanya dan bersaing secara sportif, karena kemenangan hanya bermakna bila diraih dengan jujur.

Mengapa opsi lain kurang tepat:
- (B) Menyalin isi catatan tanpa izin memanfaatkan hak milik orang lain.
- (C) Menyembunyikan buku dengan alasan lupa adalah tindakan tidak jujur dan curang.
- (D) Merahasiakan fakta pendaftaran tidak jujur kepada sahabat.
- (E) Sengaja tidak memberi tahu pemilik membuat buku tidak segera kembali, sehingga sama-sama menghambat sahabat.', updated_at=now() WHERE id='019b0c6a-abfa-78b6-b836-c9a6afcfb282';
UPDATE answers SET description='Segera mengembalikan buku itu kepadanya dan bersaing secara sportif, karena kemenangan hanya bermakna bila diraih dengan jujur.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfa-78b6-b836-c9a6afcfb282' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengembalikan buku itu setelah Anda menyalin poin-poin pentingnya tanpa izin.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfa-78b6-b836-c9a6afcfb282' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menyimpan buku itu sampai ujian selesai dengan alasan lupa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfa-78b6-b836-c9a6afcfb282' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengembalikan buku itu tetapi merahasiakan bahwa Anda juga mendaftar formasi yang sama.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfa-78b6-b836-c9a6afcfb282' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menitipkan buku itu ke bagian barang temuan tanpa memberi tahu sahabat, agar Anda tidak dianggap membantu pesaing.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfa-78b6-b836-c9a6afcfb282' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Kelompok KKN Anda ditempatkan di desa yang kesulitan air bersih. Dalam rapat singkat, mayoritas anggota memilih program ringan (mengecat pagar balai desa dan lomba) agar cepat selesai, padahal hasil observasi menunjukkan warga sangat membutuhkan penjernihan air sederhana. Usulan Anda kalah dalam voting tanpa pembahasan data kebutuhan warga. Penerapan sila ke-4 yang paling tepat adalah...', options='[{"id": "019b0c6a-abc3-7d1a-9693-09074fe5e9be", "description": "Langsung mengikuti hasil voting tanpa menyampaikan data kebutuhan warga yang Anda miliki.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abc4-71d7-b9ce-7803aeb1f2cc", "description": "Mengerjakan penjernihan air sendirian dengan biaya sendiri di luar program kelompok.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abc4-7799-bf15-54331d6335d3", "description": "Melaporkan kemalasan teman-teman ke dosen pembimbing lapangan agar nilai mereka dikurangi.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abc4-7d9a-a0d5-b79df08c93f2", "description": "Mengusulkan musyawarah ulang dengan menghadirkan data kebutuhan warga dan tokoh masyarakat, menawarkan pembagian kerja yang realistis, lalu menjalankan hasil kesepakatan bersama dengan itikad baik.", "isCorrect": true, "point": 1}, {"id": "019b0c6a-abc5-72d9-bfad-3c0c4d393936", "description": "Keluar dari kelompok dan meminta dipindahkan ke desa lain.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Desa kesulitan air bersih; observasi menunjukkan kebutuhan penjernihan air.
- Keputusan diambil lewat voting tanpa membahas data kebutuhan warga.
- Kriteria: penerapan sila ke-4.

DITANYAKAN:
Langkah yang mencerminkan musyawarah dengan hikmat kebijaksanaan.

JAWAB:
1. Sila ke-4 mengutamakan musyawarah mufakat dengan akal sehat; keputusan harus dapat dipertanggungjawabkan dan mengutamakan kepentingan bersama, dalam hal ini kebutuhan warga.
2. Voting tanpa membahas data belum mencerminkan permusyawaratan yang bijaksana, sehingga wajar mengusulkan musyawarah ulang secara santun.
3. Hasil musyawarah yang baru wajib dijalankan bersama dengan itikad baik. Opsi D memenuhi seluruh unsur tersebut.

Jadi, jawaban yang tepat adalah (D) Mengusulkan musyawarah ulang dengan menghadirkan data kebutuhan warga dan tokoh masyarakat, menawarkan pembagian kerja yang realistis, lalu menjalankan hasil kesepakatan bersama dengan itikad baik.

Mengapa opsi lain kurang tepat:
- (A) Menerima hasil keputusan memang baik, tetapi menahan data penting membuat keputusan tidak dilandasi hikmat kebijaksanaan.
- (B) Bekerja sendiri mengabaikan kebersamaan kelompok dan tidak berkelanjutan.
- (C) Melapor demi menjatuhkan nilai teman bersifat menghukum, bukan bermusyawarah.
- (E) Keluar dari kelompok menghindari tanggung jawab dan tidak menyelesaikan masalah warga.', status='aktif', quality_score=4, quality_notes='Revisi: stem dilengkapi data kebutuhan warga dan menyebut sila ke-4; kunci D dipertegas (musyawarah ulang + menjalankan hasil), opsi A diubah agar jelas kurang.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-abc3-7832-8946-2fe521aed7c0';
UPDATE questions SET description='Kelompok KKN Anda ditempatkan di desa yang kesulitan air bersih. Dalam rapat singkat, mayoritas anggota memilih program ringan (mengecat pagar balai desa dan lomba) agar cepat selesai, padahal hasil observasi menunjukkan warga sangat membutuhkan penjernihan air sederhana. Usulan Anda kalah dalam voting tanpa pembahasan data kebutuhan warga. Penerapan sila ke-4 yang paling tepat adalah...', explanation='DIKETAHUI:
- Desa kesulitan air bersih; observasi menunjukkan kebutuhan penjernihan air.
- Keputusan diambil lewat voting tanpa membahas data kebutuhan warga.
- Kriteria: penerapan sila ke-4.

DITANYAKAN:
Langkah yang mencerminkan musyawarah dengan hikmat kebijaksanaan.

JAWAB:
1. Sila ke-4 mengutamakan musyawarah mufakat dengan akal sehat; keputusan harus dapat dipertanggungjawabkan dan mengutamakan kepentingan bersama, dalam hal ini kebutuhan warga.
2. Voting tanpa membahas data belum mencerminkan permusyawaratan yang bijaksana, sehingga wajar mengusulkan musyawarah ulang secara santun.
3. Hasil musyawarah yang baru wajib dijalankan bersama dengan itikad baik. Opsi D memenuhi seluruh unsur tersebut.

Jadi, jawaban yang tepat adalah (D) Mengusulkan musyawarah ulang dengan menghadirkan data kebutuhan warga dan tokoh masyarakat, menawarkan pembagian kerja yang realistis, lalu menjalankan hasil kesepakatan bersama dengan itikad baik.

Mengapa opsi lain kurang tepat:
- (A) Menerima hasil keputusan memang baik, tetapi menahan data penting membuat keputusan tidak dilandasi hikmat kebijaksanaan.
- (B) Bekerja sendiri mengabaikan kebersamaan kelompok dan tidak berkelanjutan.
- (C) Melapor demi menjatuhkan nilai teman bersifat menghukum, bukan bermusyawarah.
- (E) Keluar dari kelompok menghindari tanggung jawab dan tidak menyelesaikan masalah warga.', updated_at=now() WHERE id='019b0c6a-abc3-7832-8946-2fe521aed7c0';
UPDATE answers SET description='Langsung mengikuti hasil voting tanpa menyampaikan data kebutuhan warga yang Anda miliki.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc3-7832-8946-2fe521aed7c0' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengerjakan penjernihan air sendirian dengan biaya sendiri di luar program kelompok.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc3-7832-8946-2fe521aed7c0' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Melaporkan kemalasan teman-teman ke dosen pembimbing lapangan agar nilai mereka dikurangi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc3-7832-8946-2fe521aed7c0' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengusulkan musyawarah ulang dengan menghadirkan data kebutuhan warga dan tokoh masyarakat, menawarkan pembagian kerja yang realistis, lalu menjalankan hasil kesepakatan bersama dengan itikad baik.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc3-7832-8946-2fe521aed7c0' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Keluar dari kelompok dan meminta dipindahkan ke desa lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc3-7832-8946-2fe521aed7c0' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Ini tahun ketiga Anda gagal masuk PTN maupun sekolah kedinasan. Tetangga mencibir dan Anda merasa tidak berguna. Respons yang paling mencerminkan pengamalan Pancasila, yaitu tetap berikhtiar sambil berserah kepada Tuhan (sila ke-1) dan suka bekerja keras untuk mandiri serta berkontribusi (sila ke-5), adalah...', options='[{"id": "019b0c6a-abd8-7c5d-9e04-1f97a0a81136", "description": "Pasrah menerima nasib dan bekerja apa saja tanpa rencana, karena merasa jalan hidup memang sudah buntu.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd9-7203-9024-1dfdd76d19d8", "description": "Mengurung diri dan menjauhi semua orang untuk sementara waktu tanpa batas yang jelas.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd9-757b-9455-8cd11e0df0d1", "description": "Meminta modal usaha kepada orang tua agar dapat membungkam cibiran tetangga secepatnya.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd9-7944-8908-2a693b7d942a", "description": "Mengulang tes yang sama tahun depan dengan cara belajar yang sama, semata-mata untuk membuktikan diri kepada tetangga.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd9-7ebb-9463-10f3a94d8dc2", "description": "Mengevaluasi penyebab kegagalan, lalu menyusun rencana realistis, misalnya mengikuti kursus vokasi singkat agar segera bekerja sambil tetap membuka peluang melanjutkan pendidikan.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Tiga kali gagal seleksi PTN dan kedinasan.
- Mendapat cibiran dan merasa tidak berguna.
- Kriteria: ikhtiar dan berserah (sila ke-1), kerja keras dan kemandirian (sila ke-5).

DITANYAKAN:
Respons bangkit yang paling sesuai kriteria tersebut.

JAWAB:
1. Berikhtiar berarti tidak pasrah; usaha harus terarah, dimulai dari evaluasi penyebab kegagalan.
2. Kerja keras dan kemandirian terwujud lewat rencana yang realistis dan produktif, bukan didorong keinginan membalas cibiran.
3. Opsi E memuat evaluasi, rencana nyata, kemandirian ekonomi, dan tetap membuka peluang pendidikan.

Jadi, jawaban yang tepat adalah (E) Mengevaluasi penyebab kegagalan, lalu menyusun rencana realistis, misalnya mengikuti kursus vokasi singkat agar segera bekerja sambil tetap membuka peluang melanjutkan pendidikan.

Mengapa opsi lain kurang tepat:
- (A) Pasrah tanpa rencana bertentangan dengan semangat ikhtiar.
- (B) Menarik diri tanpa batas waktu tidak menyelesaikan masalah.
- (C) Bergantung pada orang tua dengan motif membalas cibiran tidak mencerminkan kemandirian.
- (D) Mengulang tanpa evaluasi dan dengan motif pembuktian diri tidak menyentuh penyebab kegagalan.', status='aktif', quality_score=4, quality_notes='Revisi: kriteria sila ke-1 dan ke-5 ditulis eksplisit; kunci C ditambah evaluasi; opsi D diberi cacat (tanpa evaluasi, motif pembuktian) sehingga kunci tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-abd8-78fc-b5be-f78e9d5cf566';
UPDATE questions SET description='Ini tahun ketiga Anda gagal masuk PTN maupun sekolah kedinasan. Tetangga mencibir dan Anda merasa tidak berguna. Respons yang paling mencerminkan pengamalan Pancasila, yaitu tetap berikhtiar sambil berserah kepada Tuhan (sila ke-1) dan suka bekerja keras untuk mandiri serta berkontribusi (sila ke-5), adalah...', explanation='DIKETAHUI:
- Tiga kali gagal seleksi PTN dan kedinasan.
- Mendapat cibiran dan merasa tidak berguna.
- Kriteria: ikhtiar dan berserah (sila ke-1), kerja keras dan kemandirian (sila ke-5).

DITANYAKAN:
Respons bangkit yang paling sesuai kriteria tersebut.

JAWAB:
1. Berikhtiar berarti tidak pasrah; usaha harus terarah, dimulai dari evaluasi penyebab kegagalan.
2. Kerja keras dan kemandirian terwujud lewat rencana yang realistis dan produktif, bukan didorong keinginan membalas cibiran.
3. Opsi E memuat evaluasi, rencana nyata, kemandirian ekonomi, dan tetap membuka peluang pendidikan.

Jadi, jawaban yang tepat adalah (E) Mengevaluasi penyebab kegagalan, lalu menyusun rencana realistis, misalnya mengikuti kursus vokasi singkat agar segera bekerja sambil tetap membuka peluang melanjutkan pendidikan.

Mengapa opsi lain kurang tepat:
- (A) Pasrah tanpa rencana bertentangan dengan semangat ikhtiar.
- (B) Menarik diri tanpa batas waktu tidak menyelesaikan masalah.
- (C) Bergantung pada orang tua dengan motif membalas cibiran tidak mencerminkan kemandirian.
- (D) Mengulang tanpa evaluasi dan dengan motif pembuktian diri tidak menyentuh penyebab kegagalan.', updated_at=now() WHERE id='019b0c6a-abd8-78fc-b5be-f78e9d5cf566';
UPDATE answers SET description='Pasrah menerima nasib dan bekerja apa saja tanpa rencana, karena merasa jalan hidup memang sudah buntu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd8-78fc-b5be-f78e9d5cf566' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengurung diri dan menjauhi semua orang untuk sementara waktu tanpa batas yang jelas.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd8-78fc-b5be-f78e9d5cf566' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Meminta modal usaha kepada orang tua agar dapat membungkam cibiran tetangga secepatnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd8-78fc-b5be-f78e9d5cf566' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengulang tes yang sama tahun depan dengan cara belajar yang sama, semata-mata untuk membuktikan diri kepada tetangga.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd8-78fc-b5be-f78e9d5cf566' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengevaluasi penyebab kegagalan, lalu menyusun rencana realistis, misalnya mengikuti kursus vokasi singkat agar segera bekerja sambil tetap membuka peluang melanjutkan pendidikan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd8-78fc-b5be-f78e9d5cf566' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Ada satu lowongan staf di kampus. Anda dan sahabat satu kos sama-sama melamar; ia sangat membutuhkan pekerjaan karena ayahnya sakit, Anda pun membutuhkannya untuk karier. Seleksi dilakukan berdasarkan kompetensi. Sikap yang paling mencerminkan sila ke-2 (adil dan beradab) dan persahabatan adalah...', options='[{"id": "019b0c6a-ac13-7474-bbbf-a0ff68c09839", "description": "Tetap bersaing secara jujur, saling berbagi informasi seleksi secara terbuka, dan menerima siapa pun yang lolos dengan lapang dada.", "isCorrect": true, "point": 1}, {"id": "019b0c6a-ac13-77eb-a446-0c77e5c3e5ed", "description": "Mundur dari seleksi tanpa memberi tahu siapa pun agar sahabat pasti diterima.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac13-7d0d-bb75-645d1447cb5e", "description": "Bersaing diam-diam dan menyembunyikan informasi penting dari sahabat.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac14-71f9-bea1-d2f15b3a57fb", "description": "Meminta panitia meloloskan sahabat karena kondisi ekonominya, bukan karena kompetensinya.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac14-7688-922f-03bbfcd50d53", "description": "Membuat perjanjian bahwa yang diterima wajib menyerahkan sebagian gajinya kepada yang gagal.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Satu lowongan; Anda dan sahabat sama-sama melamar.
- Seleksi berdasarkan kompetensi.
- Kriteria: sila ke-2 (adil dan beradab) dan menjaga persahabatan.

DITANYAKAN:
Sikap yang adil terhadap diri sendiri, sahabat, dan proses seleksi.

JAWAB:
1. Adil berarti memperjuangkan hak sendiri secara jujur tanpa merugikan hak orang lain, serta menghormati aturan seleksi berbasis kompetensi.
2. Beradab dalam persahabatan berarti terbuka, saling membantu, dan sportif menerima hasil.
3. Opsi A memenuhi semuanya: bersaing jujur, berbagi informasi, dan legawa.

Jadi, jawaban yang tepat adalah (A) Tetap bersaing secara jujur, saling berbagi informasi seleksi secara terbuka, dan menerima siapa pun yang lolos dengan lapang dada.

Mengapa opsi lain kurang tepat:
- (B) Mundur diam-diam mengorbankan hak sendiri dan tidak membuat seleksi lebih adil.
- (C) Menyembunyikan informasi adalah persaingan yang tidak sehat.
- (D) Meminta panitia mengabaikan kompetensi merusak keadilan seleksi.
- (E) Perjanjian bagi gaji tidak relevan dengan seleksi dan dapat menimbulkan masalah di kemudian hari.', status='aktif', quality_score=4, quality_notes='Revisi: analogi KAA yang membingungkan dihapus, kriteria sila ke-2 dan seleksi berbasis kompetensi dipertegas sehingga kunci B tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-ac13-7021-a437-fddcc63da42b';
UPDATE questions SET description='Ada satu lowongan staf di kampus. Anda dan sahabat satu kos sama-sama melamar; ia sangat membutuhkan pekerjaan karena ayahnya sakit, Anda pun membutuhkannya untuk karier. Seleksi dilakukan berdasarkan kompetensi. Sikap yang paling mencerminkan sila ke-2 (adil dan beradab) dan persahabatan adalah...', explanation='DIKETAHUI:
- Satu lowongan; Anda dan sahabat sama-sama melamar.
- Seleksi berdasarkan kompetensi.
- Kriteria: sila ke-2 (adil dan beradab) dan menjaga persahabatan.

DITANYAKAN:
Sikap yang adil terhadap diri sendiri, sahabat, dan proses seleksi.

JAWAB:
1. Adil berarti memperjuangkan hak sendiri secara jujur tanpa merugikan hak orang lain, serta menghormati aturan seleksi berbasis kompetensi.
2. Beradab dalam persahabatan berarti terbuka, saling membantu, dan sportif menerima hasil.
3. Opsi A memenuhi semuanya: bersaing jujur, berbagi informasi, dan legawa.

Jadi, jawaban yang tepat adalah (A) Tetap bersaing secara jujur, saling berbagi informasi seleksi secara terbuka, dan menerima siapa pun yang lolos dengan lapang dada.

Mengapa opsi lain kurang tepat:
- (B) Mundur diam-diam mengorbankan hak sendiri dan tidak membuat seleksi lebih adil.
- (C) Menyembunyikan informasi adalah persaingan yang tidak sehat.
- (D) Meminta panitia mengabaikan kompetensi merusak keadilan seleksi.
- (E) Perjanjian bagi gaji tidak relevan dengan seleksi dan dapat menimbulkan masalah di kemudian hari.', updated_at=now() WHERE id='019b0c6a-ac13-7021-a437-fddcc63da42b';
UPDATE answers SET description='Tetap bersaing secara jujur, saling berbagi informasi seleksi secara terbuka, dan menerima siapa pun yang lolos dengan lapang dada.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac13-7021-a437-fddcc63da42b' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mundur dari seleksi tanpa memberi tahu siapa pun agar sahabat pasti diterima.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac13-7021-a437-fddcc63da42b' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Bersaing diam-diam dan menyembunyikan informasi penting dari sahabat.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac13-7021-a437-fddcc63da42b' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Meminta panitia meloloskan sahabat karena kondisi ekonominya, bukan karena kompetensinya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac13-7021-a437-fddcc63da42b' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Membuat perjanjian bahwa yang diterima wajib menyerahkan sebagian gajinya kepada yang gagal.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac13-7021-a437-fddcc63da42b' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Pemerintah mengusulkan pajak tinggi atas minuman berpemanis dan makanan cepat saji untuk menekan obesitas dan penyakit tidak menular. Ahli kesehatan mendukung, tetapi sebagian masyarakat menilai negara terlalu jauh mencampuri pilihan gaya hidup. Kebijakan yang paling seimbang, yaitu tetap melindungi kesehatan publik tanpa melarang individu memilih dan hasilnya kembali kepada masyarakat, adalah...', options='[{"id": "019983d1-8de3-7383-b9c4-121a8ca5648a", "description": "Menghapus rencana pajak tersebut demi menghormati kebebasan individu.", "isCorrect": false, "point": 1}, {"id": "019983d1-8de3-76ae-8d77-c65e0fe446e8", "description": "Meneruskan pajak tersebut dan menggunakan penerimaannya untuk menyubsidi pangan sehat serta program edukasi kesehatan.", "isCorrect": true, "point": 1}, {"id": "019983d1-8de3-7a4a-9e09-a1300d9e5925", "description": "Menyerahkan sepenuhnya urusan kesehatan kepada masing-masing individu.", "isCorrect": false, "point": 1}, {"id": "019983d1-8de3-7efa-a112-7185f0fc3cb3", "description": "Melarang total penjualan minuman berpemanis dan makanan cepat saji.", "isCorrect": false, "point": 1}, {"id": "019983d1-8de4-73d7-b19a-f502c756935c", "description": "Membiarkan pasar bebas bekerja tanpa intervensi pemerintah.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Usulan pajak tinggi atas minuman berpemanis dan makanan cepat saji untuk kesehatan publik.
- Sebagian masyarakat merasa kebebasan memilih gaya hidup dibatasi.
- Kriteria: melindungi kesehatan publik, tidak melarang pilihan individu, hasil kembali ke masyarakat.

DITANYAKAN:
Kebijakan yang memenuhi ketiga kriteria sekaligus.

JAWAB:
1. Setiap orang berhak hidup sehat (Pasal 28H ayat 1 UUD NRI 1945), dan hak individu dapat dibatasi dengan undang-undang demi ketertiban dan kesejahteraan umum (Pasal 28J ayat 2). Jadi, intervensi negara yang proporsional dapat dibenarkan.
2. Pajak tidak melarang orang membeli, hanya memberi disinsentif, sehingga kebebasan memilih tetap ada.
3. Menggunakan penerimaan pajak untuk subsidi pangan sehat dan edukasi membuat manfaatnya kembali kepada masyarakat. Hanya opsi B yang memenuhi ketiga kriteria.

Jadi, jawaban yang tepat adalah (B) Meneruskan pajak tersebut dan menggunakan penerimaannya untuk menyubsidi pangan sehat serta program edukasi kesehatan.

Mengapa opsi lain kurang tepat:
- (A) Menghapus pajak mengabaikan perlindungan kesehatan publik.
- (C) Menyerahkan sepenuhnya kepada individu berarti negara lepas tangan dari kewajiban melindungi kesehatan warga.
- (D) Larangan total menghilangkan kebebasan memilih sehingga tidak proporsional.
- (E) Tanpa intervensi, masalah kesehatan publik tidak tertangani.', status='aktif', quality_score=4, quality_notes='Revisi: kriteria keseimbangan dibuat eksplisit; opsi D diubah menjadi larangan total sehingga tidak lagi setara dengan kunci B; pembahasan memakai Pasal 28H ayat (1) dan 28J ayat (2).', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8de2-7eb4-b110-3aa5b14fa5f6';
UPDATE questions SET description='Pemerintah mengusulkan pajak tinggi atas minuman berpemanis dan makanan cepat saji untuk menekan obesitas dan penyakit tidak menular. Ahli kesehatan mendukung, tetapi sebagian masyarakat menilai negara terlalu jauh mencampuri pilihan gaya hidup. Kebijakan yang paling seimbang, yaitu tetap melindungi kesehatan publik tanpa melarang individu memilih dan hasilnya kembali kepada masyarakat, adalah...', explanation='DIKETAHUI:
- Usulan pajak tinggi atas minuman berpemanis dan makanan cepat saji untuk kesehatan publik.
- Sebagian masyarakat merasa kebebasan memilih gaya hidup dibatasi.
- Kriteria: melindungi kesehatan publik, tidak melarang pilihan individu, hasil kembali ke masyarakat.

DITANYAKAN:
Kebijakan yang memenuhi ketiga kriteria sekaligus.

JAWAB:
1. Setiap orang berhak hidup sehat (Pasal 28H ayat 1 UUD NRI 1945), dan hak individu dapat dibatasi dengan undang-undang demi ketertiban dan kesejahteraan umum (Pasal 28J ayat 2). Jadi, intervensi negara yang proporsional dapat dibenarkan.
2. Pajak tidak melarang orang membeli, hanya memberi disinsentif, sehingga kebebasan memilih tetap ada.
3. Menggunakan penerimaan pajak untuk subsidi pangan sehat dan edukasi membuat manfaatnya kembali kepada masyarakat. Hanya opsi B yang memenuhi ketiga kriteria.

Jadi, jawaban yang tepat adalah (B) Meneruskan pajak tersebut dan menggunakan penerimaannya untuk menyubsidi pangan sehat serta program edukasi kesehatan.

Mengapa opsi lain kurang tepat:
- (A) Menghapus pajak mengabaikan perlindungan kesehatan publik.
- (C) Menyerahkan sepenuhnya kepada individu berarti negara lepas tangan dari kewajiban melindungi kesehatan warga.
- (D) Larangan total menghilangkan kebebasan memilih sehingga tidak proporsional.
- (E) Tanpa intervensi, masalah kesehatan publik tidak tertangani.', updated_at=now() WHERE id='019983d1-8de2-7eb4-b110-3aa5b14fa5f6';
UPDATE answers SET description='Menghapus rencana pajak tersebut demi menghormati kebebasan individu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de2-7eb4-b110-3aa5b14fa5f6' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Meneruskan pajak tersebut dan menggunakan penerimaannya untuk menyubsidi pangan sehat serta program edukasi kesehatan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de2-7eb4-b110-3aa5b14fa5f6' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menyerahkan sepenuhnya urusan kesehatan kepada masing-masing individu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de2-7eb4-b110-3aa5b14fa5f6' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Melarang total penjualan minuman berpemanis dan makanan cepat saji.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de2-7eb4-b110-3aa5b14fa5f6' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Membiarkan pasar bebas bekerja tanpa intervensi pemerintah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de2-7eb4-b110-3aa5b14fa5f6' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang dosen sering memotong jam kuliah untuk urusan pribadinya sehingga materi tertinggal. Anda khawatir menegurnya akan berdampak pada nilai. Mengingat Pasal 31 ayat (1) UUD NRI 1945 menjamin hak setiap warga negara mendapat pendidikan, langkah pertama yang paling tepat dan beretika adalah...', options='[{"id": "019993b1-d599-71ee-a17a-7c4cc3653f90", "description": "Mendiamkan hal tersebut dan menikmati jam kosong.", "isCorrect": false, "point": 1}, {"id": "019993b1-d599-7756-94ab-8f7296d3ea36", "description": "Langsung melaporkan dosen tersebut ke dekan tanpa pernah menyampaikannya kepada dosen.", "isCorrect": false, "point": 1}, {"id": "019993b1-d599-7dce-a6c1-c87ed3785ade", "description": "Bersama perwakilan kelas menyampaikan secara santun kepada dosen bahwa mahasiswa membutuhkan jam kuliah penuh, lalu menempuh jalur resmi program studi bila tidak ada perbaikan.", "isCorrect": true, "point": 1}, {"id": "019993b1-d59a-7578-bb72-71ccb60cffbf", "description": "Mengajak seluruh kelas memboikot kuliah dosen tersebut sebagai bentuk protes.", "isCorrect": false, "point": 1}, {"id": "019993b1-d59a-7a08-a2bf-0219daad4f2b", "description": "Menyebarkan keluhan tentang dosen tersebut secara anonim di media sosial.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Dosen sering memotong jam kuliah untuk kepentingan pribadi.
- Anda khawatir teguran berdampak pada nilai.
- Pasal 31 ayat (1): setiap warga negara berhak mendapat pendidikan.
- Yang diminta: langkah pertama yang tepat dan beretika.

DITANYAKAN:
Langkah pertama untuk memperjuangkan hak pendidikan secara beretika.

JAWAB:
1. Pemotongan jam kuliah merugikan hak mahasiswa atas pendidikan, sehingga perlu disikapi, bukan didiamkan.
2. Etika menghendaki masalah disampaikan lebih dahulu kepada pihak yang bersangkutan secara santun; menyampaikannya bersama perwakilan kelas mengurangi kekhawatiran akan balasan pribadi.
3. Bila tidak ada perbaikan, jalur resmi program studi ditempuh. Opsi C memuat urutan langkah yang tepat.

Jadi, jawaban yang tepat adalah (C) Bersama perwakilan kelas menyampaikan secara santun kepada dosen bahwa mahasiswa membutuhkan jam kuliah penuh, lalu menempuh jalur resmi program studi bila tidak ada perbaikan.

Mengapa opsi lain kurang tepat:
- (A) Mendiamkan berarti membiarkan hak pendidikan dilanggar.
- (B) Melapor ke atasan boleh, tetapi bukan langkah pertama yang beretika sebelum menyampaikan langsung.
- (D) Boikot justru merugikan hak belajar mahasiswa sendiri dan memperuncing konflik.
- (E) Unggahan anonim tidak menyelesaikan masalah dan berisiko mencemarkan nama baik.', status='aktif', quality_score=4, quality_notes='Revisi: ditegaskan ''langkah pertama''; kunci C dilengkapi perwakilan kelas dan jalur resmi bila gagal sehingga B (langsung ke dekan) jelas kalah.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d598-7a8a-8b8d-4fb8b405ae47';
UPDATE questions SET description='Seorang dosen sering memotong jam kuliah untuk urusan pribadinya sehingga materi tertinggal. Anda khawatir menegurnya akan berdampak pada nilai. Mengingat Pasal 31 ayat (1) UUD NRI 1945 menjamin hak setiap warga negara mendapat pendidikan, langkah pertama yang paling tepat dan beretika adalah...', explanation='DIKETAHUI:
- Dosen sering memotong jam kuliah untuk kepentingan pribadi.
- Anda khawatir teguran berdampak pada nilai.
- Pasal 31 ayat (1): setiap warga negara berhak mendapat pendidikan.
- Yang diminta: langkah pertama yang tepat dan beretika.

DITANYAKAN:
Langkah pertama untuk memperjuangkan hak pendidikan secara beretika.

JAWAB:
1. Pemotongan jam kuliah merugikan hak mahasiswa atas pendidikan, sehingga perlu disikapi, bukan didiamkan.
2. Etika menghendaki masalah disampaikan lebih dahulu kepada pihak yang bersangkutan secara santun; menyampaikannya bersama perwakilan kelas mengurangi kekhawatiran akan balasan pribadi.
3. Bila tidak ada perbaikan, jalur resmi program studi ditempuh. Opsi C memuat urutan langkah yang tepat.

Jadi, jawaban yang tepat adalah (C) Bersama perwakilan kelas menyampaikan secara santun kepada dosen bahwa mahasiswa membutuhkan jam kuliah penuh, lalu menempuh jalur resmi program studi bila tidak ada perbaikan.

Mengapa opsi lain kurang tepat:
- (A) Mendiamkan berarti membiarkan hak pendidikan dilanggar.
- (B) Melapor ke atasan boleh, tetapi bukan langkah pertama yang beretika sebelum menyampaikan langsung.
- (D) Boikot justru merugikan hak belajar mahasiswa sendiri dan memperuncing konflik.
- (E) Unggahan anonim tidak menyelesaikan masalah dan berisiko mencemarkan nama baik.', updated_at=now() WHERE id='019993b1-d598-7a8a-8b8d-4fb8b405ae47';
UPDATE answers SET description='Mendiamkan hal tersebut dan menikmati jam kosong.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d598-7a8a-8b8d-4fb8b405ae47' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Langsung melaporkan dosen tersebut ke dekan tanpa pernah menyampaikannya kepada dosen.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d598-7a8a-8b8d-4fb8b405ae47' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Bersama perwakilan kelas menyampaikan secara santun kepada dosen bahwa mahasiswa membutuhkan jam kuliah penuh, lalu menempuh jalur resmi program studi bila tidak ada perbaikan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d598-7a8a-8b8d-4fb8b405ae47' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengajak seluruh kelas memboikot kuliah dosen tersebut sebagai bentuk protes.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d598-7a8a-8b8d-4fb8b405ae47' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyebarkan keluhan tentang dosen tersebut secara anonim di media sosial.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d598-7a8a-8b8d-4fb8b405ae47' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda mahasiswa dari keluarga kurang mampu yang ingin mengikuti seminar nasional yang sangat bermanfaat, tetapi biaya pendaftarannya mahal. Tindakan yang paling mandiri dan sejalan dengan hak setiap orang untuk mengembangkan diri (Pasal 28C ayat 1 UUD NRI 1945) adalah...', options='[{"id": "019993b1-d59b-76ce-b2a7-60edcb574e3d", "description": "Mencari peluang resmi seperti beasiswa peserta, sponsor dari kampus, atau mendaftar menjadi relawan panitia yang dibebaskan biaya.", "isCorrect": true, "point": 1}, {"id": "019993b1-d59b-7edb-931d-9b7fec6ede6d", "description": "Mengubur keinginan mengikuti seminar tersebut.", "isCorrect": false, "point": 1}, {"id": "019993b1-d59c-7499-8bb4-10b33d739c07", "description": "Menuntut panitia membebaskan biaya dengan alasan negara wajib memelihara warga kurang mampu.", "isCorrect": false, "point": 1}, {"id": "019993b1-d59c-7a96-82bf-6c2f7072ec55", "description": "Memprotes panitia di media sosial karena biaya dianggap tidak adil.", "isCorrect": false, "point": 1}, {"id": "019993b1-d59d-712b-a621-331ab314e9bf", "description": "Meminta teman-teman menanggung seluruh biaya Anda.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda dari keluarga kurang mampu.
- Seminar sangat bermanfaat, tetapi biayanya mahal.
- Kriteria: mandiri dan sejalan dengan hak mengembangkan diri (Pasal 28C ayat 1).

DITANYAKAN:
Tindakan yang paling mandiri untuk tetap dapat mengembangkan diri.

JAWAB:
1. Pasal 28C ayat (1) menjamin hak setiap orang mengembangkan diri, antara lain melalui pendidikan dan memperoleh manfaat iptek. Hak ini perlu diperjuangkan secara aktif dan wajar.
2. Kemandirian berarti berusaha mencari jalan sah dengan kemampuan sendiri, tidak menuntut atau membebani pihak lain.
3. Opsi A menempuh jalur resmi yang tersedia (beasiswa, sponsor, relawan), sehingga paling mandiri dan realistis.

Jadi, jawaban yang tepat adalah (A) Mencari peluang resmi seperti beasiswa peserta, sponsor dari kampus, atau mendaftar menjadi relawan panitia yang dibebaskan biaya.

Mengapa opsi lain kurang tepat:
- (B) Menyerah begitu saja tidak memperjuangkan hak mengembangkan diri.
- (C) Kewajiban negara memelihara fakir miskin (Pasal 34 ayat 1) tidak dapat dibebankan kepada panitia seminar; menuntut seperti itu keliru.
- (D) Memprotes biaya tidak menyelesaikan masalah dan tidak konstruktif.
- (E) Membebankan seluruh biaya kepada teman tidak mencerminkan kemandirian.', status='aktif', quality_score=4, quality_notes='Revisi: rujukan Pasal 34 ayat (1) yang tidak relevan diganti Pasal 28C ayat (1); opsi C dan E dipertegas sebagai sikap menuntut/bergantung sehingga kunci B tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d59b-70d4-954f-640314243fc2';
UPDATE questions SET description='Anda mahasiswa dari keluarga kurang mampu yang ingin mengikuti seminar nasional yang sangat bermanfaat, tetapi biaya pendaftarannya mahal. Tindakan yang paling mandiri dan sejalan dengan hak setiap orang untuk mengembangkan diri (Pasal 28C ayat 1 UUD NRI 1945) adalah...', explanation='DIKETAHUI:
- Anda dari keluarga kurang mampu.
- Seminar sangat bermanfaat, tetapi biayanya mahal.
- Kriteria: mandiri dan sejalan dengan hak mengembangkan diri (Pasal 28C ayat 1).

DITANYAKAN:
Tindakan yang paling mandiri untuk tetap dapat mengembangkan diri.

JAWAB:
1. Pasal 28C ayat (1) menjamin hak setiap orang mengembangkan diri, antara lain melalui pendidikan dan memperoleh manfaat iptek. Hak ini perlu diperjuangkan secara aktif dan wajar.
2. Kemandirian berarti berusaha mencari jalan sah dengan kemampuan sendiri, tidak menuntut atau membebani pihak lain.
3. Opsi A menempuh jalur resmi yang tersedia (beasiswa, sponsor, relawan), sehingga paling mandiri dan realistis.

Jadi, jawaban yang tepat adalah (A) Mencari peluang resmi seperti beasiswa peserta, sponsor dari kampus, atau mendaftar menjadi relawan panitia yang dibebaskan biaya.

Mengapa opsi lain kurang tepat:
- (B) Menyerah begitu saja tidak memperjuangkan hak mengembangkan diri.
- (C) Kewajiban negara memelihara fakir miskin (Pasal 34 ayat 1) tidak dapat dibebankan kepada panitia seminar; menuntut seperti itu keliru.
- (D) Memprotes biaya tidak menyelesaikan masalah dan tidak konstruktif.
- (E) Membebankan seluruh biaya kepada teman tidak mencerminkan kemandirian.', updated_at=now() WHERE id='019993b1-d59b-70d4-954f-640314243fc2';
UPDATE answers SET description='Mencari peluang resmi seperti beasiswa peserta, sponsor dari kampus, atau mendaftar menjadi relawan panitia yang dibebaskan biaya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59b-70d4-954f-640314243fc2' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengubur keinginan mengikuti seminar tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59b-70d4-954f-640314243fc2' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menuntut panitia membebaskan biaya dengan alasan negara wajib memelihara warga kurang mampu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59b-70d4-954f-640314243fc2' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Memprotes panitia di media sosial karena biaya dianggap tidak adil.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59b-70d4-954f-640314243fc2' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminta teman-teman menanggung seluruh biaya Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d59b-70d4-954f-640314243fc2' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sebuah SMK negeri berdiri di atas tanah milik pemerintah daerah. Pemerintah daerah berencana menjual sebagian besar lahan praktik sekolah kepada investor swasta untuk menambah Pendapatan Asli Daerah, sehingga siswa kehilangan sarana praktik. Hak konstitusional warga negara yang paling langsung terdampak oleh rencana tersebut adalah...', options='[{"id": "019a3b08-85cf-73be-8121-ef2fa2ff8547", "description": "Hak setiap warga negara mendapat pendidikan (Pasal 31 ayat 1).", "isCorrect": true, "point": 1}, {"id": "019a3b08-85cf-7803-971d-2573dbdce915", "description": "Penguasaan bumi, air, dan kekayaan alam oleh negara untuk kemakmuran rakyat (Pasal 33 ayat 3).", "isCorrect": false, "point": 1}, {"id": "019a3b08-85cf-7cf7-9fd4-3866ae72916f", "description": "Kemerdekaan berserikat, berkumpul, dan mengeluarkan pendapat (Pasal 28E ayat 3).", "isCorrect": false, "point": 1}, {"id": "019a3b08-85d0-7400-b770-07f91d855a33", "description": "Hak atas pekerjaan dan penghidupan yang layak (Pasal 27 ayat 2).", "isCorrect": false, "point": 1}, {"id": "019a3b08-85d0-79de-8c1e-919359a343d4", "description": "Hak dan kewajiban ikut serta dalam upaya pembelaan negara (Pasal 27 ayat 3).", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Lahan praktik SMK negeri adalah tanah milik pemerintah daerah.
- Pemda berencana menjualnya kepada investor untuk menambah PAD.
- Akibatnya, siswa kehilangan sarana praktik.

DITANYAKAN:
Hak konstitusional yang paling langsung terdampak.

JAWAB:
1. Dampak langsung rencana itu adalah hilangnya sarana praktik yang menjadi bagian pokok pendidikan kejuruan.
2. Pasal 31 ayat (1) UUD NRI 1945 menyatakan setiap warga negara berhak mendapat pendidikan; berkurangnya sarana praktik menurunkan mutu layanan pendidikan yang diterima siswa.
3. Pasal lain tidak berkaitan langsung dengan akibat yang dialami siswa.

Jadi, jawaban yang tepat adalah (A) Hak setiap warga negara mendapat pendidikan (Pasal 31 ayat 1).

Mengapa opsi lain kurang tepat:
- (B) Pasal 33 ayat (3) mengatur penguasaan sumber daya alam oleh negara dalam bidang perekonomian, bukan hak warga atas layanan pendidikan.
- (C) Rencana tersebut tidak membatasi kebebasan berserikat atau berpendapat.
- (D) Hak atas pekerjaan tidak terdampak langsung oleh penjualan lahan praktik sekolah.
- (E) Pembelaan negara tidak berkaitan dengan kasus ini.', status='aktif', quality_score=5, quality_notes='Perbaikan: skenario hukum yang rancu (aset BUMN dijual pemda, pelanggaran Pasal 33 ayat 3) diganti skenario lahan milik pemda; pertanyaan diubah menjadi hak konstitusional yang paling terdampak dengan kunci tegas Pasal 31 ayat (1).', reviewed_at=now(), updated_at=now() WHERE id='019a3b08-85ce-7c68-a526-dfeb88f4c249';
UPDATE questions SET description='Sebuah SMK negeri berdiri di atas tanah milik pemerintah daerah. Pemerintah daerah berencana menjual sebagian besar lahan praktik sekolah kepada investor swasta untuk menambah Pendapatan Asli Daerah, sehingga siswa kehilangan sarana praktik. Hak konstitusional warga negara yang paling langsung terdampak oleh rencana tersebut adalah...', explanation='DIKETAHUI:
- Lahan praktik SMK negeri adalah tanah milik pemerintah daerah.
- Pemda berencana menjualnya kepada investor untuk menambah PAD.
- Akibatnya, siswa kehilangan sarana praktik.

DITANYAKAN:
Hak konstitusional yang paling langsung terdampak.

JAWAB:
1. Dampak langsung rencana itu adalah hilangnya sarana praktik yang menjadi bagian pokok pendidikan kejuruan.
2. Pasal 31 ayat (1) UUD NRI 1945 menyatakan setiap warga negara berhak mendapat pendidikan; berkurangnya sarana praktik menurunkan mutu layanan pendidikan yang diterima siswa.
3. Pasal lain tidak berkaitan langsung dengan akibat yang dialami siswa.

Jadi, jawaban yang tepat adalah (A) Hak setiap warga negara mendapat pendidikan (Pasal 31 ayat 1).

Mengapa opsi lain kurang tepat:
- (B) Pasal 33 ayat (3) mengatur penguasaan sumber daya alam oleh negara dalam bidang perekonomian, bukan hak warga atas layanan pendidikan.
- (C) Rencana tersebut tidak membatasi kebebasan berserikat atau berpendapat.
- (D) Hak atas pekerjaan tidak terdampak langsung oleh penjualan lahan praktik sekolah.
- (E) Pembelaan negara tidak berkaitan dengan kasus ini.', updated_at=now() WHERE id='019a3b08-85ce-7c68-a526-dfeb88f4c249';
UPDATE answers SET description='Hak setiap warga negara mendapat pendidikan (Pasal 31 ayat 1).', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ce-7c68-a526-dfeb88f4c249' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Penguasaan bumi, air, dan kekayaan alam oleh negara untuk kemakmuran rakyat (Pasal 33 ayat 3).', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ce-7c68-a526-dfeb88f4c249' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Kemerdekaan berserikat, berkumpul, dan mengeluarkan pendapat (Pasal 28E ayat 3).', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ce-7c68-a526-dfeb88f4c249' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Hak atas pekerjaan dan penghidupan yang layak (Pasal 27 ayat 2).', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ce-7c68-a526-dfeb88f4c249' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Hak dan kewajiban ikut serta dalam upaya pembelaan negara (Pasal 27 ayat 3).', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ce-7c68-a526-dfeb88f4c249' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Sebuah SMK negeri berdiri di atas tanah milik pemerintah daerah. Pemerintah daerah berencana menjual sebagian besar lahan praktik sekolah kepada investor swasta untuk menambah Pendapatan Asli Daerah, sehingga siswa kehilangan sarana praktik. Hak konstitusional warga negara yang paling langsung terdampak oleh rencana tersebut adalah...', explanation='DIKETAHUI:
- Lahan praktik SMK negeri adalah tanah milik pemerintah daerah.
- Pemda berencana menjualnya kepada investor untuk menambah PAD.
- Akibatnya, siswa kehilangan sarana praktik.

DITANYAKAN:
Hak konstitusional yang paling langsung terdampak.

JAWAB:
1. Dampak langsung rencana itu adalah hilangnya sarana praktik yang menjadi bagian pokok pendidikan kejuruan.
2. Pasal 31 ayat (1) UUD NRI 1945 menyatakan setiap warga negara berhak mendapat pendidikan; berkurangnya sarana praktik menurunkan mutu layanan pendidikan yang diterima siswa.
3. Pasal lain tidak berkaitan langsung dengan akibat yang dialami siswa.

Jadi, jawaban yang tepat adalah (A) Hak setiap warga negara mendapat pendidikan (Pasal 31 ayat 1).

Mengapa opsi lain kurang tepat:
- (B) Pasal 33 ayat (3) mengatur penguasaan sumber daya alam oleh negara dalam bidang perekonomian, bukan hak warga atas layanan pendidikan.
- (C) Rencana tersebut tidak membatasi kebebasan berserikat atau berpendapat.
- (D) Hak atas pekerjaan tidak terdampak langsung oleh penjualan lahan praktik sekolah.
- (E) Pembelaan negara tidak berkaitan dengan kasus ini.', updated_at=now() WHERE id='e60c954b-c90a-438e-a6b3-1be11b1e3eca';
UPDATE answers SET description='Hak setiap warga negara mendapat pendidikan (Pasal 31 ayat 1).', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='e60c954b-c90a-438e-a6b3-1be11b1e3eca' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Penguasaan bumi, air, dan kekayaan alam oleh negara untuk kemakmuran rakyat (Pasal 33 ayat 3).', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='e60c954b-c90a-438e-a6b3-1be11b1e3eca' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Kemerdekaan berserikat, berkumpul, dan mengeluarkan pendapat (Pasal 28E ayat 3).', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='e60c954b-c90a-438e-a6b3-1be11b1e3eca' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Hak atas pekerjaan dan penghidupan yang layak (Pasal 27 ayat 2).', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='e60c954b-c90a-438e-a6b3-1be11b1e3eca' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Hak dan kewajiban ikut serta dalam upaya pembelaan negara (Pasal 27 ayat 3).', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='e60c954b-c90a-438e-a6b3-1be11b1e3eca' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda lulusan terbaik SMK yang memperoleh beasiswa kuliah di PTN. Namun, ayah Anda sakit keras dan keluarga membutuhkan tambahan penghasilan. Ada tawaran kerja pabrik dengan kontrak dua tahun yang melarang kuliah. Keputusan yang paling tepat, yaitu tetap menggunakan hak pendidikan (Pasal 31 ayat 1) sekaligus memenuhi tanggung jawab kepada keluarga dengan cara yang sah, adalah...', options='[{"id": "019afdd0-0bcf-7044-bc55-1f3874d31284", "description": "Mengambil beasiswa dan menyerahkan urusan ekonomi sepenuhnya kepada anggota keluarga lain.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bcf-75d7-b780-fc4e2dd60fb5", "description": "Melepas beasiswa dan menerima kontrak pabrik selama dua tahun.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bcf-7ada-a028-f64a6da93231", "description": "Menerima kontrak pabrik, lalu diam-diam kuliah malam meskipun kontrak melarangnya.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bd0-7113-bab1-e2f0168ade3d", "description": "Meminta lembaga amal menanggung seluruh biaya hidup keluarga selama Anda kuliah.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bd0-765b-bda5-2e4e14a294d3", "description": "Mengambil beasiswa, menanyakan bantuan biaya hidup atau kerja paruh waktu resmi di kampus, dan mengurus jaminan kesehatan pemerintah untuk pengobatan ayah.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda memperoleh beasiswa kuliah di PTN.
- Ayah sakit keras dan keluarga membutuhkan penghasilan.
- Tawaran kerja pabrik dua tahun melarang kuliah.
- Kriteria: hak pendidikan tetap digunakan, tanggung jawab keluarga terpenuhi, cara sah.

DITANYAKAN:
Keputusan yang memenuhi ketiga kriteria.

JAWAB:
1. Hak pendidikan dijamin Pasal 31 ayat (1); beasiswa adalah kesempatan yang sebaiknya tidak dilepas bila ada jalan lain.
2. Negara mengembangkan sistem jaminan sosial bagi seluruh rakyat (Pasal 34 ayat 2), misalnya jaminan kesehatan, sehingga beban pengobatan ayah dapat dikurangi melalui jalur resmi.
3. Bantuan biaya hidup atau kerja paruh waktu resmi di kampus memberi penghasilan tanpa melanggar aturan. Opsi E memenuhi ketiga kriteria.

Jadi, jawaban yang tepat adalah (E) Mengambil beasiswa, menanyakan bantuan biaya hidup atau kerja paruh waktu resmi di kampus, dan mengurus jaminan kesehatan pemerintah untuk pengobatan ayah.

Mengapa opsi lain kurang tepat:
- (A) Mengabaikan tanggung jawab membantu keluarga yang sedang kesulitan.
- (B) Melepas beasiswa mengorbankan hak pendidikan padahal masih ada jalan yang sah.
- (C) Melanggar kontrak secara diam-diam tidak jujur dan tidak sah.
- (D) Menggantungkan seluruh biaya hidup kepada pihak lain tidak realistis dan tidak mandiri.', status='aktif', quality_score=4, quality_notes='Revisi: kriteria keputusan dibuat eksplisit; kunci D diganti solusi sah (beasiswa + kerja paruh waktu resmi + jaminan kesehatan) menggantikan ''kerja keras berisiko'', opsi lain masing-masing melanggar satu kriteria.', reviewed_at=now(), updated_at=now() WHERE id='019afdd0-0bce-7984-91ff-373ad4bc6ebd';
UPDATE questions SET description='Anda lulusan terbaik SMK yang memperoleh beasiswa kuliah di PTN. Namun, ayah Anda sakit keras dan keluarga membutuhkan tambahan penghasilan. Ada tawaran kerja pabrik dengan kontrak dua tahun yang melarang kuliah. Keputusan yang paling tepat, yaitu tetap menggunakan hak pendidikan (Pasal 31 ayat 1) sekaligus memenuhi tanggung jawab kepada keluarga dengan cara yang sah, adalah...', explanation='DIKETAHUI:
- Anda memperoleh beasiswa kuliah di PTN.
- Ayah sakit keras dan keluarga membutuhkan penghasilan.
- Tawaran kerja pabrik dua tahun melarang kuliah.
- Kriteria: hak pendidikan tetap digunakan, tanggung jawab keluarga terpenuhi, cara sah.

DITANYAKAN:
Keputusan yang memenuhi ketiga kriteria.

JAWAB:
1. Hak pendidikan dijamin Pasal 31 ayat (1); beasiswa adalah kesempatan yang sebaiknya tidak dilepas bila ada jalan lain.
2. Negara mengembangkan sistem jaminan sosial bagi seluruh rakyat (Pasal 34 ayat 2), misalnya jaminan kesehatan, sehingga beban pengobatan ayah dapat dikurangi melalui jalur resmi.
3. Bantuan biaya hidup atau kerja paruh waktu resmi di kampus memberi penghasilan tanpa melanggar aturan. Opsi E memenuhi ketiga kriteria.

Jadi, jawaban yang tepat adalah (E) Mengambil beasiswa, menanyakan bantuan biaya hidup atau kerja paruh waktu resmi di kampus, dan mengurus jaminan kesehatan pemerintah untuk pengobatan ayah.

Mengapa opsi lain kurang tepat:
- (A) Mengabaikan tanggung jawab membantu keluarga yang sedang kesulitan.
- (B) Melepas beasiswa mengorbankan hak pendidikan padahal masih ada jalan yang sah.
- (C) Melanggar kontrak secara diam-diam tidak jujur dan tidak sah.
- (D) Menggantungkan seluruh biaya hidup kepada pihak lain tidak realistis dan tidak mandiri.', updated_at=now() WHERE id='019afdd0-0bce-7984-91ff-373ad4bc6ebd';
UPDATE answers SET description='Mengambil beasiswa dan menyerahkan urusan ekonomi sepenuhnya kepada anggota keluarga lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bce-7984-91ff-373ad4bc6ebd' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Melepas beasiswa dan menerima kontrak pabrik selama dua tahun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bce-7984-91ff-373ad4bc6ebd' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima kontrak pabrik, lalu diam-diam kuliah malam meskipun kontrak melarangnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bce-7984-91ff-373ad4bc6ebd' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Meminta lembaga amal menanggung seluruh biaya hidup keluarga selama Anda kuliah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bce-7984-91ff-373ad4bc6ebd' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengambil beasiswa, menanyakan bantuan biaya hidup atau kerja paruh waktu resmi di kampus, dan mengurus jaminan kesehatan pemerintah untuk pengobatan ayah.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bce-7984-91ff-373ad4bc6ebd' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda mahasiswa tingkat akhir Teknik Nuklir yang meneliti energi alternatif untuk ketahanan energi nasional. Dibuka rekrutmen CPNS yang mensyaratkan ijazah S1, sedangkan dosen pembimbing menilai riset Anda belum layak diselesaikan saat ini. Keputusan yang paling bertanggung jawab, yaitu menjaga mutu riset demi kemajuan iptek bangsa (Pasal 31 ayat 5), tetap jujur, dan tidak meminta perlakuan khusus, adalah...', options='[{"id": "019b0bef-1fc2-7541-b39f-ab199d706b75", "description": "Menyelesaikan skripsi seadanya agar cepat lulus dan dapat mendaftar CPNS tahun ini.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fc2-787f-a6e5-24d0e3dee1c5", "description": "Menyelesaikan riset secara bermutu sesuai arahan dosen, sambil mempersiapkan diri untuk seleksi CPNS periode berikutnya atau jalur karier riset lainnya.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fc2-7d14-b131-0beaa29971e2", "description": "Melobi panitia CPNS agar memberi dispensasi waktu penyerahan ijazah khusus untuk Anda.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fc3-7165-99c2-4a8b4fbb1df7", "description": "Meminta orang lain mengerjakan bagian analisis riset agar Anda dapat lulus tepat waktu.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fc3-75a1-ab26-1db352d102a3", "description": "Menunda kelulusan, tetapi mensyaratkan kampus menjamin Anda diangkat menjadi dosen tetap.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Riset energi alternatif penting bagi ketahanan energi nasional.
- Rekrutmen CPNS mensyaratkan ijazah S1; riset belum layak diselesaikan.
- Kriteria: mutu riset (Pasal 31 ayat 5), kejujuran, tanpa perlakuan khusus.

DITANYAKAN:
Keputusan yang memenuhi ketiga kriteria tersebut.

JAWAB:
1. Pasal 31 ayat (5) UUD NRI 1945 menegaskan pemerintah memajukan iptek untuk kemajuan peradaban dan kesejahteraan; riset bermutu adalah sumbangan nyata warga bagi tujuan itu.
2. Seleksi CPNS dibuka secara berkala, sehingga melewatkan satu periode tidak menutup kesempatan; mutu riset yang dikorbankan sulit dipulihkan.
3. Opsi B menjaga mutu riset, jujur, dan tidak menuntut keistimewaan apa pun.

Jadi, jawaban yang tepat adalah (B) Menyelesaikan riset secara bermutu sesuai arahan dosen, sambil mempersiapkan diri untuk seleksi CPNS periode berikutnya atau jalur karier riset lainnya.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan mutu riset yang penting bagi bangsa.
- (C) Meminta dispensasi khusus berarti meminta perlakuan istimewa yang tidak adil bagi pelamar lain.
- (D) Menyerahkan pekerjaan ilmiah kepada orang lain adalah kecurangan akademik.
- (E) Memberi syarat imbalan jabatan menunjukkan pamrih dan bukan wewenang kampus untuk dijanjikan.', status='aktif', quality_score=4, quality_notes='Revisi: kriteria keputusan dibuat eksplisit; opsi D diubah menjadi perjokian dan opsi lain diberi cacat jelas sehingga kunci B tidak lagi bersifat penilaian nilai.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fc2-719e-bcf9-2d13e1d32ca1';
UPDATE questions SET description='Anda mahasiswa tingkat akhir Teknik Nuklir yang meneliti energi alternatif untuk ketahanan energi nasional. Dibuka rekrutmen CPNS yang mensyaratkan ijazah S1, sedangkan dosen pembimbing menilai riset Anda belum layak diselesaikan saat ini. Keputusan yang paling bertanggung jawab, yaitu menjaga mutu riset demi kemajuan iptek bangsa (Pasal 31 ayat 5), tetap jujur, dan tidak meminta perlakuan khusus, adalah...', explanation='DIKETAHUI:
- Riset energi alternatif penting bagi ketahanan energi nasional.
- Rekrutmen CPNS mensyaratkan ijazah S1; riset belum layak diselesaikan.
- Kriteria: mutu riset (Pasal 31 ayat 5), kejujuran, tanpa perlakuan khusus.

DITANYAKAN:
Keputusan yang memenuhi ketiga kriteria tersebut.

JAWAB:
1. Pasal 31 ayat (5) UUD NRI 1945 menegaskan pemerintah memajukan iptek untuk kemajuan peradaban dan kesejahteraan; riset bermutu adalah sumbangan nyata warga bagi tujuan itu.
2. Seleksi CPNS dibuka secara berkala, sehingga melewatkan satu periode tidak menutup kesempatan; mutu riset yang dikorbankan sulit dipulihkan.
3. Opsi B menjaga mutu riset, jujur, dan tidak menuntut keistimewaan apa pun.

Jadi, jawaban yang tepat adalah (B) Menyelesaikan riset secara bermutu sesuai arahan dosen, sambil mempersiapkan diri untuk seleksi CPNS periode berikutnya atau jalur karier riset lainnya.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan mutu riset yang penting bagi bangsa.
- (C) Meminta dispensasi khusus berarti meminta perlakuan istimewa yang tidak adil bagi pelamar lain.
- (D) Menyerahkan pekerjaan ilmiah kepada orang lain adalah kecurangan akademik.
- (E) Memberi syarat imbalan jabatan menunjukkan pamrih dan bukan wewenang kampus untuk dijanjikan.', updated_at=now() WHERE id='019b0bef-1fc2-719e-bcf9-2d13e1d32ca1';
UPDATE answers SET description='Menyelesaikan skripsi seadanya agar cepat lulus dan dapat mendaftar CPNS tahun ini.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc2-719e-bcf9-2d13e1d32ca1' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menyelesaikan riset secara bermutu sesuai arahan dosen, sambil mempersiapkan diri untuk seleksi CPNS periode berikutnya atau jalur karier riset lainnya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc2-719e-bcf9-2d13e1d32ca1' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Melobi panitia CPNS agar memberi dispensasi waktu penyerahan ijazah khusus untuk Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc2-719e-bcf9-2d13e1d32ca1' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Meminta orang lain mengerjakan bagian analisis riset agar Anda dapat lulus tepat waktu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc2-719e-bcf9-2d13e1d32ca1' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menunda kelulusan, tetapi mensyaratkan kampus menjamin Anda diangkat menjadi dosen tetap.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc2-719e-bcf9-2d13e1d32ca1' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda aktif mengkritik di media sosial proses seleksi CPNS yang dinilai tidak transparan. Teman mengingatkan risiko jerat UU ITE yang dapat merusak rekam jejak Anda. Sikap yang paling tepat, yaitu tetap menggunakan hak menyatakan pendapat (Pasal 28E ayat 3) secara bertanggung jawab dan menghormati hak orang lain (Pasal 28J ayat 1), adalah...', options='[{"id": "019b0bef-1fd1-7603-84ed-18abd7dab56e", "description": "Berhenti mengkritik sama sekali dan menghapus semua unggahan lama.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fd1-7aa1-be9b-3c57a1a00a7f", "description": "Tetap mengkritik dengan kata-kata kasar karena kebebasan berekspresi dijamin UUD.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fd1-7e4b-b1be-cae6c7145c1d", "description": "Tetap menyampaikan kritik berbasis data dan fakta dengan bahasa santun tanpa menyerang pribadi, serta menyalurkannya pula melalui kanal pengaduan resmi.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fd2-724d-aaec-3ca3544416ec", "description": "Membuat akun palsu agar dapat mengkritik sebebas-bebasnya tanpa diketahui.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fd2-75e3-8dcc-1152b542bbe3", "description": "Menyebarkan dugaan kecurangan yang belum diverifikasi agar cepat viral.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda mengkritik transparansi seleksi CPNS di media sosial.
- Ada risiko jerat UU ITE.
- Kriteria: hak berpendapat (Pasal 28E ayat 3) digunakan secara bertanggung jawab dan menghormati hak orang lain (Pasal 28J ayat 1).

DITANYAKAN:
Sikap yang memenuhi kedua kriteria.

JAWAB:
1. Pasal 28E ayat (3) menjamin kebebasan mengeluarkan pendapat, sedangkan Pasal 28J menuntut setiap orang menghormati hak asasi orang lain dan tunduk pada pembatasan undang-undang.
2. Kritik yang berbasis data, santun, dan tidak menyerang pribadi tetap sah, sekaligus jauh dari unsur pencemaran nama baik atau penyebaran berita bohong.
3. Menyalurkan kritik melalui kanal pengaduan resmi membuat aspirasi dapat ditindaklanjuti. Opsi C memenuhi seluruh kriteria.

Jadi, jawaban yang tepat adalah (C) Tetap menyampaikan kritik berbasis data dan fakta dengan bahasa santun tanpa menyerang pribadi, serta menyalurkannya pula melalui kanal pengaduan resmi.

Mengapa opsi lain kurang tepat:
- (A) Berhenti total berarti melepaskan hak berpendapat tanpa alasan yang perlu.
- (B) Bahasa kasar tidak menghormati hak orang lain dan dapat melanggar hukum.
- (D) Akun palsu menghindari tanggung jawab atas pendapat sendiri.
- (E) Menyebarkan informasi yang belum diverifikasi berisiko menjadi hoaks dan tidak bertanggung jawab.', status='aktif', quality_score=4, quality_notes='Revisi: kriteria Pasal 28E ayat (3) dan 28J ayat (1) dibuat eksplisit; kunci C dilengkapi kanal resmi, opsi E diganti penyebaran informasi belum terverifikasi sehingga tidak lagi setara dengan kunci.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fd1-7249-bf32-80a6884f1fd7';
UPDATE questions SET description='Anda aktif mengkritik di media sosial proses seleksi CPNS yang dinilai tidak transparan. Teman mengingatkan risiko jerat UU ITE yang dapat merusak rekam jejak Anda. Sikap yang paling tepat, yaitu tetap menggunakan hak menyatakan pendapat (Pasal 28E ayat 3) secara bertanggung jawab dan menghormati hak orang lain (Pasal 28J ayat 1), adalah...', explanation='DIKETAHUI:
- Anda mengkritik transparansi seleksi CPNS di media sosial.
- Ada risiko jerat UU ITE.
- Kriteria: hak berpendapat (Pasal 28E ayat 3) digunakan secara bertanggung jawab dan menghormati hak orang lain (Pasal 28J ayat 1).

DITANYAKAN:
Sikap yang memenuhi kedua kriteria.

JAWAB:
1. Pasal 28E ayat (3) menjamin kebebasan mengeluarkan pendapat, sedangkan Pasal 28J menuntut setiap orang menghormati hak asasi orang lain dan tunduk pada pembatasan undang-undang.
2. Kritik yang berbasis data, santun, dan tidak menyerang pribadi tetap sah, sekaligus jauh dari unsur pencemaran nama baik atau penyebaran berita bohong.
3. Menyalurkan kritik melalui kanal pengaduan resmi membuat aspirasi dapat ditindaklanjuti. Opsi C memenuhi seluruh kriteria.

Jadi, jawaban yang tepat adalah (C) Tetap menyampaikan kritik berbasis data dan fakta dengan bahasa santun tanpa menyerang pribadi, serta menyalurkannya pula melalui kanal pengaduan resmi.

Mengapa opsi lain kurang tepat:
- (A) Berhenti total berarti melepaskan hak berpendapat tanpa alasan yang perlu.
- (B) Bahasa kasar tidak menghormati hak orang lain dan dapat melanggar hukum.
- (D) Akun palsu menghindari tanggung jawab atas pendapat sendiri.
- (E) Menyebarkan informasi yang belum diverifikasi berisiko menjadi hoaks dan tidak bertanggung jawab.', updated_at=now() WHERE id='019b0bef-1fd1-7249-bf32-80a6884f1fd7';
UPDATE answers SET description='Berhenti mengkritik sama sekali dan menghapus semua unggahan lama.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd1-7249-bf32-80a6884f1fd7' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Tetap mengkritik dengan kata-kata kasar karena kebebasan berekspresi dijamin UUD.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd1-7249-bf32-80a6884f1fd7' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Tetap menyampaikan kritik berbasis data dan fakta dengan bahasa santun tanpa menyerang pribadi, serta menyalurkannya pula melalui kanal pengaduan resmi.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd1-7249-bf32-80a6884f1fd7' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Membuat akun palsu agar dapat mengkritik sebebas-bebasnya tanpa diketahui.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd1-7249-bf32-80a6884f1fd7' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyebarkan dugaan kecurangan yang belum diverifikasi agar cepat viral.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd1-7249-bf32-80a6884f1fd7' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sebuah pemerintah kabupaten menerbitkan Perda yang mewajibkan warga usia 18–25 tahun yang tidak sedang bekerja atau kuliah mengikuti pelatihan di BLK selama enam bulan penuh, disertai sanksi administratif bagi yang menolak. Sekelompok warga menilai Perda itu bertentangan dengan undang-undang yang lebih tinggi. Sesuai hierarki peraturan perundang-undangan, langkah hukum yang tepat adalah...', options='[{"id": "019a3b08-85ee-746d-833e-23aed812ea5a", "description": "Mengajukan pengujian Perda tersebut ke Mahkamah Konstitusi.", "isCorrect": false, "point": 1}, {"id": "019a3b08-85ee-7946-8799-13a3fdcc0665", "description": "Mengajukan permohonan uji materiil Perda tersebut ke Mahkamah Agung.", "isCorrect": true, "point": 1}, {"id": "019a3b08-85ee-7e60-9330-c118a7454a13", "description": "Mengadukan Perda tersebut ke Komisi Yudisial agar dibatalkan.", "isCorrect": false, "point": 1}, {"id": "019a3b08-85ef-74fe-bef3-cd83bafb11ea", "description": "Mengabaikan Perda tersebut karena Perda tidak termasuk jenis peraturan perundang-undangan.", "isCorrect": false, "point": 1}, {"id": "019a3b08-85ef-7ad3-b9de-84d0a5cb40ad", "description": "Meminta DPR RI mencabut Perda tersebut.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Perda kabupaten mewajibkan pelatihan BLK enam bulan dengan sanksi administratif.
- Warga menilai Perda bertentangan dengan undang-undang.
- Yang ditanya: langkah hukum sesuai hierarki peraturan perundang-undangan.

DITANYAKAN:
Lembaga dan mekanisme yang tepat untuk menguji Perda terhadap undang-undang.

JAWAB:
1. Menurut UU No. 12 Tahun 2011, Perda Kabupaten/Kota termasuk jenis dan hierarki peraturan perundang-undangan dan kedudukannya di bawah undang-undang.
2. Pasal 24A ayat (1) UUD NRI 1945: Mahkamah Agung berwenang menguji peraturan perundang-undangan di bawah undang-undang terhadap undang-undang.
3. Jadi, Perda yang dinilai bertentangan dengan undang-undang diuji melalui permohonan uji materiil ke Mahkamah Agung.

Jadi, jawaban yang tepat adalah (B) Mengajukan permohonan uji materiil Perda tersebut ke Mahkamah Agung.

Mengapa opsi lain kurang tepat:
- (A) Mahkamah Konstitusi menguji undang-undang terhadap UUD, bukan Perda terhadap undang-undang.
- (C) Komisi Yudisial berwenang terkait pengusulan hakim agung dan menjaga kehormatan hakim, bukan menguji peraturan.
- (D) Perda termasuk dalam hierarki peraturan perundang-undangan (Pasal 7 UU 12/2011) dan tetap berlaku sampai dibatalkan.
- (E) DPR RI tidak berwenang mencabut Perda; Perda dibentuk oleh DPRD bersama kepala daerah.', status='aktif', quality_score=5, quality_notes='Revisi: kaitan keliru dengan Pasal 27 ayat (1) dan istilah ''sanksi sosial'' dihapus; soal difokuskan pada hierarki (UU 12/2011) dan kewenangan MA (Pasal 24A ayat 1) sehingga jawaban tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019a3b08-85ed-7e1c-8dab-8d5d51b0308f';
UPDATE questions SET description='Sebuah pemerintah kabupaten menerbitkan Perda yang mewajibkan warga usia 18–25 tahun yang tidak sedang bekerja atau kuliah mengikuti pelatihan di BLK selama enam bulan penuh, disertai sanksi administratif bagi yang menolak. Sekelompok warga menilai Perda itu bertentangan dengan undang-undang yang lebih tinggi. Sesuai hierarki peraturan perundang-undangan, langkah hukum yang tepat adalah...', explanation='DIKETAHUI:
- Perda kabupaten mewajibkan pelatihan BLK enam bulan dengan sanksi administratif.
- Warga menilai Perda bertentangan dengan undang-undang.
- Yang ditanya: langkah hukum sesuai hierarki peraturan perundang-undangan.

DITANYAKAN:
Lembaga dan mekanisme yang tepat untuk menguji Perda terhadap undang-undang.

JAWAB:
1. Menurut UU No. 12 Tahun 2011, Perda Kabupaten/Kota termasuk jenis dan hierarki peraturan perundang-undangan dan kedudukannya di bawah undang-undang.
2. Pasal 24A ayat (1) UUD NRI 1945: Mahkamah Agung berwenang menguji peraturan perundang-undangan di bawah undang-undang terhadap undang-undang.
3. Jadi, Perda yang dinilai bertentangan dengan undang-undang diuji melalui permohonan uji materiil ke Mahkamah Agung.

Jadi, jawaban yang tepat adalah (B) Mengajukan permohonan uji materiil Perda tersebut ke Mahkamah Agung.

Mengapa opsi lain kurang tepat:
- (A) Mahkamah Konstitusi menguji undang-undang terhadap UUD, bukan Perda terhadap undang-undang.
- (C) Komisi Yudisial berwenang terkait pengusulan hakim agung dan menjaga kehormatan hakim, bukan menguji peraturan.
- (D) Perda termasuk dalam hierarki peraturan perundang-undangan (Pasal 7 UU 12/2011) dan tetap berlaku sampai dibatalkan.
- (E) DPR RI tidak berwenang mencabut Perda; Perda dibentuk oleh DPRD bersama kepala daerah.', updated_at=now() WHERE id='019a3b08-85ed-7e1c-8dab-8d5d51b0308f';
UPDATE answers SET description='Mengajukan pengujian Perda tersebut ke Mahkamah Konstitusi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ed-7e1c-8dab-8d5d51b0308f' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengajukan permohonan uji materiil Perda tersebut ke Mahkamah Agung.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ed-7e1c-8dab-8d5d51b0308f' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengadukan Perda tersebut ke Komisi Yudisial agar dibatalkan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ed-7e1c-8dab-8d5d51b0308f' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengabaikan Perda tersebut karena Perda tidak termasuk jenis peraturan perundang-undangan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ed-7e1c-8dab-8d5d51b0308f' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminta DPR RI mencabut Perda tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85ed-7e1c-8dab-8d5d51b0308f' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Sebuah pemerintah kabupaten menerbitkan Perda yang mewajibkan warga usia 18–25 tahun yang tidak sedang bekerja atau kuliah mengikuti pelatihan di BLK selama enam bulan penuh, disertai sanksi administratif bagi yang menolak. Sekelompok warga menilai Perda itu bertentangan dengan undang-undang yang lebih tinggi. Sesuai hierarki peraturan perundang-undangan, langkah hukum yang tepat adalah...', explanation='DIKETAHUI:
- Perda kabupaten mewajibkan pelatihan BLK enam bulan dengan sanksi administratif.
- Warga menilai Perda bertentangan dengan undang-undang.
- Yang ditanya: langkah hukum sesuai hierarki peraturan perundang-undangan.

DITANYAKAN:
Lembaga dan mekanisme yang tepat untuk menguji Perda terhadap undang-undang.

JAWAB:
1. Menurut UU No. 12 Tahun 2011, Perda Kabupaten/Kota termasuk jenis dan hierarki peraturan perundang-undangan dan kedudukannya di bawah undang-undang.
2. Pasal 24A ayat (1) UUD NRI 1945: Mahkamah Agung berwenang menguji peraturan perundang-undangan di bawah undang-undang terhadap undang-undang.
3. Jadi, Perda yang dinilai bertentangan dengan undang-undang diuji melalui permohonan uji materiil ke Mahkamah Agung.

Jadi, jawaban yang tepat adalah (B) Mengajukan permohonan uji materiil Perda tersebut ke Mahkamah Agung.

Mengapa opsi lain kurang tepat:
- (A) Mahkamah Konstitusi menguji undang-undang terhadap UUD, bukan Perda terhadap undang-undang.
- (C) Komisi Yudisial berwenang terkait pengusulan hakim agung dan menjaga kehormatan hakim, bukan menguji peraturan.
- (D) Perda termasuk dalam hierarki peraturan perundang-undangan (Pasal 7 UU 12/2011) dan tetap berlaku sampai dibatalkan.
- (E) DPR RI tidak berwenang mencabut Perda; Perda dibentuk oleh DPRD bersama kepala daerah.', updated_at=now() WHERE id='8493c259-3d92-47d4-9cea-ef8d81fcef18';
UPDATE answers SET description='Mengajukan pengujian Perda tersebut ke Mahkamah Konstitusi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='8493c259-3d92-47d4-9cea-ef8d81fcef18' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengajukan permohonan uji materiil Perda tersebut ke Mahkamah Agung.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='8493c259-3d92-47d4-9cea-ef8d81fcef18' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengadukan Perda tersebut ke Komisi Yudisial agar dibatalkan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='8493c259-3d92-47d4-9cea-ef8d81fcef18' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengabaikan Perda tersebut karena Perda tidak termasuk jenis peraturan perundang-undangan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='8493c259-3d92-47d4-9cea-ef8d81fcef18' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminta DPR RI mencabut Perda tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='8493c259-3d92-47d4-9cea-ef8d81fcef18' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sebagai pemilih pemula, Anda menilai banyak janji kampanye tidak realistis. Teman-teman SMA mengajak Anda merusak surat suara sebagai bentuk kekecewaan. Sikap yang paling mencerminkan pemilih yang dewasa dan rasional sesuai asas pemilu luber jurdil adalah...', options='[{"id": "019b0bef-1fbf-74ab-b83e-1817065db514", "description": "Ikut merusak surat suara agar partai politik sadar akan kekecewaan pemilih muda.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fbf-783f-8153-d71efcec4c8b", "description": "Tetap datang ke TPS, tetapi memilih calon yang paling populer di media sosial tanpa menilai rekam jejaknya.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fbf-7ba0-971d-a2d1fa124204", "description": "Tidak peduli pada pemilu karena merasa masa depan hanya ditentukan nilai ujian sendiri.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fbf-7f28-9b52-08419a3123d9", "description": "Memilih secara acak sekadar agar mendapat tanda tinta di jari.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fc0-7367-ba52-872464b7ac5d", "description": "Mengajak teman-teman menilai visi, misi, dan rekam jejak calon secara rasional, lalu menggunakan hak pilih untuk calon yang dinilai paling layak.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda pemilih pemula yang kecewa pada janji kampanye.
- Teman-teman mengajak merusak surat suara.
- Kriteria: pemilih dewasa dan rasional sesuai asas luber jurdil.

DITANYAKAN:
Sikap pemilih yang dewasa dan rasional.

JAWAB:
1. Pemilu adalah sarana pelaksanaan kedaulatan rakyat (Pasal 1 ayat 2 dan Pasal 22E ayat 1 UUD NRI 1945) dengan asas langsung, umum, bebas, rahasia, jujur, dan adil.
2. Pemilih rasional menilai visi, misi, dan rekam jejak, lalu memilih calon terbaik di antara yang tersedia; suara yang dirusak tidak ikut menentukan hasil.
3. Opsi E memuat penilaian rasional sekaligus penggunaan hak pilih, bahkan mengajak teman bersikap serupa.

Jadi, jawaban yang tepat adalah (E) Mengajak teman-teman menilai visi, misi, dan rekam jejak calon secara rasional, lalu menggunakan hak pilih untuk calon yang dinilai paling layak.

Mengapa opsi lain kurang tepat:
- (A) Merusak surat suara tidak mengubah apa pun dan membuang kesempatan menentukan pemimpin.
- (B) Hadir ke TPS baik, tetapi memilih berdasarkan popularitas tanpa menilai rekam jejak tidak rasional.
- (C) Sikap apatis mengabaikan peran warga dalam kedaulatan rakyat.
- (D) Memilih acak tidak bertanggung jawab atas suara sendiri.', status='aktif', quality_score=4, quality_notes='Revisi: opsi B diubah menjadi memilih tanpa menilai rekam jejak sehingga tidak lagi setara dengan kunci C; kriteria luber jurdil dipertegas.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fbf-7027-9537-a4b2662dce76';
UPDATE questions SET description='Sebagai pemilih pemula, Anda menilai banyak janji kampanye tidak realistis. Teman-teman SMA mengajak Anda merusak surat suara sebagai bentuk kekecewaan. Sikap yang paling mencerminkan pemilih yang dewasa dan rasional sesuai asas pemilu luber jurdil adalah...', explanation='DIKETAHUI:
- Anda pemilih pemula yang kecewa pada janji kampanye.
- Teman-teman mengajak merusak surat suara.
- Kriteria: pemilih dewasa dan rasional sesuai asas luber jurdil.

DITANYAKAN:
Sikap pemilih yang dewasa dan rasional.

JAWAB:
1. Pemilu adalah sarana pelaksanaan kedaulatan rakyat (Pasal 1 ayat 2 dan Pasal 22E ayat 1 UUD NRI 1945) dengan asas langsung, umum, bebas, rahasia, jujur, dan adil.
2. Pemilih rasional menilai visi, misi, dan rekam jejak, lalu memilih calon terbaik di antara yang tersedia; suara yang dirusak tidak ikut menentukan hasil.
3. Opsi E memuat penilaian rasional sekaligus penggunaan hak pilih, bahkan mengajak teman bersikap serupa.

Jadi, jawaban yang tepat adalah (E) Mengajak teman-teman menilai visi, misi, dan rekam jejak calon secara rasional, lalu menggunakan hak pilih untuk calon yang dinilai paling layak.

Mengapa opsi lain kurang tepat:
- (A) Merusak surat suara tidak mengubah apa pun dan membuang kesempatan menentukan pemimpin.
- (B) Hadir ke TPS baik, tetapi memilih berdasarkan popularitas tanpa menilai rekam jejak tidak rasional.
- (C) Sikap apatis mengabaikan peran warga dalam kedaulatan rakyat.
- (D) Memilih acak tidak bertanggung jawab atas suara sendiri.', updated_at=now() WHERE id='019b0c6a-abfd-79bd-b044-1b3811f74cb6';
UPDATE answers SET description='Ikut merusak surat suara agar partai politik sadar akan kekecewaan pemilih muda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfd-79bd-b044-1b3811f74cb6' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Tetap datang ke TPS, tetapi memilih calon yang paling populer di media sosial tanpa menilai rekam jejaknya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfd-79bd-b044-1b3811f74cb6' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Tidak peduli pada pemilu karena merasa masa depan hanya ditentukan nilai ujian sendiri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfd-79bd-b044-1b3811f74cb6' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Memilih secara acak sekadar agar mendapat tanda tinta di jari.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfd-79bd-b044-1b3811f74cb6' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengajak teman-teman menilai visi, misi, dan rekam jejak calon secara rasional, lalu menggunakan hak pilih untuk calon yang dinilai paling layak.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abfd-79bd-b044-1b3811f74cb6' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Sebagai pemilih pemula, Anda menilai banyak janji kampanye tidak realistis. Teman-teman SMA mengajak Anda merusak surat suara sebagai bentuk kekecewaan. Sikap yang paling mencerminkan pemilih yang dewasa dan rasional sesuai asas pemilu luber jurdil adalah...', explanation='DIKETAHUI:
- Anda pemilih pemula yang kecewa pada janji kampanye.
- Teman-teman mengajak merusak surat suara.
- Kriteria: pemilih dewasa dan rasional sesuai asas luber jurdil.

DITANYAKAN:
Sikap pemilih yang dewasa dan rasional.

JAWAB:
1. Pemilu adalah sarana pelaksanaan kedaulatan rakyat (Pasal 1 ayat 2 dan Pasal 22E ayat 1 UUD NRI 1945) dengan asas langsung, umum, bebas, rahasia, jujur, dan adil.
2. Pemilih rasional menilai visi, misi, dan rekam jejak, lalu memilih calon terbaik di antara yang tersedia; suara yang dirusak tidak ikut menentukan hasil.
3. Opsi E memuat penilaian rasional sekaligus penggunaan hak pilih, bahkan mengajak teman bersikap serupa.

Jadi, jawaban yang tepat adalah (E) Mengajak teman-teman menilai visi, misi, dan rekam jejak calon secara rasional, lalu menggunakan hak pilih untuk calon yang dinilai paling layak.

Mengapa opsi lain kurang tepat:
- (A) Merusak surat suara tidak mengubah apa pun dan membuang kesempatan menentukan pemimpin.
- (B) Hadir ke TPS baik, tetapi memilih berdasarkan popularitas tanpa menilai rekam jejak tidak rasional.
- (C) Sikap apatis mengabaikan peran warga dalam kedaulatan rakyat.
- (D) Memilih acak tidak bertanggung jawab atas suara sendiri.', updated_at=now() WHERE id='019b0bef-1fbf-7027-9537-a4b2662dce76';
UPDATE answers SET description='Ikut merusak surat suara agar partai politik sadar akan kekecewaan pemilih muda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbf-7027-9537-a4b2662dce76' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Tetap datang ke TPS, tetapi memilih calon yang paling populer di media sosial tanpa menilai rekam jejaknya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbf-7027-9537-a4b2662dce76' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Tidak peduli pada pemilu karena merasa masa depan hanya ditentukan nilai ujian sendiri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbf-7027-9537-a4b2662dce76' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Memilih secara acak sekadar agar mendapat tanda tinta di jari.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbf-7027-9537-a4b2662dce76' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengajak teman-teman menilai visi, misi, dan rekam jejak calon secara rasional, lalu menggunakan hak pilih untuk calon yang dinilai paling layak.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fbf-7027-9537-a4b2662dce76' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Dalam sebuah forum, seorang pemuda berpendapat Indonesia sebaiknya kembali ke pemerintahan terpusat agar pembangunan lebih cepat. Seorang akademisi menolak karena sentralisasi mengancam otonomi daerah dan partisipasi masyarakat. Berdasarkan Pasal 18 UUD NRI 1945 dan prinsip NKRI, pandangan yang paling tepat adalah...', options='[{"id": "019983d1-692f-722d-a9f3-38cb8123fba5", "description": "Mendukung sentralisasi total demi efisiensi birokrasi.", "isCorrect": false, "point": 1}, {"id": "019983d1-692f-7657-9bc1-a34717a0e3bf", "description": "Memberikan otonomi penuh kepada daerah tanpa campur tangan pusat sama sekali.", "isCorrect": false, "point": 1}, {"id": "019983d1-692f-7a73-95c3-cd6cbdd3aad9", "description": "Mempertahankan otonomi daerah yang seluas-luasnya dalam kerangka NKRI, dengan urusan seperti politik luar negeri, pertahanan, keamanan, yustisi, moneter dan fiskal nasional, serta agama tetap menjadi kewenangan pusat.", "isCorrect": true, "point": 1}, {"id": "019983d1-6930-704d-bbc0-f0c629e6c3f6", "description": "Menerapkan sentralisasi di bidang ekonomi dan desentralisasi di bidang sosial saja.", "isCorrect": false, "point": 1}, {"id": "019983d1-6930-75c5-8263-deff44e78783", "description": "Menentukan sistem pemerintahan daerah melalui referendum nasional.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Ada usulan kembali ke sentralisasi demi percepatan pembangunan.
- Ada keberatan karena sentralisasi mengancam otonomi daerah.
- Dasar penilaian: Pasal 18 UUD NRI 1945 dan prinsip NKRI.

DITANYAKAN:
Pandangan yang sesuai dengan konstitusi tentang hubungan pusat dan daerah.

JAWAB:
1. Pasal 18 ayat (5) UUD NRI 1945: pemerintahan daerah menjalankan otonomi seluas-luasnya, kecuali urusan pemerintahan yang oleh undang-undang ditentukan sebagai urusan pemerintah pusat.
2. UU No. 23 Tahun 2014 menetapkan urusan absolut pusat: politik luar negeri, pertahanan, keamanan, yustisi, moneter dan fiskal nasional, serta agama. Urusan lainnya dibagi antara pusat dan daerah.
3. Jadi, yang tepat adalah otonomi luas dalam kerangka negara kesatuan, bukan sentralisasi total maupun otonomi tanpa batas.

Jadi, jawaban yang tepat adalah (C) Mempertahankan otonomi daerah yang seluas-luasnya dalam kerangka NKRI, dengan urusan seperti politik luar negeri, pertahanan, keamanan, yustisi, moneter dan fiskal nasional, serta agama tetap menjadi kewenangan pusat.

Mengapa opsi lain kurang tepat:
- (A) Sentralisasi total bertentangan dengan Pasal 18 yang mengamanatkan otonomi daerah.
- (B) Otonomi tanpa campur tangan pusat bertentangan dengan prinsip negara kesatuan.
- (D) Pembagian urusan tidak didasarkan pada bidang ekonomi dan sosial seperti itu, melainkan diatur undang-undang.
- (E) Sistem pemerintahan daerah telah ditetapkan konstitusi dan undang-undang, bukan melalui referendum.', status='aktif', quality_score=5, quality_notes='Revisi: rumusan kunci C yang kabur diperjelas sesuai Pasal 18 ayat (5) UUD NRI 1945 dan urusan absolut UU 23/2014; pembahasan ditulis ulang.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-692e-7952-b79e-94fd59aee0f0';
UPDATE questions SET description='Dalam sebuah forum, seorang pemuda berpendapat Indonesia sebaiknya kembali ke pemerintahan terpusat agar pembangunan lebih cepat. Seorang akademisi menolak karena sentralisasi mengancam otonomi daerah dan partisipasi masyarakat. Berdasarkan Pasal 18 UUD NRI 1945 dan prinsip NKRI, pandangan yang paling tepat adalah...', explanation='DIKETAHUI:
- Ada usulan kembali ke sentralisasi demi percepatan pembangunan.
- Ada keberatan karena sentralisasi mengancam otonomi daerah.
- Dasar penilaian: Pasal 18 UUD NRI 1945 dan prinsip NKRI.

DITANYAKAN:
Pandangan yang sesuai dengan konstitusi tentang hubungan pusat dan daerah.

JAWAB:
1. Pasal 18 ayat (5) UUD NRI 1945: pemerintahan daerah menjalankan otonomi seluas-luasnya, kecuali urusan pemerintahan yang oleh undang-undang ditentukan sebagai urusan pemerintah pusat.
2. UU No. 23 Tahun 2014 menetapkan urusan absolut pusat: politik luar negeri, pertahanan, keamanan, yustisi, moneter dan fiskal nasional, serta agama. Urusan lainnya dibagi antara pusat dan daerah.
3. Jadi, yang tepat adalah otonomi luas dalam kerangka negara kesatuan, bukan sentralisasi total maupun otonomi tanpa batas.

Jadi, jawaban yang tepat adalah (C) Mempertahankan otonomi daerah yang seluas-luasnya dalam kerangka NKRI, dengan urusan seperti politik luar negeri, pertahanan, keamanan, yustisi, moneter dan fiskal nasional, serta agama tetap menjadi kewenangan pusat.

Mengapa opsi lain kurang tepat:
- (A) Sentralisasi total bertentangan dengan Pasal 18 yang mengamanatkan otonomi daerah.
- (B) Otonomi tanpa campur tangan pusat bertentangan dengan prinsip negara kesatuan.
- (D) Pembagian urusan tidak didasarkan pada bidang ekonomi dan sosial seperti itu, melainkan diatur undang-undang.
- (E) Sistem pemerintahan daerah telah ditetapkan konstitusi dan undang-undang, bukan melalui referendum.', updated_at=now() WHERE id='019983d1-692e-7952-b79e-94fd59aee0f0';
UPDATE answers SET description='Mendukung sentralisasi total demi efisiensi birokrasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-692e-7952-b79e-94fd59aee0f0' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Memberikan otonomi penuh kepada daerah tanpa campur tangan pusat sama sekali.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-692e-7952-b79e-94fd59aee0f0' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mempertahankan otonomi daerah yang seluas-luasnya dalam kerangka NKRI, dengan urusan seperti politik luar negeri, pertahanan, keamanan, yustisi, moneter dan fiskal nasional, serta agama tetap menjadi kewenangan pusat.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-692e-7952-b79e-94fd59aee0f0' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menerapkan sentralisasi di bidang ekonomi dan desentralisasi di bidang sosial saja.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-692e-7952-b79e-94fd59aee0f0' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menentukan sistem pemerintahan daerah melalui referendum nasional.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-692e-7952-b79e-94fd59aee0f0' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda seorang ASN di bagian pelayanan publik. Saat istirahat, Anda mendengar rekan kerja melontarkan komentar bernada diskriminatif terhadap salah satu kelompok minoritas. Komentar itu tidak ditujukan kepada orang tertentu, tetapi berpotensi memicu perpecahan dan memengaruhi sikap pelayanan. Reaksi yang paling tepat sesuai prinsip Bhinneka Tunggal Ika adalah...', options='[{"id": "019983d1-8dbf-7800-9e24-60e41359227a", "description": "Diam saja karena tidak ingin terlibat perdebatan.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc0-70d1-9225-0e8a6049686d", "description": "Membalas dengan menyindir rekan tersebut di depan pegawai lain agar ia malu.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc0-76aa-bf11-afca84dae670", "description": "Mengalihkan topik pembicaraan tanpa menyinggung komentar tersebut.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc0-7ca6-8f01-41ba4ccbcab1", "description": "Langsung melaporkan rekan tersebut kepada atasan tanpa berbicara kepadanya.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc1-723e-8ad3-a78a55ce4b34", "description": "Menegur rekan tersebut secara santun dan menjelaskan bahwa komentar itu bertentangan dengan Bhinneka Tunggal Ika serta kewajiban ASN melayani semua golongan tanpa diskriminasi.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Rekan kerja ASN melontarkan komentar diskriminatif terhadap kelompok minoritas.
- Komentar berpotensi memicu perpecahan dan memengaruhi pelayanan.
- Kriteria: prinsip Bhinneka Tunggal Ika.

DITANYAKAN:
Reaksi yang paling tepat terhadap komentar diskriminatif rekan kerja.

JAWAB:
1. Bhinneka Tunggal Ika menuntut penghormatan terhadap perbedaan; setiap orang berhak bebas dari perlakuan diskriminatif (Pasal 28I ayat 2 UUD NRI 1945).
2. ASN wajib memberikan pelayanan tanpa membedakan golongan, sehingga sikap diskriminatif tidak boleh dibiarkan.
3. Teguran santun disertai penjelasan nilai mengoreksi perilaku tanpa mempermalukan; opsi E memenuhi hal tersebut.

Jadi, jawaban yang tepat adalah (E) Menegur rekan tersebut secara santun dan menjelaskan bahwa komentar itu bertentangan dengan Bhinneka Tunggal Ika serta kewajiban ASN melayani semua golongan tanpa diskriminasi.

Mengapa opsi lain kurang tepat:
- (A) Diam berarti membiarkan sikap diskriminatif berkembang.
- (B) Sindiran di depan umum mempermalukan dan dapat memicu konflik baru.
- (C) Mengalihkan topik menghindari masalah tanpa mengoreksi sikap.
- (D) Melapor dapat ditempuh bila teguran tidak diindahkan, tetapi melewatkan teguran langsung kurang proporsional untuk ucapan pertama.', status='aktif', quality_score=4, quality_notes='Revisi: opsi B (sebelumnya mirip kunci) diubah menjadi sindiran di depan umum; kunci E dilengkapi dasar Pasal 28I ayat (2) dan kewajiban ASN.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8dbf-721f-976c-418b9cd85451';
UPDATE questions SET description='Anda seorang ASN di bagian pelayanan publik. Saat istirahat, Anda mendengar rekan kerja melontarkan komentar bernada diskriminatif terhadap salah satu kelompok minoritas. Komentar itu tidak ditujukan kepada orang tertentu, tetapi berpotensi memicu perpecahan dan memengaruhi sikap pelayanan. Reaksi yang paling tepat sesuai prinsip Bhinneka Tunggal Ika adalah...', explanation='DIKETAHUI:
- Rekan kerja ASN melontarkan komentar diskriminatif terhadap kelompok minoritas.
- Komentar berpotensi memicu perpecahan dan memengaruhi pelayanan.
- Kriteria: prinsip Bhinneka Tunggal Ika.

DITANYAKAN:
Reaksi yang paling tepat terhadap komentar diskriminatif rekan kerja.

JAWAB:
1. Bhinneka Tunggal Ika menuntut penghormatan terhadap perbedaan; setiap orang berhak bebas dari perlakuan diskriminatif (Pasal 28I ayat 2 UUD NRI 1945).
2. ASN wajib memberikan pelayanan tanpa membedakan golongan, sehingga sikap diskriminatif tidak boleh dibiarkan.
3. Teguran santun disertai penjelasan nilai mengoreksi perilaku tanpa mempermalukan; opsi E memenuhi hal tersebut.

Jadi, jawaban yang tepat adalah (E) Menegur rekan tersebut secara santun dan menjelaskan bahwa komentar itu bertentangan dengan Bhinneka Tunggal Ika serta kewajiban ASN melayani semua golongan tanpa diskriminasi.

Mengapa opsi lain kurang tepat:
- (A) Diam berarti membiarkan sikap diskriminatif berkembang.
- (B) Sindiran di depan umum mempermalukan dan dapat memicu konflik baru.
- (C) Mengalihkan topik menghindari masalah tanpa mengoreksi sikap.
- (D) Melapor dapat ditempuh bila teguran tidak diindahkan, tetapi melewatkan teguran langsung kurang proporsional untuk ucapan pertama.', updated_at=now() WHERE id='019993b1-83b6-7768-8bab-9704886c7f15';
UPDATE answers SET description='Diam saja karena tidak ingin terlibat perdebatan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b6-7768-8bab-9704886c7f15' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membalas dengan menyindir rekan tersebut di depan pegawai lain agar ia malu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b6-7768-8bab-9704886c7f15' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengalihkan topik pembicaraan tanpa menyinggung komentar tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b6-7768-8bab-9704886c7f15' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Langsung melaporkan rekan tersebut kepada atasan tanpa berbicara kepadanya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b6-7768-8bab-9704886c7f15' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menegur rekan tersebut secara santun dan menjelaskan bahwa komentar itu bertentangan dengan Bhinneka Tunggal Ika serta kewajiban ASN melayani semua golongan tanpa diskriminasi.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b6-7768-8bab-9704886c7f15' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Anda seorang ASN di bagian pelayanan publik. Saat istirahat, Anda mendengar rekan kerja melontarkan komentar bernada diskriminatif terhadap salah satu kelompok minoritas. Komentar itu tidak ditujukan kepada orang tertentu, tetapi berpotensi memicu perpecahan dan memengaruhi sikap pelayanan. Reaksi yang paling tepat sesuai prinsip Bhinneka Tunggal Ika adalah...', explanation='DIKETAHUI:
- Rekan kerja ASN melontarkan komentar diskriminatif terhadap kelompok minoritas.
- Komentar berpotensi memicu perpecahan dan memengaruhi pelayanan.
- Kriteria: prinsip Bhinneka Tunggal Ika.

DITANYAKAN:
Reaksi yang paling tepat terhadap komentar diskriminatif rekan kerja.

JAWAB:
1. Bhinneka Tunggal Ika menuntut penghormatan terhadap perbedaan; setiap orang berhak bebas dari perlakuan diskriminatif (Pasal 28I ayat 2 UUD NRI 1945).
2. ASN wajib memberikan pelayanan tanpa membedakan golongan, sehingga sikap diskriminatif tidak boleh dibiarkan.
3. Teguran santun disertai penjelasan nilai mengoreksi perilaku tanpa mempermalukan; opsi E memenuhi hal tersebut.

Jadi, jawaban yang tepat adalah (E) Menegur rekan tersebut secara santun dan menjelaskan bahwa komentar itu bertentangan dengan Bhinneka Tunggal Ika serta kewajiban ASN melayani semua golongan tanpa diskriminasi.

Mengapa opsi lain kurang tepat:
- (A) Diam berarti membiarkan sikap diskriminatif berkembang.
- (B) Sindiran di depan umum mempermalukan dan dapat memicu konflik baru.
- (C) Mengalihkan topik menghindari masalah tanpa mengoreksi sikap.
- (D) Melapor dapat ditempuh bila teguran tidak diindahkan, tetapi melewatkan teguran langsung kurang proporsional untuk ucapan pertama.', updated_at=now() WHERE id='019983d1-8dbf-721f-976c-418b9cd85451';
UPDATE answers SET description='Diam saja karena tidak ingin terlibat perdebatan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbf-721f-976c-418b9cd85451' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membalas dengan menyindir rekan tersebut di depan pegawai lain agar ia malu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbf-721f-976c-418b9cd85451' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengalihkan topik pembicaraan tanpa menyinggung komentar tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbf-721f-976c-418b9cd85451' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Langsung melaporkan rekan tersebut kepada atasan tanpa berbicara kepadanya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbf-721f-976c-418b9cd85451' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menegur rekan tersebut secara santun dan menjelaskan bahwa komentar itu bertentangan dengan Bhinneka Tunggal Ika serta kewajiban ASN melayani semua golongan tanpa diskriminasi.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbf-721f-976c-418b9cd85451' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Di kelas Anda ada siswa dari keluarga diplomat yang sering bercerita tentang pengalamannya di luar negeri dan membandingkan Indonesia dengan negara lain. Beberapa teman menganggapnya sombong dan kurang nasionalis, padahal wawasannya luas. Cara yang paling tepat untuk mencegah kesalahpahaman sekaligus menjaga persatuan kelas adalah...', options='[{"id": "019993b1-83cd-70c7-af35-3666f30eccd9", "description": "Menegur siswa tersebut agar berhenti membandingkan Indonesia dengan negara lain.", "isCorrect": false, "point": 1}, {"id": "019993b1-83cd-75a1-ad6b-c2b0d33b6a3f", "description": "Mendiamkan situasi dan berharap isu tersebut reda dengan sendirinya.", "isCorrect": false, "point": 1}, {"id": "019993b1-83cd-798a-9d5a-840a518d8d43", "description": "Membela siswa tersebut dengan menyalahkan teman-teman yang dianggap berwawasan sempit.", "isCorrect": false, "point": 1}, {"id": "019993b1-83cd-7f01-ba3e-abe2f106f70e", "description": "Mempertemukan kedua pihak dalam diskusi kelas, dan mengajak siswa tersebut membagikan pengalamannya dengan menonjolkan hal yang dapat diterapkan untuk kemajuan Indonesia.", "isCorrect": true, "point": 1}, {"id": "019993b1-83ce-74da-acde-b9d468a67d1f", "description": "Meminta guru menghukum teman-teman yang menyebutnya sombong.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Siswa dari keluarga diplomat sering membandingkan Indonesia dengan negara lain.
- Sebagian teman menganggapnya sombong dan kurang nasionalis.
- Tujuan: mencegah kesalahpahaman dan menjaga persatuan kelas.

DITANYAKAN:
Cara yang menjembatani kedua pihak.

JAWAB:
1. Kesalahpahaman muncul dari cara penyampaian siswa tersebut dan prasangka teman-temannya; penyelesaian harus menyentuh kedua sisi.
2. Diskusi bersama membuka saling pengertian, sedangkan pengalaman luar negeri yang diarahkan pada hal yang dapat diterapkan di Indonesia mengubah kesan membandingkan menjadi sumbangan gagasan.
3. Opsi D melibatkan kedua pihak dan menjaga kebersamaan.

Jadi, jawaban yang tepat adalah (D) Mempertemukan kedua pihak dalam diskusi kelas, dan mengajak siswa tersebut membagikan pengalamannya dengan menonjolkan hal yang dapat diterapkan untuk kemajuan Indonesia.

Mengapa opsi lain kurang tepat:
- (A) Hanya menyalahkan satu pihak dan menutup wawasan yang bermanfaat.
- (B) Membiarkan prasangka berlanjut berisiko memecah kelas.
- (C) Menyalahkan pihak lain memperuncing perpecahan.
- (E) Hukuman tidak menumbuhkan saling pengertian.', status='aktif', quality_score=4, quality_notes='Revisi: opsi C diubah menjadi membela sepihak sehingga tidak lagi setara dengan kunci; kunci D dipertegas melibatkan kedua pihak.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-83cc-7903-82f6-a65ddf64f08b';
UPDATE questions SET description='Di kelas Anda ada siswa dari keluarga diplomat yang sering bercerita tentang pengalamannya di luar negeri dan membandingkan Indonesia dengan negara lain. Beberapa teman menganggapnya sombong dan kurang nasionalis, padahal wawasannya luas. Cara yang paling tepat untuk mencegah kesalahpahaman sekaligus menjaga persatuan kelas adalah...', explanation='DIKETAHUI:
- Siswa dari keluarga diplomat sering membandingkan Indonesia dengan negara lain.
- Sebagian teman menganggapnya sombong dan kurang nasionalis.
- Tujuan: mencegah kesalahpahaman dan menjaga persatuan kelas.

DITANYAKAN:
Cara yang menjembatani kedua pihak.

JAWAB:
1. Kesalahpahaman muncul dari cara penyampaian siswa tersebut dan prasangka teman-temannya; penyelesaian harus menyentuh kedua sisi.
2. Diskusi bersama membuka saling pengertian, sedangkan pengalaman luar negeri yang diarahkan pada hal yang dapat diterapkan di Indonesia mengubah kesan membandingkan menjadi sumbangan gagasan.
3. Opsi D melibatkan kedua pihak dan menjaga kebersamaan.

Jadi, jawaban yang tepat adalah (D) Mempertemukan kedua pihak dalam diskusi kelas, dan mengajak siswa tersebut membagikan pengalamannya dengan menonjolkan hal yang dapat diterapkan untuk kemajuan Indonesia.

Mengapa opsi lain kurang tepat:
- (A) Hanya menyalahkan satu pihak dan menutup wawasan yang bermanfaat.
- (B) Membiarkan prasangka berlanjut berisiko memecah kelas.
- (C) Menyalahkan pihak lain memperuncing perpecahan.
- (E) Hukuman tidak menumbuhkan saling pengertian.', updated_at=now() WHERE id='019993b1-83cc-7903-82f6-a65ddf64f08b';
UPDATE answers SET description='Menegur siswa tersebut agar berhenti membandingkan Indonesia dengan negara lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83cc-7903-82f6-a65ddf64f08b' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mendiamkan situasi dan berharap isu tersebut reda dengan sendirinya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83cc-7903-82f6-a65ddf64f08b' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Membela siswa tersebut dengan menyalahkan teman-teman yang dianggap berwawasan sempit.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83cc-7903-82f6-a65ddf64f08b' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mempertemukan kedua pihak dalam diskusi kelas, dan mengajak siswa tersebut membagikan pengalamannya dengan menonjolkan hal yang dapat diterapkan untuk kemajuan Indonesia.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83cc-7903-82f6-a65ddf64f08b' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminta guru menghukum teman-teman yang menyebutnya sombong.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83cc-7903-82f6-a65ddf64f08b' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sebagai guru, Anda menerima keluhan orang tua bahwa anaknya sering diejek karena logat bahasa daerahnya. Ia meminta sekolah melarang penggunaan bahasa daerah agar tidak ada lagi ejekan. Anda meyakini bahasa daerah adalah kekayaan budaya bangsa. Keputusan yang paling sesuai dengan prinsip persatuan dalam keberagaman adalah...', options='[{"id": "019993b1-83f7-7259-a085-d1196b53a7af", "description": "Tidak melarang bahasa daerah, lalu menangani ejekan melalui pembinaan pelaku dan edukasi seluruh siswa tentang menghargai keragaman bahasa dan budaya.", "isCorrect": true, "point": 1}, {"id": "019993b1-83f7-7a43-abc1-52710866c216", "description": "Melarang penggunaan bahasa daerah di sekolah demi suasana harmonis.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f8-70ae-91ea-efc5c6039ff7", "description": "Memberi sanksi berat kepada pelaku ejekan tanpa pembinaan maupun edukasi bagi siswa lain.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f8-7773-9339-1a4a9b7683e2", "description": "Menyetujui larangan bahasa daerah untuk sementara sampai ejekan berhenti.", "isCorrect": false, "point": 1}, {"id": "019993b1-83f8-7d1f-a4f5-3d4bfe0527f0", "description": "Mendiamkan masalah dan berharap para siswa menyelesaikannya sendiri.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Seorang siswa diejek karena logat bahasa daerah.
- Orang tua meminta bahasa daerah dilarang.
- Bahasa daerah adalah kekayaan budaya bangsa.
- Kriteria: persatuan dalam keberagaman.

DITANYAKAN:
Keputusan yang menghentikan ejekan tanpa mengorbankan keberagaman.

JAWAB:
1. Pasal 32 ayat (2) UUD NRI 1945: negara menghormati dan memelihara bahasa daerah sebagai kekayaan budaya nasional. Melarangnya bertentangan dengan semangat itu.
2. Masalah sebenarnya adalah perundungan, bukan bahasa daerahnya; maka yang ditangani adalah perilaku mengejek.
3. Pembinaan pelaku sekaligus edukasi seluruh siswa menghentikan ejekan dan menumbuhkan sikap menghargai perbedaan. Opsi A memenuhi semuanya.

Jadi, jawaban yang tepat adalah (A) Tidak melarang bahasa daerah, lalu menangani ejekan melalui pembinaan pelaku dan edukasi seluruh siswa tentang menghargai keragaman bahasa dan budaya.

Mengapa opsi lain kurang tepat:
- (B) Melarang bahasa daerah menghukum korban dan bertentangan dengan Pasal 32 ayat (2).
- (C) Sanksi tanpa pembinaan dan edukasi tidak menumbuhkan sikap menghargai keberagaman.
- (D) Larangan sementara tetap mengorbankan bahasa daerah dan tidak menyentuh akar masalah.
- (E) Membiarkan perundungan berlanjut.', status='aktif', quality_score=4, quality_notes='Revisi: opsi C dan D dipertegas cacatnya; kunci B dilengkapi pembinaan pelaku dan rujukan Pasal 32 ayat (2) UUD NRI 1945.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-83f6-7c10-b25e-407d9b17e3e6';
UPDATE questions SET description='Sebagai guru, Anda menerima keluhan orang tua bahwa anaknya sering diejek karena logat bahasa daerahnya. Ia meminta sekolah melarang penggunaan bahasa daerah agar tidak ada lagi ejekan. Anda meyakini bahasa daerah adalah kekayaan budaya bangsa. Keputusan yang paling sesuai dengan prinsip persatuan dalam keberagaman adalah...', explanation='DIKETAHUI:
- Seorang siswa diejek karena logat bahasa daerah.
- Orang tua meminta bahasa daerah dilarang.
- Bahasa daerah adalah kekayaan budaya bangsa.
- Kriteria: persatuan dalam keberagaman.

DITANYAKAN:
Keputusan yang menghentikan ejekan tanpa mengorbankan keberagaman.

JAWAB:
1. Pasal 32 ayat (2) UUD NRI 1945: negara menghormati dan memelihara bahasa daerah sebagai kekayaan budaya nasional. Melarangnya bertentangan dengan semangat itu.
2. Masalah sebenarnya adalah perundungan, bukan bahasa daerahnya; maka yang ditangani adalah perilaku mengejek.
3. Pembinaan pelaku sekaligus edukasi seluruh siswa menghentikan ejekan dan menumbuhkan sikap menghargai perbedaan. Opsi A memenuhi semuanya.

Jadi, jawaban yang tepat adalah (A) Tidak melarang bahasa daerah, lalu menangani ejekan melalui pembinaan pelaku dan edukasi seluruh siswa tentang menghargai keragaman bahasa dan budaya.

Mengapa opsi lain kurang tepat:
- (B) Melarang bahasa daerah menghukum korban dan bertentangan dengan Pasal 32 ayat (2).
- (C) Sanksi tanpa pembinaan dan edukasi tidak menumbuhkan sikap menghargai keberagaman.
- (D) Larangan sementara tetap mengorbankan bahasa daerah dan tidak menyentuh akar masalah.
- (E) Membiarkan perundungan berlanjut.', updated_at=now() WHERE id='019993b1-83f6-7c10-b25e-407d9b17e3e6';
UPDATE answers SET description='Tidak melarang bahasa daerah, lalu menangani ejekan melalui pembinaan pelaku dan edukasi seluruh siswa tentang menghargai keragaman bahasa dan budaya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f6-7c10-b25e-407d9b17e3e6' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Melarang penggunaan bahasa daerah di sekolah demi suasana harmonis.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f6-7c10-b25e-407d9b17e3e6' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Memberi sanksi berat kepada pelaku ejekan tanpa pembinaan maupun edukasi bagi siswa lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f6-7c10-b25e-407d9b17e3e6' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyetujui larangan bahasa daerah untuk sementara sampai ejekan berhenti.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f6-7c10-b25e-407d9b17e3e6' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mendiamkan masalah dan berharap para siswa menyelesaikannya sendiri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83f6-7c10-b25e-407d9b17e3e6' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda ketua RT di sebuah perumahan. Sebuah keluarga baru yang berbeda suku dan agama dari mayoritas warga merasa terasing dan jarang dilibatkan dalam kegiatan lingkungan. Tindakan yang paling sesuai dengan prinsip Bhinneka Tunggal Ika adalah...', options='[{"id": "019993b1-a707-744b-8408-353a1804f40d", "description": "Mendiamkan masalah karena dianggap urusan pribadi keluarga tersebut.", "isCorrect": false, "point": 1}, {"id": "019993b1-a707-78ab-b002-e9526d054d66", "description": "Mengumpulkan warga lama untuk membahas keluarga tersebut tanpa menghadirkan mereka.", "isCorrect": false, "point": 1}, {"id": "019993b1-a707-7bea-96fc-4c3432589e9a", "description": "Membuat peraturan yang mewajibkan semua warga ikut kegiatan RT dengan sanksi denda.", "isCorrect": false, "point": 1}, {"id": "019993b1-a708-719f-879f-011d82825529", "description": "Mengadakan pertunjukan budaya keluarga tersebut tanpa menanyakan kesediaan mereka lebih dahulu.", "isCorrect": false, "point": 1}, {"id": "019993b1-a708-7689-ad1c-8b7c2a6baa57", "description": "Mengunjungi keluarga tersebut, mendengarkan kesulitannya, lalu secara aktif melibatkan mereka dalam kegiatan dan kepengurusan warga.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Keluarga baru berbeda suku dan agama merasa terasing.
- Anda ketua RT.
- Kriteria: Bhinneka Tunggal Ika.

DITANYAKAN:
Tindakan ketua RT yang paling tepat untuk merangkul keluarga baru.

JAWAB:
1. Bhinneka Tunggal Ika berarti perbedaan suku dan agama tidak menjadi penghalang kebersamaan; setiap warga berhak dilibatkan setara.
2. Langkah yang tepat dimulai dengan mendengarkan langsung kebutuhan keluarga tersebut, lalu memberi ruang partisipasi nyata.
3. Opsi E menggabungkan dialog dan pelibatan aktif.

Jadi, jawaban yang tepat adalah (E) Mengunjungi keluarga tersebut, mendengarkan kesulitannya, lalu secara aktif melibatkan mereka dalam kegiatan dan kepengurusan warga.

Mengapa opsi lain kurang tepat:
- (A) Ketua RT bertanggung jawab atas kerukunan warga; mendiamkan tidak menyelesaikan masalah.
- (B) Membicarakan mereka tanpa kehadiran mereka justru memperkuat eksklusi.
- (C) Paksaan dengan denda tidak menyentuh rasa terasing dan dapat menimbulkan ketegangan baru.
- (D) Niatnya baik, tetapi tanpa persetujuan keluarga itu justru dapat membuat mereka tidak nyaman.', status='aktif', quality_score=4, quality_notes='Revisi: kunci B dipertegas (mendengarkan + melibatkan aktif), opsi D diberi cacat jelas (tanpa persetujuan) sehingga tidak lagi setara.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-a706-7ed8-8328-6602f7c3372b';
UPDATE questions SET description='Anda ketua RT di sebuah perumahan. Sebuah keluarga baru yang berbeda suku dan agama dari mayoritas warga merasa terasing dan jarang dilibatkan dalam kegiatan lingkungan. Tindakan yang paling sesuai dengan prinsip Bhinneka Tunggal Ika adalah...', explanation='DIKETAHUI:
- Keluarga baru berbeda suku dan agama merasa terasing.
- Anda ketua RT.
- Kriteria: Bhinneka Tunggal Ika.

DITANYAKAN:
Tindakan ketua RT yang paling tepat untuk merangkul keluarga baru.

JAWAB:
1. Bhinneka Tunggal Ika berarti perbedaan suku dan agama tidak menjadi penghalang kebersamaan; setiap warga berhak dilibatkan setara.
2. Langkah yang tepat dimulai dengan mendengarkan langsung kebutuhan keluarga tersebut, lalu memberi ruang partisipasi nyata.
3. Opsi E menggabungkan dialog dan pelibatan aktif.

Jadi, jawaban yang tepat adalah (E) Mengunjungi keluarga tersebut, mendengarkan kesulitannya, lalu secara aktif melibatkan mereka dalam kegiatan dan kepengurusan warga.

Mengapa opsi lain kurang tepat:
- (A) Ketua RT bertanggung jawab atas kerukunan warga; mendiamkan tidak menyelesaikan masalah.
- (B) Membicarakan mereka tanpa kehadiran mereka justru memperkuat eksklusi.
- (C) Paksaan dengan denda tidak menyentuh rasa terasing dan dapat menimbulkan ketegangan baru.
- (D) Niatnya baik, tetapi tanpa persetujuan keluarga itu justru dapat membuat mereka tidak nyaman.', updated_at=now() WHERE id='019993b1-a706-7ed8-8328-6602f7c3372b';
UPDATE answers SET description='Mendiamkan masalah karena dianggap urusan pribadi keluarga tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a706-7ed8-8328-6602f7c3372b' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengumpulkan warga lama untuk membahas keluarga tersebut tanpa menghadirkan mereka.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a706-7ed8-8328-6602f7c3372b' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Membuat peraturan yang mewajibkan semua warga ikut kegiatan RT dengan sanksi denda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a706-7ed8-8328-6602f7c3372b' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengadakan pertunjukan budaya keluarga tersebut tanpa menanyakan kesediaan mereka lebih dahulu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a706-7ed8-8328-6602f7c3372b' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengunjungi keluarga tersebut, mendengarkan kesulitannya, lalu secara aktif melibatkan mereka dalam kegiatan dan kepengurusan warga.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a706-7ed8-8328-6602f7c3372b' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang warga di perumahan Anda memutar musik dengan volume sangat keras hingga larut malam selama hari raya agamanya, sehingga tetangga yang berbeda agama merasa terganggu. Ia berdalih itu bagian dari tradisi. Tindakan yang paling sesuai dengan nilai toleransi dan etika bertetangga adalah...', options='[{"id": "019993b1-a70f-75e0-8947-739265bb8770", "description": "Menegur dengan nada keras di depan banyak orang agar ia segera berhenti.", "isCorrect": false, "point": 1}, {"id": "019993b1-a70f-7b29-9385-523c2b242174", "description": "Membiarkan saja karena merayakan hari raya adalah haknya tanpa batas.", "isCorrect": false, "point": 1}, {"id": "019993b1-a70f-7edb-9d94-52485ec06602", "description": "Langsung melaporkannya ke polisi tanpa berbicara terlebih dahulu.", "isCorrect": false, "point": 1}, {"id": "019993b1-a710-7502-9c27-47949a134c64", "description": "Mendatanginya dengan santun, menghormati perayaannya, dan bersama-sama menyepakati batas waktu serta volume yang tidak mengganggu tetangga.", "isCorrect": true, "point": 1}, {"id": "019993b1-a710-79a4-8228-645a18e021f8", "description": "Mengusulkan aturan yang hanya melarang musik keras pada perayaan agama warga tersebut.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Warga memutar musik keras hingga larut malam saat hari raya agamanya.
- Tetangga berbeda agama terganggu.
- Kriteria: toleransi dan etika bertetangga.

DITANYAKAN:
Tindakan yang menghormati perayaan sekaligus hak tetangga.

JAWAB:
1. Toleransi berarti menghormati perayaan agama orang lain; di sisi lain, setiap orang wajib menghormati hak orang lain atas ketenangan (Pasal 28J ayat 1 UUD NRI 1945).
2. Cara yang beretika adalah berbicara langsung secara santun dan mencari kesepakatan bersama.
3. Opsi D menghormati perayaan sekaligus melindungi hak tetangga melalui kesepakatan.

Jadi, jawaban yang tepat adalah (D) Mendatanginya dengan santun, menghormati perayaannya, dan bersama-sama menyepakati batas waktu serta volume yang tidak mengganggu tetangga.

Mengapa opsi lain kurang tepat:
- (A) Teguran keras di depan umum mempermalukan dan dapat memicu konflik.
- (B) Hak merayakan dibatasi oleh kewajiban menghormati hak orang lain.
- (C) Melapor ke polisi sebelum berdialog tidak proporsional untuk masalah bertetangga.
- (E) Aturan yang hanya menyasar satu agama bersifat diskriminatif.', status='aktif', quality_score=4, quality_notes='Revisi: redaksi kunci D yang janggal diperbaiki; opsi A dan E diberi cacat jelas (mempermalukan, diskriminatif) sehingga kunci tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-a70f-7192-a8c5-01185d263ee0';
UPDATE questions SET description='Seorang warga di perumahan Anda memutar musik dengan volume sangat keras hingga larut malam selama hari raya agamanya, sehingga tetangga yang berbeda agama merasa terganggu. Ia berdalih itu bagian dari tradisi. Tindakan yang paling sesuai dengan nilai toleransi dan etika bertetangga adalah...', explanation='DIKETAHUI:
- Warga memutar musik keras hingga larut malam saat hari raya agamanya.
- Tetangga berbeda agama terganggu.
- Kriteria: toleransi dan etika bertetangga.

DITANYAKAN:
Tindakan yang menghormati perayaan sekaligus hak tetangga.

JAWAB:
1. Toleransi berarti menghormati perayaan agama orang lain; di sisi lain, setiap orang wajib menghormati hak orang lain atas ketenangan (Pasal 28J ayat 1 UUD NRI 1945).
2. Cara yang beretika adalah berbicara langsung secara santun dan mencari kesepakatan bersama.
3. Opsi D menghormati perayaan sekaligus melindungi hak tetangga melalui kesepakatan.

Jadi, jawaban yang tepat adalah (D) Mendatanginya dengan santun, menghormati perayaannya, dan bersama-sama menyepakati batas waktu serta volume yang tidak mengganggu tetangga.

Mengapa opsi lain kurang tepat:
- (A) Teguran keras di depan umum mempermalukan dan dapat memicu konflik.
- (B) Hak merayakan dibatasi oleh kewajiban menghormati hak orang lain.
- (C) Melapor ke polisi sebelum berdialog tidak proporsional untuk masalah bertetangga.
- (E) Aturan yang hanya menyasar satu agama bersifat diskriminatif.', updated_at=now() WHERE id='019993b1-a70f-7192-a8c5-01185d263ee0';
UPDATE answers SET description='Menegur dengan nada keras di depan banyak orang agar ia segera berhenti.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a70f-7192-a8c5-01185d263ee0' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membiarkan saja karena merayakan hari raya adalah haknya tanpa batas.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a70f-7192-a8c5-01185d263ee0' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Langsung melaporkannya ke polisi tanpa berbicara terlebih dahulu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a70f-7192-a8c5-01185d263ee0' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mendatanginya dengan santun, menghormati perayaannya, dan bersama-sama menyepakati batas waktu serta volume yang tidak mengganggu tetangga.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a70f-7192-a8c5-01185d263ee0' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengusulkan aturan yang hanya melarang musik keras pada perayaan agama warga tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a70f-7192-a8c5-01185d263ee0' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang warga di perumahan Anda sering mengkritik cara hidup tetangganya yang beradat istiadat berbeda dan menganggap adatnya sendiri paling benar. Sikap Anda yang paling sesuai dengan prinsip Bhinneka Tunggal Ika adalah...', options='[{"id": "019993b1-a718-77d0-8290-cf1cffac7e6f", "description": "Menegurnya dengan keras dan menyebut adat warga tersebut justru yang paling terbelakang.", "isCorrect": false, "point": 1}, {"id": "019993b1-a718-7bc9-b4bc-284854178255", "description": "Mendiamkan dan berharap masalahnya selesai dengan sendirinya.", "isCorrect": false, "point": 1}, {"id": "019993b1-a719-7384-8454-3577967a49f3", "description": "Mengajaknya berbincang secara santun bahwa setiap adat patut dihormati selama tidak melanggar hukum, lalu mendorongnya mengenal tetangga tersebut secara langsung.", "isCorrect": true, "point": 1}, {"id": "019993b1-a719-78da-956e-16a46b0135d6", "description": "Menyarankannya pindah ke lingkungan yang adatnya sama.", "isCorrect": false, "point": 1}, {"id": "019993b1-a71a-71fe-a126-638875f0d0e3", "description": "Mengusulkan aturan yang melarang warga membicarakan cara hidup orang lain.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Warga mengkritik adat tetangga dan menganggap adatnya paling benar (etnosentrisme).
- Kriteria: Bhinneka Tunggal Ika.

DITANYAKAN:
Sikap yang paling tepat terhadap warga yang etnosentris.

JAWAB:
1. Menganggap budaya sendiri paling benar adalah sikap etnosentris yang bertentangan dengan Bhinneka Tunggal Ika.
2. Sikap itu diubah melalui dialog santun dan perjumpaan langsung yang menumbuhkan saling pengertian.
3. Opsi C memadukan penjelasan nilai dan ajakan saling mengenal.

Jadi, jawaban yang tepat adalah (C) Mengajaknya berbincang secara santun bahwa setiap adat patut dihormati selama tidak melanggar hukum, lalu mendorongnya mengenal tetangga tersebut secara langsung.

Mengapa opsi lain kurang tepat:
- (A) Membalas dengan merendahkan adatnya sama-sama etnosentris dan memicu konflik.
- (B) Mendiamkan membiarkan prasangka berkembang.
- (D) Menyuruh pindah mendorong pengelompokan dan memecah persatuan.
- (E) Aturan larangan berbicara tidak mengubah sikap dan berlebihan.', status='aktif', quality_score=4, quality_notes='Revisi: opsi A diubah menjadi teguran yang merendahkan sehingga tidak setara dengan kunci; stem menyebut Bhinneka Tunggal Ika sebagai kriteria.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-a718-73cb-b7c4-bb45bd03f96f';
UPDATE questions SET description='Seorang warga di perumahan Anda sering mengkritik cara hidup tetangganya yang beradat istiadat berbeda dan menganggap adatnya sendiri paling benar. Sikap Anda yang paling sesuai dengan prinsip Bhinneka Tunggal Ika adalah...', explanation='DIKETAHUI:
- Warga mengkritik adat tetangga dan menganggap adatnya paling benar (etnosentrisme).
- Kriteria: Bhinneka Tunggal Ika.

DITANYAKAN:
Sikap yang paling tepat terhadap warga yang etnosentris.

JAWAB:
1. Menganggap budaya sendiri paling benar adalah sikap etnosentris yang bertentangan dengan Bhinneka Tunggal Ika.
2. Sikap itu diubah melalui dialog santun dan perjumpaan langsung yang menumbuhkan saling pengertian.
3. Opsi C memadukan penjelasan nilai dan ajakan saling mengenal.

Jadi, jawaban yang tepat adalah (C) Mengajaknya berbincang secara santun bahwa setiap adat patut dihormati selama tidak melanggar hukum, lalu mendorongnya mengenal tetangga tersebut secara langsung.

Mengapa opsi lain kurang tepat:
- (A) Membalas dengan merendahkan adatnya sama-sama etnosentris dan memicu konflik.
- (B) Mendiamkan membiarkan prasangka berkembang.
- (D) Menyuruh pindah mendorong pengelompokan dan memecah persatuan.
- (E) Aturan larangan berbicara tidak mengubah sikap dan berlebihan.', updated_at=now() WHERE id='019993b1-a718-73cb-b7c4-bb45bd03f96f';
UPDATE answers SET description='Menegurnya dengan keras dan menyebut adat warga tersebut justru yang paling terbelakang.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a718-73cb-b7c4-bb45bd03f96f' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mendiamkan dan berharap masalahnya selesai dengan sendirinya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a718-73cb-b7c4-bb45bd03f96f' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengajaknya berbincang secara santun bahwa setiap adat patut dihormati selama tidak melanggar hukum, lalu mendorongnya mengenal tetangga tersebut secara langsung.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a718-73cb-b7c4-bb45bd03f96f' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyarankannya pindah ke lingkungan yang adatnya sama.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a718-73cb-b7c4-bb45bd03f96f' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengusulkan aturan yang melarang warga membicarakan cara hidup orang lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a718-73cb-b7c4-bb45bd03f96f' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='H. Agus Salim dikenal sebagai diplomat ulung yang menguasai banyak bahasa asing, ikut memperjuangkan pengakuan kedaulatan Indonesia di dunia internasional, tetapi hidup sangat sederhana. Anda diterima kuliah di luar negeri dengan beasiswa yang pas-pasan. Teladan H. Agus Salim yang paling tepat diterapkan selama menjalani studi tersebut adalah...', options='[{"id": "019afdd0-0bee-7c10-bb42-9e75494b1c0b", "description": "Hidup sederhana, tekun menguasai ilmu dan bahasa asing, serta memanfaatkannya untuk memperkenalkan dan memperjuangkan kepentingan bangsa di forum internasional.", "isCorrect": true, "point": 1}, {"id": "019afdd0-0bef-724a-a24f-44e2f4681425", "description": "Mencari pekerjaan sampingan tanpa izin tinggal kerja agar dapat hidup mewah seperti mahasiswa lain.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bef-767c-b3f2-674bc19ff280", "description": "Menghindari pergaulan internasional agar tidak terpengaruh budaya asing.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bef-7b34-be41-070f2b048684", "description": "Membatalkan studi karena hidup prihatin di negeri orang dianggap tidak sepadan.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bf0-713f-8ab7-030037a81f52", "description": "Mendesak pemerintah menambah dana beasiswa agar Anda dapat hidup layak dan tidak memalukan bangsa.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- H. Agus Salim: diplomat, menguasai banyak bahasa asing, berjuang di forum internasional, hidup sederhana.
- Anda kuliah di luar negeri dengan beasiswa pas-pasan.

DITANYAKAN:
Teladan H. Agus Salim yang relevan bagi mahasiswa di luar negeri.

JAWAB:
1. H. Agus Salim (anggota BPUPKI dan Panitia Sembilan, kemudian Menteri Luar Negeri) memimpin misi diplomatik ke negara-negara Arab pada 1947 yang berujung pada pengakuan kedaulatan Indonesia oleh Mesir dan negara lain.
2. Keteladanannya meliputi kesederhanaan, penguasaan ilmu dan bahasa, serta penggunaan kemampuan itu untuk kepentingan bangsa.
3. Opsi A memuat ketiga nilai tersebut.

Jadi, jawaban yang tepat adalah (A) Hidup sederhana, tekun menguasai ilmu dan bahasa asing, serta memanfaatkannya untuk memperkenalkan dan memperjuangkan kepentingan bangsa di forum internasional.

Mengapa opsi lain kurang tepat:
- (B) Melanggar aturan negara lain demi gaya hidup mewah bertolak belakang dengan kesederhanaan dan integritas Agus Salim.
- (C) Agus Salim justru aktif bergaul di dunia internasional untuk memperjuangkan bangsa.
- (D) Menyerah karena hidup prihatin bertentangan dengan keteladanannya.
- (E) Menuntut kemewahan bertentangan dengan teladan hidup sederhana.', status='aktif', quality_score=4, quality_notes='Revisi: pembingkaian stereotip ''Kedinasan Pajak = kemewahan'' dihapus; soal difokuskan pada teladan H. Agus Salim (kesederhanaan, ilmu, diplomasi) dengan fakta sejarah yang akurat.', reviewed_at=now(), updated_at=now() WHERE id='019afdd0-0bee-76b7-a7ce-e73d3d83d4c7';
UPDATE questions SET description='H. Agus Salim dikenal sebagai diplomat ulung yang menguasai banyak bahasa asing, ikut memperjuangkan pengakuan kedaulatan Indonesia di dunia internasional, tetapi hidup sangat sederhana. Anda diterima kuliah di luar negeri dengan beasiswa yang pas-pasan. Teladan H. Agus Salim yang paling tepat diterapkan selama menjalani studi tersebut adalah...', explanation='DIKETAHUI:
- H. Agus Salim: diplomat, menguasai banyak bahasa asing, berjuang di forum internasional, hidup sederhana.
- Anda kuliah di luar negeri dengan beasiswa pas-pasan.

DITANYAKAN:
Teladan H. Agus Salim yang relevan bagi mahasiswa di luar negeri.

JAWAB:
1. H. Agus Salim (anggota BPUPKI dan Panitia Sembilan, kemudian Menteri Luar Negeri) memimpin misi diplomatik ke negara-negara Arab pada 1947 yang berujung pada pengakuan kedaulatan Indonesia oleh Mesir dan negara lain.
2. Keteladanannya meliputi kesederhanaan, penguasaan ilmu dan bahasa, serta penggunaan kemampuan itu untuk kepentingan bangsa.
3. Opsi A memuat ketiga nilai tersebut.

Jadi, jawaban yang tepat adalah (A) Hidup sederhana, tekun menguasai ilmu dan bahasa asing, serta memanfaatkannya untuk memperkenalkan dan memperjuangkan kepentingan bangsa di forum internasional.

Mengapa opsi lain kurang tepat:
- (B) Melanggar aturan negara lain demi gaya hidup mewah bertolak belakang dengan kesederhanaan dan integritas Agus Salim.
- (C) Agus Salim justru aktif bergaul di dunia internasional untuk memperjuangkan bangsa.
- (D) Menyerah karena hidup prihatin bertentangan dengan keteladanannya.
- (E) Menuntut kemewahan bertentangan dengan teladan hidup sederhana.', updated_at=now() WHERE id='019afdd0-0bee-76b7-a7ce-e73d3d83d4c7';
UPDATE answers SET description='Hidup sederhana, tekun menguasai ilmu dan bahasa asing, serta memanfaatkannya untuk memperkenalkan dan memperjuangkan kepentingan bangsa di forum internasional.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bee-76b7-a7ce-e73d3d83d4c7' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mencari pekerjaan sampingan tanpa izin tinggal kerja agar dapat hidup mewah seperti mahasiswa lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bee-76b7-a7ce-e73d3d83d4c7' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menghindari pergaulan internasional agar tidak terpengaruh budaya asing.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bee-76b7-a7ce-e73d3d83d4c7' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Membatalkan studi karena hidup prihatin di negeri orang dianggap tidak sepadan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bee-76b7-a7ce-e73d3d83d4c7' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mendesak pemerintah menambah dana beasiswa agar Anda dapat hidup layak dan tidak memalukan bangsa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bee-76b7-a7ce-e73d3d83d4c7' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Politik Etis (1901) menjalankan program irigasi, emigrasi, dan edukasi. Program edukasi pada awalnya ditujukan untuk memenuhi kebutuhan tenaga administrasi murah (klerk) bagi pemerintah kolonial. Namun, dampak program edukasi yang paling penting bagi pergerakan nasional Indonesia adalah...', options='[{"id": "019b0657-ec24-744d-954c-10ca60d8fe06", "description": "Terpenuhinya kebutuhan pegawai rendahan bagi perusahaan dan kantor kolonial.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec24-797e-800c-895999cf1836", "description": "Lahirnya golongan terpelajar bumiputra yang memelopori organisasi pergerakan modern, seperti Budi Utomo pada 1908.", "isCorrect": true, "point": 1}, {"id": "019b0657-ec24-7dd1-aa6f-965738922ff8", "description": "Meratanya pendidikan bagi seluruh rakyat bumiputra hingga ke pelosok desa.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec25-7442-891a-330f40507832", "description": "Berakhirnya sistem tanam paksa di Hindia Belanda.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec25-793c-a588-41b2406a57e2", "description": "Hapusnya perbedaan perlakuan pendidikan antara anak Eropa dan bumiputra.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Politik Etis 1901: irigasi, emigrasi, edukasi.
- Tujuan awal edukasi: menyediakan tenaga administrasi murah.
- Yang ditanya: dampak edukasi yang paling penting bagi pergerakan nasional.

DITANYAKAN:
Dampak program edukasi Politik Etis bagi pergerakan nasional.

JAWAB:
1. Meskipun terbatas, pendidikan Barat melahirkan golongan terpelajar bumiputra yang memahami gagasan kemajuan, organisasi modern, dan kebangsaan.
2. Golongan ini memelopori organisasi pergerakan; Budi Utomo didirikan pada 20 Mei 1908 oleh pelajar STOVIA, antara lain dr. Soetomo, dengan dorongan dr. Wahidin Sudirohusodo.
3. Karena itu, dampak terpenting bagi pergerakan nasional adalah lahirnya kaum terpelajar pelopor pergerakan.

Jadi, jawaban yang tepat adalah (B) Lahirnya golongan terpelajar bumiputra yang memelopori organisasi pergerakan modern, seperti Budi Utomo pada 1908.

Mengapa opsi lain kurang tepat:
- (A) Itu tujuan kolonial, bukan dampak penting bagi pergerakan nasional.
- (C) Pendidikan masa Politik Etis sangat terbatas dan tidak merata.
- (D) Tanam paksa sudah dihapus bertahap sejak sekitar 1870, jauh sebelum Politik Etis.
- (E) Diskriminasi pendidikan antara anak Eropa dan bumiputra tetap berlangsung.', status='aktif', quality_score=5, quality_notes='Revisi: soal pilihan hidup yang bersifat opini (kerja vs beasiswa) diganti soal sejarah Politik Etis yang faktual dengan kunci tunggal; topik dan kode WSK-15 dipertahankan.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ec23-7ed4-b49f-1dafa0f71922';
UPDATE questions SET description='Politik Etis (1901) menjalankan program irigasi, emigrasi, dan edukasi. Program edukasi pada awalnya ditujukan untuk memenuhi kebutuhan tenaga administrasi murah (klerk) bagi pemerintah kolonial. Namun, dampak program edukasi yang paling penting bagi pergerakan nasional Indonesia adalah...', explanation='DIKETAHUI:
- Politik Etis 1901: irigasi, emigrasi, edukasi.
- Tujuan awal edukasi: menyediakan tenaga administrasi murah.
- Yang ditanya: dampak edukasi yang paling penting bagi pergerakan nasional.

DITANYAKAN:
Dampak program edukasi Politik Etis bagi pergerakan nasional.

JAWAB:
1. Meskipun terbatas, pendidikan Barat melahirkan golongan terpelajar bumiputra yang memahami gagasan kemajuan, organisasi modern, dan kebangsaan.
2. Golongan ini memelopori organisasi pergerakan; Budi Utomo didirikan pada 20 Mei 1908 oleh pelajar STOVIA, antara lain dr. Soetomo, dengan dorongan dr. Wahidin Sudirohusodo.
3. Karena itu, dampak terpenting bagi pergerakan nasional adalah lahirnya kaum terpelajar pelopor pergerakan.

Jadi, jawaban yang tepat adalah (B) Lahirnya golongan terpelajar bumiputra yang memelopori organisasi pergerakan modern, seperti Budi Utomo pada 1908.

Mengapa opsi lain kurang tepat:
- (A) Itu tujuan kolonial, bukan dampak penting bagi pergerakan nasional.
- (C) Pendidikan masa Politik Etis sangat terbatas dan tidak merata.
- (D) Tanam paksa sudah dihapus bertahap sejak sekitar 1870, jauh sebelum Politik Etis.
- (E) Diskriminasi pendidikan antara anak Eropa dan bumiputra tetap berlangsung.', updated_at=now() WHERE id='019b0657-ec23-7ed4-b49f-1dafa0f71922';
UPDATE answers SET description='Terpenuhinya kebutuhan pegawai rendahan bagi perusahaan dan kantor kolonial.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec23-7ed4-b49f-1dafa0f71922' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Lahirnya golongan terpelajar bumiputra yang memelopori organisasi pergerakan modern, seperti Budi Utomo pada 1908.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec23-7ed4-b49f-1dafa0f71922' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Meratanya pendidikan bagi seluruh rakyat bumiputra hingga ke pelosok desa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec23-7ed4-b49f-1dafa0f71922' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Berakhirnya sistem tanam paksa di Hindia Belanda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec23-7ed4-b49f-1dafa0f71922' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Hapusnya perbedaan perlakuan pendidikan antara anak Eropa dan bumiputra.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec23-7ed4-b49f-1dafa0f71922' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Budi Utomo (1908) dan banyak organisasi pergerakan sesudahnya dipelopori oleh pelajar dan lulusan sekolah yang semula disiapkan pemerintah kolonial untuk menjadi pegawai. Pelajaran sejarah yang paling tepat dari fakta tersebut bagi pemuda masa kini adalah...', options='[{"id": "019b0bef-1fd2-7db8-a0a8-24ba433f1fc8", "description": "Pendidikan hanya bernilai bila ditempuh di sekolah kedinasan yang dibiayai negara.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fd3-7245-92bb-1836e68cf310", "description": "Ilmu yang diperoleh semestinya diarahkan untuk memajukan bangsa, bukan sekadar untuk memperoleh jabatan bagi diri sendiri.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fd3-7627-84fb-7a9893435121", "description": "Perjuangan bangsa hanya dapat dilakukan oleh lulusan pendidikan kedokteran.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fd3-793a-8870-65e26abfd480", "description": "Pemuda sebaiknya menghindari pekerjaan administrasi karena identik dengan pegawai kolonial.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fd3-7cdd-9da0-90f68b3b1045", "description": "Kemerdekaan Indonesia terutama dicapai berkat kebaikan pemerintah kolonial yang memberikan pendidikan.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Budi Utomo dan organisasi pergerakan dipelopori kaum terpelajar.
- Sekolah tersebut semula disiapkan kolonial untuk mencetak pegawai.

DITANYAKAN:
Pelajaran sejarah yang paling tepat bagi pemuda masa kini.

JAWAB:
1. Kaum terpelajar seperti pelajar STOVIA tidak berhenti menjadi pegawai, tetapi menggunakan ilmunya untuk membangkitkan kesadaran berbangsa.
2. Nilai yang diwariskan: pendidikan adalah sarana memajukan bangsa, bukan semata-mata alat mencari kedudukan pribadi.
3. Opsi B merumuskan pelajaran itu secara tepat.

Jadi, jawaban yang tepat adalah (B) Ilmu yang diperoleh semestinya diarahkan untuk memajukan bangsa, bukan sekadar untuk memperoleh jabatan bagi diri sendiri.

Mengapa opsi lain kurang tepat:
- (A) Tokoh pergerakan berasal dari beragam jalur pendidikan; nilai pendidikan tidak ditentukan oleh jenis sekolahnya.
- (C) Pelopor pergerakan berasal dari berbagai latar belakang, tidak hanya kedokteran.
- (D) Pekerjaan apa pun dapat menjadi sarana pengabdian; yang penting adalah tujuan dan integritasnya.
- (E) Kemerdekaan dicapai melalui perjuangan bangsa Indonesia sendiri, bukan karena kebaikan penjajah.', status='aktif', quality_score=5, quality_notes='Revisi: soal situasional bersifat opini (magang vs kuliah) diganti soal refleksi sejarah pergerakan yang memiliki satu jawaban yang dapat dipertanggungjawabkan; tema Politik Etis/Budi Utomo dipertahankan.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fd2-797f-92c7-e6eb836ccee4';
UPDATE questions SET description='Budi Utomo (1908) dan banyak organisasi pergerakan sesudahnya dipelopori oleh pelajar dan lulusan sekolah yang semula disiapkan pemerintah kolonial untuk menjadi pegawai. Pelajaran sejarah yang paling tepat dari fakta tersebut bagi pemuda masa kini adalah...', explanation='DIKETAHUI:
- Budi Utomo dan organisasi pergerakan dipelopori kaum terpelajar.
- Sekolah tersebut semula disiapkan kolonial untuk mencetak pegawai.

DITANYAKAN:
Pelajaran sejarah yang paling tepat bagi pemuda masa kini.

JAWAB:
1. Kaum terpelajar seperti pelajar STOVIA tidak berhenti menjadi pegawai, tetapi menggunakan ilmunya untuk membangkitkan kesadaran berbangsa.
2. Nilai yang diwariskan: pendidikan adalah sarana memajukan bangsa, bukan semata-mata alat mencari kedudukan pribadi.
3. Opsi B merumuskan pelajaran itu secara tepat.

Jadi, jawaban yang tepat adalah (B) Ilmu yang diperoleh semestinya diarahkan untuk memajukan bangsa, bukan sekadar untuk memperoleh jabatan bagi diri sendiri.

Mengapa opsi lain kurang tepat:
- (A) Tokoh pergerakan berasal dari beragam jalur pendidikan; nilai pendidikan tidak ditentukan oleh jenis sekolahnya.
- (C) Pelopor pergerakan berasal dari berbagai latar belakang, tidak hanya kedokteran.
- (D) Pekerjaan apa pun dapat menjadi sarana pengabdian; yang penting adalah tujuan dan integritasnya.
- (E) Kemerdekaan dicapai melalui perjuangan bangsa Indonesia sendiri, bukan karena kebaikan penjajah.', updated_at=now() WHERE id='019b0bef-1fd2-797f-92c7-e6eb836ccee4';
UPDATE answers SET description='Pendidikan hanya bernilai bila ditempuh di sekolah kedinasan yang dibiayai negara.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd2-797f-92c7-e6eb836ccee4' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Ilmu yang diperoleh semestinya diarahkan untuk memajukan bangsa, bukan sekadar untuk memperoleh jabatan bagi diri sendiri.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd2-797f-92c7-e6eb836ccee4' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Perjuangan bangsa hanya dapat dilakukan oleh lulusan pendidikan kedokteran.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd2-797f-92c7-e6eb836ccee4' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Pemuda sebaiknya menghindari pekerjaan administrasi karena identik dengan pegawai kolonial.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd2-797f-92c7-e6eb836ccee4' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Kemerdekaan Indonesia terutama dicapai berkat kebaikan pemerintah kolonial yang memberikan pendidikan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fd2-797f-92c7-e6eb836ccee4' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Ujaran kebencian bernuansa SARA yang menyebar cepat di media sosial memicu permusuhan antarwarga sehingga kerukunan dan keserasian kehidupan masyarakat terganggu. Pemerintah lalu membatasi penyebaran konten tersebut. Dalam konsepsi Wawasan Nusantara, pembatasan itu terutama dimaksudkan untuk menjaga perwujudan Kepulauan Nusantara sebagai satu kesatuan ...', options='[{"id": "019983d1-695e-77d4-a5a3-146fb37b455d", "description": "Ekonomi.", "isCorrect": false, "point": 1}, {"id": "019983d1-695f-74d3-a44d-87057ce73e2c", "description": "Pertahanan dan keamanan.", "isCorrect": false, "point": 1}, {"id": "019983d1-695f-7aab-86c3-3eacdaa8d047", "description": "Wilayah.", "isCorrect": false, "point": 1}, {"id": "019983d1-6960-73c7-90c0-0a99e876220a", "description": "Sosial budaya.", "isCorrect": true, "point": 1}, {"id": "019983d1-6961-7803-aa68-5df9af28f289", "description": "Sumber kekayaan alam.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Ujaran kebencian SARA memicu permusuhan antarwarga.
- Yang terganggu: kerukunan dan keserasian kehidupan masyarakat.
- Kerangka: perwujudan Kepulauan Nusantara dalam Wawasan Nusantara.

DITANYAKAN:
Aspek kesatuan yang paling langsung hendak dijaga.

JAWAB:
1. Wawasan Nusantara diwujudkan dalam kesatuan politik, ekonomi, sosial budaya, serta pertahanan dan keamanan.
2. Kesatuan sosial budaya berarti masyarakat Indonesia adalah satu, dengan kehidupan yang serasi, rukun, dan saling menghormati di tengah keberagaman.
3. Ujaran kebencian SARA yang merusak kerukunan masyarakat paling langsung mengancam kesatuan sosial budaya.

Jadi, jawaban yang tepat adalah (D) Sosial budaya.

Mengapa opsi lain kurang tepat:
- (A) Kesatuan ekonomi berkaitan dengan kekayaan wilayah sebagai modal bersama dan pemerataan pembangunan, bukan kerukunan antarwarga.
- (B) Kesatuan pertahanan dan keamanan berkaitan dengan ancaman terhadap negara secara keseluruhan; kasus ini menekankan kerukunan masyarakat.
- (C) Kesatuan wilayah menyangkut keutuhan darat, laut, dan udara, bukan hubungan sosial antarwarga.
- (E) Sumber kekayaan alam tidak terkait dengan ujaran kebencian.', status='aktif', quality_score=5, quality_notes='Revisi: stem dipertegas (kerukunan dan keserasian masyarakat) dan opsi diganti aspek perwujudan Wawasan Nusantara sehingga ''stabilitas nasional'' yang ambigu hilang; kunci tetap D.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-695b-7acf-9f1b-7f638db346d0';
UPDATE questions SET description='Ujaran kebencian bernuansa SARA yang menyebar cepat di media sosial memicu permusuhan antarwarga sehingga kerukunan dan keserasian kehidupan masyarakat terganggu. Pemerintah lalu membatasi penyebaran konten tersebut. Dalam konsepsi Wawasan Nusantara, pembatasan itu terutama dimaksudkan untuk menjaga perwujudan Kepulauan Nusantara sebagai satu kesatuan ...', explanation='DIKETAHUI:
- Ujaran kebencian SARA memicu permusuhan antarwarga.
- Yang terganggu: kerukunan dan keserasian kehidupan masyarakat.
- Kerangka: perwujudan Kepulauan Nusantara dalam Wawasan Nusantara.

DITANYAKAN:
Aspek kesatuan yang paling langsung hendak dijaga.

JAWAB:
1. Wawasan Nusantara diwujudkan dalam kesatuan politik, ekonomi, sosial budaya, serta pertahanan dan keamanan.
2. Kesatuan sosial budaya berarti masyarakat Indonesia adalah satu, dengan kehidupan yang serasi, rukun, dan saling menghormati di tengah keberagaman.
3. Ujaran kebencian SARA yang merusak kerukunan masyarakat paling langsung mengancam kesatuan sosial budaya.

Jadi, jawaban yang tepat adalah (D) Sosial budaya.

Mengapa opsi lain kurang tepat:
- (A) Kesatuan ekonomi berkaitan dengan kekayaan wilayah sebagai modal bersama dan pemerataan pembangunan, bukan kerukunan antarwarga.
- (B) Kesatuan pertahanan dan keamanan berkaitan dengan ancaman terhadap negara secara keseluruhan; kasus ini menekankan kerukunan masyarakat.
- (C) Kesatuan wilayah menyangkut keutuhan darat, laut, dan udara, bukan hubungan sosial antarwarga.
- (E) Sumber kekayaan alam tidak terkait dengan ujaran kebencian.', updated_at=now() WHERE id='019983d1-695b-7acf-9f1b-7f638db346d0';
UPDATE answers SET description='Ekonomi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-695b-7acf-9f1b-7f638db346d0' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Pertahanan dan keamanan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-695b-7acf-9f1b-7f638db346d0' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Wilayah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-695b-7acf-9f1b-7f638db346d0' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Sosial budaya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-695b-7acf-9f1b-7f638db346d0' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Sumber kekayaan alam.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-695b-7acf-9f1b-7f638db346d0' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda anggota delegasi Indonesia dalam perundingan kerja sama ekonomi dengan negara lain. Rancangan perjanjian menjanjikan keuntungan ekonomi besar, tetapi memuat klausul yang mengizinkan pihak asing mengendalikan kebijakan di wilayah perairan Indonesia. Rekomendasi yang paling sesuai dengan Wawasan Nusantara dan kepentingan nasional adalah...', options='[{"id": "019983d1-8dc3-7cef-ab06-7f09b6c2cb52", "description": "Menyetujui perjanjian karena keuntungan ekonomi lebih mendesak.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc4-738f-a77b-83dc0b3b037d", "description": "Menolak klausul yang mengurangi kedaulatan dan mengupayakan perundingan ulang agar kerja sama ekonomi tetap berjalan tanpa mengorbankan kedaulatan.", "isCorrect": true, "point": 1}, {"id": "019983d1-8dc4-7838-b2e2-a88668154591", "description": "Menandatangani perjanjian, lalu mencari celah hukum agar Indonesia dapat mengingkari klausul tersebut kemudian.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc4-7bf9-bd08-951ce726df6b", "description": "Mengikuti arahan atasan tanpa menyampaikan pertimbangan apa pun.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc5-71e2-beb3-99e8de2752ea", "description": "Menyetujui perjanjian sekarang dan berharap klausul kedaulatan dapat direvisi beberapa tahun lagi.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Perjanjian ekonomi menguntungkan, tetapi memuat klausul yang mengurangi kedaulatan atas perairan Indonesia.
- Anda anggota delegasi yang memberikan rekomendasi.
- Kriteria: Wawasan Nusantara dan kepentingan nasional.

DITANYAKAN:
Rekomendasi yang menjaga kedaulatan sekaligus kepentingan ekonomi.

JAWAB:
1. Wawasan Nusantara memandang wilayah darat, laut, dan udara sebagai satu kesatuan yang berdaulat; kedaulatan tidak boleh ditukar dengan keuntungan ekonomi.
2. Kepentingan ekonomi tetap penting, sehingga langkah terbaik adalah menolak klausul yang bermasalah dan merundingkan ulang, bukan menolak seluruh kerja sama.
3. Opsi B menjaga kedaulatan sekaligus membuka jalan bagi manfaat ekonomi secara bermartabat.

Jadi, jawaban yang tepat adalah (B) Menolak klausul yang mengurangi kedaulatan dan mengupayakan perundingan ulang agar kerja sama ekonomi tetap berjalan tanpa mengorbankan kedaulatan.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan kedaulatan demi keuntungan ekonomi bertentangan dengan Wawasan Nusantara.
- (C) Menandatangani dengan niat mengingkari tidak beritikad baik dan merusak kredibilitas diplomasi.
- (D) Delegasi wajib memberi pertimbangan profesional demi kepentingan nasional.
- (E) Menyetujui klausul yang merugikan kedaulatan dengan harapan direvisi kemudian sangat berisiko.', status='aktif', quality_score=4, quality_notes='Revisi: klausul kedaulatan dibuat konkret; kunci B digabung dengan perundingan ulang sehingga opsi E (penundaan) dan C (celah hukum) jelas lebih lemah.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8dc3-77cc-92ce-805533f14c48';
UPDATE questions SET description='Anda anggota delegasi Indonesia dalam perundingan kerja sama ekonomi dengan negara lain. Rancangan perjanjian menjanjikan keuntungan ekonomi besar, tetapi memuat klausul yang mengizinkan pihak asing mengendalikan kebijakan di wilayah perairan Indonesia. Rekomendasi yang paling sesuai dengan Wawasan Nusantara dan kepentingan nasional adalah...', explanation='DIKETAHUI:
- Perjanjian ekonomi menguntungkan, tetapi memuat klausul yang mengurangi kedaulatan atas perairan Indonesia.
- Anda anggota delegasi yang memberikan rekomendasi.
- Kriteria: Wawasan Nusantara dan kepentingan nasional.

DITANYAKAN:
Rekomendasi yang menjaga kedaulatan sekaligus kepentingan ekonomi.

JAWAB:
1. Wawasan Nusantara memandang wilayah darat, laut, dan udara sebagai satu kesatuan yang berdaulat; kedaulatan tidak boleh ditukar dengan keuntungan ekonomi.
2. Kepentingan ekonomi tetap penting, sehingga langkah terbaik adalah menolak klausul yang bermasalah dan merundingkan ulang, bukan menolak seluruh kerja sama.
3. Opsi B menjaga kedaulatan sekaligus membuka jalan bagi manfaat ekonomi secara bermartabat.

Jadi, jawaban yang tepat adalah (B) Menolak klausul yang mengurangi kedaulatan dan mengupayakan perundingan ulang agar kerja sama ekonomi tetap berjalan tanpa mengorbankan kedaulatan.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan kedaulatan demi keuntungan ekonomi bertentangan dengan Wawasan Nusantara.
- (C) Menandatangani dengan niat mengingkari tidak beritikad baik dan merusak kredibilitas diplomasi.
- (D) Delegasi wajib memberi pertimbangan profesional demi kepentingan nasional.
- (E) Menyetujui klausul yang merugikan kedaulatan dengan harapan direvisi kemudian sangat berisiko.', updated_at=now() WHERE id='019993b1-83c1-7675-ac10-65f153ed5317';
UPDATE answers SET description='Menyetujui perjanjian karena keuntungan ekonomi lebih mendesak.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c1-7675-ac10-65f153ed5317' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak klausul yang mengurangi kedaulatan dan mengupayakan perundingan ulang agar kerja sama ekonomi tetap berjalan tanpa mengorbankan kedaulatan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c1-7675-ac10-65f153ed5317' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menandatangani perjanjian, lalu mencari celah hukum agar Indonesia dapat mengingkari klausul tersebut kemudian.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c1-7675-ac10-65f153ed5317' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengikuti arahan atasan tanpa menyampaikan pertimbangan apa pun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c1-7675-ac10-65f153ed5317' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyetujui perjanjian sekarang dan berharap klausul kedaulatan dapat direvisi beberapa tahun lagi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c1-7675-ac10-65f153ed5317' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Anda anggota delegasi Indonesia dalam perundingan kerja sama ekonomi dengan negara lain. Rancangan perjanjian menjanjikan keuntungan ekonomi besar, tetapi memuat klausul yang mengizinkan pihak asing mengendalikan kebijakan di wilayah perairan Indonesia. Rekomendasi yang paling sesuai dengan Wawasan Nusantara dan kepentingan nasional adalah...', explanation='DIKETAHUI:
- Perjanjian ekonomi menguntungkan, tetapi memuat klausul yang mengurangi kedaulatan atas perairan Indonesia.
- Anda anggota delegasi yang memberikan rekomendasi.
- Kriteria: Wawasan Nusantara dan kepentingan nasional.

DITANYAKAN:
Rekomendasi yang menjaga kedaulatan sekaligus kepentingan ekonomi.

JAWAB:
1. Wawasan Nusantara memandang wilayah darat, laut, dan udara sebagai satu kesatuan yang berdaulat; kedaulatan tidak boleh ditukar dengan keuntungan ekonomi.
2. Kepentingan ekonomi tetap penting, sehingga langkah terbaik adalah menolak klausul yang bermasalah dan merundingkan ulang, bukan menolak seluruh kerja sama.
3. Opsi B menjaga kedaulatan sekaligus membuka jalan bagi manfaat ekonomi secara bermartabat.

Jadi, jawaban yang tepat adalah (B) Menolak klausul yang mengurangi kedaulatan dan mengupayakan perundingan ulang agar kerja sama ekonomi tetap berjalan tanpa mengorbankan kedaulatan.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan kedaulatan demi keuntungan ekonomi bertentangan dengan Wawasan Nusantara.
- (C) Menandatangani dengan niat mengingkari tidak beritikad baik dan merusak kredibilitas diplomasi.
- (D) Delegasi wajib memberi pertimbangan profesional demi kepentingan nasional.
- (E) Menyetujui klausul yang merugikan kedaulatan dengan harapan direvisi kemudian sangat berisiko.', updated_at=now() WHERE id='019983d1-8dc3-77cc-92ce-805533f14c48';
UPDATE answers SET description='Menyetujui perjanjian karena keuntungan ekonomi lebih mendesak.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc3-77cc-92ce-805533f14c48' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak klausul yang mengurangi kedaulatan dan mengupayakan perundingan ulang agar kerja sama ekonomi tetap berjalan tanpa mengorbankan kedaulatan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc3-77cc-92ce-805533f14c48' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menandatangani perjanjian, lalu mencari celah hukum agar Indonesia dapat mengingkari klausul tersebut kemudian.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc3-77cc-92ce-805533f14c48' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengikuti arahan atasan tanpa menyampaikan pertimbangan apa pun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc3-77cc-92ce-805533f14c48' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyetujui perjanjian sekarang dan berharap klausul kedaulatan dapat direvisi beberapa tahun lagi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc3-77cc-92ce-805533f14c48' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda mendapat tawaran kerja pada proyek pembangunan di Kalimantan, sedangkan orang tua ingin Anda tetap di Jawa karena menganggap kemajuan hanya ada di Jawa. Pandangan yang paling mencerminkan Wawasan Nusantara dalam menimbang tawaran tersebut adalah...', options='[{"id": "019b0657-ec18-7dc7-9d03-fdbfd1f11b31", "description": "Bekerja di luar Jawa dianggap kemunduran karena pusat kemajuan hanya di Jawa.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec19-734f-8319-99dd2c311a78", "description": "Bersedia ke Kalimantan hanya bila ditempatkan di kawasan kota baru yang modern, dan menolak bila ditempatkan di daerah lain di luar Jawa.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec19-77f5-9a11-7311f3840f34", "description": "Pembangunan di Kalimantan dianggap hanya urusan warga Kalimantan.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec19-7cd3-ae86-df001f29c071", "description": "Menolak merantau karena enggan bergaul dengan masyarakat dari suku yang berbeda.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec1a-7209-a1b1-c2a36f276991", "description": "Memandang seluruh wilayah Indonesia sebagai satu kesatuan, sehingga bersedia berkarya di luar Jawa demi pemerataan pembangunan sambil tetap menjaga komunikasi dan bakti kepada orang tua.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Tawaran kerja pada proyek pembangunan di Kalimantan.
- Orang tua berpandangan Jawa-sentris.
- Kriteria: Wawasan Nusantara.

DITANYAKAN:
Pandangan yang sesuai dengan Wawasan Nusantara.

JAWAB:
1. Wawasan Nusantara memandang Indonesia sebagai satu kesatuan wilayah, bangsa, dan pembangunan; setiap daerah sama penting bagi kemajuan nasional.
2. Pemerataan pembangunan membutuhkan kesediaan warga berkarya di mana pun di Indonesia, tanpa mengabaikan bakti kepada orang tua.
3. Opsi E mencerminkan pandangan tersebut secara utuh.

Jadi, jawaban yang tepat adalah (E) Memandang seluruh wilayah Indonesia sebagai satu kesatuan, sehingga bersedia berkarya di luar Jawa demi pemerataan pembangunan sambil tetap menjaga komunikasi dan bakti kepada orang tua.

Mengapa opsi lain kurang tepat:
- (A) Pandangan Jawa-sentris bertentangan dengan kesatuan wilayah dan pemerataan.
- (B) Memilih-milih wilayah berdasarkan kemewahan menunjukkan pandangan yang belum melihat semua daerah setara.
- (C) Pandangan kedaerahan sempit bertentangan dengan Wawasan Nusantara.
- (D) Sikap primordial menghambat persatuan bangsa.', status='aktif', quality_score=4, quality_notes='Revisi: soal pilihan hidup diubah menjadi pandangan yang mencerminkan Wawasan Nusantara; opsi pengecoh berisi pandangan Jawa-sentris, kedaerahan, primordial, dan selektif sehingga kunci B tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ec18-773a-95e9-b5d31593c535';
UPDATE questions SET description='Anda mendapat tawaran kerja pada proyek pembangunan di Kalimantan, sedangkan orang tua ingin Anda tetap di Jawa karena menganggap kemajuan hanya ada di Jawa. Pandangan yang paling mencerminkan Wawasan Nusantara dalam menimbang tawaran tersebut adalah...', explanation='DIKETAHUI:
- Tawaran kerja pada proyek pembangunan di Kalimantan.
- Orang tua berpandangan Jawa-sentris.
- Kriteria: Wawasan Nusantara.

DITANYAKAN:
Pandangan yang sesuai dengan Wawasan Nusantara.

JAWAB:
1. Wawasan Nusantara memandang Indonesia sebagai satu kesatuan wilayah, bangsa, dan pembangunan; setiap daerah sama penting bagi kemajuan nasional.
2. Pemerataan pembangunan membutuhkan kesediaan warga berkarya di mana pun di Indonesia, tanpa mengabaikan bakti kepada orang tua.
3. Opsi E mencerminkan pandangan tersebut secara utuh.

Jadi, jawaban yang tepat adalah (E) Memandang seluruh wilayah Indonesia sebagai satu kesatuan, sehingga bersedia berkarya di luar Jawa demi pemerataan pembangunan sambil tetap menjaga komunikasi dan bakti kepada orang tua.

Mengapa opsi lain kurang tepat:
- (A) Pandangan Jawa-sentris bertentangan dengan kesatuan wilayah dan pemerataan.
- (B) Memilih-milih wilayah berdasarkan kemewahan menunjukkan pandangan yang belum melihat semua daerah setara.
- (C) Pandangan kedaerahan sempit bertentangan dengan Wawasan Nusantara.
- (D) Sikap primordial menghambat persatuan bangsa.', updated_at=now() WHERE id='019b0657-ec18-773a-95e9-b5d31593c535';
UPDATE answers SET description='Bekerja di luar Jawa dianggap kemunduran karena pusat kemajuan hanya di Jawa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec18-773a-95e9-b5d31593c535' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Bersedia ke Kalimantan hanya bila ditempatkan di kawasan kota baru yang modern, dan menolak bila ditempatkan di daerah lain di luar Jawa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec18-773a-95e9-b5d31593c535' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Pembangunan di Kalimantan dianggap hanya urusan warga Kalimantan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec18-773a-95e9-b5d31593c535' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menolak merantau karena enggan bergaul dengan masyarakat dari suku yang berbeda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec18-773a-95e9-b5d31593c535' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Memandang seluruh wilayah Indonesia sebagai satu kesatuan, sehingga bersedia berkarya di luar Jawa demi pemerataan pembangunan sambil tetap menjaga komunikasi dan bakti kepada orang tua.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec18-773a-95e9-b5d31593c535' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sebuah perusahaan tambang multinasional menawarkan investasi besar di wilayah perbatasan dengan syarat seluruh pengelolaan dan pemanfaatan sumber daya alamnya dikendalikan sepenuhnya oleh perusahaan tersebut. Dari sudut pandang ketahanan nasional, dilema ini paling tepat dipahami sebagai ketegangan antara ...', options='[{"id": "019983d1-6982-78a8-9cdf-c4ba708fd67b", "description": "Gatra ideologi dan gatra pertahanan keamanan.", "isCorrect": false, "point": 1}, {"id": "019983d1-6982-7e2a-81bb-37aae5ceca92", "description": "Kebutuhan modal untuk pembangunan ekonomi dan penguasaan negara atas sumber kekayaan alam (Pasal 33 ayat 3).", "isCorrect": true, "point": 1}, {"id": "019983d1-6983-73c4-93a5-4e618dddb9c7", "description": "Gatra demografi dan gatra sosial budaya.", "isCorrect": false, "point": 1}, {"id": "019983d1-6983-78e0-b319-989451b5a338", "description": "Integrasi nasional dan isolasi global.", "isCorrect": false, "point": 1}, {"id": "019983d1-6983-7dbe-9740-2212d0580fee", "description": "Keadilan sosial dan kebebasan individu.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Tawaran investasi besar di wilayah perbatasan.
- Syarat: pengelolaan SDA sepenuhnya dikendalikan perusahaan asing.
- Kerangka: ketahanan nasional.

DITANYAKAN:
Pasangan kepentingan yang saling bertentangan dalam kasus ini.

JAWAB:
1. Di satu sisi, investasi menyediakan modal untuk pembangunan ekonomi (gatra ekonomi).
2. Di sisi lain, Pasal 33 ayat (3) UUD NRI 1945 menetapkan bumi, air, dan kekayaan alam dikuasai negara untuk sebesar-besar kemakmuran rakyat; menyerahkan kendali penuh kepada asing mengurangi penguasaan negara atas SKA (gatra sumber kekayaan alam).
3. Jadi, ketegangannya adalah antara kebutuhan modal pembangunan dan penguasaan negara atas sumber kekayaan alam.

Jadi, jawaban yang tepat adalah (B) Kebutuhan modal untuk pembangunan ekonomi dan penguasaan negara atas sumber kekayaan alam (Pasal 33 ayat 3).

Mengapa opsi lain kurang tepat:
- (A) Kasus ini tidak terutama menyangkut ideologi.
- (C) Kasus ini tidak berkaitan dengan kependudukan atau sosial budaya.
- (D) Menerima atau menolak investasi bukan soal isolasi global.
- (E) Kasus ini tidak menyangkut kebebasan individu.', status='aktif', quality_score=5, quality_notes='Revisi: opsi A dan B yang tumpang tindih diganti; kunci B dirumuskan sebagai pasangan yang benar-benar bertentangan (modal pembangunan vs penguasaan negara atas SDA, Pasal 33 ayat 3).', reviewed_at=now(), updated_at=now() WHERE id='019983d1-6981-7761-ab40-d1cf38b462a4';
UPDATE questions SET description='Sebuah perusahaan tambang multinasional menawarkan investasi besar di wilayah perbatasan dengan syarat seluruh pengelolaan dan pemanfaatan sumber daya alamnya dikendalikan sepenuhnya oleh perusahaan tersebut. Dari sudut pandang ketahanan nasional, dilema ini paling tepat dipahami sebagai ketegangan antara ...', explanation='DIKETAHUI:
- Tawaran investasi besar di wilayah perbatasan.
- Syarat: pengelolaan SDA sepenuhnya dikendalikan perusahaan asing.
- Kerangka: ketahanan nasional.

DITANYAKAN:
Pasangan kepentingan yang saling bertentangan dalam kasus ini.

JAWAB:
1. Di satu sisi, investasi menyediakan modal untuk pembangunan ekonomi (gatra ekonomi).
2. Di sisi lain, Pasal 33 ayat (3) UUD NRI 1945 menetapkan bumi, air, dan kekayaan alam dikuasai negara untuk sebesar-besar kemakmuran rakyat; menyerahkan kendali penuh kepada asing mengurangi penguasaan negara atas SKA (gatra sumber kekayaan alam).
3. Jadi, ketegangannya adalah antara kebutuhan modal pembangunan dan penguasaan negara atas sumber kekayaan alam.

Jadi, jawaban yang tepat adalah (B) Kebutuhan modal untuk pembangunan ekonomi dan penguasaan negara atas sumber kekayaan alam (Pasal 33 ayat 3).

Mengapa opsi lain kurang tepat:
- (A) Kasus ini tidak terutama menyangkut ideologi.
- (C) Kasus ini tidak berkaitan dengan kependudukan atau sosial budaya.
- (D) Menerima atau menolak investasi bukan soal isolasi global.
- (E) Kasus ini tidak menyangkut kebebasan individu.', updated_at=now() WHERE id='019983d1-6981-7761-ab40-d1cf38b462a4';
UPDATE answers SET description='Gatra ideologi dan gatra pertahanan keamanan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6981-7761-ab40-d1cf38b462a4' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Kebutuhan modal untuk pembangunan ekonomi dan penguasaan negara atas sumber kekayaan alam (Pasal 33 ayat 3).', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6981-7761-ab40-d1cf38b462a4' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Gatra demografi dan gatra sosial budaya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6981-7761-ab40-d1cf38b462a4' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Integrasi nasional dan isolasi global.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6981-7761-ab40-d1cf38b462a4' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Keadilan sosial dan kebebasan individu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6981-7761-ab40-d1cf38b462a4' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Pemerintah ingin memperkuat semangat bela negara di kalangan warga. Sebagian warga khawatir akan diwajibkan mengikuti latihan militer, sedangkan sebagian lain berpendapat bela negara sepenuhnya urusan sukarela. Kebijakan yang paling sesuai dengan Pasal 27 ayat (3) UUD NRI 1945 dan UU No. 23 Tahun 2019 tentang Pengelolaan Sumber Daya Nasional untuk Pertahanan Negara adalah...', options='[{"id": "019983d1-6950-7863-a1c3-1614a5216b4b", "description": "Menerapkan wajib militer bagi seluruh warga negara tanpa terkecuali.", "isCorrect": false, "point": 1}, {"id": "019983d1-6950-7f0b-abf3-a479e786a73c", "description": "Membatalkan seluruh program bela negara karena dianggap melanggar hak asasi manusia.", "isCorrect": false, "point": 1}, {"id": "019983d1-6951-7577-a29c-77055f9e2dba", "description": "Menanamkan nilai bela negara melalui pendidikan kewarganegaraan dan pengabdian sesuai profesi, sedangkan keikutsertaan dalam Komponen Cadangan tetap bersifat sukarela.", "isCorrect": true, "point": 1}, {"id": "019983d1-6951-7a03-9ff3-eee8f94ea59e", "description": "Menyatakan bela negara bukan kewajiban warga sehingga negara cukup menunggu partisipasi sukarela.", "isCorrect": false, "point": 1}, {"id": "019983d1-6952-71cc-8a69-dbea0a64a9af", "description": "Menyerahkan pelatihan bela negara kepada organisasi kemasyarakatan tanpa pengawasan negara.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Pemerintah ingin memperkuat semangat bela negara.
- Ada kekhawatiran wajib militer dan pendapat bahwa bela negara murni sukarela.
- Dasar: Pasal 27 ayat (3) UUD NRI 1945 dan UU No. 23 Tahun 2019.

DITANYAKAN:
Kebijakan bela negara yang sesuai konstitusi dan undang-undang.

JAWAB:
1. Pasal 27 ayat (3) UUD NRI 1945: setiap warga negara berhak dan wajib ikut serta dalam upaya pembelaan negara. Jadi, bela negara adalah hak sekaligus kewajiban.
2. UU No. 23 Tahun 2019 menyelenggarakan keikutsertaan warga dalam bela negara antara lain melalui pendidikan kewarganegaraan dan pengabdian sesuai profesi; pelatihan dasar kemiliteran diikuti warga yang mendaftar sebagai calon Komponen Cadangan, dan pendaftaran itu bersifat sukarela.
3. Opsi C sesuai dengan kedua dasar hukum tersebut: nilai bela negara ditanamkan kepada semua warga, tanpa memaksa semua warga mengikuti latihan militer.

Jadi, jawaban yang tepat adalah (C) Menanamkan nilai bela negara melalui pendidikan kewarganegaraan dan pengabdian sesuai profesi, sedangkan keikutsertaan dalam Komponen Cadangan tetap bersifat sukarela.

Mengapa opsi lain kurang tepat:
- (A) Undang-undang tidak menetapkan wajib militer bagi seluruh warga negara.
- (B) Bela negara adalah amanat konstitusi, bukan pelanggaran HAM.
- (D) Keliru, karena Pasal 27 ayat (3) menyatakan bela negara adalah hak dan kewajiban warga negara.
- (E) Penyelenggaraan bela negara adalah tanggung jawab negara dan tidak boleh lepas dari pengawasannya.', status='aktif', quality_score=4, quality_notes='Revisi: kunci ''sukarela + insentif besar'' diganti rumusan yang akurat secara hukum (Pasal 27 ayat 3, UU 23/2019: pendidikan kewarganegaraan, pengabdian sesuai profesi, Komponen Cadangan sukarela); opsi E yang mirip kunci diganti.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-6950-73f9-a0cb-eb5c8511b7f7';
UPDATE questions SET description='Pemerintah ingin memperkuat semangat bela negara di kalangan warga. Sebagian warga khawatir akan diwajibkan mengikuti latihan militer, sedangkan sebagian lain berpendapat bela negara sepenuhnya urusan sukarela. Kebijakan yang paling sesuai dengan Pasal 27 ayat (3) UUD NRI 1945 dan UU No. 23 Tahun 2019 tentang Pengelolaan Sumber Daya Nasional untuk Pertahanan Negara adalah...', explanation='DIKETAHUI:
- Pemerintah ingin memperkuat semangat bela negara.
- Ada kekhawatiran wajib militer dan pendapat bahwa bela negara murni sukarela.
- Dasar: Pasal 27 ayat (3) UUD NRI 1945 dan UU No. 23 Tahun 2019.

DITANYAKAN:
Kebijakan bela negara yang sesuai konstitusi dan undang-undang.

JAWAB:
1. Pasal 27 ayat (3) UUD NRI 1945: setiap warga negara berhak dan wajib ikut serta dalam upaya pembelaan negara. Jadi, bela negara adalah hak sekaligus kewajiban.
2. UU No. 23 Tahun 2019 menyelenggarakan keikutsertaan warga dalam bela negara antara lain melalui pendidikan kewarganegaraan dan pengabdian sesuai profesi; pelatihan dasar kemiliteran diikuti warga yang mendaftar sebagai calon Komponen Cadangan, dan pendaftaran itu bersifat sukarela.
3. Opsi C sesuai dengan kedua dasar hukum tersebut: nilai bela negara ditanamkan kepada semua warga, tanpa memaksa semua warga mengikuti latihan militer.

Jadi, jawaban yang tepat adalah (C) Menanamkan nilai bela negara melalui pendidikan kewarganegaraan dan pengabdian sesuai profesi, sedangkan keikutsertaan dalam Komponen Cadangan tetap bersifat sukarela.

Mengapa opsi lain kurang tepat:
- (A) Undang-undang tidak menetapkan wajib militer bagi seluruh warga negara.
- (B) Bela negara adalah amanat konstitusi, bukan pelanggaran HAM.
- (D) Keliru, karena Pasal 27 ayat (3) menyatakan bela negara adalah hak dan kewajiban warga negara.
- (E) Penyelenggaraan bela negara adalah tanggung jawab negara dan tidak boleh lepas dari pengawasannya.', updated_at=now() WHERE id='019983d1-6950-73f9-a0cb-eb5c8511b7f7';
UPDATE answers SET description='Menerapkan wajib militer bagi seluruh warga negara tanpa terkecuali.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6950-73f9-a0cb-eb5c8511b7f7' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membatalkan seluruh program bela negara karena dianggap melanggar hak asasi manusia.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6950-73f9-a0cb-eb5c8511b7f7' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menanamkan nilai bela negara melalui pendidikan kewarganegaraan dan pengabdian sesuai profesi, sedangkan keikutsertaan dalam Komponen Cadangan tetap bersifat sukarela.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6950-73f9-a0cb-eb5c8511b7f7' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyatakan bela negara bukan kewajiban warga sehingga negara cukup menunggu partisipasi sukarela.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6950-73f9-a0cb-eb5c8511b7f7' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyerahkan pelatihan bela negara kepada organisasi kemasyarakatan tanpa pengawasan negara.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6950-73f9-a0cb-eb5c8511b7f7' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Pemerintah mengusulkan wajib militer bagi semua warga negara untuk memperkuat pertahanan. Usulan ini dikritik karena dianggap membatasi kebebasan individu menentukan pendidikan dan kariernya. Dilema ini paling tepat digambarkan sebagai ketegangan antara ...', options='[{"id": "019983d1-6957-7781-916e-1216003eaab7", "description": "Bela negara dan kebebasan beragama.", "isCorrect": false, "point": 1}, {"id": "019983d1-6957-7cd0-a20a-903cf5175272", "description": "Kedaulatan negara dan kedaulatan pangan.", "isCorrect": false, "point": 1}, {"id": "019983d1-6958-7315-90a1-b98f089e5d69", "description": "Pertahanan keamanan dan pemerataan ekonomi.", "isCorrect": false, "point": 1}, {"id": "019983d1-6958-7873-927b-e45acfd45043", "description": "Kepentingan kolektif (pertahanan negara) dan kepentingan pribadi (kebebasan menentukan karier).", "isCorrect": true, "point": 1}, {"id": "019983d1-6959-7107-b454-99c9a0af12c4", "description": "Otonomi daerah dan sentralisasi kekuasaan.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Usulan wajib militer untuk memperkuat pertahanan negara.
- Kritik: membatasi kebebasan individu menentukan pendidikan dan karier.

DITANYAKAN:
Pasangan kepentingan yang saling bertentangan dalam dilema tersebut.

JAWAB:
1. Tujuan wajib militer adalah pertahanan negara, yaitu kepentingan bersama seluruh bangsa (kepentingan kolektif).
2. Kritiknya menyangkut kebebasan setiap orang memilih pendidikan dan pekerjaan (kepentingan pribadi).
3. Jadi, dilemanya adalah ketegangan antara kepentingan kolektif dan kepentingan pribadi.

Jadi, jawaban yang tepat adalah (D) Kepentingan kolektif (pertahanan negara) dan kepentingan pribadi (kebebasan menentukan karier).

Mengapa opsi lain kurang tepat:
- (A) Kritik dalam soal tidak menyangkut kebebasan beragama.
- (B) Kedaulatan pangan tidak berkaitan dengan wajib militer.
- (C) Isu pemerataan ekonomi tidak disebut dalam kasus.
- (E) Kasus ini tidak berkaitan dengan hubungan pusat dan daerah.', status='aktif', quality_score=5, quality_notes='Revisi: opsi B (kedaulatan negara vs HAM) yang dapat dibela diganti pengecoh yang jelas tidak relevan; kunci D diperjelas isinya.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-6957-7376-879f-ab41c6dd2f2b';
UPDATE questions SET description='Pemerintah mengusulkan wajib militer bagi semua warga negara untuk memperkuat pertahanan. Usulan ini dikritik karena dianggap membatasi kebebasan individu menentukan pendidikan dan kariernya. Dilema ini paling tepat digambarkan sebagai ketegangan antara ...', explanation='DIKETAHUI:
- Usulan wajib militer untuk memperkuat pertahanan negara.
- Kritik: membatasi kebebasan individu menentukan pendidikan dan karier.

DITANYAKAN:
Pasangan kepentingan yang saling bertentangan dalam dilema tersebut.

JAWAB:
1. Tujuan wajib militer adalah pertahanan negara, yaitu kepentingan bersama seluruh bangsa (kepentingan kolektif).
2. Kritiknya menyangkut kebebasan setiap orang memilih pendidikan dan pekerjaan (kepentingan pribadi).
3. Jadi, dilemanya adalah ketegangan antara kepentingan kolektif dan kepentingan pribadi.

Jadi, jawaban yang tepat adalah (D) Kepentingan kolektif (pertahanan negara) dan kepentingan pribadi (kebebasan menentukan karier).

Mengapa opsi lain kurang tepat:
- (A) Kritik dalam soal tidak menyangkut kebebasan beragama.
- (B) Kedaulatan pangan tidak berkaitan dengan wajib militer.
- (C) Isu pemerataan ekonomi tidak disebut dalam kasus.
- (E) Kasus ini tidak berkaitan dengan hubungan pusat dan daerah.', updated_at=now() WHERE id='019983d1-6957-7376-879f-ab41c6dd2f2b';
UPDATE answers SET description='Bela negara dan kebebasan beragama.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6957-7376-879f-ab41c6dd2f2b' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Kedaulatan negara dan kedaulatan pangan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6957-7376-879f-ab41c6dd2f2b' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Pertahanan keamanan dan pemerataan ekonomi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6957-7376-879f-ab41c6dd2f2b' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Kepentingan kolektif (pertahanan negara) dan kepentingan pribadi (kebebasan menentukan karier).', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6957-7376-879f-ab41c6dd2f2b' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Otonomi daerah dan sentralisasi kekuasaan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-6957-7376-879f-ab41c6dd2f2b' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Saat terjadi wabah, seorang perawat secara sukarela bersedia ditugaskan di puskesmas daerah terpencil dan bekerja sesuai keahliannya untuk melindungi keselamatan warga. Menurut UU No. 23 Tahun 2019, tindakan perawat tersebut merupakan bentuk keikutsertaan warga negara dalam bela negara melalui ...', options='[{"id": "019983d1-8de4-7e6d-af2a-4041e75ca93a", "description": "Pendidikan kewarganegaraan.", "isCorrect": false, "point": 1}, {"id": "019983d1-8de5-7660-aed5-62b250b1aa20", "description": "Pelatihan dasar kemiliteran.", "isCorrect": false, "point": 1}, {"id": "019983d1-8de5-7aba-a61b-bceadf966b23", "description": "Pengabdian sebagai prajurit TNI.", "isCorrect": false, "point": 1}, {"id": "019983d1-8de6-71ca-8b9e-a9f772e66ed5", "description": "Pengabdian sesuai dengan profesi.", "isCorrect": true, "point": 1}, {"id": "019983d1-8de6-76ee-b6e2-c08b33a88f67", "description": "Pendaftaran sebagai Komponen Cadangan.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Perawat bertugas di daerah terpencil saat wabah.
- Ia bekerja sesuai keahliannya untuk melindungi keselamatan warga.
- Dasar: UU No. 23 Tahun 2019.

DITANYAKAN:
Bentuk keikutsertaan bela negara yang sesuai dengan tindakan perawat tersebut.

JAWAB:
1. UU No. 3 Tahun 2002 tentang Pertahanan Negara dan UU No. 23 Tahun 2019 menyebut keikutsertaan warga negara dalam bela negara diselenggarakan melalui pendidikan kewarganegaraan, pelatihan dasar kemiliteran, pengabdian sebagai prajurit TNI, dan pengabdian sesuai dengan profesi.
2. Perawat tersebut membela negara dengan keahlian profesinya menghadapi ancaman nonmiliter berupa wabah.
3. Jadi, tindakannya termasuk pengabdian sesuai dengan profesi.

Jadi, jawaban yang tepat adalah (D) Pengabdian sesuai dengan profesi.

Mengapa opsi lain kurang tepat:
- (A) Pendidikan kewarganegaraan adalah penanaman nilai melalui jalur pendidikan, bukan kerja profesi.
- (B) Perawat tersebut tidak mengikuti latihan kemiliteran.
- (C) Ia bukan prajurit TNI.
- (E) Komponen Cadangan adalah warga terlatih yang disiapkan untuk memperbesar kekuatan Komponen Utama; perawat ini bekerja dalam profesinya sendiri.', status='aktif', quality_score=5, quality_notes='Revisi besar: butir duplikat soal 019983d1-6950 (wajib vs sukarela bela negara) diganti sudut lain yang masih WSK-19, yaitu bentuk keikutsertaan bela negara menurut UU 23/2019 (pengabdian sesuai profesi).', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8de4-7907-9c97-080f2c54a126';
UPDATE questions SET description='Saat terjadi wabah, seorang perawat secara sukarela bersedia ditugaskan di puskesmas daerah terpencil dan bekerja sesuai keahliannya untuk melindungi keselamatan warga. Menurut UU No. 23 Tahun 2019, tindakan perawat tersebut merupakan bentuk keikutsertaan warga negara dalam bela negara melalui ...', explanation='DIKETAHUI:
- Perawat bertugas di daerah terpencil saat wabah.
- Ia bekerja sesuai keahliannya untuk melindungi keselamatan warga.
- Dasar: UU No. 23 Tahun 2019.

DITANYAKAN:
Bentuk keikutsertaan bela negara yang sesuai dengan tindakan perawat tersebut.

JAWAB:
1. UU No. 3 Tahun 2002 tentang Pertahanan Negara dan UU No. 23 Tahun 2019 menyebut keikutsertaan warga negara dalam bela negara diselenggarakan melalui pendidikan kewarganegaraan, pelatihan dasar kemiliteran, pengabdian sebagai prajurit TNI, dan pengabdian sesuai dengan profesi.
2. Perawat tersebut membela negara dengan keahlian profesinya menghadapi ancaman nonmiliter berupa wabah.
3. Jadi, tindakannya termasuk pengabdian sesuai dengan profesi.

Jadi, jawaban yang tepat adalah (D) Pengabdian sesuai dengan profesi.

Mengapa opsi lain kurang tepat:
- (A) Pendidikan kewarganegaraan adalah penanaman nilai melalui jalur pendidikan, bukan kerja profesi.
- (B) Perawat tersebut tidak mengikuti latihan kemiliteran.
- (C) Ia bukan prajurit TNI.
- (E) Komponen Cadangan adalah warga terlatih yang disiapkan untuk memperbesar kekuatan Komponen Utama; perawat ini bekerja dalam profesinya sendiri.', updated_at=now() WHERE id='019983d1-8de4-7907-9c97-080f2c54a126';
UPDATE answers SET description='Pendidikan kewarganegaraan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de4-7907-9c97-080f2c54a126' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Pelatihan dasar kemiliteran.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de4-7907-9c97-080f2c54a126' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Pengabdian sebagai prajurit TNI.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de4-7907-9c97-080f2c54a126' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Pengabdian sesuai dengan profesi.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de4-7907-9c97-080f2c54a126' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Pendaftaran sebagai Komponen Cadangan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8de4-7907-9c97-080f2c54a126' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang pelajar SMA berprestasi di bidang olahraga ditawari beasiswa penuh oleh klub luar negeri. Belakangan ia mengetahui klub mensyaratkan dirinya berganti kewarganegaraan agar dapat membela tim nasional negara tersebut. Keputusan yang paling sesuai dengan semangat nasionalisme dan bela negara adalah...', options='[{"id": "019993b1-a735-75d0-82b1-fb19ba16447f", "description": "Menerima tawaran tersebut karena kesempatan emas tidak datang dua kali.", "isCorrect": false, "point": 1}, {"id": "019993b1-a735-79c6-b6eb-c120eeb5c058", "description": "Menolak syarat berganti kewarganegaraan, lalu mencari jalur pembinaan atlet nasional atau klub lain yang tidak mensyaratkannya.", "isCorrect": true, "point": 1}, {"id": "019993b1-a735-7e44-bb02-ff0618041a70", "description": "Menerima tawaran dan berjanji kembali ke Indonesia setelah sukses, meski sudah berganti kewarganegaraan.", "isCorrect": false, "point": 1}, {"id": "019993b1-a736-7352-8160-f3eef7d9a08e", "description": "Menerima beasiswa dahulu sambil berharap klub tidak menagih syarat tersebut di kemudian hari.", "isCorrect": false, "point": 1}, {"id": "019993b1-a736-77a1-85bc-8a6aee7dfc81", "description": "Menerima tawaran dan merahasiakan syarat tersebut dari keluarga maupun pemerintah.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Pelajar ditawari beasiswa penuh oleh klub luar negeri.
- Syarat klub: berganti kewarganegaraan untuk membela tim nasional negara lain.
- Kriteria: nasionalisme dan bela negara.

DITANYAKAN:
Keputusan yang paling mencerminkan nasionalisme.

JAWAB:
1. Membela nama bangsa di bidang olahraga adalah salah satu wujud bela negara di luar jalur militer.
2. Menurut UU No. 12 Tahun 2006, WNI kehilangan kewarganegaraannya bila memperoleh kewarganegaraan lain atas kemauan sendiri; berarti ia tidak lagi dapat membela Indonesia.
3. Menolak syarat tersebut sambil tetap mencari jalan lain untuk berkembang adalah sikap nasionalis sekaligus realistis. Opsi B memenuhinya.

Jadi, jawaban yang tepat adalah (B) Menolak syarat berganti kewarganegaraan, lalu mencari jalur pembinaan atlet nasional atau klub lain yang tidak mensyaratkannya.

Mengapa opsi lain kurang tepat:
- (A) Menerima berarti melepas kewarganegaraan dan membela negara lain.
- (C) Janji kembali tidak bermakna karena ia sudah bukan WNI dan telah membela negara lain.
- (D) Berharap syarat tidak ditagih tidak jujur dan berisiko; syarat tetap mengikat.
- (E) Merahasiakan syarat tidak jujur dan tidak menyelesaikan masalah.', status='aktif', quality_score=4, quality_notes='Revisi: ''agenda terselubung'' diperjelas menjadi syarat berganti kewarganegaraan; opsi D diganti sikap spekulatif sehingga kunci B tunggal; dasar UU 12/2006 ditambahkan.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-a735-71b2-b292-953e44229f8a';
UPDATE questions SET description='Seorang pelajar SMA berprestasi di bidang olahraga ditawari beasiswa penuh oleh klub luar negeri. Belakangan ia mengetahui klub mensyaratkan dirinya berganti kewarganegaraan agar dapat membela tim nasional negara tersebut. Keputusan yang paling sesuai dengan semangat nasionalisme dan bela negara adalah...', explanation='DIKETAHUI:
- Pelajar ditawari beasiswa penuh oleh klub luar negeri.
- Syarat klub: berganti kewarganegaraan untuk membela tim nasional negara lain.
- Kriteria: nasionalisme dan bela negara.

DITANYAKAN:
Keputusan yang paling mencerminkan nasionalisme.

JAWAB:
1. Membela nama bangsa di bidang olahraga adalah salah satu wujud bela negara di luar jalur militer.
2. Menurut UU No. 12 Tahun 2006, WNI kehilangan kewarganegaraannya bila memperoleh kewarganegaraan lain atas kemauan sendiri; berarti ia tidak lagi dapat membela Indonesia.
3. Menolak syarat tersebut sambil tetap mencari jalan lain untuk berkembang adalah sikap nasionalis sekaligus realistis. Opsi B memenuhinya.

Jadi, jawaban yang tepat adalah (B) Menolak syarat berganti kewarganegaraan, lalu mencari jalur pembinaan atlet nasional atau klub lain yang tidak mensyaratkannya.

Mengapa opsi lain kurang tepat:
- (A) Menerima berarti melepas kewarganegaraan dan membela negara lain.
- (C) Janji kembali tidak bermakna karena ia sudah bukan WNI dan telah membela negara lain.
- (D) Berharap syarat tidak ditagih tidak jujur dan berisiko; syarat tetap mengikat.
- (E) Merahasiakan syarat tidak jujur dan tidak menyelesaikan masalah.', updated_at=now() WHERE id='019993b1-a735-71b2-b292-953e44229f8a';
UPDATE answers SET description='Menerima tawaran tersebut karena kesempatan emas tidak datang dua kali.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a735-71b2-b292-953e44229f8a' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak syarat berganti kewarganegaraan, lalu mencari jalur pembinaan atlet nasional atau klub lain yang tidak mensyaratkannya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a735-71b2-b292-953e44229f8a' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima tawaran dan berjanji kembali ke Indonesia setelah sukses, meski sudah berganti kewarganegaraan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a735-71b2-b292-953e44229f8a' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menerima beasiswa dahulu sambil berharap klub tidak menagih syarat tersebut di kemudian hari.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a735-71b2-b292-953e44229f8a' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menerima tawaran dan merahasiakan syarat tersebut dari keluarga maupun pemerintah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a735-71b2-b292-953e44229f8a' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda mahasiswa yang bekerja paruh waktu di sebuah perusahaan dan mengetahui perusahaan itu membuang limbah berbahaya ke sungai warga, meski perusahaan berperan besar bagi ekonomi kota. Melaporkannya berisiko membuat Anda kehilangan pekerjaan. Keputusan yang paling sesuai dengan etika dan semangat bela negara adalah...', options='[{"id": "019993b1-a74f-79e2-864c-9dac6744c912", "description": "Mengumpulkan bukti yang sah, lalu melaporkan pencemaran tersebut kepada instansi lingkungan hidup yang berwenang meskipun berisiko kehilangan pekerjaan.", "isCorrect": true, "point": 1}, {"id": "019993b1-a750-710e-ac11-928259894fe3", "description": "Diam dan tetap bekerja seperti biasa.", "isCorrect": false, "point": 1}, {"id": "019993b1-a750-75b1-95d3-507fe64971c4", "description": "Hanya menyampaikan keberatan secara lisan kepada atasan, lalu menganggap urusan selesai.", "isCorrect": false, "point": 1}, {"id": "019993b1-a750-7b7b-b040-deb2d2fb0e0f", "description": "Menyebarkan tuduhan pencemaran di media sosial tanpa bukti.", "isCorrect": false, "point": 1}, {"id": "019993b1-a751-71a2-a7a8-62aeaa63a703", "description": "Menggunakan bukti tersebut untuk meminta kenaikan gaji sebagai imbalan tutup mulut.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Perusahaan membuang limbah berbahaya ke sungai warga.
- Perusahaan berperan besar bagi ekonomi kota.
- Melapor berisiko kehilangan pekerjaan.

DITANYAKAN:
Keputusan yang paling etis dan mencerminkan bela negara.

JAWAB:
1. Setiap orang berhak atas lingkungan hidup yang baik dan sehat (Pasal 28H ayat 1 UUD NRI 1945); UU No. 32 Tahun 2009 memberi hak masyarakat melaporkan dugaan pencemaran dan melindungi orang yang memperjuangkan lingkungan hidup.
2. Bela negara di masa damai mencakup keberanian melindungi kepentingan rakyat dari ancaman nonmiliter seperti kerusakan lingkungan.
3. Laporan yang efektif harus berbukti dan disampaikan kepada instansi berwenang. Opsi A memenuhinya.

Jadi, jawaban yang tepat adalah (A) Mengumpulkan bukti yang sah, lalu melaporkan pencemaran tersebut kepada instansi lingkungan hidup yang berwenang meskipun berisiko kehilangan pekerjaan.

Mengapa opsi lain kurang tepat:
- (B) Diam membiarkan kerugian warga dan lingkungan berlanjut.
- (C) Keberatan lisan tanpa tindak lanjut tidak menghentikan pencemaran.
- (D) Tuduhan tanpa bukti berisiko fitnah dan tidak menyelesaikan masalah.
- (E) Meminta imbalan tutup mulut adalah pemerasan dan perbuatan melawan hukum.', status='aktif', quality_score=4, quality_notes='Revisi: kunci tidak lagi mengharuskan mengundurkan diri; dipertegas ''bukti sah + lapor ke instansi berwenang''; opsi E diganti pemerasan sehingga tidak ada lagi dua opsi yang dapat dibenarkan.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-a74f-724d-8635-c58f3d2db84e';
UPDATE questions SET description='Anda mahasiswa yang bekerja paruh waktu di sebuah perusahaan dan mengetahui perusahaan itu membuang limbah berbahaya ke sungai warga, meski perusahaan berperan besar bagi ekonomi kota. Melaporkannya berisiko membuat Anda kehilangan pekerjaan. Keputusan yang paling sesuai dengan etika dan semangat bela negara adalah...', explanation='DIKETAHUI:
- Perusahaan membuang limbah berbahaya ke sungai warga.
- Perusahaan berperan besar bagi ekonomi kota.
- Melapor berisiko kehilangan pekerjaan.

DITANYAKAN:
Keputusan yang paling etis dan mencerminkan bela negara.

JAWAB:
1. Setiap orang berhak atas lingkungan hidup yang baik dan sehat (Pasal 28H ayat 1 UUD NRI 1945); UU No. 32 Tahun 2009 memberi hak masyarakat melaporkan dugaan pencemaran dan melindungi orang yang memperjuangkan lingkungan hidup.
2. Bela negara di masa damai mencakup keberanian melindungi kepentingan rakyat dari ancaman nonmiliter seperti kerusakan lingkungan.
3. Laporan yang efektif harus berbukti dan disampaikan kepada instansi berwenang. Opsi A memenuhinya.

Jadi, jawaban yang tepat adalah (A) Mengumpulkan bukti yang sah, lalu melaporkan pencemaran tersebut kepada instansi lingkungan hidup yang berwenang meskipun berisiko kehilangan pekerjaan.

Mengapa opsi lain kurang tepat:
- (B) Diam membiarkan kerugian warga dan lingkungan berlanjut.
- (C) Keberatan lisan tanpa tindak lanjut tidak menghentikan pencemaran.
- (D) Tuduhan tanpa bukti berisiko fitnah dan tidak menyelesaikan masalah.
- (E) Meminta imbalan tutup mulut adalah pemerasan dan perbuatan melawan hukum.', updated_at=now() WHERE id='019993b1-a74f-724d-8635-c58f3d2db84e';
UPDATE answers SET description='Mengumpulkan bukti yang sah, lalu melaporkan pencemaran tersebut kepada instansi lingkungan hidup yang berwenang meskipun berisiko kehilangan pekerjaan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a74f-724d-8635-c58f3d2db84e' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Diam dan tetap bekerja seperti biasa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a74f-724d-8635-c58f3d2db84e' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Hanya menyampaikan keberatan secara lisan kepada atasan, lalu menganggap urusan selesai.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a74f-724d-8635-c58f3d2db84e' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyebarkan tuduhan pencemaran di media sosial tanpa bukti.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a74f-724d-8635-c58f3d2db84e' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menggunakan bukti tersebut untuk meminta kenaikan gaji sebagai imbalan tutup mulut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a74f-724d-8635-c58f3d2db84e' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda mengetahui seorang teman sekelas sering membolos karena bekerja paruh waktu untuk membantu ekonomi keluarganya. Tindakan yang paling sesuai dengan semangat bela negara dan keadilan sosial adalah...', options='[{"id": "019993b1-d564-73a5-b133-2fe35b9e6b34", "description": "Mengabaikannya karena itu urusan pribadinya.", "isCorrect": false, "point": 1}, {"id": "019993b1-d564-7833-a465-cf4ca7e81a63", "description": "Berbicara dengannya, lalu bersama wali kelas atau guru BK mencarikan solusi seperti bantuan pendidikan pemerintah atau beasiswa agar ia tetap dapat bersekolah.", "isCorrect": true, "point": 1}, {"id": "019993b1-d564-7e8e-b2b4-e8bbfce8cdc6", "description": "Melaporkannya kepada guru BK agar ia diberi sanksi disiplin.", "isCorrect": false, "point": 1}, {"id": "019993b1-d565-745e-a455-675d81c51dcd", "description": "Menyarankannya berhenti sekolah dan fokus bekerja.", "isCorrect": false, "point": 1}, {"id": "019993b1-d565-79e2-bc73-43e44aabcaee", "description": "Menyarankannya menambah jam kerja dan meminjamkan catatan agar ia tidak perlu masuk kelas.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Teman sering membolos karena bekerja membantu keluarga.
- Kriteria: bela negara dan keadilan sosial.

DITANYAKAN:
Tindakan yang membantu teman tetap memperoleh hak pendidikannya.

JAWAB:
1. Keadilan sosial berarti setiap anak, termasuk dari keluarga kurang mampu, tetap memperoleh hak pendidikan (Pasal 31 ayat 1 UUD NRI 1945).
2. Bela negara di lingkungan sekolah diwujudkan dengan kepedulian dan kerja sama memecahkan masalah sesama warga sekolah.
3. Melibatkan wali kelas atau guru BK membuka akses pada bantuan resmi seperti program bantuan pendidikan pemerintah atau beasiswa. Opsi B paling tepat.

Jadi, jawaban yang tepat adalah (B) Berbicara dengannya, lalu bersama wali kelas atau guru BK mencarikan solusi seperti bantuan pendidikan pemerintah atau beasiswa agar ia tetap dapat bersekolah.

Mengapa opsi lain kurang tepat:
- (A) Tidak peduli bertentangan dengan semangat kebersamaan.
- (C) Sanksi tanpa memahami penyebab tidak menyelesaikan masalah ekonominya.
- (D) Berhenti sekolah mengorbankan hak pendidikannya.
- (E) Menambah jam kerja dan membiarkannya membolos justru menjauhkan dari sekolah.', status='aktif', quality_score=4, quality_notes='Revisi: opsi E (sebelumnya solusi kerja fleksibel yang juga masuk akal) diganti saran yang membuatnya makin sering bolos; kunci B dilengkapi jalur wali kelas/BK dan bantuan resmi.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d563-7d79-9098-a8fcb4fc362f';
UPDATE questions SET description='Anda mengetahui seorang teman sekelas sering membolos karena bekerja paruh waktu untuk membantu ekonomi keluarganya. Tindakan yang paling sesuai dengan semangat bela negara dan keadilan sosial adalah...', explanation='DIKETAHUI:
- Teman sering membolos karena bekerja membantu keluarga.
- Kriteria: bela negara dan keadilan sosial.

DITANYAKAN:
Tindakan yang membantu teman tetap memperoleh hak pendidikannya.

JAWAB:
1. Keadilan sosial berarti setiap anak, termasuk dari keluarga kurang mampu, tetap memperoleh hak pendidikan (Pasal 31 ayat 1 UUD NRI 1945).
2. Bela negara di lingkungan sekolah diwujudkan dengan kepedulian dan kerja sama memecahkan masalah sesama warga sekolah.
3. Melibatkan wali kelas atau guru BK membuka akses pada bantuan resmi seperti program bantuan pendidikan pemerintah atau beasiswa. Opsi B paling tepat.

Jadi, jawaban yang tepat adalah (B) Berbicara dengannya, lalu bersama wali kelas atau guru BK mencarikan solusi seperti bantuan pendidikan pemerintah atau beasiswa agar ia tetap dapat bersekolah.

Mengapa opsi lain kurang tepat:
- (A) Tidak peduli bertentangan dengan semangat kebersamaan.
- (C) Sanksi tanpa memahami penyebab tidak menyelesaikan masalah ekonominya.
- (D) Berhenti sekolah mengorbankan hak pendidikannya.
- (E) Menambah jam kerja dan membiarkannya membolos justru menjauhkan dari sekolah.', updated_at=now() WHERE id='019993b1-d563-7d79-9098-a8fcb4fc362f';
UPDATE answers SET description='Mengabaikannya karena itu urusan pribadinya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d563-7d79-9098-a8fcb4fc362f' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Berbicara dengannya, lalu bersama wali kelas atau guru BK mencarikan solusi seperti bantuan pendidikan pemerintah atau beasiswa agar ia tetap dapat bersekolah.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d563-7d79-9098-a8fcb4fc362f' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Melaporkannya kepada guru BK agar ia diberi sanksi disiplin.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d563-7d79-9098-a8fcb4fc362f' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyarankannya berhenti sekolah dan fokus bekerja.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d563-7d79-9098-a8fcb4fc362f' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyarankannya menambah jam kerja dan meminjamkan catatan agar ia tidak perlu masuk kelas.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d563-7d79-9098-a8fcb4fc362f' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang teman yang sangat cerdas mendapat tawaran beasiswa penuh dari sebuah universitas di luar negeri dengan syarat melepaskan kewarganegaraan Indonesia. Ia bimbang. Saran yang paling sesuai dengan semangat Pasal 27 ayat (3) UUD NRI 1945 tentang hak dan kewajiban ikut serta dalam upaya pembelaan negara adalah...', options='[{"id": "019993b1-d5b6-7753-a1a3-cd9cd866965b", "description": "Menerima tawaran itu karena kesempatan emas jarang datang.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5b6-7ba8-bb46-5c25ae486b43", "description": "Menolak tawaran lalu berhenti melanjutkan pendidikan.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5b7-71c9-a030-2cbf8dcf096d", "description": "Menerima tawaran dan berjanji kembali ke Indonesia setelah sukses.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5b7-76dc-ba63-899084e4410b", "description": "Menerima tawaran tetapi diam-diam tetap menggunakan paspor Indonesia.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5b7-7bdc-a71a-f3c74080c873", "description": "Menolak tawaran yang mensyaratkan pelepasan kewarganegaraan dan mencari beasiswa lain, di dalam maupun luar negeri, yang tidak mensyaratkannya.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Beasiswa luar negeri mensyaratkan pelepasan kewarganegaraan Indonesia.
- Kriteria: semangat Pasal 27 ayat (3) UUD NRI 1945.

DITANYAKAN:
Saran yang paling tepat kepada teman tersebut.

JAWAB:
1. Pasal 27 ayat (3) menegaskan hak dan kewajiban warga negara ikut membela negara; untuk itu seseorang perlu tetap menjadi warga negara dan menyumbangkan kemampuannya bagi bangsa.
2. Melepas kewarganegaraan berarti melepas hak dan kewajiban tersebut. Namun, mengembangkan diri tetap penting, sehingga ia perlu mencari beasiswa lain yang tidak mensyaratkan hal itu.
3. Opsi E mempertahankan kewarganegaraan sekaligus tetap mengejar pendidikan.

Jadi, jawaban yang tepat adalah (E) Menolak tawaran yang mensyaratkan pelepasan kewarganegaraan dan mencari beasiswa lain, di dalam maupun luar negeri, yang tidak mensyaratkannya.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan kewarganegaraan demi kepentingan pribadi.
- (B) Berhenti melanjutkan pendidikan menyia-nyiakan potensi yang dapat diabdikan bagi bangsa.
- (C) Setelah melepas kewarganegaraan, janji kembali tidak memulihkan statusnya sebagai WNI.
- (D) Menggunakan paspor Indonesia setelah memperoleh kewarganegaraan lain melanggar hukum (UU No. 12 Tahun 2006).', status='aktif', quality_score=4, quality_notes='Revisi: opsi D (negosiasi) diganti tindakan melanggar hukum, opsi E dibuat jelas lebih lemah; kunci B dilengkapi alternatif beasiswa lain.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d5b6-71f6-b223-2cdc76e928d4';
UPDATE questions SET description='Seorang teman yang sangat cerdas mendapat tawaran beasiswa penuh dari sebuah universitas di luar negeri dengan syarat melepaskan kewarganegaraan Indonesia. Ia bimbang. Saran yang paling sesuai dengan semangat Pasal 27 ayat (3) UUD NRI 1945 tentang hak dan kewajiban ikut serta dalam upaya pembelaan negara adalah...', explanation='DIKETAHUI:
- Beasiswa luar negeri mensyaratkan pelepasan kewarganegaraan Indonesia.
- Kriteria: semangat Pasal 27 ayat (3) UUD NRI 1945.

DITANYAKAN:
Saran yang paling tepat kepada teman tersebut.

JAWAB:
1. Pasal 27 ayat (3) menegaskan hak dan kewajiban warga negara ikut membela negara; untuk itu seseorang perlu tetap menjadi warga negara dan menyumbangkan kemampuannya bagi bangsa.
2. Melepas kewarganegaraan berarti melepas hak dan kewajiban tersebut. Namun, mengembangkan diri tetap penting, sehingga ia perlu mencari beasiswa lain yang tidak mensyaratkan hal itu.
3. Opsi E mempertahankan kewarganegaraan sekaligus tetap mengejar pendidikan.

Jadi, jawaban yang tepat adalah (E) Menolak tawaran yang mensyaratkan pelepasan kewarganegaraan dan mencari beasiswa lain, di dalam maupun luar negeri, yang tidak mensyaratkannya.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan kewarganegaraan demi kepentingan pribadi.
- (B) Berhenti melanjutkan pendidikan menyia-nyiakan potensi yang dapat diabdikan bagi bangsa.
- (C) Setelah melepas kewarganegaraan, janji kembali tidak memulihkan statusnya sebagai WNI.
- (D) Menggunakan paspor Indonesia setelah memperoleh kewarganegaraan lain melanggar hukum (UU No. 12 Tahun 2006).', updated_at=now() WHERE id='019993b1-d5b6-71f6-b223-2cdc76e928d4';
UPDATE answers SET description='Menerima tawaran itu karena kesempatan emas jarang datang.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b6-71f6-b223-2cdc76e928d4' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak tawaran lalu berhenti melanjutkan pendidikan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b6-71f6-b223-2cdc76e928d4' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima tawaran dan berjanji kembali ke Indonesia setelah sukses.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b6-71f6-b223-2cdc76e928d4' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menerima tawaran tetapi diam-diam tetap menggunakan paspor Indonesia.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b6-71f6-b223-2cdc76e928d4' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menolak tawaran yang mensyaratkan pelepasan kewarganegaraan dan mencari beasiswa lain, di dalam maupun luar negeri, yang tidak mensyaratkannya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5b6-71f6-b223-2cdc76e928d4' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda kader terbaik organisasi kemahasiswaan yang diproyeksikan menjadi ketua cabang. Namun, IPK Anda anjlok dan Anda terancam dikeluarkan dari kampus. Senior mendesak Anda tetap maju karena ''kuliah bisa diulang, momentum tidak''. Keputusan yang paling bertanggung jawab adalah...', options='[{"id": "019afdd0-0bb9-71d7-ba99-3ffb4f6a1408", "description": "Mengambil cuti kuliah satu semester agar dapat fokus membesarkan organisasi.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bb9-756f-9d13-4d1231004896", "description": "Mundur dari pencalonan ketua, memprioritaskan pemulihan akademik, dan tetap berkontribusi sebagai anggota sesuai waktu yang tersedia.", "isCorrect": true, "point": 1}, {"id": "019afdd0-0bb9-782d-a7cb-04c6f4439365", "description": "Tetap maju menjadi ketua sambil melobi dosen agar memberi dispensasi nilai karena status aktivis.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bb9-7b0e-bc78-53aece443e30", "description": "Meminta teman mengerjakan tugas-tugas kuliah Anda agar tetap dapat memimpin organisasi.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bb9-7e18-926d-80d6b99e0780", "description": "Menjadi pengurus inti dengan beban kerja hampir sama dengan ketua sambil berharap nilai membaik dengan sendirinya.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda calon ketua cabang organisasi kemahasiswaan.
- IPK anjlok dan terancam dikeluarkan.
- Senior mendesak tetap maju.

DITANYAKAN:
Keputusan yang paling bertanggung jawab.

JAWAB:
1. Tanggung jawab utama mahasiswa adalah menyelesaikan studi; ancaman dikeluarkan adalah risiko nyata yang harus segera ditangani.
2. Mengurangi beban organisasi secara nyata memberi waktu memulihkan nilai, sedangkan tetap menjadi anggota menjaga kontribusi tanpa mengorbankan studi.
3. Opsi B satu-satunya yang benar-benar mengurangi beban dan tetap jujur.

Jadi, jawaban yang tepat adalah (B) Mundur dari pencalonan ketua, memprioritaskan pemulihan akademik, dan tetap berkontribusi sebagai anggota sesuai waktu yang tersedia.

Mengapa opsi lain kurang tepat:
- (A) Cuti demi organisasi menunda penyelesaian masalah akademik.
- (C) Meminta dispensasi nilai adalah meminta perlakuan istimewa yang tidak adil.
- (D) Menyuruh orang lain mengerjakan tugas adalah kecurangan akademik.
- (E) Beban kerja tetap berat sehingga tidak memulihkan nilai; berharap tanpa usaha tidak bertanggung jawab.', status='aktif', quality_score=4, quality_notes='Revisi: kunci dipindah ke B (mundur dari pencalonan, tetap berkontribusi sebagai anggota); opsi E dibuat jelas lemah (beban tetap berat) sehingga tidak ada lagi dua jawaban.', reviewed_at=now(), updated_at=now() WHERE id='019afdd0-0bb8-7df9-9c75-e9946ce11071';
UPDATE questions SET description='Anda kader terbaik organisasi kemahasiswaan yang diproyeksikan menjadi ketua cabang. Namun, IPK Anda anjlok dan Anda terancam dikeluarkan dari kampus. Senior mendesak Anda tetap maju karena ''kuliah bisa diulang, momentum tidak''. Keputusan yang paling bertanggung jawab adalah...', explanation='DIKETAHUI:
- Anda calon ketua cabang organisasi kemahasiswaan.
- IPK anjlok dan terancam dikeluarkan.
- Senior mendesak tetap maju.

DITANYAKAN:
Keputusan yang paling bertanggung jawab.

JAWAB:
1. Tanggung jawab utama mahasiswa adalah menyelesaikan studi; ancaman dikeluarkan adalah risiko nyata yang harus segera ditangani.
2. Mengurangi beban organisasi secara nyata memberi waktu memulihkan nilai, sedangkan tetap menjadi anggota menjaga kontribusi tanpa mengorbankan studi.
3. Opsi B satu-satunya yang benar-benar mengurangi beban dan tetap jujur.

Jadi, jawaban yang tepat adalah (B) Mundur dari pencalonan ketua, memprioritaskan pemulihan akademik, dan tetap berkontribusi sebagai anggota sesuai waktu yang tersedia.

Mengapa opsi lain kurang tepat:
- (A) Cuti demi organisasi menunda penyelesaian masalah akademik.
- (C) Meminta dispensasi nilai adalah meminta perlakuan istimewa yang tidak adil.
- (D) Menyuruh orang lain mengerjakan tugas adalah kecurangan akademik.
- (E) Beban kerja tetap berat sehingga tidak memulihkan nilai; berharap tanpa usaha tidak bertanggung jawab.', updated_at=now() WHERE id='019afdd0-0bb8-7df9-9c75-e9946ce11071';
UPDATE answers SET description='Mengambil cuti kuliah satu semester agar dapat fokus membesarkan organisasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bb8-7df9-9c75-e9946ce11071' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mundur dari pencalonan ketua, memprioritaskan pemulihan akademik, dan tetap berkontribusi sebagai anggota sesuai waktu yang tersedia.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bb8-7df9-9c75-e9946ce11071' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Tetap maju menjadi ketua sambil melobi dosen agar memberi dispensasi nilai karena status aktivis.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bb8-7df9-9c75-e9946ce11071' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Meminta teman mengerjakan tugas-tugas kuliah Anda agar tetap dapat memimpin organisasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bb8-7df9-9c75-e9946ce11071' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menjadi pengurus inti dengan beban kerja hampir sama dengan ketua sambil berharap nilai membaik dengan sendirinya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bb8-7df9-9c75-e9946ce11071' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Tim SMK Anda menciptakan alat penghemat BBM yang inovatif dan sudah dipatenkan. Perusahaan asing ingin membeli paten tersebut sepenuhnya agar alat diproduksi di negaranya dengan merek asing. Anda tidak memiliki modal untuk produksi massal. Keputusan yang paling tepat untuk menjaga kepemilikan teknologi di tangan bangsa sendiri sekaligus memperoleh modal adalah...', options='[{"id": "019b0657-ebc8-7f08-b601-04bf198e9933", "description": "Menjual seluruh paten kepada perusahaan asing untuk mendapatkan uang secepatnya.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebc9-7716-bcad-9597fd1207d5", "description": "Menolak semua tawaran dan menyimpan alat tersebut sampai suatu saat ada investor lokal, meski tanpa kepastian modal.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebc9-7c07-aa1d-a3bbcb682a2f", "description": "Memberikan lisensi produksi terbatas dengan tetap memegang paten, lalu menggunakan royaltinya untuk mengembangkan produksi di dalam negeri.", "isCorrect": true, "point": 1}, {"id": "019b0657-ebca-749a-abb9-093e8e2f7969", "description": "Menggalang donasi daring untuk produksi skala rumahan tanpa perlindungan hukum yang jelas.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebca-79cb-b963-59a957b4ae80", "description": "Menyerahkan desain alat secara cuma-cuma kepada siapa saja yang mau memproduksinya.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Alat penghemat BBM telah dipatenkan oleh tim SMK.
- Perusahaan asing ingin membeli paten sepenuhnya.
- Kriteria: kepemilikan teknologi tetap di tangan bangsa sendiri dan memperoleh modal.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Menjual paten berarti memindahkan kepemilikan teknologi kepada pihak asing; lisensi hanya memberi izin memproduksi untuk jangka dan syarat tertentu.
2. Dengan lisensi, pemegang paten tetap pemilik teknologi dan memperoleh royalti sebagai modal.
3. Royalti dapat digunakan untuk membangun produksi di dalam negeri, sejalan dengan kemandirian ekonomi. Opsi C memenuhi kedua kriteria.

Jadi, jawaban yang tepat adalah (C) Memberikan lisensi produksi terbatas dengan tetap memegang paten, lalu menggunakan royaltinya untuk mengembangkan produksi di dalam negeri.

Mengapa opsi lain kurang tepat:
- (A) Kepemilikan teknologi berpindah sepenuhnya ke pihak asing.
- (B) Kepemilikan terjaga, tetapi tidak ada kepastian modal sehingga inovasi bisa terbengkalai.
- (D) Modal kecil dan tidak pasti, serta perlindungan hukumnya lemah.
- (E) Menyerahkan cuma-cuma melepas nilai ekonomi dan kendali atas teknologi.', status='aktif', quality_score=4, quality_notes='Revisi: kriteria (kepemilikan + modal) dibuat eksplisit; opsi B diperjelas tanpa kepastian modal sehingga kunci C tunggal; ditambah fakta alat sudah dipatenkan.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ebc8-78bc-b54d-3cb67e55780a';
UPDATE questions SET description='Tim SMK Anda menciptakan alat penghemat BBM yang inovatif dan sudah dipatenkan. Perusahaan asing ingin membeli paten tersebut sepenuhnya agar alat diproduksi di negaranya dengan merek asing. Anda tidak memiliki modal untuk produksi massal. Keputusan yang paling tepat untuk menjaga kepemilikan teknologi di tangan bangsa sendiri sekaligus memperoleh modal adalah...', explanation='DIKETAHUI:
- Alat penghemat BBM telah dipatenkan oleh tim SMK.
- Perusahaan asing ingin membeli paten sepenuhnya.
- Kriteria: kepemilikan teknologi tetap di tangan bangsa sendiri dan memperoleh modal.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Menjual paten berarti memindahkan kepemilikan teknologi kepada pihak asing; lisensi hanya memberi izin memproduksi untuk jangka dan syarat tertentu.
2. Dengan lisensi, pemegang paten tetap pemilik teknologi dan memperoleh royalti sebagai modal.
3. Royalti dapat digunakan untuk membangun produksi di dalam negeri, sejalan dengan kemandirian ekonomi. Opsi C memenuhi kedua kriteria.

Jadi, jawaban yang tepat adalah (C) Memberikan lisensi produksi terbatas dengan tetap memegang paten, lalu menggunakan royaltinya untuk mengembangkan produksi di dalam negeri.

Mengapa opsi lain kurang tepat:
- (A) Kepemilikan teknologi berpindah sepenuhnya ke pihak asing.
- (B) Kepemilikan terjaga, tetapi tidak ada kepastian modal sehingga inovasi bisa terbengkalai.
- (D) Modal kecil dan tidak pasti, serta perlindungan hukumnya lemah.
- (E) Menyerahkan cuma-cuma melepas nilai ekonomi dan kendali atas teknologi.', updated_at=now() WHERE id='019b0657-ebc8-78bc-b54d-3cb67e55780a';
UPDATE answers SET description='Menjual seluruh paten kepada perusahaan asing untuk mendapatkan uang secepatnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebc8-78bc-b54d-3cb67e55780a' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak semua tawaran dan menyimpan alat tersebut sampai suatu saat ada investor lokal, meski tanpa kepastian modal.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebc8-78bc-b54d-3cb67e55780a' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Memberikan lisensi produksi terbatas dengan tetap memegang paten, lalu menggunakan royaltinya untuk mengembangkan produksi di dalam negeri.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebc8-78bc-b54d-3cb67e55780a' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menggalang donasi daring untuk produksi skala rumahan tanpa perlindungan hukum yang jelas.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebc8-78bc-b54d-3cb67e55780a' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyerahkan desain alat secara cuma-cuma kepada siapa saja yang mau memproduksinya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebc8-78bc-b54d-3cb67e55780a' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Keluarga Anda sedang mengalami krisis ekonomi berat. Anda diterima di sekolah kedinasan (gratis, ikatan dinas) di jurusan yang kurang Anda minati, dan di Fakultas Kedokteran sebuah universitas yang biayanya sangat mahal sehingga keluarga harus berutang besar. Keputusan yang paling realistis dan bertanggung jawab, yaitu tidak menjerumuskan keluarga ke dalam utang besar dan menepati komitmen yang dipilih, adalah...', options='[{"id": "019b0657-ebde-7018-a651-f52f06b38e51", "description": "Mencari beasiswa penuh atau keringanan biaya kedokteran sebelum batas daftar ulang; bila tidak diperoleh, mengambil sekolah kedinasan dan menjalaninya dengan sungguh-sungguh.", "isCorrect": true, "point": 1}, {"id": "019b0657-ebde-75d2-a213-d7f8cd369fc2", "description": "Langsung mengambil kedokteran dengan meminjam uang dalam jumlah besar, karena profesi dokter dianggap pasti cepat mengembalikan modal.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebde-7b3e-99db-586753990bdd", "description": "Mengambil sekolah kedinasan dengan rencana keluar di tengah jalan setelah ekonomi keluarga membaik.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebdf-737d-886f-1a56a678ae1a", "description": "Meminta orang tua menjual rumah satu-satunya demi biaya kedokteran.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebdf-78ad-a89f-b777eafdff5f", "description": "Mengambil sekolah kedinasan tetapi menjalaninya setengah hati karena bukan pilihan utama.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Keluarga dalam krisis ekonomi berat.
- Pilihan: sekolah kedinasan gratis dengan ikatan dinas, atau kedokteran berbiaya sangat mahal.
- Kriteria: tidak menimbulkan utang besar dan menepati komitmen yang dipilih.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Mengejar cita-cita tetap layak bila ada pembiayaan yang tidak membebani keluarga, misalnya beasiswa penuh atau keringanan biaya.
2. Bila pembiayaan itu tidak tersedia, pilihan yang tidak menimbulkan utang adalah sekolah kedinasan; ikatan dinas adalah komitmen yang wajib ditepati dengan sungguh-sungguh.
3. Opsi A memenuhi kedua kriteria karena ada rencana yang jelas dan bertanggung jawab.

Jadi, jawaban yang tepat adalah (A) Mencari beasiswa penuh atau keringanan biaya kedokteran sebelum batas daftar ulang; bila tidak diperoleh, mengambil sekolah kedinasan dan menjalaninya dengan sungguh-sungguh.

Mengapa opsi lain kurang tepat:
- (B) Utang besar di tengah krisis justru menjerumuskan keluarga dan asumsinya tidak pasti.
- (C) Merencanakan keluar dari ikatan dinas berarti tidak menepati komitmen.
- (D) Menjual rumah satu-satunya membahayakan keberlangsungan hidup keluarga.
- (E) Menjalani setengah hati tidak menepati komitmen secara sungguh-sungguh.', status='aktif', quality_score=4, quality_notes='Revisi: kriteria (tanpa utang besar + menepati komitmen) dibuat eksplisit; kunci A diganti rencana bertahap yang realistis sehingga opsi gap year/beasiswa yang sebelumnya setara tidak lagi menjadi pesaing.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ebdd-7aee-b286-13c48652ee6f';
UPDATE questions SET description='Keluarga Anda sedang mengalami krisis ekonomi berat. Anda diterima di sekolah kedinasan (gratis, ikatan dinas) di jurusan yang kurang Anda minati, dan di Fakultas Kedokteran sebuah universitas yang biayanya sangat mahal sehingga keluarga harus berutang besar. Keputusan yang paling realistis dan bertanggung jawab, yaitu tidak menjerumuskan keluarga ke dalam utang besar dan menepati komitmen yang dipilih, adalah...', explanation='DIKETAHUI:
- Keluarga dalam krisis ekonomi berat.
- Pilihan: sekolah kedinasan gratis dengan ikatan dinas, atau kedokteran berbiaya sangat mahal.
- Kriteria: tidak menimbulkan utang besar dan menepati komitmen yang dipilih.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Mengejar cita-cita tetap layak bila ada pembiayaan yang tidak membebani keluarga, misalnya beasiswa penuh atau keringanan biaya.
2. Bila pembiayaan itu tidak tersedia, pilihan yang tidak menimbulkan utang adalah sekolah kedinasan; ikatan dinas adalah komitmen yang wajib ditepati dengan sungguh-sungguh.
3. Opsi A memenuhi kedua kriteria karena ada rencana yang jelas dan bertanggung jawab.

Jadi, jawaban yang tepat adalah (A) Mencari beasiswa penuh atau keringanan biaya kedokteran sebelum batas daftar ulang; bila tidak diperoleh, mengambil sekolah kedinasan dan menjalaninya dengan sungguh-sungguh.

Mengapa opsi lain kurang tepat:
- (B) Utang besar di tengah krisis justru menjerumuskan keluarga dan asumsinya tidak pasti.
- (C) Merencanakan keluar dari ikatan dinas berarti tidak menepati komitmen.
- (D) Menjual rumah satu-satunya membahayakan keberlangsungan hidup keluarga.
- (E) Menjalani setengah hati tidak menepati komitmen secara sungguh-sungguh.', updated_at=now() WHERE id='019b0657-ebdd-7aee-b286-13c48652ee6f';
UPDATE answers SET description='Mencari beasiswa penuh atau keringanan biaya kedokteran sebelum batas daftar ulang; bila tidak diperoleh, mengambil sekolah kedinasan dan menjalaninya dengan sungguh-sungguh.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebdd-7aee-b286-13c48652ee6f' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Langsung mengambil kedokteran dengan meminjam uang dalam jumlah besar, karena profesi dokter dianggap pasti cepat mengembalikan modal.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebdd-7aee-b286-13c48652ee6f' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengambil sekolah kedinasan dengan rencana keluar di tengah jalan setelah ekonomi keluarga membaik.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebdd-7aee-b286-13c48652ee6f' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Meminta orang tua menjual rumah satu-satunya demi biaya kedokteran.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebdd-7aee-b286-13c48652ee6f' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengambil sekolah kedinasan tetapi menjalaninya setengah hati karena bukan pilihan utama.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebdd-7aee-b286-13c48652ee6f' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda mahasiswa tingkat akhir yang meneliti energi terbarukan untuk ketahanan energi nasional; dosen menilai riset Anda berpotensi dipatenkan. Seleksi CPNS dibuka, dan orang tua meminta Anda menghentikan riset agar fokus belajar tes CPNS. Keputusan yang paling bertanggung jawab dan tetap menghormati orang tua adalah...', options='[{"id": "019b0657-ebed-7aeb-8464-a5796704f300", "description": "Menghentikan riset sepenuhnya dan membiarkan skripsi terbengkalai demi CPNS.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebed-7f08-babb-f5ce6bbf0435", "description": "Menolak permintaan orang tua tanpa penjelasan dan menghindari pembicaraan dengan mereka.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebee-75d6-8725-7b853c42762c", "description": "Mengerjakan keduanya seadanya meskipun hasil riset dan persiapan tes sama-sama tidak maksimal.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebee-7b5c-b04d-65bf8cebd059", "description": "Meminta dosen menurunkan standar penilaian skripsi agar cepat selesai.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebef-7181-a460-c05d80bce836", "description": "Menjelaskan kepada orang tua dengan data bahwa menuntaskan riset juga pengabdian bagi bangsa, menyusun jadwal agar skripsi selesai tepat waktu, lalu mengikuti seleksi CPNS periode berikutnya.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Riset energi terbarukan berpotensi dipatenkan dan penting bagi ketahanan energi.
- Orang tua meminta riset dihentikan demi persiapan CPNS.
- Kriteria: bertanggung jawab dan menghormati orang tua.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Bertanggung jawab berarti menuntaskan tugas akademik dengan mutu yang baik; riset yang bermanfaat bagi ketahanan energi juga bentuk pengabdian kepada bangsa.
2. Menghormati orang tua berarti menjelaskan pertimbangan secara santun dan memberi rencana yang jelas, bukan menolak tanpa penjelasan.
3. Seleksi CPNS dibuka berkala, sehingga mengikutinya pada periode berikutnya tetap realistis. Opsi E memenuhi kedua kriteria.

Jadi, jawaban yang tepat adalah (E) Menjelaskan kepada orang tua dengan data bahwa menuntaskan riset juga pengabdian bagi bangsa, menyusun jadwal agar skripsi selesai tepat waktu, lalu mengikuti seleksi CPNS periode berikutnya.

Mengapa opsi lain kurang tepat:
- (A) Membiarkan skripsi terbengkalai tidak bertanggung jawab.
- (B) Menolak tanpa penjelasan tidak menghormati orang tua.
- (C) Mengerjakan keduanya seadanya mengorbankan mutu keduanya.
- (D) Meminta penurunan standar mencederai integritas akademik.', status='aktif', quality_score=4, quality_notes='Revisi: kunci lama (mengerjakan keduanya dengan hasil tidak maksimal) diganti; kunci dipindah ke E (dialog dengan orang tua + rencana jelas) dan opsi C dijadikan pengecoh.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ebed-7361-9104-7991cdae991f';
UPDATE questions SET description='Anda mahasiswa tingkat akhir yang meneliti energi terbarukan untuk ketahanan energi nasional; dosen menilai riset Anda berpotensi dipatenkan. Seleksi CPNS dibuka, dan orang tua meminta Anda menghentikan riset agar fokus belajar tes CPNS. Keputusan yang paling bertanggung jawab dan tetap menghormati orang tua adalah...', explanation='DIKETAHUI:
- Riset energi terbarukan berpotensi dipatenkan dan penting bagi ketahanan energi.
- Orang tua meminta riset dihentikan demi persiapan CPNS.
- Kriteria: bertanggung jawab dan menghormati orang tua.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Bertanggung jawab berarti menuntaskan tugas akademik dengan mutu yang baik; riset yang bermanfaat bagi ketahanan energi juga bentuk pengabdian kepada bangsa.
2. Menghormati orang tua berarti menjelaskan pertimbangan secara santun dan memberi rencana yang jelas, bukan menolak tanpa penjelasan.
3. Seleksi CPNS dibuka berkala, sehingga mengikutinya pada periode berikutnya tetap realistis. Opsi E memenuhi kedua kriteria.

Jadi, jawaban yang tepat adalah (E) Menjelaskan kepada orang tua dengan data bahwa menuntaskan riset juga pengabdian bagi bangsa, menyusun jadwal agar skripsi selesai tepat waktu, lalu mengikuti seleksi CPNS periode berikutnya.

Mengapa opsi lain kurang tepat:
- (A) Membiarkan skripsi terbengkalai tidak bertanggung jawab.
- (B) Menolak tanpa penjelasan tidak menghormati orang tua.
- (C) Mengerjakan keduanya seadanya mengorbankan mutu keduanya.
- (D) Meminta penurunan standar mencederai integritas akademik.', updated_at=now() WHERE id='019b0657-ebed-7361-9104-7991cdae991f';
UPDATE answers SET description='Menghentikan riset sepenuhnya dan membiarkan skripsi terbengkalai demi CPNS.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebed-7361-9104-7991cdae991f' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak permintaan orang tua tanpa penjelasan dan menghindari pembicaraan dengan mereka.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebed-7361-9104-7991cdae991f' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengerjakan keduanya seadanya meskipun hasil riset dan persiapan tes sama-sama tidak maksimal.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebed-7361-9104-7991cdae991f' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Meminta dosen menurunkan standar penilaian skripsi agar cepat selesai.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebed-7361-9104-7991cdae991f' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menjelaskan kepada orang tua dengan data bahwa menuntaskan riset juga pengabdian bagi bangsa, menyusun jadwal agar skripsi selesai tepat waktu, lalu mengikuti seleksi CPNS periode berikutnya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebed-7361-9104-7991cdae991f' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda lulusan terbaik jurusan Tata Boga yang bercita-cita membangun usaha kuliner Nusantara. Orang tua mendesak Anda masuk sekolah kedinasan agar menjadi PNS. Anda yakin dapat berkontribusi melalui ekonomi kreatif. Keputusan yang paling tepat, yaitu tetap menghormati orang tua melalui musyawarah dan mengembangkan potensi untuk kemajuan ekonomi bangsa, adalah...', options='[{"id": "019b0bef-1fa3-7f08-a55d-3e87f3bbd5be", "description": "Menuruti orang tua dan menjadikan memasak sekadar hobi akhir pekan tanpa pernah membicarakannya.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa4-7577-a828-9f3e371db10a", "description": "Menolak sekolah kedinasan dan membuka usaha sendiri tanpa restu orang tua.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa4-790e-b899-67ba251bcdc1", "description": "Pura-pura mendaftar sekolah kedinasan lalu sengaja menggagalkan diri saat tes.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa4-7d6e-a0d6-f7df78eea5a7", "description": "Bermusyawarah dengan orang tua, menyampaikan rencana usaha yang terukur, dan menyepakati masa pembuktian beserta target yang jelas.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fa5-7297-9d0a-3a444c6af5c3", "description": "Diam-diam mendaftar sekolah pariwisata tanpa memberi tahu orang tua karena yakin mereka pasti setuju.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda ingin membangun usaha kuliner Nusantara.
- Orang tua mendesak masuk sekolah kedinasan.
- Kriteria: musyawarah dengan orang tua dan mengembangkan potensi untuk ekonomi bangsa.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Bela negara dapat diwujudkan melalui pengabdian sesuai profesi, termasuk wirausaha yang membuka lapangan kerja dan mengangkat kuliner Nusantara.
2. Menghormati orang tua dilakukan dengan musyawarah yang jujur dan terbuka; rencana terukur dan target yang disepakati membuat kekhawatiran orang tua dapat dijawab.
3. Opsi D satu-satunya yang menempuh musyawarah sekaligus mengembangkan potensi.

Jadi, jawaban yang tepat adalah (D) Bermusyawarah dengan orang tua, menyampaikan rencana usaha yang terukur, dan menyepakati masa pembuktian beserta target yang jelas.

Mengapa opsi lain kurang tepat:
- (A) Memendam keinginan tanpa dibicarakan bukan musyawarah dan menyia-nyiakan potensi.
- (B) Bertindak tanpa restu tidak menghormati orang tua.
- (C) Sengaja menggagalkan diri adalah kebohongan.
- (E) Bertindak diam-diam tidak jujur dan bukan hasil musyawarah.', status='aktif', quality_score=4, quality_notes='Revisi: kunci lama (Poltekpar yang tidak tepat disebut kedinasan) diganti; kunci dipindah ke D (musyawarah + target terukur) dan opsi E dijadikan tindakan diam-diam.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fa3-7c5e-9db5-2e5e3c8ea75c';
UPDATE questions SET description='Anda lulusan terbaik jurusan Tata Boga yang bercita-cita membangun usaha kuliner Nusantara. Orang tua mendesak Anda masuk sekolah kedinasan agar menjadi PNS. Anda yakin dapat berkontribusi melalui ekonomi kreatif. Keputusan yang paling tepat, yaitu tetap menghormati orang tua melalui musyawarah dan mengembangkan potensi untuk kemajuan ekonomi bangsa, adalah...', explanation='DIKETAHUI:
- Anda ingin membangun usaha kuliner Nusantara.
- Orang tua mendesak masuk sekolah kedinasan.
- Kriteria: musyawarah dengan orang tua dan mengembangkan potensi untuk ekonomi bangsa.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Bela negara dapat diwujudkan melalui pengabdian sesuai profesi, termasuk wirausaha yang membuka lapangan kerja dan mengangkat kuliner Nusantara.
2. Menghormati orang tua dilakukan dengan musyawarah yang jujur dan terbuka; rencana terukur dan target yang disepakati membuat kekhawatiran orang tua dapat dijawab.
3. Opsi D satu-satunya yang menempuh musyawarah sekaligus mengembangkan potensi.

Jadi, jawaban yang tepat adalah (D) Bermusyawarah dengan orang tua, menyampaikan rencana usaha yang terukur, dan menyepakati masa pembuktian beserta target yang jelas.

Mengapa opsi lain kurang tepat:
- (A) Memendam keinginan tanpa dibicarakan bukan musyawarah dan menyia-nyiakan potensi.
- (B) Bertindak tanpa restu tidak menghormati orang tua.
- (C) Sengaja menggagalkan diri adalah kebohongan.
- (E) Bertindak diam-diam tidak jujur dan bukan hasil musyawarah.', updated_at=now() WHERE id='019b0bef-1fa3-7c5e-9db5-2e5e3c8ea75c';
UPDATE answers SET description='Menuruti orang tua dan menjadikan memasak sekadar hobi akhir pekan tanpa pernah membicarakannya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa3-7c5e-9db5-2e5e3c8ea75c' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak sekolah kedinasan dan membuka usaha sendiri tanpa restu orang tua.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa3-7c5e-9db5-2e5e3c8ea75c' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Pura-pura mendaftar sekolah kedinasan lalu sengaja menggagalkan diri saat tes.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa3-7c5e-9db5-2e5e3c8ea75c' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Bermusyawarah dengan orang tua, menyampaikan rencana usaha yang terukur, dan menyepakati masa pembuktian beserta target yang jelas.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa3-7c5e-9db5-2e5e3c8ea75c' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Diam-diam mendaftar sekolah pariwisata tanpa memberi tahu orang tua karena yakin mereka pasti setuju.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa3-7c5e-9db5-2e5e3c8ea75c' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda siswa SMK Teknik Mesin yang berhasil merakit prototipe motor listrik hemat energi. Anda ingin inovasi ini benar-benar berkembang menjadi produk nasional yang mendukung kemandirian teknologi bangsa. Langkah yang paling tepat untuk mewujudkan tujuan tersebut adalah...', options='[{"id": "019b0bef-1fa8-79f3-abe3-9120a946901e", "description": "Mendaftar menjadi prajurit dengan anggapan institusi tersebut pasti akan mengembangkan motor Anda.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa8-7d98-bbaf-2ee975e5efe9", "description": "Melanjutkan kuliah Teknik Mesin, mendaftarkan perlindungan kekayaan intelektual atas inovasi tersebut, dan mengikutkannya dalam program hibah atau inkubasi riset.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fa9-7240-92b4-a1191bede8a7", "description": "Mendaftar menjadi prajurit lalu kuliah malam tanpa izin kesatuan.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa9-7625-809f-ebb6745f75be", "description": "Berhenti belajar dan memproduksi sendiri tanpa memperbaiki rancangan.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa9-79bf-8cfa-3c6af8ac664f", "description": "Menjual desain tersebut kepada perusahaan asing untuk memperoleh uang secepatnya.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda memiliki prototipe motor listrik hemat energi.
- Tujuan: inovasi berkembang menjadi produk nasional demi kemandirian teknologi.

DITANYAKAN:
Langkah yang paling mendukung tujuan tersebut.

JAWAB:
1. Prototipe perlu disempurnakan dengan ilmu yang lebih dalam, sehingga melanjutkan pendidikan teknik relevan.
2. Perlindungan kekayaan intelektual menjaga kepemilikan inovasi tetap di tangan anak bangsa, sedangkan hibah atau inkubasi riset memberi dukungan dana dan pendampingan menuju produk.
3. Opsi B memuat ketiga langkah tersebut secara realistis.

Jadi, jawaban yang tepat adalah (B) Melanjutkan kuliah Teknik Mesin, mendaftarkan perlindungan kekayaan intelektual atas inovasi tersebut, dan mengikutkannya dalam program hibah atau inkubasi riset.

Mengapa opsi lain kurang tepat:
- (A) Bergantung pada asumsi yang tidak dijamin; tujuan pengembangan inovasi tidak terarah.
- (C) Kuliah tanpa izin kesatuan melanggar disiplin.
- (D) Tanpa penyempurnaan rancangan, produk sulit bersaing dan berkembang.
- (E) Kepemilikan teknologi berpindah ke pihak asing, bertentangan dengan kemandirian bangsa.', status='aktif', quality_score=4, quality_notes='Revisi: kunci lama yang bergantung pada asumsi (TNI pasti mengembangkan motor) diganti; tujuan dibuat eksplisit dan kunci dipindah ke B (kuliah + HKI + hibah/inkubasi).', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fa8-7564-a654-6e37bc104010';
UPDATE questions SET description='Anda siswa SMK Teknik Mesin yang berhasil merakit prototipe motor listrik hemat energi. Anda ingin inovasi ini benar-benar berkembang menjadi produk nasional yang mendukung kemandirian teknologi bangsa. Langkah yang paling tepat untuk mewujudkan tujuan tersebut adalah...', explanation='DIKETAHUI:
- Anda memiliki prototipe motor listrik hemat energi.
- Tujuan: inovasi berkembang menjadi produk nasional demi kemandirian teknologi.

DITANYAKAN:
Langkah yang paling mendukung tujuan tersebut.

JAWAB:
1. Prototipe perlu disempurnakan dengan ilmu yang lebih dalam, sehingga melanjutkan pendidikan teknik relevan.
2. Perlindungan kekayaan intelektual menjaga kepemilikan inovasi tetap di tangan anak bangsa, sedangkan hibah atau inkubasi riset memberi dukungan dana dan pendampingan menuju produk.
3. Opsi B memuat ketiga langkah tersebut secara realistis.

Jadi, jawaban yang tepat adalah (B) Melanjutkan kuliah Teknik Mesin, mendaftarkan perlindungan kekayaan intelektual atas inovasi tersebut, dan mengikutkannya dalam program hibah atau inkubasi riset.

Mengapa opsi lain kurang tepat:
- (A) Bergantung pada asumsi yang tidak dijamin; tujuan pengembangan inovasi tidak terarah.
- (C) Kuliah tanpa izin kesatuan melanggar disiplin.
- (D) Tanpa penyempurnaan rancangan, produk sulit bersaing dan berkembang.
- (E) Kepemilikan teknologi berpindah ke pihak asing, bertentangan dengan kemandirian bangsa.', updated_at=now() WHERE id='019b0bef-1fa8-7564-a654-6e37bc104010';
UPDATE answers SET description='Mendaftar menjadi prajurit dengan anggapan institusi tersebut pasti akan mengembangkan motor Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa8-7564-a654-6e37bc104010' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Melanjutkan kuliah Teknik Mesin, mendaftarkan perlindungan kekayaan intelektual atas inovasi tersebut, dan mengikutkannya dalam program hibah atau inkubasi riset.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa8-7564-a654-6e37bc104010' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mendaftar menjadi prajurit lalu kuliah malam tanpa izin kesatuan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa8-7564-a654-6e37bc104010' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Berhenti belajar dan memproduksi sendiri tanpa memperbaiki rancangan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa8-7564-a654-6e37bc104010' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menjual desain tersebut kepada perusahaan asing untuk memperoleh uang secepatnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa8-7564-a654-6e37bc104010' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda bercita-cita masuk Akpol tahun depan. Tabungan orang tua hanya cukup untuk satu keperluan besar: membayar uang pangkal universitas swasta sekarang atau membiayai persiapan tes. Keputusan yang paling bijak, yaitu tidak mempertaruhkan seluruh tabungan, tetap menyiapkan tes secara serius dan jujur, serta memiliki rencana cadangan, adalah...', options='[{"id": "019b0c6a-abcf-75b5-b399-3519cb9c63a6", "description": "Membayar uang pangkal universitas swasta dan melupakan Akpol.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abcf-7b20-aa0f-adc60a11722d", "description": "Menghabiskan seluruh tabungan untuk bimbingan belajar mahal tanpa rencana cadangan bila gagal.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd0-701f-ab27-66a74a5a0ec7", "description": "Membayar uang pangkal swasta sekarang meskipun uang itu akan hangus bila Anda diterima Akpol.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd0-75c8-9f60-be022062c352", "description": "Mencari ''orang dalam'' yang menjanjikan kelulusan Akpol dengan imbalan uang.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd0-79c1-a4ac-bfb260d8a2aa", "description": "Menyiapkan tes Akpol secara mandiri dan terprogram dengan biaya terjangkau, sambil mendaftar jalur kuliah yang murah atau berbeasiswa sebagai rencana cadangan.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Cita-cita masuk Akpol tahun depan.
- Tabungan orang tua terbatas.
- Kriteria: tidak mempertaruhkan seluruh tabungan, persiapan serius dan jujur, ada rencana cadangan.

DITANYAKAN:
Keputusan yang memenuhi ketiga kriteria.

JAWAB:
1. Persiapan tes dapat dilakukan secara mandiri dan terprogram (latihan fisik, belajar akademik dan psikologi) dengan biaya terjangkau.
2. Rencana cadangan berupa kuliah murah atau berbeasiswa menjaga masa depan bila tes belum berhasil, tanpa menghabiskan tabungan.
3. Opsi E memenuhi ketiga kriteria sekaligus.

Jadi, jawaban yang tepat adalah (E) Menyiapkan tes Akpol secara mandiri dan terprogram dengan biaya terjangkau, sambil mendaftar jalur kuliah yang murah atau berbeasiswa sebagai rencana cadangan.

Mengapa opsi lain kurang tepat:
- (A) Melepas cita-cita tanpa mencoba padahal masih ada jalan yang terjangkau.
- (B) Menghabiskan seluruh tabungan dan tidak memiliki rencana cadangan.
- (C) Berisiko membuang tabungan orang tua.
- (D) Menyuap atau memakai calo adalah perbuatan melawan hukum dan tidak jujur.', status='aktif', quality_score=4, quality_notes='Revisi: klaim keliru ''PTN jalur mandiri pasti lebih murah'' dihapus; kriteria keputusan dibuat eksplisit dan opsi D diganti percaloan sehingga kunci E tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-abce-7e04-972d-b4212666f4ce';
UPDATE questions SET description='Anda bercita-cita masuk Akpol tahun depan. Tabungan orang tua hanya cukup untuk satu keperluan besar: membayar uang pangkal universitas swasta sekarang atau membiayai persiapan tes. Keputusan yang paling bijak, yaitu tidak mempertaruhkan seluruh tabungan, tetap menyiapkan tes secara serius dan jujur, serta memiliki rencana cadangan, adalah...', explanation='DIKETAHUI:
- Cita-cita masuk Akpol tahun depan.
- Tabungan orang tua terbatas.
- Kriteria: tidak mempertaruhkan seluruh tabungan, persiapan serius dan jujur, ada rencana cadangan.

DITANYAKAN:
Keputusan yang memenuhi ketiga kriteria.

JAWAB:
1. Persiapan tes dapat dilakukan secara mandiri dan terprogram (latihan fisik, belajar akademik dan psikologi) dengan biaya terjangkau.
2. Rencana cadangan berupa kuliah murah atau berbeasiswa menjaga masa depan bila tes belum berhasil, tanpa menghabiskan tabungan.
3. Opsi E memenuhi ketiga kriteria sekaligus.

Jadi, jawaban yang tepat adalah (E) Menyiapkan tes Akpol secara mandiri dan terprogram dengan biaya terjangkau, sambil mendaftar jalur kuliah yang murah atau berbeasiswa sebagai rencana cadangan.

Mengapa opsi lain kurang tepat:
- (A) Melepas cita-cita tanpa mencoba padahal masih ada jalan yang terjangkau.
- (B) Menghabiskan seluruh tabungan dan tidak memiliki rencana cadangan.
- (C) Berisiko membuang tabungan orang tua.
- (D) Menyuap atau memakai calo adalah perbuatan melawan hukum dan tidak jujur.', updated_at=now() WHERE id='019b0c6a-abce-7e04-972d-b4212666f4ce';
UPDATE answers SET description='Membayar uang pangkal universitas swasta dan melupakan Akpol.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abce-7e04-972d-b4212666f4ce' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menghabiskan seluruh tabungan untuk bimbingan belajar mahal tanpa rencana cadangan bila gagal.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abce-7e04-972d-b4212666f4ce' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Membayar uang pangkal swasta sekarang meskipun uang itu akan hangus bila Anda diterima Akpol.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abce-7e04-972d-b4212666f4ce' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mencari ''orang dalam'' yang menjanjikan kelulusan Akpol dengan imbalan uang.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abce-7e04-972d-b4212666f4ce' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyiapkan tes Akpol secara mandiri dan terprogram dengan biaya terjangkau, sambil mendaftar jalur kuliah yang murah atau berbeasiswa sebagai rencana cadangan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abce-7e04-972d-b4212666f4ce' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sebuah proyek kecerdasan buatan milik pemerintah dikerjakan oleh perusahaan swasta asing yang menyimpan data sensitif warga dan instansi negara di server luar negeri tanpa pengamanan memadai. Akibatnya, data tersebut berisiko bocor dan disalahgunakan. Berdasarkan jenis ancaman terhadap pertahanan negara, risiko tersebut tergolong ...', options='[{"id": "019983d1-8dde-7e75-9f61-7022c5d83925", "description": "Ancaman militer berupa agresi.", "isCorrect": false, "point": 1}, {"id": "019983d1-8ddf-745c-9f81-7c5185b02d56", "description": "Ancaman militer berupa pemberontakan bersenjata.", "isCorrect": false, "point": 1}, {"id": "019983d1-8ddf-79c6-bb15-db6ce7532fa6", "description": "Ancaman nonmiliter berdimensi teknologi dan informasi.", "isCorrect": true, "point": 1}, {"id": "019983d1-8ddf-7f35-ae1c-a4741892e063", "description": "Ancaman nonmiliter berdimensi keselamatan umum.", "isCorrect": false, "point": 1}, {"id": "019983d1-8de0-74c5-b3a2-ba8857f7f36e", "description": "Ancaman nonmiliter berdimensi sosial budaya.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Proyek AI pemerintah dikerjakan perusahaan swasta asing.
- Data sensitif disimpan di luar negeri tanpa pengamanan memadai sehingga berisiko bocor.
- Yang ditanya: jenis ancaman terhadap pertahanan negara.

DITANYAKAN:
Penggolongan ancaman atas risiko kebocoran data tersebut.

JAWAB:
1. Ancaman militer adalah ancaman yang menggunakan kekuatan bersenjata terorganisasi, seperti agresi, pelanggaran wilayah, pemberontakan bersenjata, sabotase, dan spionase militer.
2. Ancaman nonmiliter tidak menggunakan kekuatan bersenjata dan dapat berdimensi ideologi, politik, ekonomi, sosial budaya, teknologi dan informasi, serta keselamatan umum.
3. Kebocoran data sensitif melalui sistem teknologi tanpa kekuatan bersenjata termasuk ancaman nonmiliter berdimensi teknologi dan informasi (kedaulatan data dan keamanan siber).

Jadi, jawaban yang tepat adalah (C) Ancaman nonmiliter berdimensi teknologi dan informasi.

Mengapa opsi lain kurang tepat:
- (A) Agresi adalah penggunaan kekuatan bersenjata oleh negara lain; kasus ini tidak melibatkannya.
- (B) Pemberontakan bersenjata dilakukan kelompok bersenjata di dalam negeri, tidak sesuai kasus.
- (D) Dimensi keselamatan umum berkaitan dengan bencana alam atau bencana akibat ulah manusia yang mengancam keselamatan jiwa.
- (E) Dimensi sosial budaya berkaitan dengan nilai, budaya, dan kerukunan masyarakat, bukan keamanan data.', status='aktif', quality_score=5, quality_notes='Revisi besar: butir hampir identik dengan 019983d1-694c (AI dan perusahaan asing); diganti sudut lain WSK-20, yaitu penggolongan ancaman (nonmiliter berdimensi teknologi dan informasi) dengan konteks yang sama.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8dde-7918-9b83-52263dde73bc';
UPDATE questions SET description='Sebuah proyek kecerdasan buatan milik pemerintah dikerjakan oleh perusahaan swasta asing yang menyimpan data sensitif warga dan instansi negara di server luar negeri tanpa pengamanan memadai. Akibatnya, data tersebut berisiko bocor dan disalahgunakan. Berdasarkan jenis ancaman terhadap pertahanan negara, risiko tersebut tergolong ...', explanation='DIKETAHUI:
- Proyek AI pemerintah dikerjakan perusahaan swasta asing.
- Data sensitif disimpan di luar negeri tanpa pengamanan memadai sehingga berisiko bocor.
- Yang ditanya: jenis ancaman terhadap pertahanan negara.

DITANYAKAN:
Penggolongan ancaman atas risiko kebocoran data tersebut.

JAWAB:
1. Ancaman militer adalah ancaman yang menggunakan kekuatan bersenjata terorganisasi, seperti agresi, pelanggaran wilayah, pemberontakan bersenjata, sabotase, dan spionase militer.
2. Ancaman nonmiliter tidak menggunakan kekuatan bersenjata dan dapat berdimensi ideologi, politik, ekonomi, sosial budaya, teknologi dan informasi, serta keselamatan umum.
3. Kebocoran data sensitif melalui sistem teknologi tanpa kekuatan bersenjata termasuk ancaman nonmiliter berdimensi teknologi dan informasi (kedaulatan data dan keamanan siber).

Jadi, jawaban yang tepat adalah (C) Ancaman nonmiliter berdimensi teknologi dan informasi.

Mengapa opsi lain kurang tepat:
- (A) Agresi adalah penggunaan kekuatan bersenjata oleh negara lain; kasus ini tidak melibatkannya.
- (B) Pemberontakan bersenjata dilakukan kelompok bersenjata di dalam negeri, tidak sesuai kasus.
- (D) Dimensi keselamatan umum berkaitan dengan bencana alam atau bencana akibat ulah manusia yang mengancam keselamatan jiwa.
- (E) Dimensi sosial budaya berkaitan dengan nilai, budaya, dan kerukunan masyarakat, bukan keamanan data.', updated_at=now() WHERE id='019983d1-8dde-7918-9b83-52263dde73bc';
UPDATE answers SET description='Ancaman militer berupa agresi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dde-7918-9b83-52263dde73bc' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Ancaman militer berupa pemberontakan bersenjata.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dde-7918-9b83-52263dde73bc' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Ancaman nonmiliter berdimensi teknologi dan informasi.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dde-7918-9b83-52263dde73bc' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Ancaman nonmiliter berdimensi keselamatan umum.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dde-7918-9b83-52263dde73bc' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Ancaman nonmiliter berdimensi sosial budaya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dde-7918-9b83-52263dde73bc' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang guru favorit di sekolah Anda sering menyelipkan pandangan yang meremehkan Pancasila dan memuji ideologi lain sebagai solusi terbaik bagi Indonesia. Banyak siswa mulai terpengaruh. Anda tetap menghormati beliau sebagai guru yang cerdas dan berjasa. Langkah yang paling tepat sebagai siswa yang sadar bela negara adalah...', options='[{"id": "019afdd0-0b9b-711b-b993-47dc25b0fb3d", "description": "Merekam diam-diam lalu menyebarkan rekaman tersebut ke media sosial agar viral.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0b9b-766f-ac58-8a32809a31fe", "description": "Mendebat guru tersebut secara frontal di depan kelas hingga beliau terpojok.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0b9b-7abd-b1a4-f07d554c307d", "description": "Membiarkannya sebagai kebebasan akademik dan hanya membentengi diri sendiri.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0b9c-7131-ba06-c6ae6f4f9ed6", "description": "Menyampaikan kekhawatiran secara santun kepada guru tersebut di luar jam pelajaran, dan bila berlanjut, melaporkannya kepada wali kelas atau kepala sekolah agar ditangani sesuai aturan.", "isCorrect": true, "point": 1}, {"id": "019afdd0-0b9c-7827-8b37-3ea01a06698c", "description": "Mengajak teman-teman memboikot pelajaran guru tersebut.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Guru menyelipkan pandangan yang meremehkan Pancasila dan memuji ideologi lain.
- Banyak siswa mulai terpengaruh.
- Anda menghormati guru tersebut.

DITANYAKAN:
Langkah siswa yang tepat, santun, dan efektif.

JAWAB:
1. Pancasila adalah dasar negara; merongrongnya di ruang kelas merupakan ancaman nonmiliter berdimensi ideologi yang perlu dicegah.
2. Sebagai siswa, cara yang beretika adalah menyampaikan langsung secara santun lebih dahulu; bila tidak berubah, persoalan diserahkan kepada pihak sekolah yang berwenang membina guru.
3. Opsi D menjaga rasa hormat kepada guru sekaligus memastikan masalah ditangani melalui jalur resmi.

Jadi, jawaban yang tepat adalah (D) Menyampaikan kekhawatiran secara santun kepada guru tersebut di luar jam pelajaran, dan bila berlanjut, melaporkannya kepada wali kelas atau kepala sekolah agar ditangani sesuai aturan.

Mengapa opsi lain kurang tepat:
- (A) Menyebarkan rekaman ke publik mempermalukan dan bukan jalur penyelesaian yang tepat.
- (B) Debat frontal untuk memojokkan tidak santun dan dapat memicu konflik di kelas.
- (C) Merongrong dasar negara bukan bagian kebebasan akademik yang dapat dibiarkan, apalagi siswa lain mulai terpengaruh.
- (E) Boikot merugikan hak belajar siswa sendiri dan tidak menyelesaikan masalah.', status='aktif', quality_score=4, quality_notes='Revisi: kunci lama (bertanya kritis di depan kelas) yang berisiko konfrontatif diganti; kunci dipindah ke D (sampaikan santun + lapor jalur resmi bila berlanjut) dan opsi lain diberi cacat jelas.', reviewed_at=now(), updated_at=now() WHERE id='019afdd0-0b9a-7a31-a88f-767b4d6da142';
UPDATE questions SET description='Seorang guru favorit di sekolah Anda sering menyelipkan pandangan yang meremehkan Pancasila dan memuji ideologi lain sebagai solusi terbaik bagi Indonesia. Banyak siswa mulai terpengaruh. Anda tetap menghormati beliau sebagai guru yang cerdas dan berjasa. Langkah yang paling tepat sebagai siswa yang sadar bela negara adalah...', explanation='DIKETAHUI:
- Guru menyelipkan pandangan yang meremehkan Pancasila dan memuji ideologi lain.
- Banyak siswa mulai terpengaruh.
- Anda menghormati guru tersebut.

DITANYAKAN:
Langkah siswa yang tepat, santun, dan efektif.

JAWAB:
1. Pancasila adalah dasar negara; merongrongnya di ruang kelas merupakan ancaman nonmiliter berdimensi ideologi yang perlu dicegah.
2. Sebagai siswa, cara yang beretika adalah menyampaikan langsung secara santun lebih dahulu; bila tidak berubah, persoalan diserahkan kepada pihak sekolah yang berwenang membina guru.
3. Opsi D menjaga rasa hormat kepada guru sekaligus memastikan masalah ditangani melalui jalur resmi.

Jadi, jawaban yang tepat adalah (D) Menyampaikan kekhawatiran secara santun kepada guru tersebut di luar jam pelajaran, dan bila berlanjut, melaporkannya kepada wali kelas atau kepala sekolah agar ditangani sesuai aturan.

Mengapa opsi lain kurang tepat:
- (A) Menyebarkan rekaman ke publik mempermalukan dan bukan jalur penyelesaian yang tepat.
- (B) Debat frontal untuk memojokkan tidak santun dan dapat memicu konflik di kelas.
- (C) Merongrong dasar negara bukan bagian kebebasan akademik yang dapat dibiarkan, apalagi siswa lain mulai terpengaruh.
- (E) Boikot merugikan hak belajar siswa sendiri dan tidak menyelesaikan masalah.', updated_at=now() WHERE id='019afdd0-0b9a-7a31-a88f-767b4d6da142';
UPDATE answers SET description='Merekam diam-diam lalu menyebarkan rekaman tersebut ke media sosial agar viral.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9a-7a31-a88f-767b4d6da142' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mendebat guru tersebut secara frontal di depan kelas hingga beliau terpojok.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9a-7a31-a88f-767b4d6da142' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Membiarkannya sebagai kebebasan akademik dan hanya membentengi diri sendiri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9a-7a31-a88f-767b4d6da142' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyampaikan kekhawatiran secara santun kepada guru tersebut di luar jam pelajaran, dan bila berlanjut, melaporkannya kepada wali kelas atau kepala sekolah agar ditangani sesuai aturan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9a-7a31-a88f-767b4d6da142' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengajak teman-teman memboikot pelajaran guru tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9a-7a31-a88f-767b4d6da142' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Selama masa jeda sebelum kuliah, Anda bergabung dengan komunitas pemuda yang rutin mengadakan aksi sosial. Lama-kelamaan, komunitas itu mengajarkan doktrin untuk menolak NKRI dan mengganti Pancasila dengan ideologi lain. Anda sudah akrab dengan anggotanya. Sikap setia pada Pancasila dan NKRI yang paling tepat adalah...', options='[{"id": "019b0657-ec05-7696-b824-160ef1a1f5d2", "description": "Keluar diam-diam dan tidak peduli lagi apa pun yang dilakukan komunitas tersebut.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec05-7e55-b942-2a53495b6a4f", "description": "Tetap bertahan demi kegiatan sosialnya sambil menutup telinga dari doktrinnya.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec06-72b7-a244-4fd64e22e008", "description": "Menolak doktrin itu, mengingatkan teman-teman dengan santun bahwa Pancasila dan NKRI adalah konsensus final bangsa, lalu keluar dan melaporkan kegiatan yang mengarah pada upaya mengganti ideologi negara kepada aparat berwenang.", "isCorrect": true, "point": 1}, {"id": "019b0657-ec06-78b8-8206-c7df610ba361", "description": "Menyebarkan identitas para anggota di media sosial dengan sebutan pengkhianat bangsa.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec06-7e1a-bab8-8003ddba8bee", "description": "Mengajak teman-teman lain bergabung agar suara pro-NKRI di komunitas itu menjadi mayoritas.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Komunitas mengajarkan penolakan NKRI dan penggantian Pancasila.
- Anda sudah akrab dengan anggotanya.

DITANYAKAN:
Sikap yang paling tepat sebagai warga yang setia pada Pancasila dan NKRI.

JAWAB:
1. Pancasila sebagai dasar negara dan bentuk NKRI adalah konsensus nasional; Pasal 37 ayat (5) UUD NRI 1945 menegaskan bentuk NKRI tidak dapat dilakukan perubahan.
2. Upaya mengganti ideologi negara merupakan ancaman serius; warga patut menolaknya, menyadarkan teman secara santun, dan melaporkan kepada aparat bila ada kegiatan nyata ke arah itu.
3. Opsi C memadukan penolakan, upaya menyadarkan, menjaga diri, dan pelaporan melalui jalur hukum.

Jadi, jawaban yang tepat adalah (C) Menolak doktrin itu, mengingatkan teman-teman dengan santun bahwa Pancasila dan NKRI adalah konsensus final bangsa, lalu keluar dan melaporkan kegiatan yang mengarah pada upaya mengganti ideologi negara kepada aparat berwenang.

Mengapa opsi lain kurang tepat:
- (A) Menjaga diri sendiri saja tanpa peduli membiarkan ancaman terhadap ideologi negara berkembang.
- (B) Bertahan di lingkungan yang mendoktrinkan anti-Pancasila berisiko dan memberi kesan mendukung.
- (D) Main hakim sendiri di media sosial melanggar hukum dan tidak menyelesaikan masalah.
- (E) Membawa lebih banyak orang ke komunitas tersebut justru menempatkan mereka dalam risiko terpapar doktrin.', status='aktif', quality_score=4, quality_notes='Revisi: kunci C dilengkapi pelaporan ke aparat sehingga opsi D (lapor) lama tidak lagi menjadi pesaing; opsi D diganti main hakim sendiri; dasar Pasal 37 ayat (5) ditambahkan.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ec05-71f0-8fa6-713bb9472f20';
UPDATE questions SET description='Selama masa jeda sebelum kuliah, Anda bergabung dengan komunitas pemuda yang rutin mengadakan aksi sosial. Lama-kelamaan, komunitas itu mengajarkan doktrin untuk menolak NKRI dan mengganti Pancasila dengan ideologi lain. Anda sudah akrab dengan anggotanya. Sikap setia pada Pancasila dan NKRI yang paling tepat adalah...', explanation='DIKETAHUI:
- Komunitas mengajarkan penolakan NKRI dan penggantian Pancasila.
- Anda sudah akrab dengan anggotanya.

DITANYAKAN:
Sikap yang paling tepat sebagai warga yang setia pada Pancasila dan NKRI.

JAWAB:
1. Pancasila sebagai dasar negara dan bentuk NKRI adalah konsensus nasional; Pasal 37 ayat (5) UUD NRI 1945 menegaskan bentuk NKRI tidak dapat dilakukan perubahan.
2. Upaya mengganti ideologi negara merupakan ancaman serius; warga patut menolaknya, menyadarkan teman secara santun, dan melaporkan kepada aparat bila ada kegiatan nyata ke arah itu.
3. Opsi C memadukan penolakan, upaya menyadarkan, menjaga diri, dan pelaporan melalui jalur hukum.

Jadi, jawaban yang tepat adalah (C) Menolak doktrin itu, mengingatkan teman-teman dengan santun bahwa Pancasila dan NKRI adalah konsensus final bangsa, lalu keluar dan melaporkan kegiatan yang mengarah pada upaya mengganti ideologi negara kepada aparat berwenang.

Mengapa opsi lain kurang tepat:
- (A) Menjaga diri sendiri saja tanpa peduli membiarkan ancaman terhadap ideologi negara berkembang.
- (B) Bertahan di lingkungan yang mendoktrinkan anti-Pancasila berisiko dan memberi kesan mendukung.
- (D) Main hakim sendiri di media sosial melanggar hukum dan tidak menyelesaikan masalah.
- (E) Membawa lebih banyak orang ke komunitas tersebut justru menempatkan mereka dalam risiko terpapar doktrin.', updated_at=now() WHERE id='019b0657-ec05-71f0-8fa6-713bb9472f20';
UPDATE answers SET description='Keluar diam-diam dan tidak peduli lagi apa pun yang dilakukan komunitas tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec05-71f0-8fa6-713bb9472f20' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Tetap bertahan demi kegiatan sosialnya sambil menutup telinga dari doktrinnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec05-71f0-8fa6-713bb9472f20' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menolak doktrin itu, mengingatkan teman-teman dengan santun bahwa Pancasila dan NKRI adalah konsensus final bangsa, lalu keluar dan melaporkan kegiatan yang mengarah pada upaya mengganti ideologi negara kepada aparat berwenang.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec05-71f0-8fa6-713bb9472f20' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyebarkan identitas para anggota di media sosial dengan sebutan pengkhianat bangsa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec05-71f0-8fa6-713bb9472f20' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengajak teman-teman lain bergabung agar suara pro-NKRI di komunitas itu menjadi mayoritas.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec05-71f0-8fa6-713bb9472f20' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Menuju Indonesia Emas 2045, polarisasi digital akibat hoaks, disinformasi, dan provokasi di media sosial dinilai dapat melemahkan persatuan nasional. Upaya pencegahan yang paling tepat dan sejalan dengan wawasan kebangsaan adalah...', options='[{"id": "575430af-b002-41ba-b534-3204d765e0c1", "description": "Memutus akses internet nasional secara permanen.", "isCorrect": false, "point": 1}, {"id": "71d34834-2e4a-4690-b17f-63fd8288c134", "description": "Menyerahkan sepenuhnya penanganan konten kepada platform media sosial asing.", "isCorrect": false, "point": 1}, {"id": "9e012073-79b9-44b1-be5e-13bf9156ffba", "description": "Menghukum setiap warga yang berbeda pendapat dengan pemerintah.", "isCorrect": false, "point": 1}, {"id": "cb62b983-59b2-4f97-afcd-c791635a0123", "description": "Membiarkannya karena perbedaan pendapat di media sosial adalah hal wajar.", "isCorrect": false, "point": 1}, {"id": "fe4d2cb4-971b-4c2e-8065-f2a3fad56c02", "description": "Meningkatkan literasi digital dan memperkuat wawasan kebangsaan masyarakat agar mampu memilah informasi dan menolak provokasi.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Polarisasi digital melalui hoaks, disinformasi, dan provokasi.
- Dampak: melemahkan persatuan nasional.
- Yang dicari: upaya pencegahan yang sejalan dengan wawasan kebangsaan.

DITANYAKAN:
Upaya pencegahan polarisasi digital yang paling tepat.

JAWAB:
1. Polarisasi digital adalah ancaman nonmiliter berdimensi sosial budaya serta teknologi dan informasi.
2. Pencegahan yang efektif menyasar ketahanan warga sendiri: kemampuan memilah informasi (literasi digital) dan kesadaran berbangsa (wawasan kebangsaan).
3. Upaya ini tidak melanggar hak berpendapat dan memperkuat persatuan. Opsi E paling tepat.

Jadi, jawaban yang tepat adalah (E) Meningkatkan literasi digital dan memperkuat wawasan kebangsaan masyarakat agar mampu memilah informasi dan menolak provokasi.

Mengapa opsi lain kurang tepat:
- (A) Memutus internet merugikan seluruh sektor kehidupan dan tidak proporsional.
- (B) Negara dan masyarakat tidak boleh menggantungkan ketahanan nasional sepenuhnya kepada pihak asing.
- (C) Menghukum perbedaan pendapat melanggar hak konstitusional (Pasal 28E ayat 3).
- (D) Hoaks dan provokasi berbeda dengan perbedaan pendapat yang sehat; membiarkannya membahayakan persatuan.', status='aktif', quality_score=4, quality_notes='Revisi: butir hampir duplikat dengan soal Indonesia Emas 2045 lain diubah dari ''ancaman yang muncul'' menjadi ''upaya pencegahan'' (literasi digital + wawasan kebangsaan).', reviewed_at=now(), updated_at=now() WHERE id='c4e7b62f-745c-49f7-ba2e-d4dc900f1dbd';
UPDATE questions SET description='Menuju Indonesia Emas 2045, polarisasi digital akibat hoaks, disinformasi, dan provokasi di media sosial dinilai dapat melemahkan persatuan nasional. Upaya pencegahan yang paling tepat dan sejalan dengan wawasan kebangsaan adalah...', explanation='DIKETAHUI:
- Polarisasi digital melalui hoaks, disinformasi, dan provokasi.
- Dampak: melemahkan persatuan nasional.
- Yang dicari: upaya pencegahan yang sejalan dengan wawasan kebangsaan.

DITANYAKAN:
Upaya pencegahan polarisasi digital yang paling tepat.

JAWAB:
1. Polarisasi digital adalah ancaman nonmiliter berdimensi sosial budaya serta teknologi dan informasi.
2. Pencegahan yang efektif menyasar ketahanan warga sendiri: kemampuan memilah informasi (literasi digital) dan kesadaran berbangsa (wawasan kebangsaan).
3. Upaya ini tidak melanggar hak berpendapat dan memperkuat persatuan. Opsi E paling tepat.

Jadi, jawaban yang tepat adalah (E) Meningkatkan literasi digital dan memperkuat wawasan kebangsaan masyarakat agar mampu memilah informasi dan menolak provokasi.

Mengapa opsi lain kurang tepat:
- (A) Memutus internet merugikan seluruh sektor kehidupan dan tidak proporsional.
- (B) Negara dan masyarakat tidak boleh menggantungkan ketahanan nasional sepenuhnya kepada pihak asing.
- (C) Menghukum perbedaan pendapat melanggar hak konstitusional (Pasal 28E ayat 3).
- (D) Hoaks dan provokasi berbeda dengan perbedaan pendapat yang sehat; membiarkannya membahayakan persatuan.', updated_at=now() WHERE id='c4e7b62f-745c-49f7-ba2e-d4dc900f1dbd';
UPDATE answers SET description='Memutus akses internet nasional secara permanen.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='c4e7b62f-745c-49f7-ba2e-d4dc900f1dbd' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menyerahkan sepenuhnya penanganan konten kepada platform media sosial asing.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='c4e7b62f-745c-49f7-ba2e-d4dc900f1dbd' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menghukum setiap warga yang berbeda pendapat dengan pemerintah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='c4e7b62f-745c-49f7-ba2e-d4dc900f1dbd' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Membiarkannya karena perbedaan pendapat di media sosial adalah hal wajar.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='c4e7b62f-745c-49f7-ba2e-d4dc900f1dbd' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meningkatkan literasi digital dan memperkuat wawasan kebangsaan masyarakat agar mampu memilah informasi dan menolak provokasi.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='c4e7b62f-745c-49f7-ba2e-d4dc900f1dbd' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Tim Anda mempresentasikan topik ''Peran Pemuda dalam Melestarikan Budaya Lokal sebagai Identitas Nasional'' dalam lomba wawasan kebangsaan. Argumen utama yang paling tepat untuk menjelaskan kaitan budaya lokal dengan ketahanan bangsa menghadapi pengaruh ideologi asing adalah...', options='[{"id": "019993b1-83ca-7d7c-adc7-871d7dcd5757", "description": "Budaya lokal harus ditutup rapat dari semua pengaruh asing agar tetap murni.", "isCorrect": false, "point": 1}, {"id": "019993b1-83cb-7367-8c6a-5b0941984eae", "description": "Budaya lokal tidak berkaitan dengan identitas nasional karena identitas nasional hanya berupa bahasa Indonesia.", "isCorrect": false, "point": 1}, {"id": "019993b1-83cb-786e-9b63-27e62188f0d8", "description": "Budaya lokal yang dihayati generasi muda memperkuat jati diri bangsa, sehingga mereka mampu menyaring pengaruh asing yang bertentangan dengan Pancasila.", "isCorrect": true, "point": 1}, {"id": "019993b1-83cb-7d13-86e5-25e94d8833b3", "description": "Pelestarian budaya lokal cukup menjadi tanggung jawab pemerintah daerah.", "isCorrect": false, "point": 1}, {"id": "019993b1-83cc-7306-a172-c47a1d085846", "description": "Budaya lokal sebaiknya digantikan budaya global agar bangsa tampak modern.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Topik: peran pemuda melestarikan budaya lokal sebagai identitas nasional.
- Yang dicari: kaitan budaya lokal dengan ketahanan menghadapi ideologi asing.

DITANYAKAN:
Argumen yang paling tepat tentang kaitan tersebut.

JAWAB:
1. Identitas nasional Indonesia antara lain dibentuk oleh kebudayaan daerah yang beragam; Pasal 32 ayat (1) UUD NRI 1945 menyatakan negara memajukan kebudayaan nasional dengan menjamin kebebasan masyarakat memelihara dan mengembangkan nilai budayanya.
2. Jati diri yang kuat berfungsi sebagai filter: pemuda dapat menerima hal positif dari luar dan menolak yang bertentangan dengan Pancasila.
3. Opsi C merumuskan kaitan tersebut secara tepat tanpa sikap tertutup.

Jadi, jawaban yang tepat adalah (C) Budaya lokal yang dihayati generasi muda memperkuat jati diri bangsa, sehingga mereka mampu menyaring pengaruh asing yang bertentangan dengan Pancasila.

Mengapa opsi lain kurang tepat:
- (A) Menutup diri dari semua pengaruh asing tidak realistis dan menghambat kemajuan.
- (B) Identitas nasional tidak hanya bahasa; budaya daerah juga unsur pembentuknya.
- (D) Pelestarian budaya adalah tanggung jawab bersama, termasuk pemuda.
- (E) Mengganti budaya lokal berarti kehilangan jati diri bangsa.', status='aktif', quality_score=4, quality_notes='Revisi: soal lama bertentangan dengan instruksinya sendiri (harus memilih satu topik, kunci menggabungkan); diganti soal argumen identitas nasional dengan satu jawaban tegas.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-83ca-7921-a572-1b0904744345';
UPDATE questions SET description='Tim Anda mempresentasikan topik ''Peran Pemuda dalam Melestarikan Budaya Lokal sebagai Identitas Nasional'' dalam lomba wawasan kebangsaan. Argumen utama yang paling tepat untuk menjelaskan kaitan budaya lokal dengan ketahanan bangsa menghadapi pengaruh ideologi asing adalah...', explanation='DIKETAHUI:
- Topik: peran pemuda melestarikan budaya lokal sebagai identitas nasional.
- Yang dicari: kaitan budaya lokal dengan ketahanan menghadapi ideologi asing.

DITANYAKAN:
Argumen yang paling tepat tentang kaitan tersebut.

JAWAB:
1. Identitas nasional Indonesia antara lain dibentuk oleh kebudayaan daerah yang beragam; Pasal 32 ayat (1) UUD NRI 1945 menyatakan negara memajukan kebudayaan nasional dengan menjamin kebebasan masyarakat memelihara dan mengembangkan nilai budayanya.
2. Jati diri yang kuat berfungsi sebagai filter: pemuda dapat menerima hal positif dari luar dan menolak yang bertentangan dengan Pancasila.
3. Opsi C merumuskan kaitan tersebut secara tepat tanpa sikap tertutup.

Jadi, jawaban yang tepat adalah (C) Budaya lokal yang dihayati generasi muda memperkuat jati diri bangsa, sehingga mereka mampu menyaring pengaruh asing yang bertentangan dengan Pancasila.

Mengapa opsi lain kurang tepat:
- (A) Menutup diri dari semua pengaruh asing tidak realistis dan menghambat kemajuan.
- (B) Identitas nasional tidak hanya bahasa; budaya daerah juga unsur pembentuknya.
- (D) Pelestarian budaya adalah tanggung jawab bersama, termasuk pemuda.
- (E) Mengganti budaya lokal berarti kehilangan jati diri bangsa.', updated_at=now() WHERE id='019993b1-83ca-7921-a572-1b0904744345';
UPDATE answers SET description='Budaya lokal harus ditutup rapat dari semua pengaruh asing agar tetap murni.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83ca-7921-a572-1b0904744345' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Budaya lokal tidak berkaitan dengan identitas nasional karena identitas nasional hanya berupa bahasa Indonesia.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83ca-7921-a572-1b0904744345' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Budaya lokal yang dihayati generasi muda memperkuat jati diri bangsa, sehingga mereka mampu menyaring pengaruh asing yang bertentangan dengan Pancasila.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83ca-7921-a572-1b0904744345' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Pelestarian budaya lokal cukup menjadi tanggung jawab pemerintah daerah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83ca-7921-a572-1b0904744345' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Budaya lokal sebaiknya digantikan budaya global agar bangsa tampak modern.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83ca-7921-a572-1b0904744345' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang mahasiswa menciptakan inovasi teknologi yang sangat dibutuhkan pemerintah. Perusahaan asing menawarkan dana besar dengan syarat inovasi itu hanya boleh dikembangkan dan dimiliki di luar negeri. Mentornya meminta ilmunya diabdikan bagi bangsa. Keputusan yang paling mencerminkan nasionalisme dan pengabdian sekaligus realistis adalah...', options='[{"id": "019993b1-83d8-7bfe-b915-d2cd7b8d1e62", "description": "Menolak syarat tersebut, melindungi inovasinya dengan paten, lalu mengajukan pendanaan riset dari pemerintah atau mitra dalam negeri.", "isCorrect": true, "point": 1}, {"id": "019993b1-83d9-72d3-a782-64ba5c1d8900", "description": "Menerima tawaran asing lalu berjanji membantu Indonesia dari luar negeri.", "isCorrect": false, "point": 1}, {"id": "019993b1-83d9-766e-a4ed-8773f345a6f5", "description": "Menerima dana asing tetapi diam-diam tetap mengembangkan inovasi di dalam negeri, melanggar kontrak.", "isCorrect": false, "point": 1}, {"id": "019993b1-83d9-79f1-9794-6e30c81cfccc", "description": "Menerima tawaran dan menyumbangkan sebagian keuntungan untuk pembangunan di Indonesia.", "isCorrect": false, "point": 1}, {"id": "019993b1-83d9-7d12-acf9-833b8f9e6574", "description": "Menolak tawaran asing, lalu menghentikan pengembangan inovasi karena kekurangan dana.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Inovasi teknologi dibutuhkan pemerintah.
- Dana asing mensyaratkan pengembangan dan kepemilikan di luar negeri.
- Kriteria: nasionalisme, pengabdian, realistis.

DITANYAKAN:
Keputusan yang memenuhi ketiga kriteria.

JAWAB:
1. Nasionalisme berarti mengutamakan kepentingan bangsa, termasuk menjaga kepemilikan teknologi strategis di dalam negeri.
2. Realistis berarti inovasi tetap harus berkembang; maka perlu perlindungan paten dan pencarian dana dari pemerintah atau mitra dalam negeri.
3. Opsi A memenuhi ketiga kriteria sekaligus.

Jadi, jawaban yang tepat adalah (A) Menolak syarat tersebut, melindungi inovasinya dengan paten, lalu mengajukan pendanaan riset dari pemerintah atau mitra dalam negeri.

Mengapa opsi lain kurang tepat:
- (B) Kepemilikan inovasi berpindah ke luar negeri sehingga manfaat utamanya bagi bangsa hilang.
- (C) Melanggar kontrak secara diam-diam tidak jujur dan berisiko hukum.
- (D) Sumbangan keuntungan tidak menggantikan hilangnya kepemilikan teknologi.
- (E) Menghentikan pengembangan menyia-nyiakan inovasi yang dibutuhkan bangsa.', status='aktif', quality_score=4, quality_notes='Revisi: opsi C lama (proposal ke pemerintah) digabung ke kunci B sehingga tidak ada dua jawaban; opsi C diganti pelanggaran kontrak.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-83d8-7720-92bb-208bbda8f610';
UPDATE questions SET description='Seorang mahasiswa menciptakan inovasi teknologi yang sangat dibutuhkan pemerintah. Perusahaan asing menawarkan dana besar dengan syarat inovasi itu hanya boleh dikembangkan dan dimiliki di luar negeri. Mentornya meminta ilmunya diabdikan bagi bangsa. Keputusan yang paling mencerminkan nasionalisme dan pengabdian sekaligus realistis adalah...', explanation='DIKETAHUI:
- Inovasi teknologi dibutuhkan pemerintah.
- Dana asing mensyaratkan pengembangan dan kepemilikan di luar negeri.
- Kriteria: nasionalisme, pengabdian, realistis.

DITANYAKAN:
Keputusan yang memenuhi ketiga kriteria.

JAWAB:
1. Nasionalisme berarti mengutamakan kepentingan bangsa, termasuk menjaga kepemilikan teknologi strategis di dalam negeri.
2. Realistis berarti inovasi tetap harus berkembang; maka perlu perlindungan paten dan pencarian dana dari pemerintah atau mitra dalam negeri.
3. Opsi A memenuhi ketiga kriteria sekaligus.

Jadi, jawaban yang tepat adalah (A) Menolak syarat tersebut, melindungi inovasinya dengan paten, lalu mengajukan pendanaan riset dari pemerintah atau mitra dalam negeri.

Mengapa opsi lain kurang tepat:
- (B) Kepemilikan inovasi berpindah ke luar negeri sehingga manfaat utamanya bagi bangsa hilang.
- (C) Melanggar kontrak secara diam-diam tidak jujur dan berisiko hukum.
- (D) Sumbangan keuntungan tidak menggantikan hilangnya kepemilikan teknologi.
- (E) Menghentikan pengembangan menyia-nyiakan inovasi yang dibutuhkan bangsa.', updated_at=now() WHERE id='019993b1-83d8-7720-92bb-208bbda8f610';
UPDATE answers SET description='Menolak syarat tersebut, melindungi inovasinya dengan paten, lalu mengajukan pendanaan riset dari pemerintah atau mitra dalam negeri.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83d8-7720-92bb-208bbda8f610' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menerima tawaran asing lalu berjanji membantu Indonesia dari luar negeri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83d8-7720-92bb-208bbda8f610' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima dana asing tetapi diam-diam tetap mengembangkan inovasi di dalam negeri, melanggar kontrak.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83d8-7720-92bb-208bbda8f610' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menerima tawaran dan menyumbangkan sebagian keuntungan untuk pembangunan di Indonesia.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83d8-7720-92bb-208bbda8f610' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menolak tawaran asing, lalu menghentikan pengembangan inovasi karena kekurangan dana.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83d8-7720-92bb-208bbda8f610' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda bendahara kelas. Anda menemukan sebagian uang kas yang dialokasikan untuk kegiatan sosial dipakai beberapa teman untuk membeli makanan ringan tanpa persetujuan kelas. Mereka beralasan uangnya tidak akan habis. Tindakan yang paling sesuai dengan nilai integritas dan akuntabilitas adalah...', options='[{"id": "019993b1-a6ec-740b-8228-1ea99ef47837", "description": "Mengabaikannya karena jumlahnya tidak seberapa.", "isCorrect": false, "point": 1}, {"id": "019993b1-a6ec-7d07-b65f-582e693320b7", "description": "Menutup kekurangan dengan menarik iuran tambahan dari anggota kelas lain.", "isCorrect": false, "point": 1}, {"id": "019993b1-a6ed-746d-bafe-b8b95c3c0cec", "description": "Langsung mengumumkan nama mereka di grup sekolah agar mereka malu.", "isCorrect": false, "point": 1}, {"id": "019993b1-a6ed-7bc9-9fdd-e5a053acb7a9", "description": "Ikut memakai uang kas untuk jajan karena merasa berhak sebagai bendahara.", "isCorrect": false, "point": 1}, {"id": "019993b1-a6ee-71d1-8ff5-7d7bb58c4288", "description": "Meminta mereka mengembalikan uang tersebut, mencatat dan melaporkan penggunaan kas secara terbuka kepada kelas, serta menyampaikannya kepada wali kelas bila tidak dikembalikan.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Uang kas untuk kegiatan sosial dipakai jajan tanpa persetujuan.
- Anda bendahara kelas.
- Kriteria: integritas dan akuntabilitas.

DITANYAKAN:
Tindakan bendahara yang paling tepat.

JAWAB:
1. Akuntabilitas berarti setiap penggunaan dana bersama harus sesuai peruntukan dan dapat dipertanggungjawabkan kepada pemiliknya, yaitu seluruh anggota kelas.
2. Integritas menuntut penyalahgunaan diluruskan: uang dikembalikan dan pencatatan dilaporkan secara terbuka.
3. Bila tidak ada itikad baik, masalah dibawa kepada wali kelas sebagai pembina. Opsi E memuat semua langkah tersebut.

Jadi, jawaban yang tepat adalah (E) Meminta mereka mengembalikan uang tersebut, mencatat dan melaporkan penggunaan kas secara terbuka kepada kelas, serta menyampaikannya kepada wali kelas bila tidak dikembalikan.

Mengapa opsi lain kurang tepat:
- (A) Penyalahgunaan dana, sekecil apa pun, tetap pelanggaran amanah.
- (B) Membebankan kerugian kepada anggota lain tidak adil.
- (C) Mempermalukan di grup sekolah tidak proporsional dan tidak memulihkan dana.
- (D) Ikut menyalahgunakan dana justru melanggar amanah sebagai bendahara.', status='aktif', quality_score=5, quality_notes='Perbaikan dari temuan: kunci B ditetapkan; opsi B dilengkapi pencatatan terbuka dan eskalasi ke wali kelas; opsi C dan E diganti agar tidak ada opsi lain yang dapat dibenarkan.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-a6eb-7b8e-a0fb-7b62ba6dc083';
UPDATE questions SET description='Anda bendahara kelas. Anda menemukan sebagian uang kas yang dialokasikan untuk kegiatan sosial dipakai beberapa teman untuk membeli makanan ringan tanpa persetujuan kelas. Mereka beralasan uangnya tidak akan habis. Tindakan yang paling sesuai dengan nilai integritas dan akuntabilitas adalah...', explanation='DIKETAHUI:
- Uang kas untuk kegiatan sosial dipakai jajan tanpa persetujuan.
- Anda bendahara kelas.
- Kriteria: integritas dan akuntabilitas.

DITANYAKAN:
Tindakan bendahara yang paling tepat.

JAWAB:
1. Akuntabilitas berarti setiap penggunaan dana bersama harus sesuai peruntukan dan dapat dipertanggungjawabkan kepada pemiliknya, yaitu seluruh anggota kelas.
2. Integritas menuntut penyalahgunaan diluruskan: uang dikembalikan dan pencatatan dilaporkan secara terbuka.
3. Bila tidak ada itikad baik, masalah dibawa kepada wali kelas sebagai pembina. Opsi E memuat semua langkah tersebut.

Jadi, jawaban yang tepat adalah (E) Meminta mereka mengembalikan uang tersebut, mencatat dan melaporkan penggunaan kas secara terbuka kepada kelas, serta menyampaikannya kepada wali kelas bila tidak dikembalikan.

Mengapa opsi lain kurang tepat:
- (A) Penyalahgunaan dana, sekecil apa pun, tetap pelanggaran amanah.
- (B) Membebankan kerugian kepada anggota lain tidak adil.
- (C) Mempermalukan di grup sekolah tidak proporsional dan tidak memulihkan dana.
- (D) Ikut menyalahgunakan dana justru melanggar amanah sebagai bendahara.', updated_at=now() WHERE id='019993b1-a6eb-7b8e-a0fb-7b62ba6dc083';
UPDATE answers SET description='Mengabaikannya karena jumlahnya tidak seberapa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a6eb-7b8e-a0fb-7b62ba6dc083' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menutup kekurangan dengan menarik iuran tambahan dari anggota kelas lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a6eb-7b8e-a0fb-7b62ba6dc083' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Langsung mengumumkan nama mereka di grup sekolah agar mereka malu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a6eb-7b8e-a0fb-7b62ba6dc083' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Ikut memakai uang kas untuk jajan karena merasa berhak sebagai bendahara.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a6eb-7b8e-a0fb-7b62ba6dc083' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminta mereka mengembalikan uang tersebut, mencatat dan melaporkan penggunaan kas secara terbuka kepada kelas, serta menyampaikannya kepada wali kelas bila tidak dikembalikan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a6eb-7b8e-a0fb-7b62ba6dc083' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda pekerja perantau yang baru dipromosikan. Beberapa rekan kerja yang berasal dari daerah setempat menuduh promosi Anda hanya karena keberuntungan, bukan karena kompetensi. Sikap yang paling sesuai dengan prinsip meritokrasi dan profesionalisme adalah...', options='[{"id": "019993b1-a722-7ae3-9b4d-b946e3a8c04d", "description": "Tetap bekerja profesional dan membuktikan kompetensi melalui kinerja, serta bersedia menjelaskan dasar penilaian secara terbuka bila ditanya, tanpa membalas tuduhan.", "isCorrect": true, "point": 1}, {"id": "019993b1-a723-71c0-b76c-791c0b26cf8d", "description": "Menuntut atasan mengumumkan alasan promosi Anda di depan seluruh pegawai.", "isCorrect": false, "point": 1}, {"id": "019993b1-a723-768f-a460-a6059a8ab43b", "description": "Mengajak rekan sedaerah Anda membalas dengan tuduhan serupa kepada mereka.", "isCorrect": false, "point": 1}, {"id": "019993b1-a723-7d8f-b507-89dc6f626097", "description": "Meminta atasan memberikan promosi yang sama kepada rekan-rekan yang menuduh.", "isCorrect": false, "point": 1}, {"id": "019993b1-a724-7399-bb8c-b7fb1a66d641", "description": "Mengundurkan diri dari jabatan untuk menghindari konflik.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda dipromosikan.
- Rekan dari daerah setempat menuduh promosi itu karena keberuntungan.
- Kriteria: meritokrasi dan profesionalisme.

DITANYAKAN:
Sikap yang paling profesional terhadap tuduhan tersebut.

JAWAB:
1. Meritokrasi berarti jabatan diberikan berdasarkan kompetensi dan kinerja; cara terbaik menjawab keraguan adalah membuktikannya melalui hasil kerja.
2. Profesionalisme juga berarti terbuka dan tidak membalas tuduhan dengan sentimen kedaerahan.
3. Opsi A memadukan pembuktian kinerja, keterbukaan, dan sikap tidak membalas.

Jadi, jawaban yang tepat adalah (A) Tetap bekerja profesional dan membuktikan kompetensi melalui kinerja, serta bersedia menjelaskan dasar penilaian secara terbuka bila ditanya, tanpa membalas tuduhan.

Mengapa opsi lain kurang tepat:
- (B) Menuntut pengumuman di depan umum bersifat defensif dan dapat memperuncing konflik.
- (C) Membalas dengan sentimen kedaerahan memecah belah dan tidak profesional.
- (D) Promosi harus berdasarkan kinerja, bukan untuk meredam tuduhan.
- (E) Mengundurkan diri mengorbankan hasil kinerja yang sah.', status='aktif', quality_score=4, quality_notes='Revisi: frasa janggal ''penduduk setempat'' dirapikan; kunci A dilengkapi keterbukaan; opsi C (dialog) diganti pembalasan kedaerahan sehingga kunci tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-a722-746c-9423-c4d54c69403c';
UPDATE questions SET description='Anda pekerja perantau yang baru dipromosikan. Beberapa rekan kerja yang berasal dari daerah setempat menuduh promosi Anda hanya karena keberuntungan, bukan karena kompetensi. Sikap yang paling sesuai dengan prinsip meritokrasi dan profesionalisme adalah...', explanation='DIKETAHUI:
- Anda dipromosikan.
- Rekan dari daerah setempat menuduh promosi itu karena keberuntungan.
- Kriteria: meritokrasi dan profesionalisme.

DITANYAKAN:
Sikap yang paling profesional terhadap tuduhan tersebut.

JAWAB:
1. Meritokrasi berarti jabatan diberikan berdasarkan kompetensi dan kinerja; cara terbaik menjawab keraguan adalah membuktikannya melalui hasil kerja.
2. Profesionalisme juga berarti terbuka dan tidak membalas tuduhan dengan sentimen kedaerahan.
3. Opsi A memadukan pembuktian kinerja, keterbukaan, dan sikap tidak membalas.

Jadi, jawaban yang tepat adalah (A) Tetap bekerja profesional dan membuktikan kompetensi melalui kinerja, serta bersedia menjelaskan dasar penilaian secara terbuka bila ditanya, tanpa membalas tuduhan.

Mengapa opsi lain kurang tepat:
- (B) Menuntut pengumuman di depan umum bersifat defensif dan dapat memperuncing konflik.
- (C) Membalas dengan sentimen kedaerahan memecah belah dan tidak profesional.
- (D) Promosi harus berdasarkan kinerja, bukan untuk meredam tuduhan.
- (E) Mengundurkan diri mengorbankan hasil kinerja yang sah.', updated_at=now() WHERE id='019993b1-a722-746c-9423-c4d54c69403c';
UPDATE answers SET description='Tetap bekerja profesional dan membuktikan kompetensi melalui kinerja, serta bersedia menjelaskan dasar penilaian secara terbuka bila ditanya, tanpa membalas tuduhan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a722-746c-9423-c4d54c69403c' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menuntut atasan mengumumkan alasan promosi Anda di depan seluruh pegawai.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a722-746c-9423-c4d54c69403c' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengajak rekan sedaerah Anda membalas dengan tuduhan serupa kepada mereka.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a722-746c-9423-c4d54c69403c' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Meminta atasan memberikan promosi yang sama kepada rekan-rekan yang menuduh.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a722-746c-9423-c4d54c69403c' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengundurkan diri dari jabatan untuk menghindari konflik.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a722-746c-9423-c4d54c69403c' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Dalam tugas kelompok, beberapa anggota ingin menyalin tulisan dari internet tanpa menyebut sumber karena tugasnya dianggap sulit. Tugas belum dikumpulkan. Sikap Anda yang paling sesuai dengan nilai antikorupsi jujur dan tanggung jawab adalah...', options='[{"id": "019993b1-d594-729a-b2c1-11da24b56aa1", "description": "Membiarkan mereka menyalin agar tidak terjadi konflik.", "isCorrect": false, "point": 1}, {"id": "019993b1-d594-7c2a-ba59-a1c6ff9e25b9", "description": "Langsung melaporkan mereka ke dosen tanpa mengingatkan terlebih dahulu.", "isCorrect": false, "point": 1}, {"id": "019993b1-d595-7311-bc32-9f6b5cd9c19f", "description": "Diam-diam mengubah bagian yang mereka salin tanpa sepengetahuan mereka.", "isCorrect": false, "point": 1}, {"id": "019993b1-d595-7919-9724-e91718e3ab1d", "description": "Mengancam akan mencoret nama mereka bila tetap menyalin.", "isCorrect": false, "point": 1}, {"id": "019993b1-d595-7e7e-9e91-4e33ad8d2401", "description": "Mengingatkan bahwa menyalin tanpa menyebut sumber adalah plagiarisme dan menawarkan bantuan agar bagian tersebut dikerjakan sendiri bersama-sama.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anggota kelompok ingin menyalin dari internet tanpa sumber.
- Alasannya tugas sulit; tugas belum dikumpulkan.
- Kriteria: nilai jujur dan tanggung jawab.

DITANYAKAN:
Sikap yang paling tepat sebagai anggota kelompok.

JAWAB:
1. Plagiarisme adalah bentuk ketidakjujuran akademik, sejalan dengan perilaku koruptif dalam skala kecil.
2. Karena tugas belum dikumpulkan, masalah masih dapat dicegah dengan mengingatkan dan membantu mengatasi kesulitan yang menjadi alasannya.
3. Opsi E mencegah plagiarisme sekaligus bertanggung jawab atas mutu tugas bersama.

Jadi, jawaban yang tepat adalah (E) Mengingatkan bahwa menyalin tanpa menyebut sumber adalah plagiarisme dan menawarkan bantuan agar bagian tersebut dikerjakan sendiri bersama-sama.

Mengapa opsi lain kurang tepat:
- (A) Membiarkan berarti ikut bertanggung jawab atas plagiarisme dalam tugas kelompok.
- (B) Melapor tanpa mengingatkan padahal masih dapat dicegah kurang proporsional.
- (C) Mengubah diam-diam tidak transparan dan tidak mendidik anggota lain.
- (D) Ancaman tidak menyelesaikan alasan mereka dan merusak kerja sama.', status='aktif', quality_score=4, quality_notes='Revisi: rujukan UUD yang tidak spesifik diganti nilai antikorupsi (jujur, tanggung jawab); ditambah ''tugas belum dikumpulkan'' sehingga mengingatkan + membantu jelas lebih tepat daripada melapor.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d593-7c73-b8d4-9d429cc38fc2';
UPDATE questions SET description='Dalam tugas kelompok, beberapa anggota ingin menyalin tulisan dari internet tanpa menyebut sumber karena tugasnya dianggap sulit. Tugas belum dikumpulkan. Sikap Anda yang paling sesuai dengan nilai antikorupsi jujur dan tanggung jawab adalah...', explanation='DIKETAHUI:
- Anggota kelompok ingin menyalin dari internet tanpa sumber.
- Alasannya tugas sulit; tugas belum dikumpulkan.
- Kriteria: nilai jujur dan tanggung jawab.

DITANYAKAN:
Sikap yang paling tepat sebagai anggota kelompok.

JAWAB:
1. Plagiarisme adalah bentuk ketidakjujuran akademik, sejalan dengan perilaku koruptif dalam skala kecil.
2. Karena tugas belum dikumpulkan, masalah masih dapat dicegah dengan mengingatkan dan membantu mengatasi kesulitan yang menjadi alasannya.
3. Opsi E mencegah plagiarisme sekaligus bertanggung jawab atas mutu tugas bersama.

Jadi, jawaban yang tepat adalah (E) Mengingatkan bahwa menyalin tanpa menyebut sumber adalah plagiarisme dan menawarkan bantuan agar bagian tersebut dikerjakan sendiri bersama-sama.

Mengapa opsi lain kurang tepat:
- (A) Membiarkan berarti ikut bertanggung jawab atas plagiarisme dalam tugas kelompok.
- (B) Melapor tanpa mengingatkan padahal masih dapat dicegah kurang proporsional.
- (C) Mengubah diam-diam tidak transparan dan tidak mendidik anggota lain.
- (D) Ancaman tidak menyelesaikan alasan mereka dan merusak kerja sama.', updated_at=now() WHERE id='019993b1-d593-7c73-b8d4-9d429cc38fc2';
UPDATE answers SET description='Membiarkan mereka menyalin agar tidak terjadi konflik.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d593-7c73-b8d4-9d429cc38fc2' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Langsung melaporkan mereka ke dosen tanpa mengingatkan terlebih dahulu.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d593-7c73-b8d4-9d429cc38fc2' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Diam-diam mengubah bagian yang mereka salin tanpa sepengetahuan mereka.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d593-7c73-b8d4-9d429cc38fc2' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengancam akan mencoret nama mereka bila tetap menyalin.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d593-7c73-b8d4-9d429cc38fc2' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengingatkan bahwa menyalin tanpa menyebut sumber adalah plagiarisme dan menawarkan bantuan agar bagian tersebut dikerjakan sendiri bersama-sama.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d593-7c73-b8d4-9d429cc38fc2' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sebagai ketua kelas, Anda bertugas mengumpulkan tugas kelompok seluruh kelas kepada dosen. Saat memeriksa, Anda menemukan satu kelompok menyalin beberapa paragraf dari internet tanpa mencantumkan sumber. Batas pengumpulan masih besok. Sikap yang paling sesuai dengan nilai kejujuran dan tanggung jawab akademik adalah...', options='[{"id": "019993b1-d5a4-7a7e-97fb-697a994b7edb", "description": "Mengumpulkan tugas tersebut apa adanya karena bukan tugas kelompok Anda.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5a5-7372-a367-bfc23864df1f", "description": "Mengembalikan tugas itu kepada kelompok tersebut, menjelaskan bahwa bagian itu termasuk plagiarisme, dan meminta mereka merevisi dengan mencantumkan sumber atau menulis ulang sebelum batas waktu.", "isCorrect": true, "point": 1}, {"id": "019993b1-d5a5-7806-9a7e-4629b96e3fb4", "description": "Mengumpulkan tugas tersebut lalu melaporkan kelompok itu kepada dosen agar diberi nilai nol.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5a5-7de0-bc9f-a9764f380af7", "description": "Menyalin cara mereka untuk mempercepat tugas kelompok Anda sendiri.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5a6-74d0-924c-01d8b240f0b5", "description": "Mengancam tidak akan mengumpulkan tugas mereka sama sekali.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda ketua kelas yang mengumpulkan tugas.
- Satu kelompok menyalin paragraf tanpa sumber.
- Batas pengumpulan masih besok.

DITANYAKAN:
Sikap ketua kelas yang paling jujur dan bertanggung jawab.

JAWAB:
1. Mengutip tanpa mencantumkan sumber termasuk plagiarisme yang melanggar kejujuran akademik.
2. Karena masih ada waktu, tindakan yang paling bertanggung jawab adalah memberi kesempatan memperbaiki sebelum tugas dikumpulkan, bukan membiarkan atau menunggu dihukum.
3. Opsi B mencegah pelanggaran dan mendidik kelompok tersebut.

Jadi, jawaban yang tepat adalah (B) Mengembalikan tugas itu kepada kelompok tersebut, menjelaskan bahwa bagian itu termasuk plagiarisme, dan meminta mereka merevisi dengan mencantumkan sumber atau menulis ulang sebelum batas waktu.

Mengapa opsi lain kurang tepat:
- (A) Mengumpulkan padahal tahu ada plagiarisme berarti membiarkan ketidakjujuran.
- (C) Sengaja mengumpulkan agar dihukum, padahal masih dapat diperbaiki, bukan sikap bertanggung jawab.
- (D) Ikut melakukan plagiarisme melanggar kejujuran.
- (E) Ancaman tidak mendidik dan melampaui peran ketua kelas.', status='aktif', quality_score=5, quality_notes='Revisi: rujukan Pasal 28J yang dipaksakan dihapus; situasi dibedakan dari butir kembar (ketua kelas pengumpul tugas, batas waktu besok) sehingga kunci B tegas.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d5a4-751a-99a8-7932788b2b7f';
UPDATE questions SET description='Sebagai ketua kelas, Anda bertugas mengumpulkan tugas kelompok seluruh kelas kepada dosen. Saat memeriksa, Anda menemukan satu kelompok menyalin beberapa paragraf dari internet tanpa mencantumkan sumber. Batas pengumpulan masih besok. Sikap yang paling sesuai dengan nilai kejujuran dan tanggung jawab akademik adalah...', explanation='DIKETAHUI:
- Anda ketua kelas yang mengumpulkan tugas.
- Satu kelompok menyalin paragraf tanpa sumber.
- Batas pengumpulan masih besok.

DITANYAKAN:
Sikap ketua kelas yang paling jujur dan bertanggung jawab.

JAWAB:
1. Mengutip tanpa mencantumkan sumber termasuk plagiarisme yang melanggar kejujuran akademik.
2. Karena masih ada waktu, tindakan yang paling bertanggung jawab adalah memberi kesempatan memperbaiki sebelum tugas dikumpulkan, bukan membiarkan atau menunggu dihukum.
3. Opsi B mencegah pelanggaran dan mendidik kelompok tersebut.

Jadi, jawaban yang tepat adalah (B) Mengembalikan tugas itu kepada kelompok tersebut, menjelaskan bahwa bagian itu termasuk plagiarisme, dan meminta mereka merevisi dengan mencantumkan sumber atau menulis ulang sebelum batas waktu.

Mengapa opsi lain kurang tepat:
- (A) Mengumpulkan padahal tahu ada plagiarisme berarti membiarkan ketidakjujuran.
- (C) Sengaja mengumpulkan agar dihukum, padahal masih dapat diperbaiki, bukan sikap bertanggung jawab.
- (D) Ikut melakukan plagiarisme melanggar kejujuran.
- (E) Ancaman tidak mendidik dan melampaui peran ketua kelas.', updated_at=now() WHERE id='019993b1-d5a4-751a-99a8-7932788b2b7f';
UPDATE answers SET description='Mengumpulkan tugas tersebut apa adanya karena bukan tugas kelompok Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a4-751a-99a8-7932788b2b7f' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengembalikan tugas itu kepada kelompok tersebut, menjelaskan bahwa bagian itu termasuk plagiarisme, dan meminta mereka merevisi dengan mencantumkan sumber atau menulis ulang sebelum batas waktu.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a4-751a-99a8-7932788b2b7f' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengumpulkan tugas tersebut lalu melaporkan kelompok itu kepada dosen agar diberi nilai nol.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a4-751a-99a8-7932788b2b7f' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyalin cara mereka untuk mempercepat tugas kelompok Anda sendiri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a4-751a-99a8-7932788b2b7f' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengancam tidak akan mengumpulkan tugas mereka sama sekali.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a4-751a-99a8-7932788b2b7f' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Dalam pertandingan sepak bola antarkampus, bola menyentuh tangan Anda sebelum Anda mencetak gol, tetapi wasit tidak melihatnya dan mengesahkan gol tersebut. Jika Anda diam, tim Anda akan menang. Keputusan yang paling sesuai dengan nilai kejujuran dan sportivitas adalah...', options='[{"id": "019993b1-d5a6-7eae-b44d-893f0ef02eed", "description": "Diam saja karena keputusan wasit sudah final.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5a7-748e-8086-40df9ee1bf26", "description": "Segera mengakui kepada wasit bahwa bola menyentuh tangan Anda sebelum gol.", "isCorrect": true, "point": 1}, {"id": "019993b1-d5a7-799f-ba6e-59f56f44f23c", "description": "Meminta rekan setim ikut merahasiakan kejadian tersebut.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5a7-7e0a-b7db-d15d43af01aa", "description": "Berterima kasih kepada wasit karena keputusannya menguntungkan tim Anda.", "isCorrect": false, "point": 1}, {"id": "019993b1-d5a8-73f3-9905-f0b8a477491e", "description": "Mengakuinya setelah pertandingan selesai dan hasil telah disahkan.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Bola menyentuh tangan Anda sebelum mencetak gol.
- Wasit tidak melihat dan mengesahkan gol.
- Kriteria: kejujuran dan sportivitas.

DITANYAKAN:
Keputusan yang paling jujur dan sportif.

JAWAB:
1. Kejujuran adalah nilai dasar antikorupsi; keuntungan yang diperoleh dari pelanggaran yang disembunyikan adalah keuntungan yang tidak sah.
2. Sportivitas berarti menang secara adil; pengakuan harus disampaikan saat masih dapat mengubah keputusan, yaitu segera.
3. Opsi B memenuhi kedua nilai tersebut.

Jadi, jawaban yang tepat adalah (B) Segera mengakui kepada wasit bahwa bola menyentuh tangan Anda sebelum gol.

Mengapa opsi lain kurang tepat:
- (A) Diam berarti menikmati hasil dari pelanggaran sendiri.
- (C) Mengajak orang lain merahasiakan kecurangan memperluas ketidakjujuran.
- (D) Berterima kasih atas kekeliruan wasit menunjukkan sikap tidak sportif.
- (E) Pengakuan setelah hasil disahkan tidak lagi memulihkan keadilan pertandingan.', status='aktif', quality_score=5, quality_notes='Perbaikan logika: skenario lama tidak koheren (pelanggaran lawan yang tidak terlihat justru tidak menguntungkan tim Anda); diganti pelanggaran sendiri; rujukan Pasal 28D yang dipaksakan dihapus.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-d5a6-7957-b65b-25dad4e9ec5c';
UPDATE questions SET description='Dalam pertandingan sepak bola antarkampus, bola menyentuh tangan Anda sebelum Anda mencetak gol, tetapi wasit tidak melihatnya dan mengesahkan gol tersebut. Jika Anda diam, tim Anda akan menang. Keputusan yang paling sesuai dengan nilai kejujuran dan sportivitas adalah...', explanation='DIKETAHUI:
- Bola menyentuh tangan Anda sebelum mencetak gol.
- Wasit tidak melihat dan mengesahkan gol.
- Kriteria: kejujuran dan sportivitas.

DITANYAKAN:
Keputusan yang paling jujur dan sportif.

JAWAB:
1. Kejujuran adalah nilai dasar antikorupsi; keuntungan yang diperoleh dari pelanggaran yang disembunyikan adalah keuntungan yang tidak sah.
2. Sportivitas berarti menang secara adil; pengakuan harus disampaikan saat masih dapat mengubah keputusan, yaitu segera.
3. Opsi B memenuhi kedua nilai tersebut.

Jadi, jawaban yang tepat adalah (B) Segera mengakui kepada wasit bahwa bola menyentuh tangan Anda sebelum gol.

Mengapa opsi lain kurang tepat:
- (A) Diam berarti menikmati hasil dari pelanggaran sendiri.
- (C) Mengajak orang lain merahasiakan kecurangan memperluas ketidakjujuran.
- (D) Berterima kasih atas kekeliruan wasit menunjukkan sikap tidak sportif.
- (E) Pengakuan setelah hasil disahkan tidak lagi memulihkan keadilan pertandingan.', updated_at=now() WHERE id='019993b1-d5a6-7957-b65b-25dad4e9ec5c';
UPDATE answers SET description='Diam saja karena keputusan wasit sudah final.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a6-7957-b65b-25dad4e9ec5c' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Segera mengakui kepada wasit bahwa bola menyentuh tangan Anda sebelum gol.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a6-7957-b65b-25dad4e9ec5c' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Meminta rekan setim ikut merahasiakan kejadian tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a6-7957-b65b-25dad4e9ec5c' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Berterima kasih kepada wasit karena keputusannya menguntungkan tim Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a6-7957-b65b-25dad4e9ec5c' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengakuinya setelah pertandingan selesai dan hasil telah disahkan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-d5a6-7957-b65b-25dad4e9ec5c' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sekolah Anda memiliki satu kuota beasiswa prestasi ke luar negeri yang ditetapkan berdasarkan peringkat akademik. Anda di peringkat kedua dan sangat membutuhkan beasiswa itu, sedangkan peringkat pertama adalah sahabat Anda dari keluarga mampu yang kurang berminat tetapi didesak orang tuanya. Seorang guru memberi isyarat bahwa beasiswa akan jatuh kepada Anda bila sahabat mundur. Sikap yang paling mencerminkan integritas dan perjuangan yang kesatria adalah...', options='[{"id": "019afdd0-0b9e-790c-b815-a2142f36fbea", "description": "Menghormati hasil seleksi tanpa membujuk sahabat untuk mundur, sambil aktif mencari beasiswa lain yang sesuai dengan kondisi Anda.", "isCorrect": true, "point": 1}, {"id": "019afdd0-0b9e-7d18-96f2-3692f1f0f29f", "description": "Menceritakan kesulitan ekonomi Anda kepada sahabat agar ia merasa iba dan mundur.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0b9f-7162-bbdd-9fb5a74f4524", "description": "Meminta guru mengubah kriteria beasiswa prestasi menjadi kriteria ekonomi setelah peringkat diumumkan.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0b9f-7501-a557-c4da727cbab9", "description": "Mendesak sahabat mengikuti tes ulang tambahan di luar aturan seleksi.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0b9f-7926-869f-dff70eb0e39e", "description": "Berdiam diri tanpa berusaha apa pun dan menyerahkan semuanya pada nasib.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Beasiswa prestasi ditetapkan berdasarkan peringkat akademik.
- Anda peringkat kedua dan membutuhkan; sahabat peringkat pertama kurang berminat.
- Guru memberi isyarat bila sahabat mundur, beasiswa jatuh kepada Anda.

DITANYAKAN:
Sikap yang berintegritas dan kesatria.

JAWAB:
1. Integritas berarti menghormati aturan seleksi yang sudah ditetapkan; mengubah kriteria atau prosedur setelah hasil keluar tidak adil.
2. Membujuk sahabat mundur dengan memanfaatkan rasa iba atau isyarat guru berarti memperoleh hak dengan cara yang tidak kesatria. Keputusan mundur adalah hak sahabat sendiri.
3. Sikap kesatria adalah menerima hasil sambil berjuang di jalur lain. Opsi A memenuhi hal itu.

Jadi, jawaban yang tepat adalah (A) Menghormati hasil seleksi tanpa membujuk sahabat untuk mundur, sambil aktif mencari beasiswa lain yang sesuai dengan kondisi Anda.

Mengapa opsi lain kurang tepat:
- (B) Memanfaatkan rasa iba untuk membuat orang lain mundur bukan perjuangan yang kesatria.
- (C) Mengubah kriteria setelah hasil diketahui melanggar keadilan seleksi.
- (D) Tes tambahan di luar aturan mengubah prosedur demi kepentingan pribadi.
- (E) Pasrah tanpa usaha bukan wujud perjuangan.', status='aktif', quality_score=4, quality_notes='Revisi: unsur fatalistis ''rezeki tidak tertukar'' dihapus dari kunci; stem menegaskan beasiswa berbasis peringkat sehingga opsi C dan D jelas melanggar aturan seleksi.', reviewed_at=now(), updated_at=now() WHERE id='019afdd0-0b9e-75ce-8e90-0107d23b730e';
UPDATE questions SET description='Sekolah Anda memiliki satu kuota beasiswa prestasi ke luar negeri yang ditetapkan berdasarkan peringkat akademik. Anda di peringkat kedua dan sangat membutuhkan beasiswa itu, sedangkan peringkat pertama adalah sahabat Anda dari keluarga mampu yang kurang berminat tetapi didesak orang tuanya. Seorang guru memberi isyarat bahwa beasiswa akan jatuh kepada Anda bila sahabat mundur. Sikap yang paling mencerminkan integritas dan perjuangan yang kesatria adalah...', explanation='DIKETAHUI:
- Beasiswa prestasi ditetapkan berdasarkan peringkat akademik.
- Anda peringkat kedua dan membutuhkan; sahabat peringkat pertama kurang berminat.
- Guru memberi isyarat bila sahabat mundur, beasiswa jatuh kepada Anda.

DITANYAKAN:
Sikap yang berintegritas dan kesatria.

JAWAB:
1. Integritas berarti menghormati aturan seleksi yang sudah ditetapkan; mengubah kriteria atau prosedur setelah hasil keluar tidak adil.
2. Membujuk sahabat mundur dengan memanfaatkan rasa iba atau isyarat guru berarti memperoleh hak dengan cara yang tidak kesatria. Keputusan mundur adalah hak sahabat sendiri.
3. Sikap kesatria adalah menerima hasil sambil berjuang di jalur lain. Opsi A memenuhi hal itu.

Jadi, jawaban yang tepat adalah (A) Menghormati hasil seleksi tanpa membujuk sahabat untuk mundur, sambil aktif mencari beasiswa lain yang sesuai dengan kondisi Anda.

Mengapa opsi lain kurang tepat:
- (B) Memanfaatkan rasa iba untuk membuat orang lain mundur bukan perjuangan yang kesatria.
- (C) Mengubah kriteria setelah hasil diketahui melanggar keadilan seleksi.
- (D) Tes tambahan di luar aturan mengubah prosedur demi kepentingan pribadi.
- (E) Pasrah tanpa usaha bukan wujud perjuangan.', updated_at=now() WHERE id='019afdd0-0b9e-75ce-8e90-0107d23b730e';
UPDATE answers SET description='Menghormati hasil seleksi tanpa membujuk sahabat untuk mundur, sambil aktif mencari beasiswa lain yang sesuai dengan kondisi Anda.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9e-75ce-8e90-0107d23b730e' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menceritakan kesulitan ekonomi Anda kepada sahabat agar ia merasa iba dan mundur.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9e-75ce-8e90-0107d23b730e' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Meminta guru mengubah kriteria beasiswa prestasi menjadi kriteria ekonomi setelah peringkat diumumkan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9e-75ce-8e90-0107d23b730e' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mendesak sahabat mengikuti tes ulang tambahan di luar aturan seleksi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9e-75ce-8e90-0107d23b730e' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Berdiam diri tanpa berusaha apa pun dan menyerahkan semuanya pada nasib.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b9e-75ce-8e90-0107d23b730e' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda melihat banyak teman dari keluarga mampu memalsukan data agar menerima bantuan sosial tunai yang diperuntukkan bagi keluarga miskin, lalu memakai uangnya untuk bersenang-senang. Mereka mengajak Anda melakukan hal yang sama, padahal Anda sedang butuh uang untuk membeli buku. Sikap integritas sosial yang paling tepat adalah...', options='[{"id": "019afdd0-0bc4-7a79-a570-71e5c57f6dc6", "description": "Menolak ajakan itu, mengingatkan teman-teman bahwa memalsukan data mengambil hak warga miskin dan melanggar hukum, serta memenuhi kebutuhan buku dengan cara yang halal.", "isCorrect": true, "point": 1}, {"id": "019afdd0-0bc4-7efc-81cb-6841d4b694d1", "description": "Ikut mendaftar dengan data palsu, tetapi berniat mengembalikan uangnya bila ketahuan.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bc5-7348-af1c-2da01e726fae", "description": "Ikut memalsukan data, tetapi memakai uangnya hanya untuk membeli buku pelajaran.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bc5-775a-99d3-5f21f8aa9266", "description": "Menasihati mereka sekali, lalu ikut menikmati hasil bantuan yang mereka dapatkan.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bc5-7b08-94d6-2688a2e4a259", "description": "Meminjam identitas tetangga yang miskin untuk mendaftar atas nama mereka.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Teman dari keluarga mampu memalsukan data untuk menerima bantuan sosial bagi keluarga miskin.
- Anda diajak ikut; Anda butuh uang untuk buku.

DITANYAKAN:
Sikap yang paling berintegritas.

JAWAB:
1. Memalsukan data untuk menerima bantuan sosial adalah perbuatan curang yang merugikan keuangan negara dan mengambil hak warga miskin.
2. Tujuan baik (membeli buku) tidak membenarkan cara curang; integritas menuntut kebutuhan dipenuhi dengan cara yang sah.
3. Mengingatkan teman menunjukkan kepedulian agar kecurangan tidak berlanjut. Opsi A memuat penolakan, kepedulian, dan solusi halal.

Jadi, jawaban yang tepat adalah (A) Menolak ajakan itu, mengingatkan teman-teman bahwa memalsukan data mengambil hak warga miskin dan melanggar hukum, serta memenuhi kebutuhan buku dengan cara yang halal.

Mengapa opsi lain kurang tepat:
- (B) Niat mengembalikan bila ketahuan tetap berarti melakukan kecurangan.
- (C) Tujuan baik tidak membenarkan pemalsuan data.
- (D) Ikut menikmati hasil kecurangan berarti turut serta.
- (E) Memakai identitas orang lain adalah pemalsuan dan penyalahgunaan data.', status='aktif', quality_score=5, quality_notes='Revisi: program diganti ''bantuan sosial bagi keluarga miskin'' karena Kartu Prakerja tidak khusus untuk warga miskin (premis lama tidak akurat); kunci dipindah ke A dan opsi lain dibuat jelas curang sehingga tidak ada dua jawaban.', reviewed_at=now(), updated_at=now() WHERE id='019afdd0-0bc4-7649-a744-34930f47e013';
UPDATE questions SET description='Anda melihat banyak teman dari keluarga mampu memalsukan data agar menerima bantuan sosial tunai yang diperuntukkan bagi keluarga miskin, lalu memakai uangnya untuk bersenang-senang. Mereka mengajak Anda melakukan hal yang sama, padahal Anda sedang butuh uang untuk membeli buku. Sikap integritas sosial yang paling tepat adalah...', explanation='DIKETAHUI:
- Teman dari keluarga mampu memalsukan data untuk menerima bantuan sosial bagi keluarga miskin.
- Anda diajak ikut; Anda butuh uang untuk buku.

DITANYAKAN:
Sikap yang paling berintegritas.

JAWAB:
1. Memalsukan data untuk menerima bantuan sosial adalah perbuatan curang yang merugikan keuangan negara dan mengambil hak warga miskin.
2. Tujuan baik (membeli buku) tidak membenarkan cara curang; integritas menuntut kebutuhan dipenuhi dengan cara yang sah.
3. Mengingatkan teman menunjukkan kepedulian agar kecurangan tidak berlanjut. Opsi A memuat penolakan, kepedulian, dan solusi halal.

Jadi, jawaban yang tepat adalah (A) Menolak ajakan itu, mengingatkan teman-teman bahwa memalsukan data mengambil hak warga miskin dan melanggar hukum, serta memenuhi kebutuhan buku dengan cara yang halal.

Mengapa opsi lain kurang tepat:
- (B) Niat mengembalikan bila ketahuan tetap berarti melakukan kecurangan.
- (C) Tujuan baik tidak membenarkan pemalsuan data.
- (D) Ikut menikmati hasil kecurangan berarti turut serta.
- (E) Memakai identitas orang lain adalah pemalsuan dan penyalahgunaan data.', updated_at=now() WHERE id='019afdd0-0bc4-7649-a744-34930f47e013';
UPDATE answers SET description='Menolak ajakan itu, mengingatkan teman-teman bahwa memalsukan data mengambil hak warga miskin dan melanggar hukum, serta memenuhi kebutuhan buku dengan cara yang halal.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bc4-7649-a744-34930f47e013' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Ikut mendaftar dengan data palsu, tetapi berniat mengembalikan uangnya bila ketahuan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bc4-7649-a744-34930f47e013' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Ikut memalsukan data, tetapi memakai uangnya hanya untuk membeli buku pelajaran.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bc4-7649-a744-34930f47e013' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menasihati mereka sekali, lalu ikut menikmati hasil bantuan yang mereka dapatkan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bc4-7649-a744-34930f47e013' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminjam identitas tetangga yang miskin untuk mendaftar atas nama mereka.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bc4-7649-a744-34930f47e013' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Demi fokus belajar tes kedinasan yang waktunya mepet, banyak teman Anda memakai jasa joki skripsi sehingga lulus lebih cepat. Anda yang mengerjakan sendiri merasa tertinggal dan tergoda menggunakan joki. Sikap yang paling mencerminkan nilai antikorupsi jujur, mandiri, dan adil adalah...', options='[{"id": "019b0657-ebfa-782f-ace7-04846c9fc28c", "description": "Memakai jasa joki hanya untuk bab analisis data yang sulit.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebfa-7c83-9887-be2e307ef9c1", "description": "Meminta dosen pembimbing menurunkan standar penilaian karena Anda calon abdi negara.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebfb-7287-ab9d-ede4d772c46e", "description": "Membayar teman untuk menuliskan sebagian isi skripsi dengan alasan Anda tetap memahami isinya.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebfb-767e-a39e-fd8ecd4aa5b3", "description": "Membeli skripsi lama dari kampus lain lalu mengubah judulnya.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebfb-7efd-a719-4ae93cfaba91", "description": "Tetap mengerjakan skripsi sendiri dengan mengatur ulang jadwal dan aktif berkonsultasi dengan dosen pembimbing, sekalipun mungkin lulus sedikit lebih lama.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Banyak teman memakai jasa joki skripsi.
- Anda tergoda karena merasa tertinggal.
- Kriteria: jujur, mandiri, adil.

DITANYAKAN:
Sikap yang memenuhi ketiga nilai antikorupsi tersebut.

JAWAB:
1. Menggunakan joki, sebagian maupun seluruhnya, adalah kecurangan akademik karena karya orang lain diakui sebagai karya sendiri.
2. Mandiri berarti mengerjakan sendiri; jujur berarti hasilnya benar-benar karya sendiri; adil berarti tidak meminta perlakuan istimewa.
3. Solusi atas keterbatasan waktu adalah manajemen waktu dan bimbingan resmi dari dosen. Opsi E memenuhi ketiga nilai.

Jadi, jawaban yang tepat adalah (E) Tetap mengerjakan skripsi sendiri dengan mengatur ulang jadwal dan aktif berkonsultasi dengan dosen pembimbing, sekalipun mungkin lulus sedikit lebih lama.

Mengapa opsi lain kurang tepat:
- (A) Joki untuk sebagian bab tetap kecurangan.
- (B) Meminta penurunan standar berarti meminta perlakuan istimewa yang tidak adil.
- (C) Dibayar untuk menuliskan isi skripsi sama saja dengan joki.
- (D) Membeli dan memodifikasi karya orang lain adalah plagiarisme.', status='aktif', quality_score=5, quality_notes='Revisi: kunci lama (membayar teman membimbing intensif) yang berisiko dianggap joki diganti; kunci dipindah ke B (mengerjakan sendiri + konsultasi resmi); frasa ''keadilan sosial bagi diri sendiri'' diganti nilai antikorupsi.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ebfa-72d4-b2a6-c54c64753f29';
UPDATE questions SET description='Demi fokus belajar tes kedinasan yang waktunya mepet, banyak teman Anda memakai jasa joki skripsi sehingga lulus lebih cepat. Anda yang mengerjakan sendiri merasa tertinggal dan tergoda menggunakan joki. Sikap yang paling mencerminkan nilai antikorupsi jujur, mandiri, dan adil adalah...', explanation='DIKETAHUI:
- Banyak teman memakai jasa joki skripsi.
- Anda tergoda karena merasa tertinggal.
- Kriteria: jujur, mandiri, adil.

DITANYAKAN:
Sikap yang memenuhi ketiga nilai antikorupsi tersebut.

JAWAB:
1. Menggunakan joki, sebagian maupun seluruhnya, adalah kecurangan akademik karena karya orang lain diakui sebagai karya sendiri.
2. Mandiri berarti mengerjakan sendiri; jujur berarti hasilnya benar-benar karya sendiri; adil berarti tidak meminta perlakuan istimewa.
3. Solusi atas keterbatasan waktu adalah manajemen waktu dan bimbingan resmi dari dosen. Opsi E memenuhi ketiga nilai.

Jadi, jawaban yang tepat adalah (E) Tetap mengerjakan skripsi sendiri dengan mengatur ulang jadwal dan aktif berkonsultasi dengan dosen pembimbing, sekalipun mungkin lulus sedikit lebih lama.

Mengapa opsi lain kurang tepat:
- (A) Joki untuk sebagian bab tetap kecurangan.
- (B) Meminta penurunan standar berarti meminta perlakuan istimewa yang tidak adil.
- (C) Dibayar untuk menuliskan isi skripsi sama saja dengan joki.
- (D) Membeli dan memodifikasi karya orang lain adalah plagiarisme.', updated_at=now() WHERE id='019b0657-ebfa-72d4-b2a6-c54c64753f29';
UPDATE answers SET description='Memakai jasa joki hanya untuk bab analisis data yang sulit.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebfa-72d4-b2a6-c54c64753f29' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Meminta dosen pembimbing menurunkan standar penilaian karena Anda calon abdi negara.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebfa-72d4-b2a6-c54c64753f29' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Membayar teman untuk menuliskan sebagian isi skripsi dengan alasan Anda tetap memahami isinya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebfa-72d4-b2a6-c54c64753f29' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Membeli skripsi lama dari kampus lain lalu mengubah judulnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebfa-72d4-b2a6-c54c64753f29' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Tetap mengerjakan skripsi sendiri dengan mengatur ulang jadwal dan aktif berkonsultasi dengan dosen pembimbing, sekalipun mungkin lulus sedikit lebih lama.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebfa-72d4-b2a6-c54c64753f29' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Menjelang pemilu, Anda sebagai Ketua BEM didekati tim sukses salah satu calon, seorang alumni kampus, yang menjanjikan dana hibah besar untuk kegiatan kemahasiswaan asalkan BEM menyatakan dukungan politik secara terbuka. Anggaran kegiatan sedang dipotong. Sikap yang paling menjaga integritas dan independensi lembaga kemahasiswaan adalah...', options='[{"id": "019b0c6a-abba-7c4b-971d-b112149e3a9d", "description": "Menerima dana sebagai sumbangan alumni biasa, lalu diam-diam mengarahkan pengurus mendukung calon tersebut.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abbb-71c3-9ceb-4adeb91a7116", "description": "Menolak dana bersyarat tersebut dan menyatakan secara resmi bahwa BEM bersikap netral dan independen dari kepentingan politik praktis.", "isCorrect": true, "point": 1}, {"id": "019b0c6a-abbb-7616-8751-88b605a67c67", "description": "Menerima dana tersebut dengan janji dukungan, tetapi memakainya untuk debat terbuka semua calon.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abbb-7cc7-8fdc-265e53c4f87f", "description": "Menolak dukungan terbuka, tetapi mengizinkan atribut kampanye calon tersebut dipasang di sekretariat BEM sebagai balas budi.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abbc-7239-ace8-4400d684086e", "description": "Menyerahkan keputusan menerima dana bersyarat itu kepada voting pengurus tanpa memberi pertimbangan.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Tim sukses menawarkan dana hibah dengan syarat dukungan politik terbuka BEM.
- Anggaran kegiatan sedang dipotong.
- Kriteria: integritas dan independensi lembaga kemahasiswaan.

DITANYAKAN:
Sikap Ketua BEM yang paling tepat.

JAWAB:
1. Dana yang diberikan dengan syarat dukungan politik adalah transaksi kepentingan; menerimanya membuat lembaga kehilangan independensi.
2. Lembaga kemahasiswaan mewakili seluruh mahasiswa yang pilihan politiknya beragam, sehingga harus netral dari politik praktis.
3. Menolak dan menyatakan netralitas secara resmi menutup celah salah paham. Opsi B paling tepat.

Jadi, jawaban yang tepat adalah (B) Menolak dana bersyarat tersebut dan menyatakan secara resmi bahwa BEM bersikap netral dan independen dari kepentingan politik praktis.

Mengapa opsi lain kurang tepat:
- (A) Menerima sambil diam-diam mengarahkan dukungan tidak jujur dan melanggar netralitas.
- (C) Menerima dana dengan janji dukungan tetap mengikat BEM pada kepentingan calon, apa pun penggunaan dananya.
- (D) Atribut kampanye sebagai balas budi tetap bentuk keberpihakan.
- (E) Ketua tidak boleh lepas tangan atas keputusan yang mengancam independensi lembaga.', status='aktif', quality_score=5, quality_notes='Revisi: kunci B dipertahankan; opsi C dipertegas (menerima dengan janji dukungan) dan E (tanpa pertimbangan) sehingga tidak ada opsi lain yang dapat dibenarkan; pembahasan ditulis ulang.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-abba-70ed-96e5-c90c17d216b1';
UPDATE questions SET description='Menjelang pemilu, Anda sebagai Ketua BEM didekati tim sukses salah satu calon, seorang alumni kampus, yang menjanjikan dana hibah besar untuk kegiatan kemahasiswaan asalkan BEM menyatakan dukungan politik secara terbuka. Anggaran kegiatan sedang dipotong. Sikap yang paling menjaga integritas dan independensi lembaga kemahasiswaan adalah...', explanation='DIKETAHUI:
- Tim sukses menawarkan dana hibah dengan syarat dukungan politik terbuka BEM.
- Anggaran kegiatan sedang dipotong.
- Kriteria: integritas dan independensi lembaga kemahasiswaan.

DITANYAKAN:
Sikap Ketua BEM yang paling tepat.

JAWAB:
1. Dana yang diberikan dengan syarat dukungan politik adalah transaksi kepentingan; menerimanya membuat lembaga kehilangan independensi.
2. Lembaga kemahasiswaan mewakili seluruh mahasiswa yang pilihan politiknya beragam, sehingga harus netral dari politik praktis.
3. Menolak dan menyatakan netralitas secara resmi menutup celah salah paham. Opsi B paling tepat.

Jadi, jawaban yang tepat adalah (B) Menolak dana bersyarat tersebut dan menyatakan secara resmi bahwa BEM bersikap netral dan independen dari kepentingan politik praktis.

Mengapa opsi lain kurang tepat:
- (A) Menerima sambil diam-diam mengarahkan dukungan tidak jujur dan melanggar netralitas.
- (C) Menerima dana dengan janji dukungan tetap mengikat BEM pada kepentingan calon, apa pun penggunaan dananya.
- (D) Atribut kampanye sebagai balas budi tetap bentuk keberpihakan.
- (E) Ketua tidak boleh lepas tangan atas keputusan yang mengancam independensi lembaga.', updated_at=now() WHERE id='019b0c6a-abba-70ed-96e5-c90c17d216b1';
UPDATE answers SET description='Menerima dana sebagai sumbangan alumni biasa, lalu diam-diam mengarahkan pengurus mendukung calon tersebut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abba-70ed-96e5-c90c17d216b1' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak dana bersyarat tersebut dan menyatakan secara resmi bahwa BEM bersikap netral dan independen dari kepentingan politik praktis.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abba-70ed-96e5-c90c17d216b1' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima dana tersebut dengan janji dukungan, tetapi memakainya untuk debat terbuka semua calon.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abba-70ed-96e5-c90c17d216b1' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menolak dukungan terbuka, tetapi mengizinkan atribut kampanye calon tersebut dipasang di sekretariat BEM sebagai balas budi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abba-70ed-96e5-c90c17d216b1' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyerahkan keputusan menerima dana bersyarat itu kepada voting pengurus tanpa memberi pertimbangan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abba-70ed-96e5-c90c17d216b1' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda meneliti konflik agraria yang melibatkan perusahaan besar dan aparat di suatu wilayah. Dosen pembimbing menyarankan mengganti judul agar lebih ''aman'' dan cepat lulus, padahal data Anda dapat membantu membela hak warga kecil. Keputusan yang paling mencerminkan integritas ilmiah, keberanian, dan kepatuhan pada etika penelitian adalah...', options='[{"id": "019b0c6a-abc7-7998-b6d9-2e7b282da8f2", "description": "Mengganti judul demi lulus tepat waktu dan menunda pembelaan warga sampai memiliki jabatan.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abc7-7d14-9872-bdd3c0acd734", "description": "Tetap pada judul tersebut, tetapi menghapus data yang memberatkan pihak berkuasa agar aman.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abc8-734a-9d00-a5a49ebd778d", "description": "Mengunggah data mentah lengkap dengan identitas narasumber ke media sosial agar cepat viral.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abc8-7771-858e-ac7e5a67c204", "description": "Tetap meneliti topik tersebut dengan data yang jujur, menjelaskan kepada dosen rancangan yang memenuhi etika penelitian seperti perizinan dan perlindungan identitas narasumber, serta siap bila kelulusan sedikit lebih lama.", "isCorrect": true, "point": 1}, {"id": "019b0c6a-abc8-7ab0-a67f-4afee191f9b0", "description": "Mengubah fokus penelitian dan mengabaikan data pelanggaran yang sudah ditemukan.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Topik: konflik agraria yang melibatkan perusahaan besar dan aparat.
- Dosen menyarankan ganti judul agar aman dan cepat lulus.
- Data berpotensi membela hak warga kecil.
- Kriteria: integritas ilmiah, keberanian, etika penelitian.

DITANYAKAN:
Keputusan akademis yang memenuhi ketiga kriteria.

JAWAB:
1. Integritas ilmiah berarti menyajikan data apa adanya tanpa menghapus atau memanipulasinya.
2. Keberanian berarti tetap meneliti topik penting meski berisiko lebih lama lulus, sedangkan etika penelitian menuntut perizinan dan perlindungan narasumber dari bahaya.
3. Menjelaskan rancangan yang etis kepada dosen juga menjawab kekhawatiran pembimbing. Opsi D memenuhi ketiga kriteria.

Jadi, jawaban yang tepat adalah (D) Tetap meneliti topik tersebut dengan data yang jujur, menjelaskan kepada dosen rancangan yang memenuhi etika penelitian seperti perizinan dan perlindungan identitas narasumber, serta siap bila kelulusan sedikit lebih lama.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan kebenaran ilmiah demi kenyamanan pribadi.
- (B) Menghapus data yang tidak menyenangkan adalah manipulasi data.
- (C) Membuka identitas narasumber membahayakan mereka dan melanggar etika penelitian.
- (E) Mengabaikan data yang ditemukan tidak jujur secara ilmiah.', status='aktif', quality_score=4, quality_notes='Revisi: kunci D dilengkapi unsur etika penelitian (perizinan, perlindungan narasumber); opsi B lama (menyamarkan identitas, sebenarnya praktik etis) diganti penghapusan data, sehingga kunci tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-abc7-7545-92d7-4ee75583473d';
UPDATE questions SET description='Anda meneliti konflik agraria yang melibatkan perusahaan besar dan aparat di suatu wilayah. Dosen pembimbing menyarankan mengganti judul agar lebih ''aman'' dan cepat lulus, padahal data Anda dapat membantu membela hak warga kecil. Keputusan yang paling mencerminkan integritas ilmiah, keberanian, dan kepatuhan pada etika penelitian adalah...', explanation='DIKETAHUI:
- Topik: konflik agraria yang melibatkan perusahaan besar dan aparat.
- Dosen menyarankan ganti judul agar aman dan cepat lulus.
- Data berpotensi membela hak warga kecil.
- Kriteria: integritas ilmiah, keberanian, etika penelitian.

DITANYAKAN:
Keputusan akademis yang memenuhi ketiga kriteria.

JAWAB:
1. Integritas ilmiah berarti menyajikan data apa adanya tanpa menghapus atau memanipulasinya.
2. Keberanian berarti tetap meneliti topik penting meski berisiko lebih lama lulus, sedangkan etika penelitian menuntut perizinan dan perlindungan narasumber dari bahaya.
3. Menjelaskan rancangan yang etis kepada dosen juga menjawab kekhawatiran pembimbing. Opsi D memenuhi ketiga kriteria.

Jadi, jawaban yang tepat adalah (D) Tetap meneliti topik tersebut dengan data yang jujur, menjelaskan kepada dosen rancangan yang memenuhi etika penelitian seperti perizinan dan perlindungan identitas narasumber, serta siap bila kelulusan sedikit lebih lama.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan kebenaran ilmiah demi kenyamanan pribadi.
- (B) Menghapus data yang tidak menyenangkan adalah manipulasi data.
- (C) Membuka identitas narasumber membahayakan mereka dan melanggar etika penelitian.
- (E) Mengabaikan data yang ditemukan tidak jujur secara ilmiah.', updated_at=now() WHERE id='019b0c6a-abc7-7545-92d7-4ee75583473d';
UPDATE answers SET description='Mengganti judul demi lulus tepat waktu dan menunda pembelaan warga sampai memiliki jabatan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc7-7545-92d7-4ee75583473d' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Tetap pada judul tersebut, tetapi menghapus data yang memberatkan pihak berkuasa agar aman.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc7-7545-92d7-4ee75583473d' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengunggah data mentah lengkap dengan identitas narasumber ke media sosial agar cepat viral.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc7-7545-92d7-4ee75583473d' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Tetap meneliti topik tersebut dengan data yang jujur, menjelaskan kepada dosen rancangan yang memenuhi etika penelitian seperti perizinan dan perlindungan identitas narasumber, serta siap bila kelulusan sedikit lebih lama.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc7-7545-92d7-4ee75583473d' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengubah fokus penelitian dan mengabaikan data pelanggaran yang sudah ditemukan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc7-7545-92d7-4ee75583473d' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang pejabat yang menjadi tersangka korupsi menawarkan diri membongkar keterlibatan pejabat-pejabat lain yang lebih tinggi dalam kasus yang sama, dengan syarat ia tidak dihukum. Ia bukan pelaku utama dalam kasus tersebut. Perlakuan yang paling sesuai dengan hukum Indonesia tentang saksi pelaku yang bekerja sama (justice collaborator) adalah...', options='[{"id": "019983d1-698f-7760-a5f2-c3fb8ef17b6b", "description": "Membebaskannya sepenuhnya dari hukuman sebagai imbalan informasi.", "isCorrect": false, "point": 1}, {"id": "019983d1-698f-7dd0-97b0-7f6daa3981bc", "description": "Menolak kerja samanya dan menuntut hukuman maksimal karena semua pelaku harus dihukum sama berat.", "isCorrect": false, "point": 1}, {"id": "019983d1-6990-73cb-9409-ed74f5d30c5a", "description": "Menghentikan penyidikan terhadapnya agar ia aman memberikan informasi.", "isCorrect": false, "point": 1}, {"id": "019983d1-6990-793a-90ef-7502acef483f", "description": "Tetap memproses dan memidananya, tetapi ia dapat memperoleh perlindungan dan keringanan hukuman atas kerja samanya mengungkap pelaku lain.", "isCorrect": true, "point": 1}, {"id": "019983d1-6990-7dc9-a75e-515393273e89", "description": "Menyelesaikan kasusnya secara kekeluargaan dan merahasiakannya dari publik.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Tersangka korupsi bersedia membongkar keterlibatan pejabat lebih tinggi.
- Ia meminta tidak dihukum.
- Ia bukan pelaku utama.

DITANYAKAN:
Perlakuan hukum yang tepat terhadap saksi pelaku yang bekerja sama.

JAWAB:
1. Prinsip negara hukum (Pasal 1 ayat 3 UUD NRI 1945) dan persamaan di hadapan hukum (Pasal 27 ayat 1) menuntut setiap pelaku tetap diproses; tidak ada pembebasan karena menjadi pemberi informasi.
2. UU No. 31 Tahun 2014 tentang Perlindungan Saksi dan Korban mengatur saksi pelaku yang bekerja sama dapat memperoleh penanganan khusus dan penghargaan berupa keringanan penjatuhan pidana. Ketentuan ini berlaku bagi pelaku yang bukan pelaku utama.
3. Jadi, ia tetap dipidana, tetapi kerja samanya dapat menjadi alasan keringanan dan perlindungan. Opsi D sesuai ketentuan tersebut.

Jadi, jawaban yang tepat adalah (D) Tetap memproses dan memidananya, tetapi ia dapat memperoleh perlindungan dan keringanan hukuman atas kerja samanya mengungkap pelaku lain.

Mengapa opsi lain kurang tepat:
- (A) Pembebasan penuh tidak dikenal untuk saksi pelaku; yang ada adalah keringanan.
- (B) Hukum justru memberi ruang penghargaan bagi pelaku yang membantu membongkar kejahatan yang lebih besar.
- (C) Menghentikan penyidikan tanpa dasar hukum melanggar prinsip persamaan di hadapan hukum.
- (E) Korupsi adalah tindak pidana yang tidak dapat diselesaikan secara kekeluargaan.', status='aktif', quality_score=5, quality_notes='Revisi: stem berbentuk ''apakah ... ataukah'' diganti pertanyaan langsung; kunci D dirumuskan sesuai UU 31/2014 (keringanan, bukan negosiasi) dan opsi B yang mirip dibuat jelas keliru.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-698f-71cb-b26c-d9404aacf3f9';
UPDATE questions SET description='Seorang pejabat yang menjadi tersangka korupsi menawarkan diri membongkar keterlibatan pejabat-pejabat lain yang lebih tinggi dalam kasus yang sama, dengan syarat ia tidak dihukum. Ia bukan pelaku utama dalam kasus tersebut. Perlakuan yang paling sesuai dengan hukum Indonesia tentang saksi pelaku yang bekerja sama (justice collaborator) adalah...', explanation='DIKETAHUI:
- Tersangka korupsi bersedia membongkar keterlibatan pejabat lebih tinggi.
- Ia meminta tidak dihukum.
- Ia bukan pelaku utama.

DITANYAKAN:
Perlakuan hukum yang tepat terhadap saksi pelaku yang bekerja sama.

JAWAB:
1. Prinsip negara hukum (Pasal 1 ayat 3 UUD NRI 1945) dan persamaan di hadapan hukum (Pasal 27 ayat 1) menuntut setiap pelaku tetap diproses; tidak ada pembebasan karena menjadi pemberi informasi.
2. UU No. 31 Tahun 2014 tentang Perlindungan Saksi dan Korban mengatur saksi pelaku yang bekerja sama dapat memperoleh penanganan khusus dan penghargaan berupa keringanan penjatuhan pidana. Ketentuan ini berlaku bagi pelaku yang bukan pelaku utama.
3. Jadi, ia tetap dipidana, tetapi kerja samanya dapat menjadi alasan keringanan dan perlindungan. Opsi D sesuai ketentuan tersebut.

Jadi, jawaban yang tepat adalah (D) Tetap memproses dan memidananya, tetapi ia dapat memperoleh perlindungan dan keringanan hukuman atas kerja samanya mengungkap pelaku lain.

Mengapa opsi lain kurang tepat:
- (A) Pembebasan penuh tidak dikenal untuk saksi pelaku; yang ada adalah keringanan.
- (B) Hukum justru memberi ruang penghargaan bagi pelaku yang membantu membongkar kejahatan yang lebih besar.
- (C) Menghentikan penyidikan tanpa dasar hukum melanggar prinsip persamaan di hadapan hukum.
- (E) Korupsi adalah tindak pidana yang tidak dapat diselesaikan secara kekeluargaan.', updated_at=now() WHERE id='019983d1-698f-71cb-b26c-d9404aacf3f9';
UPDATE answers SET description='Membebaskannya sepenuhnya dari hukuman sebagai imbalan informasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-698f-71cb-b26c-d9404aacf3f9' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak kerja samanya dan menuntut hukuman maksimal karena semua pelaku harus dihukum sama berat.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-698f-71cb-b26c-d9404aacf3f9' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menghentikan penyidikan terhadapnya agar ia aman memberikan informasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-698f-71cb-b26c-d9404aacf3f9' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Tetap memproses dan memidananya, tetapi ia dapat memperoleh perlindungan dan keringanan hukuman atas kerja samanya mengungkap pelaku lain.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-698f-71cb-b26c-d9404aacf3f9' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyelesaikan kasusnya secara kekeluargaan dan merahasiakannya dari publik.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-698f-71cb-b26c-d9404aacf3f9' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang pejabat tinggi diduga melakukan korupsi. Sebagian pihak khawatir penahanannya akan memicu kegaduhan politik dan mengganggu jalannya pemerintahan. Sikap negara yang paling sesuai dengan prinsip negara hukum (Pasal 1 ayat 3 UUD NRI 1945) dan persamaan kedudukan di hadapan hukum (Pasal 27 ayat 1) adalah...', options='[{"id": "019983d1-8e12-7311-9a43-73a4cd235fff", "description": "Memproses pejabat tersebut sesuai prosedur hukum secara transparan, sambil menjamin pemerintahan tetap berjalan melalui pejabat pelaksana tugas.", "isCorrect": true, "point": 1}, {"id": "019983d1-8e12-778d-bf3a-e868ca587790", "description": "Menunda proses hukum sampai situasi politik dianggap tenang.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e12-7aeb-8ad6-f069c4a85b2c", "description": "Menghentikan penyelidikan bila pejabat tersebut mengembalikan sebagian uangnya.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e12-7ece-b974-b672d5fb8e9a", "description": "Memberikan pengampunan agar tidak terjadi kegaduhan politik.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e13-730c-b925-256f4e671e6b", "description": "Memberikan perlindungan khusus kepada pejabat tersebut agar terhindar dari proses hukum.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Pejabat tinggi diduga korupsi.
- Ada kekhawatiran kegaduhan politik dan terganggunya pemerintahan.
- Dasar: Pasal 1 ayat (3) dan Pasal 27 ayat (1) UUD NRI 1945.

DITANYAKAN:
Sikap negara yang sesuai prinsip negara hukum.

JAWAB:
1. Pasal 1 ayat (3): Indonesia adalah negara hukum. Pasal 27 ayat (1): semua warga negara bersamaan kedudukannya di dalam hukum tanpa kecuali, termasuk pejabat.
2. Kekhawatiran gangguan pemerintahan diatasi secara administratif, misalnya dengan menunjuk pelaksana tugas, bukan dengan menghentikan atau menunda proses hukum.
3. Opsi A menegakkan hukum sekaligus menjaga kelangsungan pemerintahan.

Jadi, jawaban yang tepat adalah (A) Memproses pejabat tersebut sesuai prosedur hukum secara transparan, sambil menjamin pemerintahan tetap berjalan melalui pejabat pelaksana tugas.

Mengapa opsi lain kurang tepat:
- (B) Menunda proses hukum karena alasan politik melanggar prinsip negara hukum.
- (C) Pengembalian kerugian negara tidak menghapus pidana korupsi (Pasal 4 UU No. 31 Tahun 1999).
- (D) Pengampunan untuk menghindari kegaduhan bertentangan dengan persamaan di hadapan hukum.
- (E) Perlindungan khusus dari proses hukum menciptakan kekebalan hukum bagi pejabat.', status='aktif', quality_score=5, quality_notes='Revisi: stem tidak lagi meminta ''tanpa mengorbankan salah satunya''; kunci A dilengkapi jaminan kelangsungan pemerintahan; opsi C (lembaga peradilan independen) yang dapat dibela diganti.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8e11-758e-8d8b-b57c03a511aa';
UPDATE questions SET description='Seorang pejabat tinggi diduga melakukan korupsi. Sebagian pihak khawatir penahanannya akan memicu kegaduhan politik dan mengganggu jalannya pemerintahan. Sikap negara yang paling sesuai dengan prinsip negara hukum (Pasal 1 ayat 3 UUD NRI 1945) dan persamaan kedudukan di hadapan hukum (Pasal 27 ayat 1) adalah...', explanation='DIKETAHUI:
- Pejabat tinggi diduga korupsi.
- Ada kekhawatiran kegaduhan politik dan terganggunya pemerintahan.
- Dasar: Pasal 1 ayat (3) dan Pasal 27 ayat (1) UUD NRI 1945.

DITANYAKAN:
Sikap negara yang sesuai prinsip negara hukum.

JAWAB:
1. Pasal 1 ayat (3): Indonesia adalah negara hukum. Pasal 27 ayat (1): semua warga negara bersamaan kedudukannya di dalam hukum tanpa kecuali, termasuk pejabat.
2. Kekhawatiran gangguan pemerintahan diatasi secara administratif, misalnya dengan menunjuk pelaksana tugas, bukan dengan menghentikan atau menunda proses hukum.
3. Opsi A menegakkan hukum sekaligus menjaga kelangsungan pemerintahan.

Jadi, jawaban yang tepat adalah (A) Memproses pejabat tersebut sesuai prosedur hukum secara transparan, sambil menjamin pemerintahan tetap berjalan melalui pejabat pelaksana tugas.

Mengapa opsi lain kurang tepat:
- (B) Menunda proses hukum karena alasan politik melanggar prinsip negara hukum.
- (C) Pengembalian kerugian negara tidak menghapus pidana korupsi (Pasal 4 UU No. 31 Tahun 1999).
- (D) Pengampunan untuk menghindari kegaduhan bertentangan dengan persamaan di hadapan hukum.
- (E) Perlindungan khusus dari proses hukum menciptakan kekebalan hukum bagi pejabat.', updated_at=now() WHERE id='019983d1-8e11-758e-8d8b-b57c03a511aa';
UPDATE answers SET description='Memproses pejabat tersebut sesuai prosedur hukum secara transparan, sambil menjamin pemerintahan tetap berjalan melalui pejabat pelaksana tugas.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e11-758e-8d8b-b57c03a511aa' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menunda proses hukum sampai situasi politik dianggap tenang.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e11-758e-8d8b-b57c03a511aa' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menghentikan penyelidikan bila pejabat tersebut mengembalikan sebagian uangnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e11-758e-8d8b-b57c03a511aa' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Memberikan pengampunan agar tidak terjadi kegaduhan politik.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e11-758e-8d8b-b57c03a511aa' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Memberikan perlindungan khusus kepada pejabat tersebut agar terhindar dari proses hukum.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e11-758e-8d8b-b57c03a511aa' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang teman sesama ASN sering memakai fasilitas kantor untuk kepentingan pribadi, seperti mencetak dokumen pribadi dan memakai mobil dinas untuk liburan akhir pekan. Anda tahu hal itu melanggar aturan dan etika ASN. Langkah Anda yang paling tepat sebagai rekan kerja adalah...', options='[{"id": "019983d1-8e1a-7340-be1f-bd40c15dc888", "description": "Menegurnya dengan keras di depan rekan-rekan kerja lain.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e1a-7827-973c-65640969de89", "description": "Membiarkannya karena hubungan pertemanan lebih penting.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e1a-7e01-adb1-2afd43c40e19", "description": "Ikut memakai fasilitas kantor karena dianggap sudah lumrah.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e1b-7486-9b3d-6b3a458d14f8", "description": "Menyebarkan foto mobil dinas yang ia pakai berlibur ke media sosial.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e1b-7abc-81c5-1d45063f0fc5", "description": "Mengingatkannya secara pribadi bahwa memakai fasilitas dinas untuk kepentingan pribadi melanggar aturan dan merugikan negara, serta menyampaikan kepada atasan bila ia tetap mengulanginya.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Rekan ASN memakai fasilitas kantor dan mobil dinas untuk kepentingan pribadi.
- Perbuatan itu melanggar aturan dan etika ASN.

DITANYAKAN:
Langkah yang paling tepat sebagai rekan kerja.

JAWAB:
1. Memakai fasilitas negara untuk kepentingan pribadi adalah penyalahgunaan aset negara yang merugikan keuangan negara dan bertentangan dengan integritas ASN.
2. Langkah yang proporsional dimulai dengan teguran pribadi yang persuasif; bila tidak berubah, pelanggaran wajib disampaikan kepada atasan sebagai pihak berwenang.
3. Opsi E memuat kedua langkah tersebut secara bertahap.

Jadi, jawaban yang tepat adalah (E) Mengingatkannya secara pribadi bahwa memakai fasilitas dinas untuk kepentingan pribadi melanggar aturan dan merugikan negara, serta menyampaikan kepada atasan bila ia tetap mengulanginya.

Mengapa opsi lain kurang tepat:
- (A) Teguran di depan umum mempermalukan dan kurang efektif.
- (B) Membiarkan pelanggaran berarti ikut menoleransi kerugian negara.
- (C) Ikut melakukan berarti turut melanggar aturan.
- (D) Menyebarkan di media sosial bukan jalur penyelesaian yang benar.', status='aktif', quality_score=4, quality_notes='Revisi: frasa ''tidak ingin merusak pertemanan'' dihapus; kunci D dilengkapi eskalasi kepada atasan bila berulang, sehingga opsi teguran/lapor tidak lagi bersaing; opsi A dan E diberi cacat jelas.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8e19-7b27-9523-d2bc18e5649a';
UPDATE questions SET description='Seorang teman sesama ASN sering memakai fasilitas kantor untuk kepentingan pribadi, seperti mencetak dokumen pribadi dan memakai mobil dinas untuk liburan akhir pekan. Anda tahu hal itu melanggar aturan dan etika ASN. Langkah Anda yang paling tepat sebagai rekan kerja adalah...', explanation='DIKETAHUI:
- Rekan ASN memakai fasilitas kantor dan mobil dinas untuk kepentingan pribadi.
- Perbuatan itu melanggar aturan dan etika ASN.

DITANYAKAN:
Langkah yang paling tepat sebagai rekan kerja.

JAWAB:
1. Memakai fasilitas negara untuk kepentingan pribadi adalah penyalahgunaan aset negara yang merugikan keuangan negara dan bertentangan dengan integritas ASN.
2. Langkah yang proporsional dimulai dengan teguran pribadi yang persuasif; bila tidak berubah, pelanggaran wajib disampaikan kepada atasan sebagai pihak berwenang.
3. Opsi E memuat kedua langkah tersebut secara bertahap.

Jadi, jawaban yang tepat adalah (E) Mengingatkannya secara pribadi bahwa memakai fasilitas dinas untuk kepentingan pribadi melanggar aturan dan merugikan negara, serta menyampaikan kepada atasan bila ia tetap mengulanginya.

Mengapa opsi lain kurang tepat:
- (A) Teguran di depan umum mempermalukan dan kurang efektif.
- (B) Membiarkan pelanggaran berarti ikut menoleransi kerugian negara.
- (C) Ikut melakukan berarti turut melanggar aturan.
- (D) Menyebarkan di media sosial bukan jalur penyelesaian yang benar.', updated_at=now() WHERE id='019983d1-8e19-7b27-9523-d2bc18e5649a';
UPDATE answers SET description='Menegurnya dengan keras di depan rekan-rekan kerja lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e19-7b27-9523-d2bc18e5649a' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membiarkannya karena hubungan pertemanan lebih penting.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e19-7b27-9523-d2bc18e5649a' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Ikut memakai fasilitas kantor karena dianggap sudah lumrah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e19-7b27-9523-d2bc18e5649a' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyebarkan foto mobil dinas yang ia pakai berlibur ke media sosial.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e19-7b27-9523-d2bc18e5649a' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengingatkannya secara pribadi bahwa memakai fasilitas dinas untuk kepentingan pribadi melanggar aturan dan merugikan negara, serta menyampaikan kepada atasan bila ia tetap mengulanginya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e19-7b27-9523-d2bc18e5649a' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Seorang teman sesama ASN sering memakai fasilitas kantor untuk kepentingan pribadi, seperti mencetak dokumen pribadi dan memakai mobil dinas untuk liburan akhir pekan. Anda tahu hal itu melanggar aturan dan etika ASN. Langkah Anda yang paling tepat sebagai rekan kerja adalah...', explanation='DIKETAHUI:
- Rekan ASN memakai fasilitas kantor dan mobil dinas untuk kepentingan pribadi.
- Perbuatan itu melanggar aturan dan etika ASN.

DITANYAKAN:
Langkah yang paling tepat sebagai rekan kerja.

JAWAB:
1. Memakai fasilitas negara untuk kepentingan pribadi adalah penyalahgunaan aset negara yang merugikan keuangan negara dan bertentangan dengan integritas ASN.
2. Langkah yang proporsional dimulai dengan teguran pribadi yang persuasif; bila tidak berubah, pelanggaran wajib disampaikan kepada atasan sebagai pihak berwenang.
3. Opsi E memuat kedua langkah tersebut secara bertahap.

Jadi, jawaban yang tepat adalah (E) Mengingatkannya secara pribadi bahwa memakai fasilitas dinas untuk kepentingan pribadi melanggar aturan dan merugikan negara, serta menyampaikan kepada atasan bila ia tetap mengulanginya.

Mengapa opsi lain kurang tepat:
- (A) Teguran di depan umum mempermalukan dan kurang efektif.
- (B) Membiarkan pelanggaran berarti ikut menoleransi kerugian negara.
- (C) Ikut melakukan berarti turut melanggar aturan.
- (D) Menyebarkan di media sosial bukan jalur penyelesaian yang benar.', updated_at=now() WHERE id='019993b1-83b4-71e2-b061-1e471dbce885';
UPDATE answers SET description='Menegurnya dengan keras di depan rekan-rekan kerja lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b4-71e2-b061-1e471dbce885' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membiarkannya karena hubungan pertemanan lebih penting.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b4-71e2-b061-1e471dbce885' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Ikut memakai fasilitas kantor karena dianggap sudah lumrah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b4-71e2-b061-1e471dbce885' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyebarkan foto mobil dinas yang ia pakai berlibur ke media sosial.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b4-71e2-b061-1e471dbce885' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengingatkannya secara pribadi bahwa memakai fasilitas dinas untuk kepentingan pribadi melanggar aturan dan merugikan negara, serta menyampaikan kepada atasan bila ia tetap mengulanginya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83b4-71e2-b061-1e471dbce885' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang guru honorer di sekolah Anda dijanjikan oknum kepala sekolah dapat ''dimuluskan'' menjadi ASN asalkan menyetor sejumlah uang. Guru tersebut sangat membutuhkan pekerjaan itu, tetapi ingin tetap jujur. Sebagai rekan kerjanya, tindakan yang paling sesuai dengan nilai integritas adalah...', options='[{"id": "019993b1-83eb-7bd5-a179-02f894cdce02", "description": "Menyarankannya membayar karena ini mungkin satu-satunya kesempatan.", "isCorrect": false, "point": 1}, {"id": "019993b1-83ec-750f-bbac-7893b3850405", "description": "Menyarankannya menawar agar setoran yang diminta lebih kecil.", "isCorrect": false, "point": 1}, {"id": "019993b1-83ec-79bf-aed4-f656b925e9dc", "description": "Mendukungnya menolak permintaan tersebut dan mendampinginya melaporkan praktik itu melalui saluran pengaduan resmi, seperti inspektorat atau dinas pendidikan.", "isCorrect": true, "point": 1}, {"id": "019993b1-83ec-7e5c-9cbd-4f0d6b5decf6", "description": "Menyarankannya menolak, tetapi meminta ia diam saja agar tidak bermasalah dengan kepala sekolah.", "isCorrect": false, "point": 1}, {"id": "019993b1-83ed-760a-8de0-f96da092f466", "description": "Menegur kepala sekolah di depan rapat guru tanpa bukti apa pun.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Oknum kepala sekolah meminta setoran uang untuk ''memuluskan'' pengangkatan ASN.
- Guru honorer membutuhkan pekerjaan, tetapi ingin jujur.
- Anda rekan kerjanya.

DITANYAKAN:
Tindakan rekan kerja yang paling berintegritas.

JAWAB:
1. Meminta uang untuk memuluskan pengangkatan adalah praktik suap atau pungutan liar; pengangkatan ASN seharusnya melalui seleksi yang terbuka.
2. Integritas menuntut menolak praktik tersebut dan memutus mata rantainya dengan melapor melalui saluran resmi yang melindungi pelapor.
3. Mendampingi korban menunjukkan dukungan nyata. Opsi C memuat penolakan sekaligus pelaporan.

Jadi, jawaban yang tepat adalah (C) Mendukungnya menolak permintaan tersebut dan mendampinginya melaporkan praktik itu melalui saluran pengaduan resmi, seperti inspektorat atau dinas pendidikan.

Mengapa opsi lain kurang tepat:
- (A) Membayar berarti ikut dalam praktik suap.
- (B) Menawar jumlah setoran tetap berarti menyuap.
- (D) Menolak tetapi diam membiarkan praktik itu terus menimpa orang lain.
- (E) Tuduhan tanpa bukti di forum terbuka berisiko fitnah dan tidak efektif.', status='aktif', quality_score=5, quality_notes='Revisi: kunci C ditambah unsur pelaporan melalui saluran resmi sehingga opsi lapor (B lama) tidak lagi bersaing; opsi B dan D diganti pengecoh yang jelas keliru.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-83eb-779f-a02d-98567b4e983f';
UPDATE questions SET description='Seorang guru honorer di sekolah Anda dijanjikan oknum kepala sekolah dapat ''dimuluskan'' menjadi ASN asalkan menyetor sejumlah uang. Guru tersebut sangat membutuhkan pekerjaan itu, tetapi ingin tetap jujur. Sebagai rekan kerjanya, tindakan yang paling sesuai dengan nilai integritas adalah...', explanation='DIKETAHUI:
- Oknum kepala sekolah meminta setoran uang untuk ''memuluskan'' pengangkatan ASN.
- Guru honorer membutuhkan pekerjaan, tetapi ingin jujur.
- Anda rekan kerjanya.

DITANYAKAN:
Tindakan rekan kerja yang paling berintegritas.

JAWAB:
1. Meminta uang untuk memuluskan pengangkatan adalah praktik suap atau pungutan liar; pengangkatan ASN seharusnya melalui seleksi yang terbuka.
2. Integritas menuntut menolak praktik tersebut dan memutus mata rantainya dengan melapor melalui saluran resmi yang melindungi pelapor.
3. Mendampingi korban menunjukkan dukungan nyata. Opsi C memuat penolakan sekaligus pelaporan.

Jadi, jawaban yang tepat adalah (C) Mendukungnya menolak permintaan tersebut dan mendampinginya melaporkan praktik itu melalui saluran pengaduan resmi, seperti inspektorat atau dinas pendidikan.

Mengapa opsi lain kurang tepat:
- (A) Membayar berarti ikut dalam praktik suap.
- (B) Menawar jumlah setoran tetap berarti menyuap.
- (D) Menolak tetapi diam membiarkan praktik itu terus menimpa orang lain.
- (E) Tuduhan tanpa bukti di forum terbuka berisiko fitnah dan tidak efektif.', updated_at=now() WHERE id='019993b1-83eb-779f-a02d-98567b4e983f';
UPDATE answers SET description='Menyarankannya membayar karena ini mungkin satu-satunya kesempatan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83eb-779f-a02d-98567b4e983f' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menyarankannya menawar agar setoran yang diminta lebih kecil.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83eb-779f-a02d-98567b4e983f' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mendukungnya menolak permintaan tersebut dan mendampinginya melaporkan praktik itu melalui saluran pengaduan resmi, seperti inspektorat atau dinas pendidikan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83eb-779f-a02d-98567b4e983f' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyarankannya menolak, tetapi meminta ia diam saja agar tidak bermasalah dengan kepala sekolah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83eb-779f-a02d-98567b4e983f' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menegur kepala sekolah di depan rapat guru tanpa bukti apa pun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83eb-779f-a02d-98567b4e983f' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Kepala sekolah menawari Anda jabatan strategis dengan syarat Anda menyetor sebagian tunjangan kepadanya setiap bulan, dengan dalih untuk ''operasional sekolah'' tanpa pencatatan resmi. Anda tahu itu bentuk pungutan liar yang melanggar hukum. Tindakan yang paling berintegritas adalah...', options='[{"id": "019993b1-840e-71f3-8b4b-b0ad955e71d2", "description": "Menolak tawaran tersebut dan melaporkan permintaan itu kepada pihak berwenang melalui saluran pengaduan resmi.", "isCorrect": true, "point": 1}, {"id": "019993b1-840e-776f-81d2-98058ca24e33", "description": "Menerima tawaran itu karena jabatan tersebut akan memberi keuntungan lebih besar.", "isCorrect": false, "point": 1}, {"id": "019993b1-840e-7e27-bf21-becd1dcbb6b5", "description": "Menolak tawaran tersebut, tetapi merahasiakannya agar hubungan dengan kepala sekolah tetap baik.", "isCorrect": false, "point": 1}, {"id": "019993b1-840f-74d0-b528-29224a5a9f16", "description": "Menerima tawaran tetapi menawar agar setoran bulanannya lebih kecil.", "isCorrect": false, "point": 1}, {"id": "019993b1-840f-7a50-8be3-c883c5e875a6", "description": "Menerima tawaran lalu diam-diam menjebak kepala sekolah dengan cara Anda sendiri.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Kepala sekolah meminta setoran tunjangan sebagai syarat jabatan.
- Dalihnya operasional sekolah tanpa pencatatan resmi.
- Praktik itu adalah pungutan liar.

DITANYAKAN:
Tindakan yang paling berintegritas.

JAWAB:
1. Pegawai negeri yang dengan menyalahgunakan kekuasaannya memaksa orang lain menyerahkan sesuatu dapat dijerat sebagai pemerasan dalam jabatan menurut UU Pemberantasan Tindak Pidana Korupsi.
2. Integritas menuntut tidak ikut serta (menolak) dan membantu menghentikan praktik itu (melapor melalui saluran resmi).
3. Opsi A memuat kedua unsur tersebut.

Jadi, jawaban yang tepat adalah (A) Menolak tawaran tersebut dan melaporkan permintaan itu kepada pihak berwenang melalui saluran pengaduan resmi.

Mengapa opsi lain kurang tepat:
- (B) Menerima berarti ikut dalam praktik pungutan liar.
- (C) Menolak tanpa melapor membiarkan praktik itu terus berlangsung terhadap orang lain.
- (D) Menawar besaran setoran tetap berarti ikut serta.
- (E) Menjebak dengan cara sendiri berisiko melanggar hukum; pengumpulan bukti adalah wewenang aparat.', status='aktif', quality_score=5, quality_notes='Revisi: istilah keliru ''gratifikasi'' diganti ''pungutan liar/pemerasan dalam jabatan''; opsi C dipertegas (menolak tetapi merahasiakan) sehingga kunci B tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-840d-79e6-a562-673bd2d9a42c';
UPDATE questions SET description='Kepala sekolah menawari Anda jabatan strategis dengan syarat Anda menyetor sebagian tunjangan kepadanya setiap bulan, dengan dalih untuk ''operasional sekolah'' tanpa pencatatan resmi. Anda tahu itu bentuk pungutan liar yang melanggar hukum. Tindakan yang paling berintegritas adalah...', explanation='DIKETAHUI:
- Kepala sekolah meminta setoran tunjangan sebagai syarat jabatan.
- Dalihnya operasional sekolah tanpa pencatatan resmi.
- Praktik itu adalah pungutan liar.

DITANYAKAN:
Tindakan yang paling berintegritas.

JAWAB:
1. Pegawai negeri yang dengan menyalahgunakan kekuasaannya memaksa orang lain menyerahkan sesuatu dapat dijerat sebagai pemerasan dalam jabatan menurut UU Pemberantasan Tindak Pidana Korupsi.
2. Integritas menuntut tidak ikut serta (menolak) dan membantu menghentikan praktik itu (melapor melalui saluran resmi).
3. Opsi A memuat kedua unsur tersebut.

Jadi, jawaban yang tepat adalah (A) Menolak tawaran tersebut dan melaporkan permintaan itu kepada pihak berwenang melalui saluran pengaduan resmi.

Mengapa opsi lain kurang tepat:
- (B) Menerima berarti ikut dalam praktik pungutan liar.
- (C) Menolak tanpa melapor membiarkan praktik itu terus berlangsung terhadap orang lain.
- (D) Menawar besaran setoran tetap berarti ikut serta.
- (E) Menjebak dengan cara sendiri berisiko melanggar hukum; pengumpulan bukti adalah wewenang aparat.', updated_at=now() WHERE id='019993b1-840d-79e6-a562-673bd2d9a42c';
UPDATE answers SET description='Menolak tawaran tersebut dan melaporkan permintaan itu kepada pihak berwenang melalui saluran pengaduan resmi.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-840d-79e6-a562-673bd2d9a42c' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menerima tawaran itu karena jabatan tersebut akan memberi keuntungan lebih besar.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-840d-79e6-a562-673bd2d9a42c' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menolak tawaran tersebut, tetapi merahasiakannya agar hubungan dengan kepala sekolah tetap baik.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-840d-79e6-a562-673bd2d9a42c' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menerima tawaran tetapi menawar agar setoran bulanannya lebih kecil.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-840d-79e6-a562-673bd2d9a42c' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menerima tawaran lalu diam-diam menjebak kepala sekolah dengan cara Anda sendiri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-840d-79e6-a562-673bd2d9a42c' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang rekan guru sering mempromosikan dan menjual produk pribadinya kepada siswa di dalam kelas, bahkan menjadikannya bahan ajar yang tidak berkaitan dengan pelajaran. Ia beralasan itu cara kreatif mencari penghasilan tambahan. Sikap Anda yang paling sesuai dengan etika profesi dan integritas guru adalah...', options='[{"id": "019993b1-8413-78b3-9336-2ec2b16833f5", "description": "Mengikuti jejaknya karena menguntungkan.", "isCorrect": false, "point": 1}, {"id": "019993b1-8414-752b-8308-e0869cf2b171", "description": "Diam saja karena tidak ingin mencampuri urusan orang lain.", "isCorrect": false, "point": 1}, {"id": "019993b1-8415-714d-bfd0-0e4840553162", "description": "Mengunggah video rekan tersebut sedang berjualan ke media sosial.", "isCorrect": false, "point": 1}, {"id": "019993b1-8415-7833-a19b-daf4c63249b8", "description": "Mengingatkannya secara pribadi bahwa berjualan di kelas menyalahgunakan posisi guru dan mengganggu pembelajaran, serta menyampaikan kepada kepala sekolah bila tetap berlanjut.", "isCorrect": true, "point": 1}, {"id": "019993b1-8415-7e56-8cfe-a89e5eb7010d", "description": "Meminta bagian keuntungan agar Anda ikut diam.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Rekan guru berjualan produk pribadi kepada siswa di kelas.
- Ia menjadikannya bahan ajar yang tidak berkaitan dengan pelajaran.

DITANYAKAN:
Sikap yang sesuai etika profesi dan integritas guru.

JAWAB:
1. Guru yang berjualan kepada siswanya di kelas memanfaatkan posisi dan waktu dinas untuk kepentingan pribadi; ini benturan kepentingan yang merugikan hak belajar siswa.
2. Langkah yang proporsional adalah mengingatkan secara pribadi lebih dahulu, lalu menyampaikan kepada kepala sekolah bila tidak berubah.
3. Opsi D memuat langkah bertahap tersebut.

Jadi, jawaban yang tepat adalah (D) Mengingatkannya secara pribadi bahwa berjualan di kelas menyalahgunakan posisi guru dan mengganggu pembelajaran, serta menyampaikan kepada kepala sekolah bila tetap berlanjut.

Mengapa opsi lain kurang tepat:
- (A) Ikut melakukan berarti turut menyalahgunakan posisi.
- (B) Diam membiarkan hak belajar siswa terganggu.
- (C) Mempermalukan di media sosial bukan penyelesaian yang beretika.
- (E) Meminta bagian keuntungan adalah tindakan koruptif.', status='aktif', quality_score=5, quality_notes='Revisi: kunci D dilengkapi eskalasi ke kepala sekolah bila berlanjut; opsi C lama (lapor kepsek) diganti unggahan media sosial sehingga konsisten dengan soal sejenis.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-8413-7040-b04d-0212f023bf4c';
UPDATE questions SET description='Seorang rekan guru sering mempromosikan dan menjual produk pribadinya kepada siswa di dalam kelas, bahkan menjadikannya bahan ajar yang tidak berkaitan dengan pelajaran. Ia beralasan itu cara kreatif mencari penghasilan tambahan. Sikap Anda yang paling sesuai dengan etika profesi dan integritas guru adalah...', explanation='DIKETAHUI:
- Rekan guru berjualan produk pribadi kepada siswa di kelas.
- Ia menjadikannya bahan ajar yang tidak berkaitan dengan pelajaran.

DITANYAKAN:
Sikap yang sesuai etika profesi dan integritas guru.

JAWAB:
1. Guru yang berjualan kepada siswanya di kelas memanfaatkan posisi dan waktu dinas untuk kepentingan pribadi; ini benturan kepentingan yang merugikan hak belajar siswa.
2. Langkah yang proporsional adalah mengingatkan secara pribadi lebih dahulu, lalu menyampaikan kepada kepala sekolah bila tidak berubah.
3. Opsi D memuat langkah bertahap tersebut.

Jadi, jawaban yang tepat adalah (D) Mengingatkannya secara pribadi bahwa berjualan di kelas menyalahgunakan posisi guru dan mengganggu pembelajaran, serta menyampaikan kepada kepala sekolah bila tetap berlanjut.

Mengapa opsi lain kurang tepat:
- (A) Ikut melakukan berarti turut menyalahgunakan posisi.
- (B) Diam membiarkan hak belajar siswa terganggu.
- (C) Mempermalukan di media sosial bukan penyelesaian yang beretika.
- (E) Meminta bagian keuntungan adalah tindakan koruptif.', updated_at=now() WHERE id='019993b1-8413-7040-b04d-0212f023bf4c';
UPDATE answers SET description='Mengikuti jejaknya karena menguntungkan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-8413-7040-b04d-0212f023bf4c' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Diam saja karena tidak ingin mencampuri urusan orang lain.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-8413-7040-b04d-0212f023bf4c' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengunggah video rekan tersebut sedang berjualan ke media sosial.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-8413-7040-b04d-0212f023bf4c' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengingatkannya secara pribadi bahwa berjualan di kelas menyalahgunakan posisi guru dan mengganggu pembelajaran, serta menyampaikan kepada kepala sekolah bila tetap berlanjut.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-8413-7040-b04d-0212f023bf4c' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminta bagian keuntungan agar Anda ikut diam.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-8413-7040-b04d-0212f023bf4c' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda panitia pentas seni sekolah. Anda menemukan bukti bahwa seorang panitia lain menggelembungkan biaya produksi dalam laporan keuangan untuk keuntungan pribadi. Tindakan yang paling sesuai dengan nilai integritas dan akuntabilitas adalah...', options='[{"id": "019993b1-a705-75f3-9391-57723c219cbf", "description": "Mengabaikannya karena tidak ingin terlibat masalah.", "isCorrect": false, "point": 1}, {"id": "019993b1-a705-7afb-8e22-d66469a9e78c", "description": "Diam-diam memintanya mengembalikan sebagian uang tanpa diketahui siapa pun.", "isCorrect": false, "point": 1}, {"id": "019993b1-a706-712e-b01b-1bbb57ef256d", "description": "Menyerahkan bukti tersebut kepada guru pembimbing agar laporan keuangan diperiksa dan kelebihan dana dikembalikan.", "isCorrect": true, "point": 1}, {"id": "019993b1-a706-75ef-8e53-39eba6900c61", "description": "Ikut menggelembungkan biaya bagian Anda.", "isCorrect": false, "point": 1}, {"id": "019993b1-a706-7a24-9c31-1df60fd1a59e", "description": "Mengajaknya berbagi keuntungan.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Panitia lain menggelembungkan biaya produksi (mark up).
- Anda memiliki bukti.
- Kriteria: integritas dan akuntabilitas.

DITANYAKAN:
Tindakan yang paling tepat.

JAWAB:
1. Menggelembungkan biaya adalah kecurangan keuangan yang merugikan sekolah, sejenis dengan praktik korupsi.
2. Akuntabilitas berarti penggunaan dana harus dapat diperiksa pihak yang berwenang; guru pembimbing adalah penanggung jawab kegiatan.
3. Menyerahkan bukti agar laporan diperiksa memulihkan kerugian secara terbuka. Opsi C paling tepat.

Jadi, jawaban yang tepat adalah (C) Menyerahkan bukti tersebut kepada guru pembimbing agar laporan keuangan diperiksa dan kelebihan dana dikembalikan.

Mengapa opsi lain kurang tepat:
- (A) Mengabaikan berarti membiarkan kerugian sekolah.
- (B) Penyelesaian diam-diam tidak akuntabel dan berpotensi menutupi kecurangan.
- (D) Ikut menggelembungkan biaya berarti turut berbuat curang.
- (E) Berbagi keuntungan berarti terlibat dalam kecurangan.', status='aktif', quality_score=5, quality_notes='Revisi: kunci C (melapor ke guru pembimbing) dipertahankan dan dilengkapi bukti serta pemeriksaan; opsi B dipertegas sebagai penyelesaian diam-diam yang tidak akuntabel.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-a705-711f-bf7c-4a0a84e8fb6a';
UPDATE questions SET description='Anda panitia pentas seni sekolah. Anda menemukan bukti bahwa seorang panitia lain menggelembungkan biaya produksi dalam laporan keuangan untuk keuntungan pribadi. Tindakan yang paling sesuai dengan nilai integritas dan akuntabilitas adalah...', explanation='DIKETAHUI:
- Panitia lain menggelembungkan biaya produksi (mark up).
- Anda memiliki bukti.
- Kriteria: integritas dan akuntabilitas.

DITANYAKAN:
Tindakan yang paling tepat.

JAWAB:
1. Menggelembungkan biaya adalah kecurangan keuangan yang merugikan sekolah, sejenis dengan praktik korupsi.
2. Akuntabilitas berarti penggunaan dana harus dapat diperiksa pihak yang berwenang; guru pembimbing adalah penanggung jawab kegiatan.
3. Menyerahkan bukti agar laporan diperiksa memulihkan kerugian secara terbuka. Opsi C paling tepat.

Jadi, jawaban yang tepat adalah (C) Menyerahkan bukti tersebut kepada guru pembimbing agar laporan keuangan diperiksa dan kelebihan dana dikembalikan.

Mengapa opsi lain kurang tepat:
- (A) Mengabaikan berarti membiarkan kerugian sekolah.
- (B) Penyelesaian diam-diam tidak akuntabel dan berpotensi menutupi kecurangan.
- (D) Ikut menggelembungkan biaya berarti turut berbuat curang.
- (E) Berbagi keuntungan berarti terlibat dalam kecurangan.', updated_at=now() WHERE id='019993b1-a705-711f-bf7c-4a0a84e8fb6a';
UPDATE answers SET description='Mengabaikannya karena tidak ingin terlibat masalah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a705-711f-bf7c-4a0a84e8fb6a' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Diam-diam memintanya mengembalikan sebagian uang tanpa diketahui siapa pun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a705-711f-bf7c-4a0a84e8fb6a' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menyerahkan bukti tersebut kepada guru pembimbing agar laporan keuangan diperiksa dan kelebihan dana dikembalikan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a705-711f-bf7c-4a0a84e8fb6a' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Ikut menggelembungkan biaya bagian Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a705-711f-bf7c-4a0a84e8fb6a' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengajaknya berbagi keuntungan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-a705-711f-bf7c-4a0a84e8fb6a' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Krisis moneter 1997–1998 menjadi salah satu pemicu berakhirnya pemerintahan Orde Baru pada Mei 1998. Gerakan Reformasi kemudian mengusung sejumlah tuntutan. Rumusan yang paling tepat menggambarkan agenda Reformasi 1998 adalah...', options='[{"id": "019afdd0-0bec-7be1-97c0-e22414852348", "description": "Memperpanjang masa jabatan presiden tanpa batas demi stabilitas nasional.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bed-7134-a223-aeeac884247e", "description": "Mempertahankan dwifungsi ABRI dalam pemerintahan sipil.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bed-768f-8686-fb7cf46bcf52", "description": "Amandemen UUD 1945, penghapusan dwifungsi ABRI, penegakan supremasi hukum, dan pemberantasan KKN.", "isCorrect": true, "point": 1}, {"id": "019afdd0-0bed-7b60-823f-6be081b4915a", "description": "Mengganti Pancasila dengan ideologi lain sebagai dasar negara.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0bee-727a-a03d-a09d8b38e143", "description": "Menghapus otonomi daerah dan memusatkan seluruh kekuasaan di pemerintah pusat.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Krisis moneter 1997–1998 memicu berakhirnya Orde Baru pada Mei 1998.
- Yang ditanya: agenda Reformasi 1998.

DITANYAKAN:
Rumusan agenda Reformasi 1998 yang tepat.

JAWAB:
1. Tuntutan Reformasi 1998 meliputi amandemen UUD 1945, penghapusan dwifungsi ABRI, penegakan supremasi hukum dan HAM, pemberantasan KKN, pemberian otonomi daerah yang luas, serta pengadilan bagi Soeharto dan kroninya.
2. Agenda itu kemudian diwujudkan antara lain melalui empat kali perubahan UUD 1945 (1999–2002), pemisahan TNI dan Polri, serta pembentukan KPK.
3. Opsi C memuat pokok-pokok agenda tersebut.

Jadi, jawaban yang tepat adalah (C) Amandemen UUD 1945, penghapusan dwifungsi ABRI, penegakan supremasi hukum, dan pemberantasan KKN.

Mengapa opsi lain kurang tepat:
- (A) Reformasi justru menuntut pembatasan masa jabatan presiden, yang kemudian diatur dalam Pasal 7 UUD NRI 1945 hasil perubahan.
- (B) Reformasi menuntut penghapusan dwifungsi ABRI.
- (D) Reformasi tidak mengganti Pancasila; Pancasila tetap menjadi dasar negara.
- (E) Reformasi justru menuntut otonomi daerah yang luas.', status='aktif', quality_score=5, quality_notes='Revisi besar: soal analogi pilihan jurusan yang dipaksakan ke materi sejarah diganti soal faktual agenda Reformasi 1998, tetap dalam WSK-28 (Orde Baru sampai Reformasi).', reviewed_at=now(), updated_at=now() WHERE id='019afdd0-0bec-77be-9464-ad953844f178';
UPDATE questions SET description='Krisis moneter 1997–1998 menjadi salah satu pemicu berakhirnya pemerintahan Orde Baru pada Mei 1998. Gerakan Reformasi kemudian mengusung sejumlah tuntutan. Rumusan yang paling tepat menggambarkan agenda Reformasi 1998 adalah...', explanation='DIKETAHUI:
- Krisis moneter 1997–1998 memicu berakhirnya Orde Baru pada Mei 1998.
- Yang ditanya: agenda Reformasi 1998.

DITANYAKAN:
Rumusan agenda Reformasi 1998 yang tepat.

JAWAB:
1. Tuntutan Reformasi 1998 meliputi amandemen UUD 1945, penghapusan dwifungsi ABRI, penegakan supremasi hukum dan HAM, pemberantasan KKN, pemberian otonomi daerah yang luas, serta pengadilan bagi Soeharto dan kroninya.
2. Agenda itu kemudian diwujudkan antara lain melalui empat kali perubahan UUD 1945 (1999–2002), pemisahan TNI dan Polri, serta pembentukan KPK.
3. Opsi C memuat pokok-pokok agenda tersebut.

Jadi, jawaban yang tepat adalah (C) Amandemen UUD 1945, penghapusan dwifungsi ABRI, penegakan supremasi hukum, dan pemberantasan KKN.

Mengapa opsi lain kurang tepat:
- (A) Reformasi justru menuntut pembatasan masa jabatan presiden, yang kemudian diatur dalam Pasal 7 UUD NRI 1945 hasil perubahan.
- (B) Reformasi menuntut penghapusan dwifungsi ABRI.
- (D) Reformasi tidak mengganti Pancasila; Pancasila tetap menjadi dasar negara.
- (E) Reformasi justru menuntut otonomi daerah yang luas.', updated_at=now() WHERE id='019afdd0-0bec-77be-9464-ad953844f178';
UPDATE answers SET description='Memperpanjang masa jabatan presiden tanpa batas demi stabilitas nasional.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bec-77be-9464-ad953844f178' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mempertahankan dwifungsi ABRI dalam pemerintahan sipil.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bec-77be-9464-ad953844f178' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Amandemen UUD 1945, penghapusan dwifungsi ABRI, penegakan supremasi hukum, dan pemberantasan KKN.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bec-77be-9464-ad953844f178' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengganti Pancasila dengan ideologi lain sebagai dasar negara.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bec-77be-9464-ad953844f178' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menghapus otonomi daerah dan memusatkan seluruh kekuasaan di pemerintah pusat.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0bec-77be-9464-ad953844f178' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Pada 11 Maret 1966, Presiden Soekarno mengeluarkan Surat Perintah Sebelas Maret (Supersemar) kepada Letjen Soeharto. Isi pokok surat perintah tersebut adalah ...', options='[{"id": "019b0bef-1fdd-7a8f-98f7-a1fe0823cdb7", "description": "Penyerahan jabatan presiden secara resmi kepada Soeharto.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fde-7026-a3a5-50708e28fcf1", "description": "Perintah mengambil segala tindakan yang dianggap perlu untuk menjamin keamanan, ketenangan, dan kestabilan jalannya pemerintahan.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fde-765d-8743-f27bb43408f2", "description": "Pembubaran Konstituante dan pemberlakuan kembali UUD 1945.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fde-7bd4-83ea-e5c9ee9912cc", "description": "Pembentukan Kabinet Pembangunan I.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fdf-71ba-bd3c-36d553f32123", "description": "Pengakuan kedaulatan Indonesia oleh Belanda.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Supersemar dikeluarkan 11 Maret 1966.
- Diberikan Presiden Soekarno kepada Letjen Soeharto.

DITANYAKAN:
Isi pokok Supersemar.

JAWAB:
1. Supersemar berisi perintah kepada Letjen Soeharto untuk mengambil segala tindakan yang dianggap perlu demi terjaminnya keamanan, ketenangan, serta kestabilan jalannya pemerintahan, sekaligus menjamin keselamatan pribadi dan kewibawaan Presiden.
2. Supersemar bukan penyerahan jabatan presiden; Soeharto baru diangkat sebagai pejabat presiden melalui Sidang Istimewa MPRS 1967 dan sebagai presiden pada 1968. Naskah aslinya hingga kini masih diperdebatkan, tetapi isi pokok tersebut yang tercatat dalam sejarah.
3. Jadi, jawaban yang tepat adalah opsi B.

Jadi, jawaban yang tepat adalah (B) Perintah mengambil segala tindakan yang dianggap perlu untuk menjamin keamanan, ketenangan, dan kestabilan jalannya pemerintahan.

Mengapa opsi lain kurang tepat:
- (A) Supersemar bukan surat penyerahan jabatan presiden.
- (C) Pembubaran Konstituante dan kembali ke UUD 1945 adalah isi Dekret Presiden 5 Juli 1959.
- (D) Kabinet Pembangunan I dibentuk pada 1968, bukan isi Supersemar.
- (E) Pengakuan kedaulatan oleh Belanda terjadi pada 27 Desember 1949.', status='aktif', quality_score=5, quality_notes='Revisi besar: analogi ''Supersemar pribadi'' yang lebih mirip soal kepribadian diganti soal faktual isi Supersemar sesuai materi WSK-28.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fdd-7548-bb85-53857435b9a4';
UPDATE questions SET description='Pada 11 Maret 1966, Presiden Soekarno mengeluarkan Surat Perintah Sebelas Maret (Supersemar) kepada Letjen Soeharto. Isi pokok surat perintah tersebut adalah ...', explanation='DIKETAHUI:
- Supersemar dikeluarkan 11 Maret 1966.
- Diberikan Presiden Soekarno kepada Letjen Soeharto.

DITANYAKAN:
Isi pokok Supersemar.

JAWAB:
1. Supersemar berisi perintah kepada Letjen Soeharto untuk mengambil segala tindakan yang dianggap perlu demi terjaminnya keamanan, ketenangan, serta kestabilan jalannya pemerintahan, sekaligus menjamin keselamatan pribadi dan kewibawaan Presiden.
2. Supersemar bukan penyerahan jabatan presiden; Soeharto baru diangkat sebagai pejabat presiden melalui Sidang Istimewa MPRS 1967 dan sebagai presiden pada 1968. Naskah aslinya hingga kini masih diperdebatkan, tetapi isi pokok tersebut yang tercatat dalam sejarah.
3. Jadi, jawaban yang tepat adalah opsi B.

Jadi, jawaban yang tepat adalah (B) Perintah mengambil segala tindakan yang dianggap perlu untuk menjamin keamanan, ketenangan, dan kestabilan jalannya pemerintahan.

Mengapa opsi lain kurang tepat:
- (A) Supersemar bukan surat penyerahan jabatan presiden.
- (C) Pembubaran Konstituante dan kembali ke UUD 1945 adalah isi Dekret Presiden 5 Juli 1959.
- (D) Kabinet Pembangunan I dibentuk pada 1968, bukan isi Supersemar.
- (E) Pengakuan kedaulatan oleh Belanda terjadi pada 27 Desember 1949.', updated_at=now() WHERE id='019b0bef-1fdd-7548-bb85-53857435b9a4';
UPDATE answers SET description='Penyerahan jabatan presiden secara resmi kepada Soeharto.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fdd-7548-bb85-53857435b9a4' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Perintah mengambil segala tindakan yang dianggap perlu untuk menjamin keamanan, ketenangan, dan kestabilan jalannya pemerintahan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fdd-7548-bb85-53857435b9a4' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Pembubaran Konstituante dan pemberlakuan kembali UUD 1945.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fdd-7548-bb85-53857435b9a4' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Pembentukan Kabinet Pembangunan I.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fdd-7548-bb85-53857435b9a4' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Pengakuan kedaulatan Indonesia oleh Belanda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fdd-7548-bb85-53857435b9a4' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sehari setelah menerima Surat Perintah Sebelas Maret, Letjen Soeharto mengambil langkah pertama yang sangat menentukan arah politik nasional. Langkah tersebut adalah ...', options='[{"id": "019b0c6a-ac11-7d03-a5de-470254199535", "description": "Menyelenggarakan pemilihan umum pertama Orde Baru.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac12-70bb-b6a3-30d230c3e991", "description": "Membentuk Kabinet Pembangunan I.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac12-73e0-b3ad-447c199daa61", "description": "Mengeluarkan Dekret Presiden untuk kembali ke UUD 1945.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac12-76dc-9bfa-e249ea4db2f0", "description": "Membubarkan PKI beserta organisasi pendukungnya dan menyatakannya sebagai organisasi terlarang.", "isCorrect": true, "point": 1}, {"id": "019b0c6a-ac12-7c9d-a566-55a4e52d0620", "description": "Menandatangani Perjanjian Renville.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Supersemar diterima 11 Maret 1966.
- Yang ditanya: langkah pertama Soeharto sehari setelahnya.

DITANYAKAN:
Langkah pertama Soeharto berdasarkan Supersemar.

JAWAB:
1. Pada 12 Maret 1966, atas nama Presiden dan berdasarkan Supersemar, Soeharto membubarkan PKI beserta ormas-ormasnya dan menyatakannya sebagai organisasi terlarang di seluruh wilayah Indonesia.
2. Keputusan itu kemudian dikukuhkan oleh Ketetapan MPRS No. XXV/MPRS/1966.
3. Jadi, langkah pertama tersebut adalah pembubaran PKI.

Jadi, jawaban yang tepat adalah (D) Membubarkan PKI beserta organisasi pendukungnya dan menyatakannya sebagai organisasi terlarang.

Mengapa opsi lain kurang tepat:
- (A) Pemilu pertama Orde Baru baru diselenggarakan pada 1971.
- (B) Kabinet Pembangunan I dibentuk pada 1968.
- (C) Dekret Presiden 5 Juli 1959 dikeluarkan oleh Presiden Soekarno, bukan langkah Soeharto setelah Supersemar.
- (E) Perjanjian Renville ditandatangani pada 1948.', status='aktif', quality_score=5, quality_notes='Revisi besar: analogi ''Supersemar pribadi'' diganti soal faktual langkah pertama setelah Supersemar (pembubaran PKI 12 Maret 1966), berbeda dari butir kembar yang menanyakan isi Supersemar.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-ac11-79b6-bd6d-9d61c5f95137';
UPDATE questions SET description='Sehari setelah menerima Surat Perintah Sebelas Maret, Letjen Soeharto mengambil langkah pertama yang sangat menentukan arah politik nasional. Langkah tersebut adalah ...', explanation='DIKETAHUI:
- Supersemar diterima 11 Maret 1966.
- Yang ditanya: langkah pertama Soeharto sehari setelahnya.

DITANYAKAN:
Langkah pertama Soeharto berdasarkan Supersemar.

JAWAB:
1. Pada 12 Maret 1966, atas nama Presiden dan berdasarkan Supersemar, Soeharto membubarkan PKI beserta ormas-ormasnya dan menyatakannya sebagai organisasi terlarang di seluruh wilayah Indonesia.
2. Keputusan itu kemudian dikukuhkan oleh Ketetapan MPRS No. XXV/MPRS/1966.
3. Jadi, langkah pertama tersebut adalah pembubaran PKI.

Jadi, jawaban yang tepat adalah (D) Membubarkan PKI beserta organisasi pendukungnya dan menyatakannya sebagai organisasi terlarang.

Mengapa opsi lain kurang tepat:
- (A) Pemilu pertama Orde Baru baru diselenggarakan pada 1971.
- (B) Kabinet Pembangunan I dibentuk pada 1968.
- (C) Dekret Presiden 5 Juli 1959 dikeluarkan oleh Presiden Soekarno, bukan langkah Soeharto setelah Supersemar.
- (E) Perjanjian Renville ditandatangani pada 1948.', updated_at=now() WHERE id='019b0c6a-ac11-79b6-bd6d-9d61c5f95137';
UPDATE answers SET description='Menyelenggarakan pemilihan umum pertama Orde Baru.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac11-79b6-bd6d-9d61c5f95137' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membentuk Kabinet Pembangunan I.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac11-79b6-bd6d-9d61c5f95137' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengeluarkan Dekret Presiden untuk kembali ke UUD 1945.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac11-79b6-bd6d-9d61c5f95137' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Membubarkan PKI beserta organisasi pendukungnya dan menyatakannya sebagai organisasi terlarang.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac11-79b6-bd6d-9d61c5f95137' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menandatangani Perjanjian Renville.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac11-79b6-bd6d-9d61c5f95137' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda petugas imigrasi. Pasangan suami WNI dan istri WNA mengurus dokumen anak mereka yang lahir di luar negeri. Mereka meminta Anda mencatat sang anak agar tetap berkewarganegaraan ganda seumur hidup tanpa perlu memilih kelak, dengan menawarkan imbalan uang. Tindakan yang paling tepat dan sesuai dengan kepastian hukum serta integritas adalah...', options='[{"id": "019983d1-8dbc-73d5-8cbb-307d72dc0999", "description": "Menerima imbalan dan memproses permintaan tersebut karena alasan mereka dapat dipahami.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dbc-7869-8413-37cf4d83d8c6", "description": "Menolak imbalan dan permintaan tersebut, lalu menjelaskan bahwa anak dari perkawinan campuran berkewarganegaraan ganda terbatas dan wajib memilih salah satu kewarganegaraan setelah berusia 18 tahun atau menikah, sesuai UU No. 12 Tahun 2006.", "isCorrect": true, "point": 1}, {"id": "019983d1-8dbc-7cc4-a953-1f11dff8ef47", "description": "Menerima imbalan tetapi meneruskan permohonan kepada atasan untuk diputuskan.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dbd-70d9-9d87-4d157d64fa58", "description": "Menyatakan anak tersebut otomatis kehilangan kewarganegaraan Indonesia karena lahir di luar negeri.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dbd-7496-ae3d-f900e354ac57", "description": "Menyarankan mereka memakai jasa perantara yang memiliki koneksi di kantor imigrasi.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anak dari perkawinan campuran (ayah WNI, ibu WNA) lahir di luar negeri.
- Orang tua meminta kewarganegaraan ganda seumur hidup dengan imbalan uang.

DITANYAKAN:
Tindakan petugas yang sesuai hukum dan berintegritas.

JAWAB:
1. UU No. 12 Tahun 2006 menganut asas kewarganegaraan tunggal dengan pengecualian kewarganegaraan ganda terbatas bagi anak, misalnya anak dari perkawinan campuran.
2. Setelah berusia 18 tahun atau sudah kawin, anak tersebut harus menyatakan memilih salah satu kewarganegaraannya (dalam batas waktu yang ditentukan undang-undang). Kewarganegaraan ganda seumur hidup tidak dimungkinkan.
3. Menerima imbalan adalah suap/gratifikasi. Jadi, petugas harus menolak imbalan dan permintaan itu serta menjelaskan ketentuan yang benar, seperti pada opsi B.

Jadi, jawaban yang tepat adalah (B) Menolak imbalan dan permintaan tersebut, lalu menjelaskan bahwa anak dari perkawinan campuran berkewarganegaraan ganda terbatas dan wajib memilih salah satu kewarganegaraan setelah berusia 18 tahun atau menikah, sesuai UU No. 12 Tahun 2006.

Mengapa opsi lain kurang tepat:
- (A) Menerima imbalan dan melanggar ketentuan adalah korupsi.
- (C) Menerima imbalan tetap merupakan suap/gratifikasi, siapa pun yang memutuskan.
- (D) Keliru; anak dari ayah WNI tetap WNI berdasarkan asas ius sanguinis, meskipun lahir di luar negeri.
- (E) Menyarankan perantara berkoneksi mendorong praktik percaloan dan suap.', status='aktif', quality_score=5, quality_notes='Revisi: premis keliru tentang ''celah hukum'' dan ''status ganda'' orang dewasa diperbaiki sesuai UU 12/2006 (kewarganegaraan ganda terbatas bagi anak); ditambah unsur imbalan agar pilihan integritas tegas.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8dbb-7f1f-af9b-abf0eebd8c58';
UPDATE questions SET description='Anda petugas imigrasi. Pasangan suami WNI dan istri WNA mengurus dokumen anak mereka yang lahir di luar negeri. Mereka meminta Anda mencatat sang anak agar tetap berkewarganegaraan ganda seumur hidup tanpa perlu memilih kelak, dengan menawarkan imbalan uang. Tindakan yang paling tepat dan sesuai dengan kepastian hukum serta integritas adalah...', explanation='DIKETAHUI:
- Anak dari perkawinan campuran (ayah WNI, ibu WNA) lahir di luar negeri.
- Orang tua meminta kewarganegaraan ganda seumur hidup dengan imbalan uang.

DITANYAKAN:
Tindakan petugas yang sesuai hukum dan berintegritas.

JAWAB:
1. UU No. 12 Tahun 2006 menganut asas kewarganegaraan tunggal dengan pengecualian kewarganegaraan ganda terbatas bagi anak, misalnya anak dari perkawinan campuran.
2. Setelah berusia 18 tahun atau sudah kawin, anak tersebut harus menyatakan memilih salah satu kewarganegaraannya (dalam batas waktu yang ditentukan undang-undang). Kewarganegaraan ganda seumur hidup tidak dimungkinkan.
3. Menerima imbalan adalah suap/gratifikasi. Jadi, petugas harus menolak imbalan dan permintaan itu serta menjelaskan ketentuan yang benar, seperti pada opsi B.

Jadi, jawaban yang tepat adalah (B) Menolak imbalan dan permintaan tersebut, lalu menjelaskan bahwa anak dari perkawinan campuran berkewarganegaraan ganda terbatas dan wajib memilih salah satu kewarganegaraan setelah berusia 18 tahun atau menikah, sesuai UU No. 12 Tahun 2006.

Mengapa opsi lain kurang tepat:
- (A) Menerima imbalan dan melanggar ketentuan adalah korupsi.
- (C) Menerima imbalan tetap merupakan suap/gratifikasi, siapa pun yang memutuskan.
- (D) Keliru; anak dari ayah WNI tetap WNI berdasarkan asas ius sanguinis, meskipun lahir di luar negeri.
- (E) Menyarankan perantara berkoneksi mendorong praktik percaloan dan suap.', updated_at=now() WHERE id='019993b1-83a3-77d0-89c1-248aed3557b0';
UPDATE answers SET description='Menerima imbalan dan memproses permintaan tersebut karena alasan mereka dapat dipahami.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83a3-77d0-89c1-248aed3557b0' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak imbalan dan permintaan tersebut, lalu menjelaskan bahwa anak dari perkawinan campuran berkewarganegaraan ganda terbatas dan wajib memilih salah satu kewarganegaraan setelah berusia 18 tahun atau menikah, sesuai UU No. 12 Tahun 2006.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83a3-77d0-89c1-248aed3557b0' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima imbalan tetapi meneruskan permohonan kepada atasan untuk diputuskan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83a3-77d0-89c1-248aed3557b0' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyatakan anak tersebut otomatis kehilangan kewarganegaraan Indonesia karena lahir di luar negeri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83a3-77d0-89c1-248aed3557b0' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyarankan mereka memakai jasa perantara yang memiliki koneksi di kantor imigrasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83a3-77d0-89c1-248aed3557b0' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Anda petugas imigrasi. Pasangan suami WNI dan istri WNA mengurus dokumen anak mereka yang lahir di luar negeri. Mereka meminta Anda mencatat sang anak agar tetap berkewarganegaraan ganda seumur hidup tanpa perlu memilih kelak, dengan menawarkan imbalan uang. Tindakan yang paling tepat dan sesuai dengan kepastian hukum serta integritas adalah...', explanation='DIKETAHUI:
- Anak dari perkawinan campuran (ayah WNI, ibu WNA) lahir di luar negeri.
- Orang tua meminta kewarganegaraan ganda seumur hidup dengan imbalan uang.

DITANYAKAN:
Tindakan petugas yang sesuai hukum dan berintegritas.

JAWAB:
1. UU No. 12 Tahun 2006 menganut asas kewarganegaraan tunggal dengan pengecualian kewarganegaraan ganda terbatas bagi anak, misalnya anak dari perkawinan campuran.
2. Setelah berusia 18 tahun atau sudah kawin, anak tersebut harus menyatakan memilih salah satu kewarganegaraannya (dalam batas waktu yang ditentukan undang-undang). Kewarganegaraan ganda seumur hidup tidak dimungkinkan.
3. Menerima imbalan adalah suap/gratifikasi. Jadi, petugas harus menolak imbalan dan permintaan itu serta menjelaskan ketentuan yang benar, seperti pada opsi B.

Jadi, jawaban yang tepat adalah (B) Menolak imbalan dan permintaan tersebut, lalu menjelaskan bahwa anak dari perkawinan campuran berkewarganegaraan ganda terbatas dan wajib memilih salah satu kewarganegaraan setelah berusia 18 tahun atau menikah, sesuai UU No. 12 Tahun 2006.

Mengapa opsi lain kurang tepat:
- (A) Menerima imbalan dan melanggar ketentuan adalah korupsi.
- (C) Menerima imbalan tetap merupakan suap/gratifikasi, siapa pun yang memutuskan.
- (D) Keliru; anak dari ayah WNI tetap WNI berdasarkan asas ius sanguinis, meskipun lahir di luar negeri.
- (E) Menyarankan perantara berkoneksi mendorong praktik percaloan dan suap.', updated_at=now() WHERE id='019983d1-8dbb-7f1f-af9b-abf0eebd8c58';
UPDATE answers SET description='Menerima imbalan dan memproses permintaan tersebut karena alasan mereka dapat dipahami.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbb-7f1f-af9b-abf0eebd8c58' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak imbalan dan permintaan tersebut, lalu menjelaskan bahwa anak dari perkawinan campuran berkewarganegaraan ganda terbatas dan wajib memilih salah satu kewarganegaraan setelah berusia 18 tahun atau menikah, sesuai UU No. 12 Tahun 2006.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbb-7f1f-af9b-abf0eebd8c58' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima imbalan tetapi meneruskan permohonan kepada atasan untuk diputuskan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbb-7f1f-af9b-abf0eebd8c58' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyatakan anak tersebut otomatis kehilangan kewarganegaraan Indonesia karena lahir di luar negeri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbb-7f1f-af9b-abf0eebd8c58' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyarankan mereka memakai jasa perantara yang memiliki koneksi di kantor imigrasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dbb-7f1f-af9b-abf0eebd8c58' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Karena menganggur dan ekonomi keluarga mendesak, Anda ditawari bekerja di perkebunan negara tetangga dengan gaji tinggi tanpa paspor dan visa kerja resmi (melalui jalur tidak resmi). Agen mengatakan banyak orang sukses lewat jalur ini. Sikap yang paling tepat sebagai warga negara yang sadar hukum adalah...', options='[{"id": "019b0c6a-abd1-758e-911d-b0b134c93959", "description": "Menerima tawaran itu dan berencana mengurus dokumen resmi setelah tiba di sana.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd1-7b66-8ee2-686393bcf836", "description": "Menolak tawaran itu dan menganggap bekerja di luar negeri selalu merendahkan martabat bangsa.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd2-7297-ae06-d3e4eef5266c", "description": "Menerima tawaran asalkan agen menjamin keselamatan Anda secara lisan.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd2-775b-a9e1-d1f9daaa8bdb", "description": "Meminta agen memalsukan dokumen agar keberangkatan Anda terlihat resmi.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abd2-7cad-a4a9-bcddbe8d021f", "description": "Menolak tawaran itu, melaporkan agen tersebut kepada aparat atau Kementerian Pelindungan Pekerja Migran Indonesia, dan mencari informasi penempatan kerja luar negeri melalui jalur resmi pemerintah.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Tawaran kerja di luar negeri tanpa dokumen resmi.
- Agen mengklaim banyak yang sukses.
- Kondisi ekonomi mendesak.

DITANYAKAN:
Sikap warga negara yang sadar hukum.

JAWAB:
1. Bekerja di luar negeri tanpa dokumen resmi melanggar hukum dan membuat pekerja rentan terhadap eksploitasi serta perdagangan orang, tanpa perlindungan negara.
2. UU No. 18 Tahun 2017 tentang Pelindungan Pekerja Migran Indonesia mengatur penempatan melalui jalur resmi; agen yang memberangkatkan secara ilegal dapat dipidana sehingga patut dilaporkan.
3. Kebutuhan ekonomi tetap dapat dipenuhi melalui penempatan resmi. Opsi E memadukan penolakan, pelaporan, dan solusi legal.

Jadi, jawaban yang tepat adalah (E) Menolak tawaran itu, melaporkan agen tersebut kepada aparat atau Kementerian Pelindungan Pekerja Migran Indonesia, dan mencari informasi penempatan kerja luar negeri melalui jalur resmi pemerintah.

Mengapa opsi lain kurang tepat:
- (A) Berangkat tanpa dokumen resmi sudah melanggar hukum dan berisiko besar.
- (B) Menolak memang benar, tetapi menganggap semua kerja di luar negeri merendahkan martabat adalah generalisasi keliru; jalur resmi tersedia dan dilindungi negara.
- (C) Jaminan lisan agen ilegal tidak memiliki kekuatan hukum.
- (D) Pemalsuan dokumen adalah tindak pidana.', status='aktif', quality_score=4, quality_notes='Revisi: kunci E digabung dengan pelaporan agen sehingga opsi C (lapor) dan D (negosiasi jalur resmi) lama tidak lagi bersaing; nama lembaga dimutakhirkan menjadi Kementerian P2MI (dahulu BP2MI).', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-abd1-715b-90b5-ff6f2f827f79';
UPDATE questions SET description='Karena menganggur dan ekonomi keluarga mendesak, Anda ditawari bekerja di perkebunan negara tetangga dengan gaji tinggi tanpa paspor dan visa kerja resmi (melalui jalur tidak resmi). Agen mengatakan banyak orang sukses lewat jalur ini. Sikap yang paling tepat sebagai warga negara yang sadar hukum adalah...', explanation='DIKETAHUI:
- Tawaran kerja di luar negeri tanpa dokumen resmi.
- Agen mengklaim banyak yang sukses.
- Kondisi ekonomi mendesak.

DITANYAKAN:
Sikap warga negara yang sadar hukum.

JAWAB:
1. Bekerja di luar negeri tanpa dokumen resmi melanggar hukum dan membuat pekerja rentan terhadap eksploitasi serta perdagangan orang, tanpa perlindungan negara.
2. UU No. 18 Tahun 2017 tentang Pelindungan Pekerja Migran Indonesia mengatur penempatan melalui jalur resmi; agen yang memberangkatkan secara ilegal dapat dipidana sehingga patut dilaporkan.
3. Kebutuhan ekonomi tetap dapat dipenuhi melalui penempatan resmi. Opsi E memadukan penolakan, pelaporan, dan solusi legal.

Jadi, jawaban yang tepat adalah (E) Menolak tawaran itu, melaporkan agen tersebut kepada aparat atau Kementerian Pelindungan Pekerja Migran Indonesia, dan mencari informasi penempatan kerja luar negeri melalui jalur resmi pemerintah.

Mengapa opsi lain kurang tepat:
- (A) Berangkat tanpa dokumen resmi sudah melanggar hukum dan berisiko besar.
- (B) Menolak memang benar, tetapi menganggap semua kerja di luar negeri merendahkan martabat adalah generalisasi keliru; jalur resmi tersedia dan dilindungi negara.
- (C) Jaminan lisan agen ilegal tidak memiliki kekuatan hukum.
- (D) Pemalsuan dokumen adalah tindak pidana.', updated_at=now() WHERE id='019b0c6a-abd1-715b-90b5-ff6f2f827f79';
UPDATE answers SET description='Menerima tawaran itu dan berencana mengurus dokumen resmi setelah tiba di sana.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd1-715b-90b5-ff6f2f827f79' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak tawaran itu dan menganggap bekerja di luar negeri selalu merendahkan martabat bangsa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd1-715b-90b5-ff6f2f827f79' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima tawaran asalkan agen menjamin keselamatan Anda secara lisan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd1-715b-90b5-ff6f2f827f79' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Meminta agen memalsukan dokumen agar keberangkatan Anda terlihat resmi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd1-715b-90b5-ff6f2f827f79' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menolak tawaran itu, melaporkan agen tersebut kepada aparat atau Kementerian Pelindungan Pekerja Migran Indonesia, dan mencari informasi penempatan kerja luar negeri melalui jalur resmi pemerintah.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abd1-715b-90b5-ff6f2f827f79' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Pemerintah merencanakan pembangunan waduk besar untuk mengatasi krisis air dan mengairi ribuan hektare sawah. Namun, proyek ini akan menenggelamkan beberapa desa dan situs bersejarah yang dianggap suci oleh masyarakat setempat. Meskipun ditawari ganti rugi besar, warga menolak karena nilai sejarah dan budaya tanah mereka tidak dapat diganti uang. Dilema tersebut paling tepat dipahami sebagai ketegangan antara ...', options='[{"id": "019983d1-8ded-75a2-a8ec-77ead23b9788", "description": "Kepentingan pemerintah pusat dan kepentingan pemerintah daerah.", "isCorrect": false, "point": 1}, {"id": "019983d1-8ded-7bce-8e4a-5bb289b2504a", "description": "Tujuan ketahanan pangan dan kedaulatan daerah atas wilayahnya.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dee-721d-a2e2-5415ea9cbad5", "description": "Kebebasan berpendapat warga dan kewajiban menjaga ketertiban umum.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dee-7771-8767-6b7f00789bcd", "description": "Kepentingan umum untuk kesejahteraan rakyat banyak dan penghormatan terhadap hak budaya serta martabat masyarakat setempat.", "isCorrect": true, "point": 1}, {"id": "019983d1-8dee-7b3e-88d1-9e254332abae", "description": "Kepentingan ekonomi investor swasta dan kelestarian lingkungan hidup.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Waduk dibangun untuk mengatasi krisis air dan mengairi sawah (kepentingan umum).
- Proyek menenggelamkan desa dan situs yang dianggap suci.
- Warga menolak meski ditawari ganti rugi karena nilai budaya tanahnya.

DITANYAKAN:
Pasangan kepentingan yang saling bertentangan dalam kasus.

JAWAB:
1. Sisi pertama: waduk menyangkut kepentingan umum dan kesejahteraan rakyat banyak, sejalan dengan sila ke-5 (keadilan sosial).
2. Sisi kedua: warga mempertahankan nilai sejarah, budaya, dan kesakralan tanahnya. Pasal 28I ayat (3) UUD NRI 1945 menyatakan identitas budaya dan hak masyarakat tradisional dihormati, sejalan dengan sila ke-2 (menghormati martabat manusia).
3. Ganti rugi sudah ditawarkan, sehingga pokok dilemanya bukan soal kompensasi, melainkan antara kepentingan umum dan penghormatan hak budaya masyarakat setempat.

Jadi, jawaban yang tepat adalah (D) Kepentingan umum untuk kesejahteraan rakyat banyak dan penghormatan terhadap hak budaya serta martabat masyarakat setempat.

Mengapa opsi lain kurang tepat:
- (A) Kasus tidak menyebut pertentangan antara pemerintah pusat dan daerah.
- (B) Dalam negara kesatuan tidak dikenal kedaulatan daerah; daerah menjalankan otonomi.
- (C) Penolakan warga bukan persoalan kebebasan berpendapat versus ketertiban.
- (E) Proyek ini proyek pemerintah, tidak disebut melibatkan investor swasta.', status='aktif', quality_score=4, quality_notes='Perbaikan: stem tidak lagi memuat jawaban (kalimat yang menyalin kunci dihapus) dan pertanyaan diselaraskan dengan opsi (''ketegangan antara ...''); pengecoh diganti pasangan yang jelas keliru; dasar Pasal 28I ayat (3) ditambahkan.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8dec-7f18-831e-4410be6cacc5';
UPDATE questions SET description='Pemerintah merencanakan pembangunan waduk besar untuk mengatasi krisis air dan mengairi ribuan hektare sawah. Namun, proyek ini akan menenggelamkan beberapa desa dan situs bersejarah yang dianggap suci oleh masyarakat setempat. Meskipun ditawari ganti rugi besar, warga menolak karena nilai sejarah dan budaya tanah mereka tidak dapat diganti uang. Dilema tersebut paling tepat dipahami sebagai ketegangan antara ...', explanation='DIKETAHUI:
- Waduk dibangun untuk mengatasi krisis air dan mengairi sawah (kepentingan umum).
- Proyek menenggelamkan desa dan situs yang dianggap suci.
- Warga menolak meski ditawari ganti rugi karena nilai budaya tanahnya.

DITANYAKAN:
Pasangan kepentingan yang saling bertentangan dalam kasus.

JAWAB:
1. Sisi pertama: waduk menyangkut kepentingan umum dan kesejahteraan rakyat banyak, sejalan dengan sila ke-5 (keadilan sosial).
2. Sisi kedua: warga mempertahankan nilai sejarah, budaya, dan kesakralan tanahnya. Pasal 28I ayat (3) UUD NRI 1945 menyatakan identitas budaya dan hak masyarakat tradisional dihormati, sejalan dengan sila ke-2 (menghormati martabat manusia).
3. Ganti rugi sudah ditawarkan, sehingga pokok dilemanya bukan soal kompensasi, melainkan antara kepentingan umum dan penghormatan hak budaya masyarakat setempat.

Jadi, jawaban yang tepat adalah (D) Kepentingan umum untuk kesejahteraan rakyat banyak dan penghormatan terhadap hak budaya serta martabat masyarakat setempat.

Mengapa opsi lain kurang tepat:
- (A) Kasus tidak menyebut pertentangan antara pemerintah pusat dan daerah.
- (B) Dalam negara kesatuan tidak dikenal kedaulatan daerah; daerah menjalankan otonomi.
- (C) Penolakan warga bukan persoalan kebebasan berpendapat versus ketertiban.
- (E) Proyek ini proyek pemerintah, tidak disebut melibatkan investor swasta.', updated_at=now() WHERE id='019983d1-8dec-7f18-831e-4410be6cacc5';
UPDATE answers SET description='Kepentingan pemerintah pusat dan kepentingan pemerintah daerah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dec-7f18-831e-4410be6cacc5' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Tujuan ketahanan pangan dan kedaulatan daerah atas wilayahnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dec-7f18-831e-4410be6cacc5' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Kebebasan berpendapat warga dan kewajiban menjaga ketertiban umum.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dec-7f18-831e-4410be6cacc5' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Kepentingan umum untuk kesejahteraan rakyat banyak dan penghormatan terhadap hak budaya serta martabat masyarakat setempat.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dec-7f18-831e-4410be6cacc5' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Kepentingan ekonomi investor swasta dan kelestarian lingkungan hidup.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dec-7f18-831e-4410be6cacc5' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sebuah perusahaan besar menawarkan beasiswa penuh bagi siswa berprestasi dengan syarat penerima bekerja di perusahaan itu selama sepuluh tahun setelah lulus. Program ini dinilai meningkatkan mutu SDM, tetapi ada yang khawatir program tersebut membatasi kebebasan memilih karier. Cara pandang yang paling tepat berdasarkan UUD NRI 1945 terhadap program tersebut adalah...', options='[{"id": "019983d1-697c-73f8-88e4-48c2b29a54f8", "description": "Program itu pasti merupakan perbudakan modern sehingga harus dilarang.", "isCorrect": false, "point": 1}, {"id": "019983d1-697c-7868-a899-54325bb710a8", "description": "Kepentingan pembangunan SDM selalu di atas hak individu, sehingga syarat kontrak apa pun boleh diterapkan.", "isCorrect": false, "point": 1}, {"id": "019983d1-697c-7dfb-b3cd-b39561c9f6b2", "description": "Kebebasan individu bersifat mutlak, sehingga perjanjian ikatan kerja tidak mengikat penerima beasiswa.", "isCorrect": false, "point": 1}, {"id": "019983d1-697d-7313-8168-bf16117b3ac0", "description": "Ikatan kerja dapat dibenarkan sebagai timbal balik beasiswa selama disepakati secara sukarela, hak-hak pekerja dijamin, dan tersedia ketentuan wajar bila penerima ingin mengakhirinya, misalnya mengganti biaya.", "isCorrect": true, "point": 1}, {"id": "019983d1-697d-7790-af29-7dc04724e130", "description": "Negara tidak boleh mengatur perjanjian beasiswa swasta dalam bentuk apa pun.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Beasiswa penuh dengan syarat bekerja sepuluh tahun di perusahaan pemberi.
- Manfaat: mutu SDM; kekhawatiran: kebebasan memilih karier terbatas.

DITANYAKAN:
Cara pandang yang seimbang dan sesuai UUD NRI 1945.

JAWAB:
1. Pasal 28D ayat (2) UUD NRI 1945 menjamin hak bekerja serta mendapat imbalan dan perlakuan yang adil dan layak dalam hubungan kerja; Pasal 28I ayat (1) menjamin hak untuk tidak diperbudak.
2. Perjanjian yang disepakati secara sukarela mengikat para pihak, sehingga ikatan kerja sebagai imbalan beasiswa sah selama tidak menghilangkan hak-hak dasar pekerja.
3. Keseimbangan tercapai bila kesepakatan bersifat sukarela, hak pekerja dijamin, dan ada jalan keluar yang wajar. Opsi D merumuskan hal tersebut.

Jadi, jawaban yang tepat adalah (D) Ikatan kerja dapat dibenarkan sebagai timbal balik beasiswa selama disepakati secara sukarela, hak-hak pekerja dijamin, dan tersedia ketentuan wajar bila penerima ingin mengakhirinya, misalnya mengganti biaya.

Mengapa opsi lain kurang tepat:
- (A) Menggeneralisasi tanpa melihat isi perjanjian; ikatan dinas yang disepakati secara sukarela bukan perbudakan.
- (B) Kepentingan pembangunan tidak boleh menghapus hak dasar pekerja.
- (C) Perjanjian yang sah tetap mengikat; kebebasan individu dibatasi oleh kewajiban menghormati kesepakatan dan hak orang lain (Pasal 28J).
- (E) Negara berwenang mengatur hubungan kerja untuk melindungi hak warga.', status='aktif', quality_score=4, quality_notes='Perbaikan: stem ''apakah ... ataukah'' yang tidak nyambung dengan opsi diganti pertanyaan cara pandang; opsi ditulis ulang sehingga hanya D yang seimbang dan sesuai Pasal 28D ayat (2), 28I ayat (1), 28J.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-697b-7d9d-8937-dad7a5ec41c3';
UPDATE questions SET description='Sebuah perusahaan besar menawarkan beasiswa penuh bagi siswa berprestasi dengan syarat penerima bekerja di perusahaan itu selama sepuluh tahun setelah lulus. Program ini dinilai meningkatkan mutu SDM, tetapi ada yang khawatir program tersebut membatasi kebebasan memilih karier. Cara pandang yang paling tepat berdasarkan UUD NRI 1945 terhadap program tersebut adalah...', explanation='DIKETAHUI:
- Beasiswa penuh dengan syarat bekerja sepuluh tahun di perusahaan pemberi.
- Manfaat: mutu SDM; kekhawatiran: kebebasan memilih karier terbatas.

DITANYAKAN:
Cara pandang yang seimbang dan sesuai UUD NRI 1945.

JAWAB:
1. Pasal 28D ayat (2) UUD NRI 1945 menjamin hak bekerja serta mendapat imbalan dan perlakuan yang adil dan layak dalam hubungan kerja; Pasal 28I ayat (1) menjamin hak untuk tidak diperbudak.
2. Perjanjian yang disepakati secara sukarela mengikat para pihak, sehingga ikatan kerja sebagai imbalan beasiswa sah selama tidak menghilangkan hak-hak dasar pekerja.
3. Keseimbangan tercapai bila kesepakatan bersifat sukarela, hak pekerja dijamin, dan ada jalan keluar yang wajar. Opsi D merumuskan hal tersebut.

Jadi, jawaban yang tepat adalah (D) Ikatan kerja dapat dibenarkan sebagai timbal balik beasiswa selama disepakati secara sukarela, hak-hak pekerja dijamin, dan tersedia ketentuan wajar bila penerima ingin mengakhirinya, misalnya mengganti biaya.

Mengapa opsi lain kurang tepat:
- (A) Menggeneralisasi tanpa melihat isi perjanjian; ikatan dinas yang disepakati secara sukarela bukan perbudakan.
- (B) Kepentingan pembangunan tidak boleh menghapus hak dasar pekerja.
- (C) Perjanjian yang sah tetap mengikat; kebebasan individu dibatasi oleh kewajiban menghormati kesepakatan dan hak orang lain (Pasal 28J).
- (E) Negara berwenang mengatur hubungan kerja untuk melindungi hak warga.', updated_at=now() WHERE id='019983d1-697b-7d9d-8937-dad7a5ec41c3';
UPDATE answers SET description='Program itu pasti merupakan perbudakan modern sehingga harus dilarang.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-697b-7d9d-8937-dad7a5ec41c3' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Kepentingan pembangunan SDM selalu di atas hak individu, sehingga syarat kontrak apa pun boleh diterapkan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-697b-7d9d-8937-dad7a5ec41c3' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Kebebasan individu bersifat mutlak, sehingga perjanjian ikatan kerja tidak mengikat penerima beasiswa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-697b-7d9d-8937-dad7a5ec41c3' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Ikatan kerja dapat dibenarkan sebagai timbal balik beasiswa selama disepakati secara sukarela, hak-hak pekerja dijamin, dan tersedia ketentuan wajar bila penerima ingin mengakhirinya, misalnya mengganti biaya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-697b-7d9d-8937-dad7a5ec41c3' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Negara tidak boleh mengatur perjanjian beasiswa swasta dalam bentuk apa pun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-697b-7d9d-8937-dad7a5ec41c3' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Sebuah perusahaan besar menawarkan beasiswa penuh bagi siswa berprestasi dengan syarat penerima bekerja di perusahaan itu selama sepuluh tahun setelah lulus. Program ini dinilai meningkatkan mutu SDM, tetapi ada yang khawatir program tersebut membatasi kebebasan memilih karier. Cara pandang yang paling tepat berdasarkan UUD NRI 1945 terhadap program tersebut adalah...', explanation='DIKETAHUI:
- Beasiswa penuh dengan syarat bekerja sepuluh tahun di perusahaan pemberi.
- Manfaat: mutu SDM; kekhawatiran: kebebasan memilih karier terbatas.

DITANYAKAN:
Cara pandang yang seimbang dan sesuai UUD NRI 1945.

JAWAB:
1. Pasal 28D ayat (2) UUD NRI 1945 menjamin hak bekerja serta mendapat imbalan dan perlakuan yang adil dan layak dalam hubungan kerja; Pasal 28I ayat (1) menjamin hak untuk tidak diperbudak.
2. Perjanjian yang disepakati secara sukarela mengikat para pihak, sehingga ikatan kerja sebagai imbalan beasiswa sah selama tidak menghilangkan hak-hak dasar pekerja.
3. Keseimbangan tercapai bila kesepakatan bersifat sukarela, hak pekerja dijamin, dan ada jalan keluar yang wajar. Opsi D merumuskan hal tersebut.

Jadi, jawaban yang tepat adalah (D) Ikatan kerja dapat dibenarkan sebagai timbal balik beasiswa selama disepakati secara sukarela, hak-hak pekerja dijamin, dan tersedia ketentuan wajar bila penerima ingin mengakhirinya, misalnya mengganti biaya.

Mengapa opsi lain kurang tepat:
- (A) Menggeneralisasi tanpa melihat isi perjanjian; ikatan dinas yang disepakati secara sukarela bukan perbudakan.
- (B) Kepentingan pembangunan tidak boleh menghapus hak dasar pekerja.
- (C) Perjanjian yang sah tetap mengikat; kebebasan individu dibatasi oleh kewajiban menghormati kesepakatan dan hak orang lain (Pasal 28J).
- (E) Negara berwenang mengatur hubungan kerja untuk melindungi hak warga.', updated_at=now() WHERE id='019983d1-8e06-763a-975f-b0968e51246a';
UPDATE answers SET description='Program itu pasti merupakan perbudakan modern sehingga harus dilarang.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e06-763a-975f-b0968e51246a' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Kepentingan pembangunan SDM selalu di atas hak individu, sehingga syarat kontrak apa pun boleh diterapkan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e06-763a-975f-b0968e51246a' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Kebebasan individu bersifat mutlak, sehingga perjanjian ikatan kerja tidak mengikat penerima beasiswa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e06-763a-975f-b0968e51246a' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Ikatan kerja dapat dibenarkan sebagai timbal balik beasiswa selama disepakati secara sukarela, hak-hak pekerja dijamin, dan tersedia ketentuan wajar bila penerima ingin mengakhirinya, misalnya mengganti biaya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e06-763a-975f-b0968e51246a' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Negara tidak boleh mengatur perjanjian beasiswa swasta dalam bentuk apa pun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e06-763a-975f-b0968e51246a' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Untuk mengatasi penyebaran hoaks dan ujaran kebencian di media sosial, pemerintah memberi wewenang kepada aparat untuk memblokir akun dan menghapus konten yang dianggap provokatif atau menyesatkan. Pegiat HAM menilai kebijakan ini berpotensi menjadi sensor dan membatasi kebebasan berpendapat. Rancangan kebijakan yang paling sesuai dengan UUD NRI 1945 adalah...', options='[{"id": "019983d1-8e21-75b8-9965-91b7c29fdb20", "description": "Memblokir akun apa pun yang mengkritik pemerintah agar suasana tetap kondusif.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e21-7c11-8087-5ba02c9d3511", "description": "Membiarkan semua konten tanpa pembatasan karena kebebasan berpendapat bersifat mutlak.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e22-779a-9938-b92a0f4aca3a", "description": "Membatasi konten berdasarkan undang-undang dengan kriteria yang jelas, hanya terhadap konten yang melanggar hukum, serta menyediakan mekanisme keberatan atau pengujian oleh pihak yang independen.", "isCorrect": true, "point": 1}, {"id": "019983d1-8e22-7e5a-8921-68281d7bf2e1", "description": "Menyerahkan penilaian konten sepenuhnya kepada aparat tanpa kriteria tertulis dan tanpa mekanisme keberatan.", "isCorrect": false, "point": 1}, {"id": "019983d1-8e23-752e-97f8-d4c5ce0abcf2", "description": "Mewajibkan seluruh unggahan warga disetujui pemerintah sebelum tayang.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Tujuan: menanggulangi hoaks dan ujaran kebencian.
- Kekhawatiran: sensor dan pembatasan kebebasan berpendapat.

DITANYAKAN:
Rancangan kebijakan yang menyeimbangkan ketertiban dan kebebasan berpendapat.

JAWAB:
1. Pasal 28E ayat (3) menjamin kebebasan mengeluarkan pendapat, sedangkan Pasal 28J ayat (2) membolehkan pembatasan hak hanya dengan undang-undang untuk menghormati hak orang lain dan memenuhi tuntutan ketertiban umum yang adil.
2. Agar tidak menjadi sensor, pembatasan harus berdasar undang-undang, berkriteria jelas, terbatas pada konten melanggar hukum, dan dapat diuji melalui mekanisme keberatan.
3. Opsi C memenuhi seluruh syarat tersebut.

Jadi, jawaban yang tepat adalah (C) Membatasi konten berdasarkan undang-undang dengan kriteria yang jelas, hanya terhadap konten yang melanggar hukum, serta menyediakan mekanisme keberatan atau pengujian oleh pihak yang independen.

Mengapa opsi lain kurang tepat:
- (A) Memblokir kritik adalah sensor yang melanggar Pasal 28E ayat (3).
- (B) Kebebasan berpendapat dapat dibatasi undang-undang (Pasal 28J ayat 2); hoaks dan ujaran kebencian merugikan hak orang lain.
- (D) Tanpa kriteria dan mekanisme keberatan, kewenangan rawan disalahgunakan.
- (E) Persetujuan sebelum tayang adalah sensor menyeluruh yang tidak proporsional.', status='aktif', quality_score=4, quality_notes='Perbaikan: stem dan opsi yang tidak nyambung (opsi tentang artis dan karya seni) ditulis ulang agar konsisten dengan kasus hoaks/ujaran kebencian; kunci berdasar Pasal 28E ayat (3) dan 28J ayat (2).', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8e20-7b88-a79a-87a361864760';
UPDATE questions SET description='Untuk mengatasi penyebaran hoaks dan ujaran kebencian di media sosial, pemerintah memberi wewenang kepada aparat untuk memblokir akun dan menghapus konten yang dianggap provokatif atau menyesatkan. Pegiat HAM menilai kebijakan ini berpotensi menjadi sensor dan membatasi kebebasan berpendapat. Rancangan kebijakan yang paling sesuai dengan UUD NRI 1945 adalah...', explanation='DIKETAHUI:
- Tujuan: menanggulangi hoaks dan ujaran kebencian.
- Kekhawatiran: sensor dan pembatasan kebebasan berpendapat.

DITANYAKAN:
Rancangan kebijakan yang menyeimbangkan ketertiban dan kebebasan berpendapat.

JAWAB:
1. Pasal 28E ayat (3) menjamin kebebasan mengeluarkan pendapat, sedangkan Pasal 28J ayat (2) membolehkan pembatasan hak hanya dengan undang-undang untuk menghormati hak orang lain dan memenuhi tuntutan ketertiban umum yang adil.
2. Agar tidak menjadi sensor, pembatasan harus berdasar undang-undang, berkriteria jelas, terbatas pada konten melanggar hukum, dan dapat diuji melalui mekanisme keberatan.
3. Opsi C memenuhi seluruh syarat tersebut.

Jadi, jawaban yang tepat adalah (C) Membatasi konten berdasarkan undang-undang dengan kriteria yang jelas, hanya terhadap konten yang melanggar hukum, serta menyediakan mekanisme keberatan atau pengujian oleh pihak yang independen.

Mengapa opsi lain kurang tepat:
- (A) Memblokir kritik adalah sensor yang melanggar Pasal 28E ayat (3).
- (B) Kebebasan berpendapat dapat dibatasi undang-undang (Pasal 28J ayat 2); hoaks dan ujaran kebencian merugikan hak orang lain.
- (D) Tanpa kriteria dan mekanisme keberatan, kewenangan rawan disalahgunakan.
- (E) Persetujuan sebelum tayang adalah sensor menyeluruh yang tidak proporsional.', updated_at=now() WHERE id='019983d1-8e20-7b88-a79a-87a361864760';
UPDATE answers SET description='Memblokir akun apa pun yang mengkritik pemerintah agar suasana tetap kondusif.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e20-7b88-a79a-87a361864760' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membiarkan semua konten tanpa pembatasan karena kebebasan berpendapat bersifat mutlak.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e20-7b88-a79a-87a361864760' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Membatasi konten berdasarkan undang-undang dengan kriteria yang jelas, hanya terhadap konten yang melanggar hukum, serta menyediakan mekanisme keberatan atau pengujian oleh pihak yang independen.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e20-7b88-a79a-87a361864760' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyerahkan penilaian konten sepenuhnya kepada aparat tanpa kriteria tertulis dan tanpa mekanisme keberatan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e20-7b88-a79a-87a361864760' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mewajibkan seluruh unggahan warga disetujui pemerintah sebelum tayang.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8e20-7b88-a79a-87a361864760' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda siswa SMK non-Muslim yang diwajibkan mengikuti kegiatan keagamaan agama lain setiap Jumat pagi, padahal ibadah Anda dilakukan pada hari Minggu. Anda merasa kebebasan memeluk agama dan beribadat menurut agama Anda sendiri dilanggar. Pasal dalam Bab XA UUD NRI 1945 tentang Hak Asasi Manusia yang paling tepat dijadikan dasar keberatan Anda adalah...', options='[{"id": "019a3b08-85d9-7ac6-8c5e-d27c9bf7ff24", "description": "Pasal 28C ayat (1) tentang hak mengembangkan diri.", "isCorrect": false, "point": 1}, {"id": "019a3b08-85da-712b-b726-ebd38dc34b23", "description": "Pasal 28G ayat (1) tentang hak atas perlindungan diri pribadi.", "isCorrect": false, "point": 1}, {"id": "019a3b08-85da-7814-8a54-3ed2240771f1", "description": "Pasal 28E ayat (1) tentang kebebasan memeluk agama dan beribadat menurut agamanya.", "isCorrect": true, "point": 1}, {"id": "019a3b08-85db-7860-aa67-fcae686b590c", "description": "Pasal 28F tentang hak berkomunikasi dan memperoleh informasi.", "isCorrect": false, "point": 1}, {"id": "019a3b08-85db-7cf0-b9ed-997623d2caca", "description": "Pasal 28I ayat (4) tentang tanggung jawab negara dalam perlindungan dan pemenuhan HAM.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Siswa non-Muslim diwajibkan mengikuti kegiatan keagamaan agama lain.
- Yang dilanggar: kebebasan memeluk agama dan beribadat menurut agama sendiri.
- Yang diminta: pasal dalam Bab XA (Hak Asasi Manusia).

DITANYAKAN:
Pasal Bab XA yang paling tepat sebagai dasar keberatan.

JAWAB:
1. Pasal 28E ayat (1) UUD NRI 1945: setiap orang bebas memeluk agama dan beribadat menurut agamanya. Pasal ini berada dalam Bab XA tentang Hak Asasi Manusia.
2. Kewajiban mengikuti kegiatan keagamaan agama lain secara langsung bertentangan dengan kebebasan beribadat menurut agama sendiri.
3. Pasal 29 ayat (2) juga menjamin kemerdekaan beragama, tetapi berada di Bab XI tentang Agama, sehingga tidak termasuk yang diminta soal. Jadi, jawabannya Pasal 28E ayat (1).

Jadi, jawaban yang tepat adalah (C) Pasal 28E ayat (1) tentang kebebasan memeluk agama dan beribadat menurut agamanya.

Mengapa opsi lain kurang tepat:
- (A) Hak mengembangkan diri tidak secara khusus mengatur kebebasan beragama.
- (B) Perlindungan diri pribadi lebih umum dan tidak spesifik mengenai kebebasan beribadat.
- (D) Hak berkomunikasi dan memperoleh informasi tidak relevan dengan kasus.
- (E) Ayat ini mengatur tanggung jawab negara, bukan hak spesifik yang dilanggar.', status='aktif', quality_score=5, quality_notes='Perbaikan: pertanyaan dibatasi pada ''pasal dalam Bab XA (HAM)'' dan opsi Pasal 29 ayat (2) diganti Pasal 28F sehingga hanya Pasal 28E ayat (1) yang benar; Pasal 29 ayat (2) dijelaskan dalam pembahasan.', reviewed_at=now(), updated_at=now() WHERE id='019a3b08-85d9-72d9-a51d-4548cd5acc57';
UPDATE questions SET description='Anda siswa SMK non-Muslim yang diwajibkan mengikuti kegiatan keagamaan agama lain setiap Jumat pagi, padahal ibadah Anda dilakukan pada hari Minggu. Anda merasa kebebasan memeluk agama dan beribadat menurut agama Anda sendiri dilanggar. Pasal dalam Bab XA UUD NRI 1945 tentang Hak Asasi Manusia yang paling tepat dijadikan dasar keberatan Anda adalah...', explanation='DIKETAHUI:
- Siswa non-Muslim diwajibkan mengikuti kegiatan keagamaan agama lain.
- Yang dilanggar: kebebasan memeluk agama dan beribadat menurut agama sendiri.
- Yang diminta: pasal dalam Bab XA (Hak Asasi Manusia).

DITANYAKAN:
Pasal Bab XA yang paling tepat sebagai dasar keberatan.

JAWAB:
1. Pasal 28E ayat (1) UUD NRI 1945: setiap orang bebas memeluk agama dan beribadat menurut agamanya. Pasal ini berada dalam Bab XA tentang Hak Asasi Manusia.
2. Kewajiban mengikuti kegiatan keagamaan agama lain secara langsung bertentangan dengan kebebasan beribadat menurut agama sendiri.
3. Pasal 29 ayat (2) juga menjamin kemerdekaan beragama, tetapi berada di Bab XI tentang Agama, sehingga tidak termasuk yang diminta soal. Jadi, jawabannya Pasal 28E ayat (1).

Jadi, jawaban yang tepat adalah (C) Pasal 28E ayat (1) tentang kebebasan memeluk agama dan beribadat menurut agamanya.

Mengapa opsi lain kurang tepat:
- (A) Hak mengembangkan diri tidak secara khusus mengatur kebebasan beragama.
- (B) Perlindungan diri pribadi lebih umum dan tidak spesifik mengenai kebebasan beribadat.
- (D) Hak berkomunikasi dan memperoleh informasi tidak relevan dengan kasus.
- (E) Ayat ini mengatur tanggung jawab negara, bukan hak spesifik yang dilanggar.', updated_at=now() WHERE id='162890d5-c2e0-4cab-9ee0-3cf7793b1aa2';
UPDATE answers SET description='Pasal 28C ayat (1) tentang hak mengembangkan diri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='162890d5-c2e0-4cab-9ee0-3cf7793b1aa2' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Pasal 28G ayat (1) tentang hak atas perlindungan diri pribadi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='162890d5-c2e0-4cab-9ee0-3cf7793b1aa2' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Pasal 28E ayat (1) tentang kebebasan memeluk agama dan beribadat menurut agamanya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='162890d5-c2e0-4cab-9ee0-3cf7793b1aa2' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Pasal 28F tentang hak berkomunikasi dan memperoleh informasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='162890d5-c2e0-4cab-9ee0-3cf7793b1aa2' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Pasal 28I ayat (4) tentang tanggung jawab negara dalam perlindungan dan pemenuhan HAM.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='162890d5-c2e0-4cab-9ee0-3cf7793b1aa2' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Anda siswa SMK non-Muslim yang diwajibkan mengikuti kegiatan keagamaan agama lain setiap Jumat pagi, padahal ibadah Anda dilakukan pada hari Minggu. Anda merasa kebebasan memeluk agama dan beribadat menurut agama Anda sendiri dilanggar. Pasal dalam Bab XA UUD NRI 1945 tentang Hak Asasi Manusia yang paling tepat dijadikan dasar keberatan Anda adalah...', explanation='DIKETAHUI:
- Siswa non-Muslim diwajibkan mengikuti kegiatan keagamaan agama lain.
- Yang dilanggar: kebebasan memeluk agama dan beribadat menurut agama sendiri.
- Yang diminta: pasal dalam Bab XA (Hak Asasi Manusia).

DITANYAKAN:
Pasal Bab XA yang paling tepat sebagai dasar keberatan.

JAWAB:
1. Pasal 28E ayat (1) UUD NRI 1945: setiap orang bebas memeluk agama dan beribadat menurut agamanya. Pasal ini berada dalam Bab XA tentang Hak Asasi Manusia.
2. Kewajiban mengikuti kegiatan keagamaan agama lain secara langsung bertentangan dengan kebebasan beribadat menurut agama sendiri.
3. Pasal 29 ayat (2) juga menjamin kemerdekaan beragama, tetapi berada di Bab XI tentang Agama, sehingga tidak termasuk yang diminta soal. Jadi, jawabannya Pasal 28E ayat (1).

Jadi, jawaban yang tepat adalah (C) Pasal 28E ayat (1) tentang kebebasan memeluk agama dan beribadat menurut agamanya.

Mengapa opsi lain kurang tepat:
- (A) Hak mengembangkan diri tidak secara khusus mengatur kebebasan beragama.
- (B) Perlindungan diri pribadi lebih umum dan tidak spesifik mengenai kebebasan beribadat.
- (D) Hak berkomunikasi dan memperoleh informasi tidak relevan dengan kasus.
- (E) Ayat ini mengatur tanggung jawab negara, bukan hak spesifik yang dilanggar.', updated_at=now() WHERE id='019a3b08-85d9-72d9-a51d-4548cd5acc57';
UPDATE answers SET description='Pasal 28C ayat (1) tentang hak mengembangkan diri.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85d9-72d9-a51d-4548cd5acc57' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Pasal 28G ayat (1) tentang hak atas perlindungan diri pribadi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85d9-72d9-a51d-4548cd5acc57' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Pasal 28E ayat (1) tentang kebebasan memeluk agama dan beribadat menurut agamanya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85d9-72d9-a51d-4548cd5acc57' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Pasal 28F tentang hak berkomunikasi dan memperoleh informasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85d9-72d9-a51d-4548cd5acc57' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Pasal 28I ayat (4) tentang tanggung jawab negara dalam perlindungan dan pemenuhan HAM.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019a3b08-85d9-72d9-a51d-4548cd5acc57' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Menjelang tes CPNS, sejumlah mahasiswa di jurusan Anda membentuk kelompok belajar eksklusif yang hanya menerima anggota seagama dan sedaerah asal, dengan alasan ''biar lebih nyambung''. Anda diajak bergabung karena berasal dari daerah yang sama. Anda menyadari hal ini mencederai semangat kebhinekaan. Sikap yang paling sesuai dengan Bhinneka Tunggal Ika adalah...', options='[{"id": "019b0bef-1fc7-7725-b3b7-10c3c094acb2", "description": "Bergabung diam-diam untuk memanfaatkan materinya tanpa mempersoalkan sifat eksklusifnya.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fc7-7c71-b752-891dfccf0f5f", "description": "Menolak bergabung, lalu menjauhi anggota kelompok tersebut dalam pergaulan sehari-hari.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fc8-720a-a1ee-9805106da606", "description": "Membentuk kelompok tandingan yang khusus beranggotakan mahasiswa dari daerah lain sebagai balasan.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fc8-7594-88e5-e4a3336e8bba", "description": "Mengecam pembentukan kelompok itu di grup angkatan dengan menyebut nama-nama anggotanya.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fc8-7a52-ae37-1b070de31371", "description": "Menyampaikan secara terbuka dan santun usulan agar kelompok belajar itu dibuka bagi semua teman tanpa memandang agama dan daerah asal, dan bersedia bergabung bila kelompok menjadi inklusif.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Kelompok belajar eksklusif berdasarkan agama dan daerah asal.
- Anda diajak karena sedaerah.
- Kriteria: Bhinneka Tunggal Ika.

DITANYAKAN:
Sikap yang paling menjunjung kebhinekaan.

JAWAB:
1. Bhinneka Tunggal Ika menuntut kebersamaan tanpa membedakan agama dan daerah asal; kelompok yang menyaring anggota atas dasar itu bersifat eksklusif.
2. Sikap terbaik adalah mengubah sifat eksklusif itu secara santun dan terbuka, bukan ikut memanfaatkan, menjauhi, atau membalas.
3. Opsi E mendorong inklusivitas tanpa memutus hubungan dengan teman-teman tersebut.

Jadi, jawaban yang tepat adalah (E) Menyampaikan secara terbuka dan santun usulan agar kelompok belajar itu dibuka bagi semua teman tanpa memandang agama dan daerah asal, dan bersedia bergabung bila kelompok menjadi inklusif.

Mengapa opsi lain kurang tepat:
- (A) Bergabung tanpa mempersoalkan eksklusivitas berarti ikut melanggengkannya.
- (B) Menjauhi anggota kelompok justru menciptakan sekat baru.
- (C) Kelompok tandingan berbasis asal daerah sama-sama eksklusif dan memperuncing sekat.
- (D) Mengecam dengan menyebut nama mempermalukan dan memicu konflik.', status='aktif', quality_score=4, quality_notes='Perbaikan: opsi E (kelompok tandingan terbuka) yang setara dengan C diganti kelompok tandingan eksklusif; kunci dipindah ke C (mendorong kelompok menjadi inklusif secara santun).', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fc7-7367-9aba-6568ac7f93d1';
UPDATE questions SET description='Menjelang tes CPNS, sejumlah mahasiswa di jurusan Anda membentuk kelompok belajar eksklusif yang hanya menerima anggota seagama dan sedaerah asal, dengan alasan ''biar lebih nyambung''. Anda diajak bergabung karena berasal dari daerah yang sama. Anda menyadari hal ini mencederai semangat kebhinekaan. Sikap yang paling sesuai dengan Bhinneka Tunggal Ika adalah...', explanation='DIKETAHUI:
- Kelompok belajar eksklusif berdasarkan agama dan daerah asal.
- Anda diajak karena sedaerah.
- Kriteria: Bhinneka Tunggal Ika.

DITANYAKAN:
Sikap yang paling menjunjung kebhinekaan.

JAWAB:
1. Bhinneka Tunggal Ika menuntut kebersamaan tanpa membedakan agama dan daerah asal; kelompok yang menyaring anggota atas dasar itu bersifat eksklusif.
2. Sikap terbaik adalah mengubah sifat eksklusif itu secara santun dan terbuka, bukan ikut memanfaatkan, menjauhi, atau membalas.
3. Opsi E mendorong inklusivitas tanpa memutus hubungan dengan teman-teman tersebut.

Jadi, jawaban yang tepat adalah (E) Menyampaikan secara terbuka dan santun usulan agar kelompok belajar itu dibuka bagi semua teman tanpa memandang agama dan daerah asal, dan bersedia bergabung bila kelompok menjadi inklusif.

Mengapa opsi lain kurang tepat:
- (A) Bergabung tanpa mempersoalkan eksklusivitas berarti ikut melanggengkannya.
- (B) Menjauhi anggota kelompok justru menciptakan sekat baru.
- (C) Kelompok tandingan berbasis asal daerah sama-sama eksklusif dan memperuncing sekat.
- (D) Mengecam dengan menyebut nama mempermalukan dan memicu konflik.', updated_at=now() WHERE id='019b0bef-1fc7-7367-9aba-6568ac7f93d1';
UPDATE answers SET description='Bergabung diam-diam untuk memanfaatkan materinya tanpa mempersoalkan sifat eksklusifnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc7-7367-9aba-6568ac7f93d1' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak bergabung, lalu menjauhi anggota kelompok tersebut dalam pergaulan sehari-hari.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc7-7367-9aba-6568ac7f93d1' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Membentuk kelompok tandingan yang khusus beranggotakan mahasiswa dari daerah lain sebagai balasan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc7-7367-9aba-6568ac7f93d1' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengecam pembentukan kelompok itu di grup angkatan dengan menyebut nama-nama anggotanya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc7-7367-9aba-6568ac7f93d1' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyampaikan secara terbuka dan santun usulan agar kelompok belajar itu dibuka bagi semua teman tanpa memandang agama dan daerah asal, dan bersedia bergabung bila kelompok menjadi inklusif.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fc7-7367-9aba-6568ac7f93d1' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Pada Kongres Pemuda II di Batavia, 27–28 Oktober 1928, para pemuda dari berbagai organisasi kedaerahan seperti Jong Java, Jong Sumatranen Bond, Jong Ambon, dan Jong Celebes mengikrarkan Sumpah Pemuda. Makna utama peristiwa tersebut bagi pergerakan nasional adalah ...', options='[{"id": "019b0657-ec28-7489-8780-ac9ec44fca34", "description": "Lahirnya organisasi pergerakan modern pertama di Indonesia.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec28-7c5e-b7b5-9185fe314f9e", "description": "Diproklamasikannya kemerdekaan Indonesia.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec29-7297-b2bd-ad4e7892fd70", "description": "Ditetapkannya Pancasila sebagai dasar negara.", "isCorrect": false, "point": 1}, {"id": "019b0657-ec29-78c6-9ccc-3645e8e79b20", "description": "Bergesernya perjuangan dari yang bersifat kedaerahan menjadi perjuangan bersama sebagai satu bangsa, satu tanah air, dan menjunjung bahasa persatuan, bahasa Indonesia.", "isCorrect": true, "point": 1}, {"id": "019b0657-ec29-7def-a914-53c832e5ca8b", "description": "Dibubarkannya seluruh organisasi pemuda kedaerahan oleh pemerintah kolonial.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Kongres Pemuda II, 27–28 Oktober 1928, di Batavia.
- Peserta dari berbagai organisasi pemuda kedaerahan.
- Hasil: Sumpah Pemuda.

DITANYAKAN:
Makna utama Sumpah Pemuda bagi pergerakan nasional.

JAWAB:
1. Sebelum 1928, banyak organisasi pemuda bersifat kedaerahan (Jong Java, Jong Sumatranen Bond, Jong Ambon, dan lain-lain).
2. Sumpah Pemuda mengikrarkan satu tanah air Indonesia, satu bangsa Indonesia, dan menjunjung bahasa persatuan, bahasa Indonesia.
3. Maknanya, perjuangan bergeser dari kedaerahan menjadi perjuangan kebangsaan yang bersatu. Opsi D tepat.

Jadi, jawaban yang tepat adalah (D) Bergesernya perjuangan dari yang bersifat kedaerahan menjadi perjuangan bersama sebagai satu bangsa, satu tanah air, dan menjunjung bahasa persatuan, bahasa Indonesia.

Mengapa opsi lain kurang tepat:
- (A) Organisasi pergerakan modern pertama adalah Budi Utomo (1908).
- (B) Proklamasi kemerdekaan terjadi pada 17 Agustus 1945.
- (C) Pancasila ditetapkan sebagai dasar negara pada 18 Agustus 1945.
- (E) Organisasi kedaerahan tidak dibubarkan kolonial; banyak yang kemudian melebur atas kesadaran sendiri.', status='aktif', quality_score=5, quality_notes='Perbaikan: soal opini pribadi (merantau ke industri sawit vs membangun desa) diganti soal sejarah faktual tentang pemuda yang bersatu di Batavia (Sumpah Pemuda 1928), tetap WSK-15 dengan satu jawaban tegas.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ec28-703c-b6e1-27f56a898a53';
UPDATE questions SET description='Pada Kongres Pemuda II di Batavia, 27–28 Oktober 1928, para pemuda dari berbagai organisasi kedaerahan seperti Jong Java, Jong Sumatranen Bond, Jong Ambon, dan Jong Celebes mengikrarkan Sumpah Pemuda. Makna utama peristiwa tersebut bagi pergerakan nasional adalah ...', explanation='DIKETAHUI:
- Kongres Pemuda II, 27–28 Oktober 1928, di Batavia.
- Peserta dari berbagai organisasi pemuda kedaerahan.
- Hasil: Sumpah Pemuda.

DITANYAKAN:
Makna utama Sumpah Pemuda bagi pergerakan nasional.

JAWAB:
1. Sebelum 1928, banyak organisasi pemuda bersifat kedaerahan (Jong Java, Jong Sumatranen Bond, Jong Ambon, dan lain-lain).
2. Sumpah Pemuda mengikrarkan satu tanah air Indonesia, satu bangsa Indonesia, dan menjunjung bahasa persatuan, bahasa Indonesia.
3. Maknanya, perjuangan bergeser dari kedaerahan menjadi perjuangan kebangsaan yang bersatu. Opsi D tepat.

Jadi, jawaban yang tepat adalah (D) Bergesernya perjuangan dari yang bersifat kedaerahan menjadi perjuangan bersama sebagai satu bangsa, satu tanah air, dan menjunjung bahasa persatuan, bahasa Indonesia.

Mengapa opsi lain kurang tepat:
- (A) Organisasi pergerakan modern pertama adalah Budi Utomo (1908).
- (B) Proklamasi kemerdekaan terjadi pada 17 Agustus 1945.
- (C) Pancasila ditetapkan sebagai dasar negara pada 18 Agustus 1945.
- (E) Organisasi kedaerahan tidak dibubarkan kolonial; banyak yang kemudian melebur atas kesadaran sendiri.', updated_at=now() WHERE id='019b0657-ec28-703c-b6e1-27f56a898a53';
UPDATE answers SET description='Lahirnya organisasi pergerakan modern pertama di Indonesia.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec28-703c-b6e1-27f56a898a53' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Diproklamasikannya kemerdekaan Indonesia.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec28-703c-b6e1-27f56a898a53' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Ditetapkannya Pancasila sebagai dasar negara.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec28-703c-b6e1-27f56a898a53' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Bergesernya perjuangan dari yang bersifat kedaerahan menjadi perjuangan bersama sebagai satu bangsa, satu tanah air, dan menjunjung bahasa persatuan, bahasa Indonesia.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec28-703c-b6e1-27f56a898a53' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Dibubarkannya seluruh organisasi pemuda kedaerahan oleh pemerintah kolonial.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ec28-703c-b6e1-27f56a898a53' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Deklarasi Djuanda pada 13 Desember 1957 mengubah cara pandang terhadap wilayah laut Indonesia dan menjadi dasar konsepsi Wawasan Nusantara. Isi pokok deklarasi tersebut adalah ...', options='[{"id": "3651379d-5d9f-4e26-98fe-adee8493b63a", "description": "Laut teritorial Indonesia selebar 3 mil diukur dari garis pantai setiap pulau.", "isCorrect": false, "point": 1}, {"id": "688033de-86b9-4bed-8504-2b3d16ec8543", "description": "Penetapan Zona Ekonomi Eksklusif Indonesia selebar 200 mil laut.", "isCorrect": false, "point": 1}, {"id": "832fa215-4d9e-4fb4-8e59-09fe182a2b63", "description": "Pengakuan langsung PBB atas Indonesia sebagai negara kepulauan pada tahun 1957.", "isCorrect": false, "point": 1}, {"id": "a61c26ba-7241-4e4e-9c48-6366ba7a9ca2", "description": "Laut di sekitar, di antara, dan di dalam kepulauan Indonesia merupakan bagian wilayah Indonesia yang utuh, dengan laut teritorial 12 mil diukur dari garis yang menghubungkan titik-titik terluar pulau terluar.", "isCorrect": true, "point": 1}, {"id": "ea6b8cac-07dc-4d84-bbba-6aff3a43ba15", "description": "Penyerahan kewenangan pengelolaan laut sepenuhnya kepada pemerintah daerah.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Deklarasi Djuanda, 13 Desember 1957.
- Menjadi dasar konsepsi Wawasan Nusantara.

DITANYAKAN:
Isi pokok Deklarasi Djuanda.

JAWAB:
1. Sebelumnya berlaku Territoriale Zee en Maritieme Kringen Ordonnantie 1939 yang menetapkan laut teritorial 3 mil dari garis pantai tiap pulau, sehingga ada laut bebas di antara pulau-pulau Indonesia.
2. Deklarasi Djuanda menyatakan seluruh perairan di sekitar, di antara, dan di dalam kepulauan Indonesia adalah bagian wilayah Indonesia, dengan laut teritorial 12 mil yang diukur dari garis pangkal yang menghubungkan titik-titik terluar pulau terluar.
3. Konsep negara kepulauan ini akhirnya diakui dalam UNCLOS 1982 dan diratifikasi Indonesia melalui UU No. 17 Tahun 1985.

Jadi, jawaban yang tepat adalah (D) Laut di sekitar, di antara, dan di dalam kepulauan Indonesia merupakan bagian wilayah Indonesia yang utuh, dengan laut teritorial 12 mil diukur dari garis yang menghubungkan titik-titik terluar pulau terluar.

Mengapa opsi lain kurang tepat:
- (A) Ketentuan 3 mil adalah aturan kolonial (TZMKO 1939) yang justru diganti Deklarasi Djuanda.
- (B) ZEE Indonesia diumumkan pada 1980 dan diatur dalam UU No. 5 Tahun 1983, bukan isi Deklarasi Djuanda.
- (C) Pengakuan internasional baru diperoleh melalui UNCLOS 1982.
- (E) Deklarasi Djuanda tidak mengatur pembagian kewenangan pusat dan daerah.', status='aktif', quality_score=5, quality_notes='Perbaikan: kunci lama tidak koheren dan butir duplikat tema ''archipelagic state'' dengan beberapa soal lain; diganti soal faktual Deklarasi Djuanda (WSK-17) dengan rujukan TZMKO 1939, UNCLOS 1982, UU 17/1985.', reviewed_at=now(), updated_at=now() WHERE id='78568635-860e-4077-b35e-11af2f8acba4';
UPDATE questions SET description='Deklarasi Djuanda pada 13 Desember 1957 mengubah cara pandang terhadap wilayah laut Indonesia dan menjadi dasar konsepsi Wawasan Nusantara. Isi pokok deklarasi tersebut adalah ...', explanation='DIKETAHUI:
- Deklarasi Djuanda, 13 Desember 1957.
- Menjadi dasar konsepsi Wawasan Nusantara.

DITANYAKAN:
Isi pokok Deklarasi Djuanda.

JAWAB:
1. Sebelumnya berlaku Territoriale Zee en Maritieme Kringen Ordonnantie 1939 yang menetapkan laut teritorial 3 mil dari garis pantai tiap pulau, sehingga ada laut bebas di antara pulau-pulau Indonesia.
2. Deklarasi Djuanda menyatakan seluruh perairan di sekitar, di antara, dan di dalam kepulauan Indonesia adalah bagian wilayah Indonesia, dengan laut teritorial 12 mil yang diukur dari garis pangkal yang menghubungkan titik-titik terluar pulau terluar.
3. Konsep negara kepulauan ini akhirnya diakui dalam UNCLOS 1982 dan diratifikasi Indonesia melalui UU No. 17 Tahun 1985.

Jadi, jawaban yang tepat adalah (D) Laut di sekitar, di antara, dan di dalam kepulauan Indonesia merupakan bagian wilayah Indonesia yang utuh, dengan laut teritorial 12 mil diukur dari garis yang menghubungkan titik-titik terluar pulau terluar.

Mengapa opsi lain kurang tepat:
- (A) Ketentuan 3 mil adalah aturan kolonial (TZMKO 1939) yang justru diganti Deklarasi Djuanda.
- (B) ZEE Indonesia diumumkan pada 1980 dan diatur dalam UU No. 5 Tahun 1983, bukan isi Deklarasi Djuanda.
- (C) Pengakuan internasional baru diperoleh melalui UNCLOS 1982.
- (E) Deklarasi Djuanda tidak mengatur pembagian kewenangan pusat dan daerah.', updated_at=now() WHERE id='78568635-860e-4077-b35e-11af2f8acba4';
UPDATE answers SET description='Laut teritorial Indonesia selebar 3 mil diukur dari garis pantai setiap pulau.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='78568635-860e-4077-b35e-11af2f8acba4' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Penetapan Zona Ekonomi Eksklusif Indonesia selebar 200 mil laut.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='78568635-860e-4077-b35e-11af2f8acba4' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Pengakuan langsung PBB atas Indonesia sebagai negara kepulauan pada tahun 1957.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='78568635-860e-4077-b35e-11af2f8acba4' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Laut di sekitar, di antara, dan di dalam kepulauan Indonesia merupakan bagian wilayah Indonesia yang utuh, dengan laut teritorial 12 mil diukur dari garis yang menghubungkan titik-titik terluar pulau terluar.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='78568635-860e-4077-b35e-11af2f8acba4' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Penyerahan kewenangan pengelolaan laut sepenuhnya kepada pemerintah daerah.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='78568635-860e-4077-b35e-11af2f8acba4' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Pemerintah mendadak mengubah aturan seleksi masuk PTN dua bulan sebelum tes sehingga materi yang Anda pelajari setahun menjadi kurang relevan. Ribuan peserta merasa dirugikan, dan muncul ajakan demonstrasi besar menuntut menteri mundur. Ujian tinggal sebulan. Sikap yang paling tepat, yaitu tetap memprioritaskan persiapan ujian sekaligus menyalurkan keberatan secara konstitusional dan tertib, adalah...', options='[{"id": "019b0bef-1fa1-71cb-a124-56f5f93ebff5", "description": "Ikut turun ke jalan setiap hari sampai menteri mundur meskipun persiapan ujian terbengkalai.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa1-76aa-84a8-fa6b05e26da8", "description": "Fokus belajar dan sama sekali tidak menyampaikan keberatan apa pun.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa1-7a2d-a6bc-24532c5eddb4", "description": "Fokus beradaptasi dengan materi baru, sambil menyampaikan keberatan melalui petisi atau kanal pengaduan resmi di sela waktu belajar.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fa1-7dad-b60c-9ce74779e00a", "description": "Pasrah dan menyalahkan nasib karena merasa tidak berdaya.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa2-7334-921d-b5f2d78cd977", "description": "Menyebarkan ajakan merusak fasilitas kementerian sebagai bentuk protes.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Aturan seleksi PTN berubah mendadak dua bulan sebelum tes.
- Muncul ajakan demonstrasi besar; ujian tinggal sebulan.
- Kriteria: prioritas persiapan ujian dan menyalurkan keberatan secara konstitusional serta tertib.

DITANYAKAN:
Sikap yang memenuhi kedua kriteria.

JAWAB:
1. Menyampaikan pendapat adalah hak konstitusional (Pasal 28E ayat 3 UUD NRI 1945) yang harus dilakukan secara tertib dan bertanggung jawab.
2. Dengan ujian sebulan lagi, persiapan ujian tetap menjadi prioritas; keberatan dapat disalurkan melalui cara yang tidak menyita waktu, seperti petisi atau kanal pengaduan resmi.
3. Opsi C satu-satunya yang memenuhi kedua kriteria.

Jadi, jawaban yang tepat adalah (C) Fokus beradaptasi dengan materi baru, sambil menyampaikan keberatan melalui petisi atau kanal pengaduan resmi di sela waktu belajar.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan persiapan ujian sehingga tidak memenuhi kriteria prioritas.
- (B) Tidak memenuhi kriteria menyalurkan keberatan.
- (D) Pasrah tidak memperjuangkan apa pun.
- (E) Perusakan fasilitas adalah tindakan melawan hukum.', status='aktif', quality_score=4, quality_notes='Perbaikan: kriteria (prioritas ujian + menyalurkan aspirasi secara konstitusional) dibuat eksplisit sehingga B dan C tidak lagi sama-sama benar; kunci C dipertahankan dan opsi E diganti tindakan anarkis.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fa0-7da5-a603-1d0c45045117';
UPDATE questions SET description='Pemerintah mendadak mengubah aturan seleksi masuk PTN dua bulan sebelum tes sehingga materi yang Anda pelajari setahun menjadi kurang relevan. Ribuan peserta merasa dirugikan, dan muncul ajakan demonstrasi besar menuntut menteri mundur. Ujian tinggal sebulan. Sikap yang paling tepat, yaitu tetap memprioritaskan persiapan ujian sekaligus menyalurkan keberatan secara konstitusional dan tertib, adalah...', explanation='DIKETAHUI:
- Aturan seleksi PTN berubah mendadak dua bulan sebelum tes.
- Muncul ajakan demonstrasi besar; ujian tinggal sebulan.
- Kriteria: prioritas persiapan ujian dan menyalurkan keberatan secara konstitusional serta tertib.

DITANYAKAN:
Sikap yang memenuhi kedua kriteria.

JAWAB:
1. Menyampaikan pendapat adalah hak konstitusional (Pasal 28E ayat 3 UUD NRI 1945) yang harus dilakukan secara tertib dan bertanggung jawab.
2. Dengan ujian sebulan lagi, persiapan ujian tetap menjadi prioritas; keberatan dapat disalurkan melalui cara yang tidak menyita waktu, seperti petisi atau kanal pengaduan resmi.
3. Opsi C satu-satunya yang memenuhi kedua kriteria.

Jadi, jawaban yang tepat adalah (C) Fokus beradaptasi dengan materi baru, sambil menyampaikan keberatan melalui petisi atau kanal pengaduan resmi di sela waktu belajar.

Mengapa opsi lain kurang tepat:
- (A) Mengorbankan persiapan ujian sehingga tidak memenuhi kriteria prioritas.
- (B) Tidak memenuhi kriteria menyalurkan keberatan.
- (D) Pasrah tidak memperjuangkan apa pun.
- (E) Perusakan fasilitas adalah tindakan melawan hukum.', updated_at=now() WHERE id='019b0bef-1fa0-7da5-a603-1d0c45045117';
UPDATE answers SET description='Ikut turun ke jalan setiap hari sampai menteri mundur meskipun persiapan ujian terbengkalai.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa0-7da5-a603-1d0c45045117' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Fokus belajar dan sama sekali tidak menyampaikan keberatan apa pun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa0-7da5-a603-1d0c45045117' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Fokus beradaptasi dengan materi baru, sambil menyampaikan keberatan melalui petisi atau kanal pengaduan resmi di sela waktu belajar.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa0-7da5-a603-1d0c45045117' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Pasrah dan menyalahkan nasib karena merasa tidak berdaya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa0-7da5-a603-1d0c45045117' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyebarkan ajakan merusak fasilitas kementerian sebagai bentuk protes.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fa0-7da5-a603-1d0c45045117' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Seorang pelajar SMA menemukan inovasi sains yang bermanfaat bagi daerahnya. Ia mendapat beasiswa penuh dari universitas bergengsi di luar negeri tanpa syarat berganti kewarganegaraan, tetapi khawatir pengembangan inovasinya di daerah akan terhenti bila ia berangkat. Keputusan yang paling mencerminkan nasionalisme sekaligus mengembangkan potensi diri untuk kemajuan bangsa dalam jangka panjang adalah...', options='[{"id": "019993b1-83c5-7452-800f-c9161a02b194", "description": "Menerima beasiswa dan memutuskan tidak lagi peduli pada daerah asalnya.", "isCorrect": false, "point": 1}, {"id": "019993b1-83c5-7921-87a0-279a87ce9ffc", "description": "Menolak beasiswa dan tetap di daerah meskipun potensi keilmuannya tidak berkembang.", "isCorrect": false, "point": 1}, {"id": "019993b1-83c5-7e0c-a021-302dcd6a91ff", "description": "Menerima beasiswa, menyerahkan pengembangan awal inovasi kepada tim sekolah atau mitra di daerah, tetap terlibat dari jauh, dan berencana kembali mengabdikan ilmunya.", "isCorrect": true, "point": 1}, {"id": "019993b1-83c6-743c-855e-c72311be32db", "description": "Menolak berangkat kecuali pemerintah memberikan beasiswa dalam negeri yang setara.", "isCorrect": false, "point": 1}, {"id": "019993b1-83c6-794a-b63b-58d86c1e793a", "description": "Menerima beasiswa lalu menjual hak atas inovasinya kepada pihak asing.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Inovasi bermanfaat bagi daerah.
- Beasiswa penuh luar negeri tanpa syarat berganti kewarganegaraan.
- Kriteria: nasionalisme dan pengembangan potensi untuk kemajuan bangsa jangka panjang.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Nasionalisme tidak berarti menolak belajar ke luar negeri; yang penting ilmu dan karyanya diarahkan untuk kemajuan bangsa.
2. Agar inovasi tidak terhenti, pengembangannya dapat dilanjutkan tim atau mitra di daerah, sementara ia tetap terlibat dan kembali membawa ilmu yang lebih tinggi.
3. Opsi C memadukan pengembangan diri dan kontribusi bagi daerah.

Jadi, jawaban yang tepat adalah (C) Menerima beasiswa, menyerahkan pengembangan awal inovasi kepada tim sekolah atau mitra di daerah, tetap terlibat dari jauh, dan berencana kembali mengabdikan ilmunya.

Mengapa opsi lain kurang tepat:
- (A) Mengabaikan daerah asal bertentangan dengan nasionalisme.
- (B) Menolak kesempatan langka membuat potensi keilmuannya tidak berkembang untuk jangka panjang.
- (D) Memberi syarat kepada pemerintah bersifat menuntut dan tidak realistis.
- (E) Menjual hak inovasi kepada pihak asing menghilangkan manfaatnya bagi bangsa.', status='aktif', quality_score=4, quality_notes='Perbaikan: premis yang bertentangan dengan kunci (syarat melepas kewarganegaraan) dihapus; kriteria dibuat eksplisit dan opsi B/D diberi cacat jelas sehingga kunci C tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019993b1-83c5-7130-9e24-8a15afeb6a28';
UPDATE questions SET description='Seorang pelajar SMA menemukan inovasi sains yang bermanfaat bagi daerahnya. Ia mendapat beasiswa penuh dari universitas bergengsi di luar negeri tanpa syarat berganti kewarganegaraan, tetapi khawatir pengembangan inovasinya di daerah akan terhenti bila ia berangkat. Keputusan yang paling mencerminkan nasionalisme sekaligus mengembangkan potensi diri untuk kemajuan bangsa dalam jangka panjang adalah...', explanation='DIKETAHUI:
- Inovasi bermanfaat bagi daerah.
- Beasiswa penuh luar negeri tanpa syarat berganti kewarganegaraan.
- Kriteria: nasionalisme dan pengembangan potensi untuk kemajuan bangsa jangka panjang.

DITANYAKAN:
Keputusan yang memenuhi kedua kriteria.

JAWAB:
1. Nasionalisme tidak berarti menolak belajar ke luar negeri; yang penting ilmu dan karyanya diarahkan untuk kemajuan bangsa.
2. Agar inovasi tidak terhenti, pengembangannya dapat dilanjutkan tim atau mitra di daerah, sementara ia tetap terlibat dan kembali membawa ilmu yang lebih tinggi.
3. Opsi C memadukan pengembangan diri dan kontribusi bagi daerah.

Jadi, jawaban yang tepat adalah (C) Menerima beasiswa, menyerahkan pengembangan awal inovasi kepada tim sekolah atau mitra di daerah, tetap terlibat dari jauh, dan berencana kembali mengabdikan ilmunya.

Mengapa opsi lain kurang tepat:
- (A) Mengabaikan daerah asal bertentangan dengan nasionalisme.
- (B) Menolak kesempatan langka membuat potensi keilmuannya tidak berkembang untuk jangka panjang.
- (D) Memberi syarat kepada pemerintah bersifat menuntut dan tidak realistis.
- (E) Menjual hak inovasi kepada pihak asing menghilangkan manfaatnya bagi bangsa.', updated_at=now() WHERE id='019993b1-83c5-7130-9e24-8a15afeb6a28';
UPDATE answers SET description='Menerima beasiswa dan memutuskan tidak lagi peduli pada daerah asalnya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c5-7130-9e24-8a15afeb6a28' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak beasiswa dan tetap di daerah meskipun potensi keilmuannya tidak berkembang.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c5-7130-9e24-8a15afeb6a28' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima beasiswa, menyerahkan pengembangan awal inovasi kepada tim sekolah atau mitra di daerah, tetap terlibat dari jauh, dan berencana kembali mengabdikan ilmunya.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c5-7130-9e24-8a15afeb6a28' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menolak berangkat kecuali pemerintah memberikan beasiswa dalam negeri yang setara.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c5-7130-9e24-8a15afeb6a28' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menerima beasiswa lalu menjual hak atas inovasinya kepada pihak asing.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83c5-7130-9e24-8a15afeb6a28' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sekolah mewajibkan pengurus OSIS memakai seragam batik buatan UMKM lokal sebagai kampanye cinta produk dalam negeri. Ternyata kainnya panas, kasar, mudah luntur, dan harganya lebih mahal daripada kain bermotif batik buatan pabrik. Banyak pengurus mengeluh. Sebagai Ketua OSIS, kebijakan yang paling tepat untuk tetap mendukung produk lokal sekaligus memenuhi kenyamanan dan kewajaran harga bagi pengurus adalah...', options='[{"id": "019afdd0-0b95-70af-b987-7a38317f3c74", "description": "Tetap mewajibkan batik tersebut dan meminta pengurus mengorbankan kenyamanan demi pengrajin kecil.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0b95-7732-8cea-e41981de4e48", "description": "Mengizinkan pengurus beralih ke kain bermotif batik buatan pabrik yang lebih murah dan nyaman.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0b95-7aeb-ae4d-0e19388f91f8", "description": "Memberi masukan kepada UMKM tersebut untuk produksi berikutnya, sambil tetap mewajibkan seragam lama dipakai saat ini.", "isCorrect": false, "point": 1}, {"id": "019afdd0-0b96-7282-9b0b-7bf8f09a286d", "description": "Mengusulkan kepada sekolah untuk mengevaluasi pemasok dan mencari pengrajin batik lokal lain yang mampu memberi kualitas lebih baik dengan harga setara.", "isCorrect": true, "point": 1}, {"id": "019afdd0-0b96-759d-be9e-11a92029916b", "description": "Meminta setiap pengurus menanggung sendiri biaya tambahan untuk melapisi batik dengan kain furing.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Kampanye cinta produk lokal melalui seragam batik UMKM.
- Kain panas, kasar, luntur, dan mahal.
- Kriteria: tetap mendukung produk lokal, nyaman, dan harga wajar.

DITANYAKAN:
Kebijakan yang memenuhi ketiga kriteria.

JAWAB:
1. Cinta produk dalam negeri tidak berarti menerima mutu rendah; produk lokal yang bermutu justru memperkuat kampanye.
2. Mengganti pemasok dengan pengrajin lokal lain yang lebih baik tetap mendukung UMKM, sekaligus memperbaiki kenyamanan dan kewajaran harga.
3. Opsi D satu-satunya yang memenuhi ketiga kriteria.

Jadi, jawaban yang tepat adalah (D) Mengusulkan kepada sekolah untuk mengevaluasi pemasok dan mencari pengrajin batik lokal lain yang mampu memberi kualitas lebih baik dengan harga setara.

Mengapa opsi lain kurang tepat:
- (A) Mengabaikan kenyamanan dan kewajaran harga.
- (B) Kain pabrik bermotif batik meninggalkan dukungan terhadap produk UMKM lokal.
- (C) Masukan baik untuk jangka panjang, tetapi masalah kenyamanan saat ini tidak terselesaikan.
- (E) Menambah beban biaya bagi pengurus padahal harga sudah mahal.', status='aktif', quality_score=4, quality_notes='Perbaikan: kriteria dibuat eksplisit (produk lokal + nyaman + harga wajar); kunci dikoreksi ke D dan opsi E diubah menjadi tambahan biaya bagi pengurus sehingga tidak lagi setara.', reviewed_at=now(), updated_at=now() WHERE id='019afdd0-0b94-7a87-b378-7ef3dac3be6d';
UPDATE questions SET description='Sekolah mewajibkan pengurus OSIS memakai seragam batik buatan UMKM lokal sebagai kampanye cinta produk dalam negeri. Ternyata kainnya panas, kasar, mudah luntur, dan harganya lebih mahal daripada kain bermotif batik buatan pabrik. Banyak pengurus mengeluh. Sebagai Ketua OSIS, kebijakan yang paling tepat untuk tetap mendukung produk lokal sekaligus memenuhi kenyamanan dan kewajaran harga bagi pengurus adalah...', explanation='DIKETAHUI:
- Kampanye cinta produk lokal melalui seragam batik UMKM.
- Kain panas, kasar, luntur, dan mahal.
- Kriteria: tetap mendukung produk lokal, nyaman, dan harga wajar.

DITANYAKAN:
Kebijakan yang memenuhi ketiga kriteria.

JAWAB:
1. Cinta produk dalam negeri tidak berarti menerima mutu rendah; produk lokal yang bermutu justru memperkuat kampanye.
2. Mengganti pemasok dengan pengrajin lokal lain yang lebih baik tetap mendukung UMKM, sekaligus memperbaiki kenyamanan dan kewajaran harga.
3. Opsi D satu-satunya yang memenuhi ketiga kriteria.

Jadi, jawaban yang tepat adalah (D) Mengusulkan kepada sekolah untuk mengevaluasi pemasok dan mencari pengrajin batik lokal lain yang mampu memberi kualitas lebih baik dengan harga setara.

Mengapa opsi lain kurang tepat:
- (A) Mengabaikan kenyamanan dan kewajaran harga.
- (B) Kain pabrik bermotif batik meninggalkan dukungan terhadap produk UMKM lokal.
- (C) Masukan baik untuk jangka panjang, tetapi masalah kenyamanan saat ini tidak terselesaikan.
- (E) Menambah beban biaya bagi pengurus padahal harga sudah mahal.', updated_at=now() WHERE id='019afdd0-0b94-7a87-b378-7ef3dac3be6d';
UPDATE answers SET description='Tetap mewajibkan batik tersebut dan meminta pengurus mengorbankan kenyamanan demi pengrajin kecil.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b94-7a87-b378-7ef3dac3be6d' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Mengizinkan pengurus beralih ke kain bermotif batik buatan pabrik yang lebih murah dan nyaman.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b94-7a87-b378-7ef3dac3be6d' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Memberi masukan kepada UMKM tersebut untuk produksi berikutnya, sambil tetap mewajibkan seragam lama dipakai saat ini.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b94-7a87-b378-7ef3dac3be6d' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengusulkan kepada sekolah untuk mengevaluasi pemasok dan mencari pengrajin batik lokal lain yang mampu memberi kualitas lebih baik dengan harga setara.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b94-7a87-b378-7ef3dac3be6d' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Meminta setiap pengurus menanggung sendiri biaya tambahan untuk melapisi batik dengan kain furing.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019afdd0-0b94-7a87-b378-7ef3dac3be6d' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Sudah dua tahun Anda gagal masuk PTN. Rasa frustrasi membuat Anda berpikir negara ini tidak memberi tempat bagi orang seperti Anda. Lalu datang tawaran beasiswa kuliah di luar negeri dengan kewajiban bekerja di negara tersebut selama sepuluh tahun setelah lulus. Sikap yang paling mencerminkan nasionalisme yang rasional, yaitu keputusan tidak didorong rasa kecewa terhadap negara, tetap mengembangkan diri, dan tetap berorientasi pada kontribusi bagi bangsa, adalah...', options='[{"id": "019b0bef-1f9f-7aa2-9c6b-86d20b46a8b2", "description": "Menenangkan diri, memandang kegagalan sebagai bagian proses, lalu menimbang secara rasional pilihan pendidikan di dalam maupun luar negeri dengan komitmen tetap berkontribusi bagi bangsa.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1f9f-7edc-8057-3e8cd8d2af42", "description": "Menerima beasiswa terutama karena kecewa dan berniat tidak pernah kembali karena merasa negara tidak menghargai Anda.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa0-72d7-9ce5-c881d0e118b0", "description": "Menerima beasiswa sambil berencana mencari celah untuk melanggar kontrak kerja setelah lulus.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa0-760a-8c44-4d898ba86ebd", "description": "Terus mengulang tes PTN yang sama tanpa evaluasi karena menganggap hanya itu cara mengabdi kepada negara.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fa0-799f-bf3b-073d1d0da14c", "description": "Menyebarkan unggahan di media sosial bahwa negara telah gagal mengurus anak mudanya.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Dua kali gagal masuk PTN dan merasa negara tidak memberi tempat.
- Ada tawaran beasiswa luar negeri dengan ikatan kerja sepuluh tahun di negara itu.
- Kriteria: tidak didorong kekecewaan, tetap mengembangkan diri, berorientasi kontribusi bagi bangsa.

DITANYAKAN:
Sikap yang memenuhi ketiga kriteria.

JAWAB:
1. Kegagalan seleksi bukan bukti negara tidak memberi tempat; keputusan penting sebaiknya diambil dengan kepala dingin, bukan karena kecewa.
2. Pilihan pendidikan, baik di dalam maupun di luar negeri, sama-sama sah selama ditimbang rasional dan disertai komitmen berkontribusi bagi bangsa.
3. Opsi A memenuhi ketiga kriteria; opsi lain didorong kekecewaan, ketidakjujuran, atau pikiran sempit.

Jadi, jawaban yang tepat adalah (A) Menenangkan diri, memandang kegagalan sebagai bagian proses, lalu menimbang secara rasional pilihan pendidikan di dalam maupun luar negeri dengan komitmen tetap berkontribusi bagi bangsa.

Mengapa opsi lain kurang tepat:
- (B) Keputusan didorong kekecewaan dan berniat memutus hubungan dengan bangsa.
- (C) Berencana melanggar kontrak adalah ketidakjujuran.
- (D) Mengulang tanpa evaluasi tidak rasional, dan pengabdian tidak hanya melalui satu jalur.
- (E) Menyalahkan negara di media sosial tidak konstruktif dan tidak menyelesaikan masalah.', status='aktif', quality_score=4, quality_notes='Perbaikan: kunci lama (menerima ikatan 10 tahun di luar negeri) dan B sama-sama dapat dibela; soal diubah menilai cara mengambil keputusan dengan kriteria eksplisit, sehingga kunci A tunggal.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1f9f-76bf-823b-c6a3b01f4521';
UPDATE questions SET description='Sudah dua tahun Anda gagal masuk PTN. Rasa frustrasi membuat Anda berpikir negara ini tidak memberi tempat bagi orang seperti Anda. Lalu datang tawaran beasiswa kuliah di luar negeri dengan kewajiban bekerja di negara tersebut selama sepuluh tahun setelah lulus. Sikap yang paling mencerminkan nasionalisme yang rasional, yaitu keputusan tidak didorong rasa kecewa terhadap negara, tetap mengembangkan diri, dan tetap berorientasi pada kontribusi bagi bangsa, adalah...', explanation='DIKETAHUI:
- Dua kali gagal masuk PTN dan merasa negara tidak memberi tempat.
- Ada tawaran beasiswa luar negeri dengan ikatan kerja sepuluh tahun di negara itu.
- Kriteria: tidak didorong kekecewaan, tetap mengembangkan diri, berorientasi kontribusi bagi bangsa.

DITANYAKAN:
Sikap yang memenuhi ketiga kriteria.

JAWAB:
1. Kegagalan seleksi bukan bukti negara tidak memberi tempat; keputusan penting sebaiknya diambil dengan kepala dingin, bukan karena kecewa.
2. Pilihan pendidikan, baik di dalam maupun di luar negeri, sama-sama sah selama ditimbang rasional dan disertai komitmen berkontribusi bagi bangsa.
3. Opsi A memenuhi ketiga kriteria; opsi lain didorong kekecewaan, ketidakjujuran, atau pikiran sempit.

Jadi, jawaban yang tepat adalah (A) Menenangkan diri, memandang kegagalan sebagai bagian proses, lalu menimbang secara rasional pilihan pendidikan di dalam maupun luar negeri dengan komitmen tetap berkontribusi bagi bangsa.

Mengapa opsi lain kurang tepat:
- (B) Keputusan didorong kekecewaan dan berniat memutus hubungan dengan bangsa.
- (C) Berencana melanggar kontrak adalah ketidakjujuran.
- (D) Mengulang tanpa evaluasi tidak rasional, dan pengabdian tidak hanya melalui satu jalur.
- (E) Menyalahkan negara di media sosial tidak konstruktif dan tidak menyelesaikan masalah.', updated_at=now() WHERE id='019b0bef-1f9f-76bf-823b-c6a3b01f4521';
UPDATE answers SET description='Menenangkan diri, memandang kegagalan sebagai bagian proses, lalu menimbang secara rasional pilihan pendidikan di dalam maupun luar negeri dengan komitmen tetap berkontribusi bagi bangsa.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1f9f-76bf-823b-c6a3b01f4521' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menerima beasiswa terutama karena kecewa dan berniat tidak pernah kembali karena merasa negara tidak menghargai Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1f9f-76bf-823b-c6a3b01f4521' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima beasiswa sambil berencana mencari celah untuk melanggar kontrak kerja setelah lulus.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1f9f-76bf-823b-c6a3b01f4521' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Terus mengulang tes PTN yang sama tanpa evaluasi karena menganggap hanya itu cara mengabdi kepada negara.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1f9f-76bf-823b-c6a3b01f4521' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menyebarkan unggahan di media sosial bahwa negara telah gagal mengurus anak mudanya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1f9f-76bf-823b-c6a3b01f4521' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda sedang berjuang masuk sekolah kedinasan favorit yang persaingannya ketat. Seorang kerabat yang menjabat di instansi tersebut menawarkan ''jalur belakang'' dengan jaminan lulus asalkan membayar sejumlah uang. Orang tua Anda mulai tergoda menjual tanah demi biaya tersebut. Sikap yang paling tepat sebagai calon abdi negara yang berintegritas adalah...', options='[{"id": "019b0657-ebd9-7918-9180-e29fe3fe1bab", "description": "Menerima tawaran itu dengan menganggap uangnya sebagai utang yang akan Anda cicil setelah bekerja.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebda-710a-8cba-7a25ca77f3fe", "description": "Menyebarkan tawaran kerabat itu di media sosial agar ia dipermalukan.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebda-764c-a795-d6d77284c04c", "description": "Menolak tawaran itu, menjelaskan kepada orang tua bahwa membayar ''jalur belakang'' adalah suap dan rawan penipuan, serta tetap mengikuti seleksi secara jujur dengan belajar lebih sungguh-sungguh.", "isCorrect": true, "point": 1}, {"id": "019b0657-ebda-7ba2-9d86-30a86ed1007f", "description": "Menolak secara pribadi, tetapi membiarkan orang tua tetap membayar karena itu keputusan mereka.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebdb-71e8-bfc9-b8373d25868c", "description": "Mengikuti tes secara jujur dulu, lalu memakai jasa kerabat itu bila nilai Anda kritis.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Kerabat pejabat menawarkan ''jalur belakang'' berbayar dengan jaminan lulus.
- Orang tua tergoda menjual tanah.
- Kriteria: calon abdi negara yang berintegritas.

DITANYAKAN:
Sikap yang paling berintegritas.

JAWAB:
1. Membayar agar diluluskan adalah suap; pemberi maupun penerima dapat dijerat UU Pemberantasan Tindak Pidana Korupsi. Tawaran ''jaminan lulus'' juga kerap merupakan penipuan.
2. Karena orang tua yang hendak membayar, Anda perlu meyakinkan mereka agar tidak menjual tanah untuk perbuatan melanggar hukum.
3. Integritas sekaligus usaha tampak dari tetap mengikuti seleksi secara jujur dan belajar lebih sungguh-sungguh. Opsi C memuat ketiganya.

Jadi, jawaban yang tepat adalah (C) Menolak tawaran itu, menjelaskan kepada orang tua bahwa membayar ''jalur belakang'' adalah suap dan rawan penipuan, serta tetap mengikuti seleksi secara jujur dengan belajar lebih sungguh-sungguh.

Mengapa opsi lain kurang tepat:
- (A) Menganggapnya utang tidak mengubah fakta bahwa itu suap.
- (B) Mempermalukan di media sosial bukan penyelesaian yang tepat dan tidak mencegah orang tua membayar.
- (D) Membiarkan orang tua membayar berarti tetap terlibat dalam suap.
- (E) Niat memakai jalur belakang sebagai cadangan tetap niat menyuap.', status='aktif', quality_score=5, quality_notes='Perbaikan: kunci lama menyiratkan menyerah dari sekolah kedinasan dan setara dengan D; kunci C kini memadukan penolakan, meyakinkan orang tua, dan tetap ikut seleksi jujur; opsi D diganti ''membiarkan orang tua membayar''.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ebd9-7342-9932-1faecf481fa2';
UPDATE questions SET description='Anda sedang berjuang masuk sekolah kedinasan favorit yang persaingannya ketat. Seorang kerabat yang menjabat di instansi tersebut menawarkan ''jalur belakang'' dengan jaminan lulus asalkan membayar sejumlah uang. Orang tua Anda mulai tergoda menjual tanah demi biaya tersebut. Sikap yang paling tepat sebagai calon abdi negara yang berintegritas adalah...', explanation='DIKETAHUI:
- Kerabat pejabat menawarkan ''jalur belakang'' berbayar dengan jaminan lulus.
- Orang tua tergoda menjual tanah.
- Kriteria: calon abdi negara yang berintegritas.

DITANYAKAN:
Sikap yang paling berintegritas.

JAWAB:
1. Membayar agar diluluskan adalah suap; pemberi maupun penerima dapat dijerat UU Pemberantasan Tindak Pidana Korupsi. Tawaran ''jaminan lulus'' juga kerap merupakan penipuan.
2. Karena orang tua yang hendak membayar, Anda perlu meyakinkan mereka agar tidak menjual tanah untuk perbuatan melanggar hukum.
3. Integritas sekaligus usaha tampak dari tetap mengikuti seleksi secara jujur dan belajar lebih sungguh-sungguh. Opsi C memuat ketiganya.

Jadi, jawaban yang tepat adalah (C) Menolak tawaran itu, menjelaskan kepada orang tua bahwa membayar ''jalur belakang'' adalah suap dan rawan penipuan, serta tetap mengikuti seleksi secara jujur dengan belajar lebih sungguh-sungguh.

Mengapa opsi lain kurang tepat:
- (A) Menganggapnya utang tidak mengubah fakta bahwa itu suap.
- (B) Mempermalukan di media sosial bukan penyelesaian yang tepat dan tidak mencegah orang tua membayar.
- (D) Membiarkan orang tua membayar berarti tetap terlibat dalam suap.
- (E) Niat memakai jalur belakang sebagai cadangan tetap niat menyuap.', updated_at=now() WHERE id='019b0657-ebd9-7342-9932-1faecf481fa2';
UPDATE answers SET description='Menerima tawaran itu dengan menganggap uangnya sebagai utang yang akan Anda cicil setelah bekerja.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebd9-7342-9932-1faecf481fa2' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menyebarkan tawaran kerabat itu di media sosial agar ia dipermalukan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebd9-7342-9932-1faecf481fa2' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menolak tawaran itu, menjelaskan kepada orang tua bahwa membayar ''jalur belakang'' adalah suap dan rawan penipuan, serta tetap mengikuti seleksi secara jujur dengan belajar lebih sungguh-sungguh.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebd9-7342-9932-1faecf481fa2' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menolak secara pribadi, tetapi membiarkan orang tua tetap membayar karena itu keputusan mereka.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebd9-7342-9932-1faecf481fa2' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengikuti tes secara jujur dulu, lalu memakai jasa kerabat itu bila nilai Anda kritis.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebd9-7342-9932-1faecf481fa2' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Menjelang ujian akhir semester, beredar ''kunci jawaban'' bocoran di grup angkatan. Hampir semua teman memakainya agar IPK aman untuk syarat sekolah kedinasan. Jika tidak ikut memakai, nilai Anda mungkin kalah bersaing. Sikap yang paling mencerminkan kejujuran dan keadilan adalah...', options='[{"id": "019b0657-ebf3-7c2a-81e6-ab214c7481ca", "description": "Memakai kunci jawaban itu hanya untuk mencocokkan jawaban Anda.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebf4-7255-949f-75cea62237fe", "description": "Menolak memakai kunci jawaban, belajar sungguh-sungguh, dan memberi tahu dosen bahwa soal ujian telah bocor agar keadilan ujian dapat dipulihkan.", "isCorrect": true, "point": 1}, {"id": "019b0657-ebf4-785e-ae87-824e6379f4d3", "description": "Memakai kunci jawaban, lalu melaporkan kebocoran itu setelah nilai Anda keluar.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebf4-7e0b-90cf-0a41e28e0022", "description": "Menasihati teman dekat saja dan membiarkan yang lain karena itu pilihan masing-masing.", "isCorrect": false, "point": 1}, {"id": "019b0657-ebf5-73a5-ab72-bab65f29c878", "description": "Tidak memakai kunci jawaban, tetapi membagikannya kepada teman yang memintanya.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Kunci jawaban UAS bocor dan beredar di grup angkatan.
- Hampir semua teman memakainya.
- Kriteria: kejujuran dan keadilan.

DITANYAKAN:
Sikap yang memenuhi kejujuran dan keadilan.

JAWAB:
1. Memakai kunci jawaban bocoran, sebagian maupun seluruhnya, adalah kecurangan.
2. Keadilan bagi semua peserta menuntut kebocoran diketahui dosen agar ujian dapat diperbaiki atau diulang.
3. Opsi B memuat kejujuran pribadi (tidak memakai, belajar) dan keadilan bersama (memberi tahu dosen).

Jadi, jawaban yang tepat adalah (B) Menolak memakai kunci jawaban, belajar sungguh-sungguh, dan memberi tahu dosen bahwa soal ujian telah bocor agar keadilan ujian dapat dipulihkan.

Mengapa opsi lain kurang tepat:
- (A) Mencocokkan jawaban dengan bocoran tetap kecurangan.
- (C) Memakai bocoran tetap curang, dan melapor setelah menikmati hasilnya tidak tulus.
- (D) Membiarkan sebagian besar teman berbuat curang merugikan keadilan ujian.
- (E) Membagikan bocoran berarti ikut menyebarkan kecurangan.', status='aktif', quality_score=5, quality_notes='Perbaikan: opsi E (sama-sama jujur) diganti tindakan menyebarkan bocoran, opsi C diganti melapor setelah memakai; kunci B dilengkapi pemberitahuan kepada dosen.', reviewed_at=now(), updated_at=now() WHERE id='019b0657-ebf3-7577-8c2a-e770f7ff96e8';
UPDATE questions SET description='Menjelang ujian akhir semester, beredar ''kunci jawaban'' bocoran di grup angkatan. Hampir semua teman memakainya agar IPK aman untuk syarat sekolah kedinasan. Jika tidak ikut memakai, nilai Anda mungkin kalah bersaing. Sikap yang paling mencerminkan kejujuran dan keadilan adalah...', explanation='DIKETAHUI:
- Kunci jawaban UAS bocor dan beredar di grup angkatan.
- Hampir semua teman memakainya.
- Kriteria: kejujuran dan keadilan.

DITANYAKAN:
Sikap yang memenuhi kejujuran dan keadilan.

JAWAB:
1. Memakai kunci jawaban bocoran, sebagian maupun seluruhnya, adalah kecurangan.
2. Keadilan bagi semua peserta menuntut kebocoran diketahui dosen agar ujian dapat diperbaiki atau diulang.
3. Opsi B memuat kejujuran pribadi (tidak memakai, belajar) dan keadilan bersama (memberi tahu dosen).

Jadi, jawaban yang tepat adalah (B) Menolak memakai kunci jawaban, belajar sungguh-sungguh, dan memberi tahu dosen bahwa soal ujian telah bocor agar keadilan ujian dapat dipulihkan.

Mengapa opsi lain kurang tepat:
- (A) Mencocokkan jawaban dengan bocoran tetap kecurangan.
- (C) Memakai bocoran tetap curang, dan melapor setelah menikmati hasilnya tidak tulus.
- (D) Membiarkan sebagian besar teman berbuat curang merugikan keadilan ujian.
- (E) Membagikan bocoran berarti ikut menyebarkan kecurangan.', updated_at=now() WHERE id='019b0657-ebf3-7577-8c2a-e770f7ff96e8';
UPDATE answers SET description='Memakai kunci jawaban itu hanya untuk mencocokkan jawaban Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf3-7577-8c2a-e770f7ff96e8' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak memakai kunci jawaban, belajar sungguh-sungguh, dan memberi tahu dosen bahwa soal ujian telah bocor agar keadilan ujian dapat dipulihkan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf3-7577-8c2a-e770f7ff96e8' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Memakai kunci jawaban, lalu melaporkan kebocoran itu setelah nilai Anda keluar.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf3-7577-8c2a-e770f7ff96e8' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menasihati teman dekat saja dan membiarkan yang lain karena itu pilihan masing-masing.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf3-7577-8c2a-e770f7ff96e8' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Tidak memakai kunci jawaban, tetapi membagikannya kepada teman yang memintanya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0657-ebf3-7577-8c2a-e770f7ff96e8' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda bercita-cita menjadi polisi, tetapi tinggi badan Anda ternyata kurang dari syarat minimal seleksi. Seorang calo menjamin Anda lolos dengan bayaran ratusan juta, dan orang tua siap menjual sawah. Di sisi lain, Anda sudah diterima di program D3 Teknik Sipil sebuah politeknik negeri. Keputusan yang paling berintegritas adalah...', options='[{"id": "019b0bef-1fad-72b5-942c-dfc04f02650a", "description": "Menolak calo, menerima bahwa syarat tinggi badan adalah ketentuan objektif seleksi, dan menempuh D3 Teknik Sipil untuk berkontribusi bagi bangsa melalui profesi lain.", "isCorrect": true, "point": 1}, {"id": "019b0bef-1fad-771b-bf90-0837244e7067", "description": "Membayar calo karena menjadi polisi adalah kebanggaan keluarga.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fad-7c0f-a0d4-5f78aa695988", "description": "Tetap mendaftar dengan memakai surat keterangan tinggi badan yang dipalsukan.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fae-713a-884e-193adced10bd", "description": "Mengambil D3 sambil menabung untuk membayar calo pada seleksi tahun depan.", "isCorrect": false, "point": 1}, {"id": "019b0bef-1fae-76cf-ac67-9726e3f95468", "description": "Mendaftar lalu mendesak panitia meloloskan Anda dengan alasan syarat tinggi badan diskriminatif.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Tinggi badan Anda kurang dari syarat minimal seleksi polisi.
- Calo menawarkan jaminan lolos berbayar; orang tua siap menjual sawah.
- Anda diterima di D3 Teknik Sipil politeknik negeri.

DITANYAKAN:
Keputusan yang paling berintegritas.

JAWAB:
1. Membayar calo adalah suap; memalsukan dokumen adalah tindak pidana. Keduanya bertentangan dengan integritas yang justru dituntut dari calon polisi.
2. Syarat fisik adalah ketentuan objektif yang berlaku sama bagi semua pelamar dan wajib dihormati.
3. Bela negara dan pengabdian dapat diwujudkan melalui profesi lain, misalnya membangun infrastruktur. Opsi A paling berintegritas.

Jadi, jawaban yang tepat adalah (A) Menolak calo, menerima bahwa syarat tinggi badan adalah ketentuan objektif seleksi, dan menempuh D3 Teknik Sipil untuk berkontribusi bagi bangsa melalui profesi lain.

Mengapa opsi lain kurang tepat:
- (B) Membayar calo adalah suap.
- (C) Memalsukan surat keterangan adalah tindak pidana.
- (D) Niat menyuap pada tahun berikutnya tetap tidak berintegritas.
- (E) Syarat fisik yang berlaku umum bukan diskriminasi; mendesak panitia meminta perlakuan istimewa.', status='aktif', quality_score=4, quality_notes='Perbaikan: premis membingungkan (''pas-pasan/batas minimal'' padahal memenuhi syarat) diganti ''kurang dari syarat minimal''; opsi C dan E yang sebelumnya dapat dibenarkan diganti pemalsuan dan desakan perlakuan istimewa.', reviewed_at=now(), updated_at=now() WHERE id='019b0bef-1fac-7df1-9161-988bbf9b1653';
UPDATE questions SET description='Anda bercita-cita menjadi polisi, tetapi tinggi badan Anda ternyata kurang dari syarat minimal seleksi. Seorang calo menjamin Anda lolos dengan bayaran ratusan juta, dan orang tua siap menjual sawah. Di sisi lain, Anda sudah diterima di program D3 Teknik Sipil sebuah politeknik negeri. Keputusan yang paling berintegritas adalah...', explanation='DIKETAHUI:
- Tinggi badan Anda kurang dari syarat minimal seleksi polisi.
- Calo menawarkan jaminan lolos berbayar; orang tua siap menjual sawah.
- Anda diterima di D3 Teknik Sipil politeknik negeri.

DITANYAKAN:
Keputusan yang paling berintegritas.

JAWAB:
1. Membayar calo adalah suap; memalsukan dokumen adalah tindak pidana. Keduanya bertentangan dengan integritas yang justru dituntut dari calon polisi.
2. Syarat fisik adalah ketentuan objektif yang berlaku sama bagi semua pelamar dan wajib dihormati.
3. Bela negara dan pengabdian dapat diwujudkan melalui profesi lain, misalnya membangun infrastruktur. Opsi A paling berintegritas.

Jadi, jawaban yang tepat adalah (A) Menolak calo, menerima bahwa syarat tinggi badan adalah ketentuan objektif seleksi, dan menempuh D3 Teknik Sipil untuk berkontribusi bagi bangsa melalui profesi lain.

Mengapa opsi lain kurang tepat:
- (B) Membayar calo adalah suap.
- (C) Memalsukan surat keterangan adalah tindak pidana.
- (D) Niat menyuap pada tahun berikutnya tetap tidak berintegritas.
- (E) Syarat fisik yang berlaku umum bukan diskriminasi; mendesak panitia meminta perlakuan istimewa.', updated_at=now() WHERE id='019b0bef-1fac-7df1-9161-988bbf9b1653';
UPDATE answers SET description='Menolak calo, menerima bahwa syarat tinggi badan adalah ketentuan objektif seleksi, dan menempuh D3 Teknik Sipil untuk berkontribusi bagi bangsa melalui profesi lain.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fac-7df1-9161-988bbf9b1653' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Membayar calo karena menjadi polisi adalah kebanggaan keluarga.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fac-7df1-9161-988bbf9b1653' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Tetap mendaftar dengan memakai surat keterangan tinggi badan yang dipalsukan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fac-7df1-9161-988bbf9b1653' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Mengambil D3 sambil menabung untuk membayar calo pada seleksi tahun depan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fac-7df1-9161-988bbf9b1653' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mendaftar lalu mendesak panitia meloloskan Anda dengan alasan syarat tinggi badan diskriminatif.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0bef-1fac-7df1-9161-988bbf9b1653' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda mengetahui sebuah perguruan tinggi swasta memperjualbelikan ijazah tanpa proses kuliah yang sah, dan banyak pembelinya memakai ijazah itu untuk syarat naik jabatan. Seorang kerabat mengajak Anda bekerja di bagian administrasi kampus itu dengan gaji besar untuk merapikan data agar tampak legal. Anda sedang butuh pekerjaan. Sikap yang paling tepat sebagai warga negara yang peduli pada mutu pendidikan nasional adalah...', options='[{"id": "019b0c6a-abc9-7485-ba5d-a76d8cb2ebcb", "description": "Menerima pekerjaan itu sementara sambil mengumpulkan bukti, lalu melaporkannya.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abc9-7a40-b2ff-f7c94127fd51", "description": "Menolak pekerjaan itu dan melaporkan dugaan jual beli ijazah tersebut kepada kementerian yang membidangi pendidikan tinggi atau aparat penegak hukum.", "isCorrect": true, "point": 1}, {"id": "019b0c6a-abc9-7f36-8017-ec80fbf5a6a1", "description": "Menerima pekerjaan itu karena Anda hanya staf administrasi yang tidak mengambil keputusan.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abca-73fc-bd27-93c2da577dc5", "description": "Menyebarkan nama-nama pembeli ijazah di media sosial tanpa verifikasi.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-abca-7871-b615-365e5d12833e", "description": "Menasihati kerabat agar berhenti, tetapi Anda sendiri diam dan tidak melapor.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Kampus swasta memperjualbelikan ijazah tanpa proses kuliah yang sah.
- Anda diajak merapikan data agar tampak legal.
- Anda butuh pekerjaan.

DITANYAKAN:
Sikap yang paling tepat.

JAWAB:
1. Memberikan ijazah tanpa hak dan menggunakan ijazah palsu diancam pidana menurut UU Sistem Pendidikan Nasional; merapikan data agar tampak legal berarti ikut memalsukan.
2. Karena itu, pekerjaan tersebut harus ditolak sejak awal; mengumpulkan bukti dengan ikut bekerja tetap berarti terlibat dalam pemalsuan.
3. Kepedulian pada mutu pendidikan diwujudkan dengan melaporkan kepada kementerian yang berwenang atau aparat penegak hukum. Opsi B memuat penolakan dan pelaporan.

Jadi, jawaban yang tepat adalah (B) Menolak pekerjaan itu dan melaporkan dugaan jual beli ijazah tersebut kepada kementerian yang membidangi pendidikan tinggi atau aparat penegak hukum.

Mengapa opsi lain kurang tepat:
- (A) Selama bekerja, Anda ikut memalsukan data sehingga terlibat dalam tindak pidana.
- (C) Staf yang merapikan data palsu tetap ikut serta dalam pemalsuan.
- (D) Menyebarkan nama tanpa verifikasi berisiko fitnah dan bukan jalur hukum.
- (E) Diam membiarkan praktik yang merugikan publik terus berlangsung.', status='aktif', quality_score=5, quality_notes='Perbaikan: kunci lama hanya menolak tanpa melapor, sedangkan A (bekerja sambil kumpulkan bukti) berisiko pidana; kunci B kini menolak sekaligus melapor, opsi D diganti penyebaran nama tanpa verifikasi.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-abc8-7e38-832b-ecf8cf969e68';
UPDATE questions SET description='Anda mengetahui sebuah perguruan tinggi swasta memperjualbelikan ijazah tanpa proses kuliah yang sah, dan banyak pembelinya memakai ijazah itu untuk syarat naik jabatan. Seorang kerabat mengajak Anda bekerja di bagian administrasi kampus itu dengan gaji besar untuk merapikan data agar tampak legal. Anda sedang butuh pekerjaan. Sikap yang paling tepat sebagai warga negara yang peduli pada mutu pendidikan nasional adalah...', explanation='DIKETAHUI:
- Kampus swasta memperjualbelikan ijazah tanpa proses kuliah yang sah.
- Anda diajak merapikan data agar tampak legal.
- Anda butuh pekerjaan.

DITANYAKAN:
Sikap yang paling tepat.

JAWAB:
1. Memberikan ijazah tanpa hak dan menggunakan ijazah palsu diancam pidana menurut UU Sistem Pendidikan Nasional; merapikan data agar tampak legal berarti ikut memalsukan.
2. Karena itu, pekerjaan tersebut harus ditolak sejak awal; mengumpulkan bukti dengan ikut bekerja tetap berarti terlibat dalam pemalsuan.
3. Kepedulian pada mutu pendidikan diwujudkan dengan melaporkan kepada kementerian yang berwenang atau aparat penegak hukum. Opsi B memuat penolakan dan pelaporan.

Jadi, jawaban yang tepat adalah (B) Menolak pekerjaan itu dan melaporkan dugaan jual beli ijazah tersebut kepada kementerian yang membidangi pendidikan tinggi atau aparat penegak hukum.

Mengapa opsi lain kurang tepat:
- (A) Selama bekerja, Anda ikut memalsukan data sehingga terlibat dalam tindak pidana.
- (C) Staf yang merapikan data palsu tetap ikut serta dalam pemalsuan.
- (D) Menyebarkan nama tanpa verifikasi berisiko fitnah dan bukan jalur hukum.
- (E) Diam membiarkan praktik yang merugikan publik terus berlangsung.', updated_at=now() WHERE id='019b0c6a-abc8-7e38-832b-ecf8cf969e68';
UPDATE answers SET description='Menerima pekerjaan itu sementara sambil mengumpulkan bukti, lalu melaporkannya.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc8-7e38-832b-ecf8cf969e68' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menolak pekerjaan itu dan melaporkan dugaan jual beli ijazah tersebut kepada kementerian yang membidangi pendidikan tinggi atau aparat penegak hukum.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc8-7e38-832b-ecf8cf969e68' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menerima pekerjaan itu karena Anda hanya staf administrasi yang tidak mengambil keputusan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc8-7e38-832b-ecf8cf969e68' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menyebarkan nama-nama pembeli ijazah di media sosial tanpa verifikasi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc8-7e38-832b-ecf8cf969e68' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menasihati kerabat agar berhenti, tetapi Anda sendiri diam dan tidak melapor.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-abc8-7e38-832b-ecf8cf969e68' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda magang di perusahaan rintisan ternama. Ternyata peserta magang dipaksa lembur tanpa uang lembur dan di luar jam yang disepakati dalam perjanjian magang, dengan tekanan kerja sangat tinggi. Nama perusahaan itu bergengsi untuk CV Anda. Sikap yang paling tepat sesuai hak atas perlakuan yang adil dan layak dalam hubungan kerja (Pasal 28D ayat 2 UUD NRI 1945) adalah...', options='[{"id": "019b0c6a-ac04-7844-a7d5-7c82377c7fba", "description": "Bertahan sampai akhir meskipun menderita, karena nama perusahaan penting bagi CV.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac04-7c77-97c5-76537678ac68", "description": "Langsung berhenti datang tanpa pemberitahuan kepada perusahaan maupun kampus.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac05-7288-83a3-1c8e624b5063", "description": "Menghasut peserta magang lain menyebarkan keburukan perusahaan di media sosial tanpa bukti.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac05-7a88-b858-1796b65f840a", "description": "Bekerja seadanya sambil diam-diam mengerjakan skripsi memakai fasilitas perusahaan.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac06-7120-a001-933f69dcd073", "description": "Mendokumentasikan pelanggaran, menyampaikannya kepada pembimbing magang di kampus dan pihak perusahaan melalui jalur resmi, dan bila tidak ada perbaikan, mengakhiri magang sesuai prosedur.", "isCorrect": true, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Peserta magang dipaksa lembur tanpa bayaran di luar jam yang disepakati.
- Tekanan kerja sangat tinggi.
- Kriteria: hak atas perlakuan adil dan layak dalam hubungan kerja.

DITANYAKAN:
Sikap yang paling tepat untuk memperjuangkan hak secara bertanggung jawab.

JAWAB:
1. Pasal 28D ayat (2) menjamin hak bekerja serta mendapat imbalan dan perlakuan yang adil dan layak dalam hubungan kerja; lembur di luar kesepakatan tanpa bayaran melanggar hak itu.
2. Memperjuangkan hak dilakukan secara bertanggung jawab: berbasis bukti dan melalui jalur resmi (pembimbing kampus dan perusahaan).
3. Bila tidak ada perbaikan, mengakhiri magang sesuai prosedur adalah pilihan yang sah. Opsi E memuat langkah-langkah tersebut.

Jadi, jawaban yang tepat adalah (E) Mendokumentasikan pelanggaran, menyampaikannya kepada pembimbing magang di kampus dan pihak perusahaan melalui jalur resmi, dan bila tidak ada perbaikan, mengakhiri magang sesuai prosedur.

Mengapa opsi lain kurang tepat:
- (A) Menormalisasi pelanggaran hak demi gengsi.
- (B) Berhenti tanpa pemberitahuan tidak bertanggung jawab kepada kampus dan perusahaan.
- (C) Tuduhan tanpa bukti di media sosial tidak bertanggung jawab.
- (D) Memakai fasilitas perusahaan untuk kepentingan pribadi juga melanggar integritas.', status='aktif', quality_score=4, quality_notes='Perbaikan: analogi Romusha yang berlebihan dihapus; kunci lama (keluar) dan C sama-sama dapat dibela, kini kunci B memuat dokumentasi, jalur resmi, dan pengakhiran sesuai prosedur; dasar Pasal 28D ayat (2).', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-ac04-72ff-8381-c48c111ce0d6';
UPDATE questions SET description='Anda magang di perusahaan rintisan ternama. Ternyata peserta magang dipaksa lembur tanpa uang lembur dan di luar jam yang disepakati dalam perjanjian magang, dengan tekanan kerja sangat tinggi. Nama perusahaan itu bergengsi untuk CV Anda. Sikap yang paling tepat sesuai hak atas perlakuan yang adil dan layak dalam hubungan kerja (Pasal 28D ayat 2 UUD NRI 1945) adalah...', explanation='DIKETAHUI:
- Peserta magang dipaksa lembur tanpa bayaran di luar jam yang disepakati.
- Tekanan kerja sangat tinggi.
- Kriteria: hak atas perlakuan adil dan layak dalam hubungan kerja.

DITANYAKAN:
Sikap yang paling tepat untuk memperjuangkan hak secara bertanggung jawab.

JAWAB:
1. Pasal 28D ayat (2) menjamin hak bekerja serta mendapat imbalan dan perlakuan yang adil dan layak dalam hubungan kerja; lembur di luar kesepakatan tanpa bayaran melanggar hak itu.
2. Memperjuangkan hak dilakukan secara bertanggung jawab: berbasis bukti dan melalui jalur resmi (pembimbing kampus dan perusahaan).
3. Bila tidak ada perbaikan, mengakhiri magang sesuai prosedur adalah pilihan yang sah. Opsi E memuat langkah-langkah tersebut.

Jadi, jawaban yang tepat adalah (E) Mendokumentasikan pelanggaran, menyampaikannya kepada pembimbing magang di kampus dan pihak perusahaan melalui jalur resmi, dan bila tidak ada perbaikan, mengakhiri magang sesuai prosedur.

Mengapa opsi lain kurang tepat:
- (A) Menormalisasi pelanggaran hak demi gengsi.
- (B) Berhenti tanpa pemberitahuan tidak bertanggung jawab kepada kampus dan perusahaan.
- (C) Tuduhan tanpa bukti di media sosial tidak bertanggung jawab.
- (D) Memakai fasilitas perusahaan untuk kepentingan pribadi juga melanggar integritas.', updated_at=now() WHERE id='019b0c6a-ac04-72ff-8381-c48c111ce0d6';
UPDATE answers SET description='Bertahan sampai akhir meskipun menderita, karena nama perusahaan penting bagi CV.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac04-72ff-8381-c48c111ce0d6' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Langsung berhenti datang tanpa pemberitahuan kepada perusahaan maupun kampus.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac04-72ff-8381-c48c111ce0d6' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Menghasut peserta magang lain menyebarkan keburukan perusahaan di media sosial tanpa bukti.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac04-72ff-8381-c48c111ce0d6' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Bekerja seadanya sambil diam-diam mengerjakan skripsi memakai fasilitas perusahaan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac04-72ff-8381-c48c111ce0d6' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mendokumentasikan pelanggaran, menyampaikannya kepada pembimbing magang di kampus dan pihak perusahaan melalui jalur resmi, dan bila tidak ada perbaikan, mengakhiri magang sesuai prosedur.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac04-72ff-8381-c48c111ce0d6' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda telah menandatangani kontrak beasiswa dari sebuah perusahaan tambang besar dan sedang kuliah. Kontrak mewajibkan Anda bekerja di perusahaan itu selama lima tahun setelah lulus. Teman mengkritik bahwa Anda mendukung industri yang berdampak pada lingkungan. Sikap yang paling berintegritas adalah...', options='[{"id": "019b0c6a-ac0e-7cbf-ad98-6936065f3ada", "description": "Membatalkan beasiswa di tengah jalan tanpa mengembalikan biaya yang sudah diterima.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac0f-7163-b523-5b8170d2e399", "description": "Menepati kontrak dengan bekerja secara profesional selama ikatan dinas, sambil menyampaikan gagasan praktik ramah lingkungan melalui jalur yang tersedia di perusahaan.", "isCorrect": true, "point": 1}, {"id": "019b0c6a-ac0f-76e8-a389-b5908d4792ed", "description": "Melarikan diri setelah lulus karena menganggap kontrak dengan industri tersebut tidak wajib dipatuhi.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac0f-7ad1-abec-2f9509d79483", "description": "Bekerja asal-asalan selama ikatan dinas agar segera diberhentikan.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac0f-7dbc-8ca5-11cbd419db60", "description": "Mengancam memviralkan perusahaan agar klausul ikatan dinas dihapus.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Anda telah menandatangani kontrak beasiswa dengan ikatan dinas lima tahun.
- Teman mengkritik dampak lingkungan industri tersebut.
- Kriteria: integritas.

DITANYAKAN:
Sikap yang paling berintegritas.

JAWAB:
1. Kontrak yang ditandatangani secara sukarela mengikat sebagai undang-undang bagi para pihak; melanggarnya adalah wanprestasi dan ketidakjujuran.
2. Kepedulian pada lingkungan tetap dapat diwujudkan dari dalam dengan cara profesional dan melalui jalur yang tersedia.
3. Opsi B memadukan menepati komitmen dan kepedulian lingkungan.

Jadi, jawaban yang tepat adalah (B) Menepati kontrak dengan bekerja secara profesional selama ikatan dinas, sambil menyampaikan gagasan praktik ramah lingkungan melalui jalur yang tersedia di perusahaan.

Mengapa opsi lain kurang tepat:
- (A) Membatalkan tanpa mengembalikan biaya adalah wanprestasi.
- (C) Melarikan diri dari kewajiban kontrak tidak jujur dan dapat digugat secara hukum.
- (D) Sengaja bekerja buruk adalah ketidakjujuran dan tidak profesional.
- (E) Ancaman untuk memaksa perubahan kontrak tidak beretika.', status='aktif', quality_score=4, quality_notes='Perbaikan: kunci lama ambigu (B vs D) dan analogi Tanam Paksa kurang tepat; premis diubah menjadi kontrak sudah ditandatangani, kunci B menggabungkan kepatuhan kontrak dan masukan dari dalam, opsi D diganti kerja asal-asalan.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-ac0e-7973-900b-87a35d34ba00';
UPDATE questions SET description='Anda telah menandatangani kontrak beasiswa dari sebuah perusahaan tambang besar dan sedang kuliah. Kontrak mewajibkan Anda bekerja di perusahaan itu selama lima tahun setelah lulus. Teman mengkritik bahwa Anda mendukung industri yang berdampak pada lingkungan. Sikap yang paling berintegritas adalah...', explanation='DIKETAHUI:
- Anda telah menandatangani kontrak beasiswa dengan ikatan dinas lima tahun.
- Teman mengkritik dampak lingkungan industri tersebut.
- Kriteria: integritas.

DITANYAKAN:
Sikap yang paling berintegritas.

JAWAB:
1. Kontrak yang ditandatangani secara sukarela mengikat sebagai undang-undang bagi para pihak; melanggarnya adalah wanprestasi dan ketidakjujuran.
2. Kepedulian pada lingkungan tetap dapat diwujudkan dari dalam dengan cara profesional dan melalui jalur yang tersedia.
3. Opsi B memadukan menepati komitmen dan kepedulian lingkungan.

Jadi, jawaban yang tepat adalah (B) Menepati kontrak dengan bekerja secara profesional selama ikatan dinas, sambil menyampaikan gagasan praktik ramah lingkungan melalui jalur yang tersedia di perusahaan.

Mengapa opsi lain kurang tepat:
- (A) Membatalkan tanpa mengembalikan biaya adalah wanprestasi.
- (C) Melarikan diri dari kewajiban kontrak tidak jujur dan dapat digugat secara hukum.
- (D) Sengaja bekerja buruk adalah ketidakjujuran dan tidak profesional.
- (E) Ancaman untuk memaksa perubahan kontrak tidak beretika.', updated_at=now() WHERE id='019b0c6a-ac0e-7973-900b-87a35d34ba00';
UPDATE answers SET description='Membatalkan beasiswa di tengah jalan tanpa mengembalikan biaya yang sudah diterima.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac0e-7973-900b-87a35d34ba00' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menepati kontrak dengan bekerja secara profesional selama ikatan dinas, sambil menyampaikan gagasan praktik ramah lingkungan melalui jalur yang tersedia di perusahaan.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac0e-7973-900b-87a35d34ba00' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Melarikan diri setelah lulus karena menganggap kontrak dengan industri tersebut tidak wajib dipatuhi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac0e-7973-900b-87a35d34ba00' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Bekerja asal-asalan selama ikatan dinas agar segera diberhentikan.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac0e-7973-900b-87a35d34ba00' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Mengancam memviralkan perusahaan agar klausul ikatan dinas dihapus.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac0e-7973-900b-87a35d34ba00' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda ASN di bagian perencanaan tata ruang kota. Sebuah perusahaan mengajukan proposal pembangunan yang menjanjikan tambahan pendapatan daerah, tetapi melanggar rencana tata ruang yang sudah ditetapkan. Perusahaan menawarkan ''dana sukarela'' bila proposal disetujui. Tindakan yang paling sesuai dengan profesionalisme dan integritas ASN adalah...', options='[{"id": "019983d1-8dc1-7a3b-b35d-fef6d040324f", "description": "Menolak dana tersebut, memproses proposal sesuai rencana tata ruang yang berlaku sehingga tidak disetujui selama melanggar, dan melaporkan tawaran pemberian itu kepada atasan atau unit pengendalian gratifikasi.", "isCorrect": true, "point": 1}, {"id": "019983d1-8dc1-7f37-825f-0e12a967f1b2", "description": "Menerima dana tersebut dan menyetujui proposal dengan syarat sebagian dana dipakai untuk fasilitas publik.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc2-7465-b0e7-c0af18d6f70c", "description": "Mengusulkan perubahan rencana tata ruang kota agar proposal itu dapat disetujui.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc2-7a4c-8e7d-8a0a840934c9", "description": "Membantu perusahaan menyesuaikan proposal sambil menerima ''dana sukarela'' sebagai ucapan terima kasih.", "isCorrect": false, "point": 1}, {"id": "019983d1-8dc3-72f3-83da-8ca95c9b5b76", "description": "Menolak proposal dan dana tersebut, lalu menganggap tawaran itu tidak perlu diketahui siapa pun.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Proposal melanggar rencana tata ruang yang ditetapkan.
- Perusahaan menawarkan ''dana sukarela'' bila disetujui.
- Anda ASN perencana tata ruang.

DITANYAKAN:
Tindakan yang paling profesional dan berintegritas.

JAWAB:
1. Rencana tata ruang yang ditetapkan mengikat; ASN profesional memproses permohonan sesuai aturan, bukan berdasarkan imbalan.
2. ''Dana sukarela'' yang dikaitkan dengan persetujuan adalah upaya suap; ASN wajib menolaknya dan sebaiknya melaporkan tawaran tersebut agar tercatat dan dapat ditindaklanjuti.
3. Opsi A memuat penolakan dana, pemrosesan sesuai aturan, dan pelaporan.

Jadi, jawaban yang tepat adalah (A) Menolak dana tersebut, memproses proposal sesuai rencana tata ruang yang berlaku sehingga tidak disetujui selama melanggar, dan melaporkan tawaran pemberian itu kepada atasan atau unit pengendalian gratifikasi.

Mengapa opsi lain kurang tepat:
- (B) Menerima dana untuk persetujuan adalah suap, apa pun penggunaannya.
- (C) Mengubah tata ruang demi satu pemohon adalah penyalahgunaan wewenang.
- (D) Menerima ''dana sukarela'' terkait jabatan adalah gratifikasi yang dianggap suap.
- (E) Menolak sudah benar, tetapi tidak melaporkan membuat upaya suap itu tidak tertangani.', status='aktif', quality_score=5, quality_notes='Perbaikan: A dan E lama sama-sama menolak proposal; kunci A kini memuat penolakan dana, pemrosesan sesuai tata ruang, dan pelaporan, sedangkan E dijadikan versi tanpa pelaporan; opsi D diganti penerimaan gratifikasi.', reviewed_at=now(), updated_at=now() WHERE id='019983d1-8dc1-764e-b335-3e7d90bb5f71';
UPDATE questions SET description='Anda ASN di bagian perencanaan tata ruang kota. Sebuah perusahaan mengajukan proposal pembangunan yang menjanjikan tambahan pendapatan daerah, tetapi melanggar rencana tata ruang yang sudah ditetapkan. Perusahaan menawarkan ''dana sukarela'' bila proposal disetujui. Tindakan yang paling sesuai dengan profesionalisme dan integritas ASN adalah...', explanation='DIKETAHUI:
- Proposal melanggar rencana tata ruang yang ditetapkan.
- Perusahaan menawarkan ''dana sukarela'' bila disetujui.
- Anda ASN perencana tata ruang.

DITANYAKAN:
Tindakan yang paling profesional dan berintegritas.

JAWAB:
1. Rencana tata ruang yang ditetapkan mengikat; ASN profesional memproses permohonan sesuai aturan, bukan berdasarkan imbalan.
2. ''Dana sukarela'' yang dikaitkan dengan persetujuan adalah upaya suap; ASN wajib menolaknya dan sebaiknya melaporkan tawaran tersebut agar tercatat dan dapat ditindaklanjuti.
3. Opsi A memuat penolakan dana, pemrosesan sesuai aturan, dan pelaporan.

Jadi, jawaban yang tepat adalah (A) Menolak dana tersebut, memproses proposal sesuai rencana tata ruang yang berlaku sehingga tidak disetujui selama melanggar, dan melaporkan tawaran pemberian itu kepada atasan atau unit pengendalian gratifikasi.

Mengapa opsi lain kurang tepat:
- (B) Menerima dana untuk persetujuan adalah suap, apa pun penggunaannya.
- (C) Mengubah tata ruang demi satu pemohon adalah penyalahgunaan wewenang.
- (D) Menerima ''dana sukarela'' terkait jabatan adalah gratifikasi yang dianggap suap.
- (E) Menolak sudah benar, tetapi tidak melaporkan membuat upaya suap itu tidak tertangani.', updated_at=now() WHERE id='019993b1-83bd-77ac-9f92-0100f8bdac5a';
UPDATE answers SET description='Menolak dana tersebut, memproses proposal sesuai rencana tata ruang yang berlaku sehingga tidak disetujui selama melanggar, dan melaporkan tawaran pemberian itu kepada atasan atau unit pengendalian gratifikasi.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83bd-77ac-9f92-0100f8bdac5a' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menerima dana tersebut dan menyetujui proposal dengan syarat sebagian dana dipakai untuk fasilitas publik.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83bd-77ac-9f92-0100f8bdac5a' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengusulkan perubahan rencana tata ruang kota agar proposal itu dapat disetujui.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83bd-77ac-9f92-0100f8bdac5a' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Membantu perusahaan menyesuaikan proposal sambil menerima ''dana sukarela'' sebagai ucapan terima kasih.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83bd-77ac-9f92-0100f8bdac5a' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menolak proposal dan dana tersebut, lalu menganggap tawaran itu tidak perlu diketahui siapa pun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019993b1-83bd-77ac-9f92-0100f8bdac5a' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE questions SET description='Anda ASN di bagian perencanaan tata ruang kota. Sebuah perusahaan mengajukan proposal pembangunan yang menjanjikan tambahan pendapatan daerah, tetapi melanggar rencana tata ruang yang sudah ditetapkan. Perusahaan menawarkan ''dana sukarela'' bila proposal disetujui. Tindakan yang paling sesuai dengan profesionalisme dan integritas ASN adalah...', explanation='DIKETAHUI:
- Proposal melanggar rencana tata ruang yang ditetapkan.
- Perusahaan menawarkan ''dana sukarela'' bila disetujui.
- Anda ASN perencana tata ruang.

DITANYAKAN:
Tindakan yang paling profesional dan berintegritas.

JAWAB:
1. Rencana tata ruang yang ditetapkan mengikat; ASN profesional memproses permohonan sesuai aturan, bukan berdasarkan imbalan.
2. ''Dana sukarela'' yang dikaitkan dengan persetujuan adalah upaya suap; ASN wajib menolaknya dan sebaiknya melaporkan tawaran tersebut agar tercatat dan dapat ditindaklanjuti.
3. Opsi A memuat penolakan dana, pemrosesan sesuai aturan, dan pelaporan.

Jadi, jawaban yang tepat adalah (A) Menolak dana tersebut, memproses proposal sesuai rencana tata ruang yang berlaku sehingga tidak disetujui selama melanggar, dan melaporkan tawaran pemberian itu kepada atasan atau unit pengendalian gratifikasi.

Mengapa opsi lain kurang tepat:
- (B) Menerima dana untuk persetujuan adalah suap, apa pun penggunaannya.
- (C) Mengubah tata ruang demi satu pemohon adalah penyalahgunaan wewenang.
- (D) Menerima ''dana sukarela'' terkait jabatan adalah gratifikasi yang dianggap suap.
- (E) Menolak sudah benar, tetapi tidak melaporkan membuat upaya suap itu tidak tertangani.', updated_at=now() WHERE id='019983d1-8dc1-764e-b335-3e7d90bb5f71';
UPDATE answers SET description='Menolak dana tersebut, memproses proposal sesuai rencana tata ruang yang berlaku sehingga tidak disetujui selama melanggar, dan melaporkan tawaran pemberian itu kepada atasan atau unit pengendalian gratifikasi.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc1-764e-b335-3e7d90bb5f71' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menerima dana tersebut dan menyetujui proposal dengan syarat sebagian dana dipakai untuk fasilitas publik.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc1-764e-b335-3e7d90bb5f71' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Mengusulkan perubahan rencana tata ruang kota agar proposal itu dapat disetujui.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc1-764e-b335-3e7d90bb5f71' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Membantu perusahaan menyesuaikan proposal sambil menerima ''dana sukarela'' sebagai ucapan terima kasih.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc1-764e-b335-3e7d90bb5f71' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Menolak proposal dan dana tersebut, lalu menganggap tawaran itu tidak perlu diketahui siapa pun.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019983d1-8dc1-764e-b335-3e7d90bb5f71' ORDER BY created_at, id OFFSET 4 LIMIT 1);
UPDATE bank_soal SET description='Anda sedang menyusun skripsi dan menemukan bukti kuat bahwa dosen pembimbing Anda, yang juga pejabat kampus, melakukan plagiat karya ilmiah. Melapor berisiko membuat skripsi Anda dipersulit, sedangkan diam membuat Anda lulus dengan aman. Sikap yang paling mencerminkan semangat Reformasi 1998 untuk melawan penyimpangan secara terbuka dan berani adalah...', options='[{"id": "019b0c6a-ac10-76c5-8811-cc2b13d4bebf", "description": "Diam dan pura-pura tidak tahu demi kelancaran skripsi.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac10-7a16-9361-b8321bb32001", "description": "Menyimpan bukti dan baru melaporkannya bertahun-tahun kemudian setelah semua urusan Anda di kampus selesai.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac10-7d42-874c-41c8cd3541df", "description": "Melaporkan dugaan plagiat beserta buktinya melalui mekanisme resmi kampus, seperti komisi etik atau senat akademik, dan bila perlu meminta pergantian pembimbing agar proses skripsi tetap adil.", "isCorrect": true, "point": 1}, {"id": "019b0c6a-ac11-71ed-af72-6ca61a9afcac", "description": "Menceritakannya kepada teman aktivis agar mereka yang berdemonstrasi, sementara Anda bersembunyi di balik massa.", "isCorrect": false, "point": 1}, {"id": "019b0c6a-ac11-757f-888e-5b72948fce3f", "description": "Memakai bukti itu untuk menekan dosen agar mempermudah skripsi Anda.", "isCorrect": false, "point": 1}]'::jsonb, explanation='DIKETAHUI:
- Dosen pembimbing yang juga pejabat kampus terbukti kuat melakukan plagiat.
- Melapor berisiko skripsi dipersulit; diam membuat lulus aman.
- Kriteria: semangat Reformasi 1998 (terbuka dan berani melawan penyimpangan).

DITANYAKAN:
Sikap yang paling mencerminkan semangat tersebut.

JAWAB:
1. Reformasi 1998 menuntut pemberantasan penyimpangan kekuasaan, keterbukaan, dan supremasi aturan; plagiat oleh pejabat kampus adalah pelanggaran integritas akademik.
2. Keberanian diwujudkan dengan melapor secara terbuka melalui mekanisme resmi yang berwenang, bukan menunda, bersembunyi, atau memanfaatkan untuk kepentingan pribadi.
3. Meminta pergantian pembimbing melindungi hak Anda agar proses skripsi tetap adil. Opsi C memenuhi semua unsur.

Jadi, jawaban yang tepat adalah (C) Melaporkan dugaan plagiat beserta buktinya melalui mekanisme resmi kampus, seperti komisi etik atau senat akademik, dan bila perlu meminta pergantian pembimbing agar proses skripsi tetap adil.

Mengapa opsi lain kurang tepat:
- (A) Diam membiarkan pelanggaran integritas akademik.
- (B) Menunda laporan bertahun-tahun bukan sikap berani dan membiarkan pelanggaran berlanjut.
- (D) Bersembunyi di balik massa menghindari tanggung jawab pribadi.
- (E) Memakai bukti untuk menekan dosen adalah pemerasan dan juga tidak berintegritas.', status='aktif', quality_score=4, quality_notes='Perbaikan: B dan C lama sama-sama dapat dibela; B dipertegas sebagai penundaan bertahun-tahun, kunci C dilengkapi mekanisme resmi dan pergantian pembimbing; label ''pola Orde Baru'' dihapus agar tidak bias.', reviewed_at=now(), updated_at=now() WHERE id='019b0c6a-ac10-72e2-a7e6-e4ff2013f01a';
UPDATE questions SET description='Anda sedang menyusun skripsi dan menemukan bukti kuat bahwa dosen pembimbing Anda, yang juga pejabat kampus, melakukan plagiat karya ilmiah. Melapor berisiko membuat skripsi Anda dipersulit, sedangkan diam membuat Anda lulus dengan aman. Sikap yang paling mencerminkan semangat Reformasi 1998 untuk melawan penyimpangan secara terbuka dan berani adalah...', explanation='DIKETAHUI:
- Dosen pembimbing yang juga pejabat kampus terbukti kuat melakukan plagiat.
- Melapor berisiko skripsi dipersulit; diam membuat lulus aman.
- Kriteria: semangat Reformasi 1998 (terbuka dan berani melawan penyimpangan).

DITANYAKAN:
Sikap yang paling mencerminkan semangat tersebut.

JAWAB:
1. Reformasi 1998 menuntut pemberantasan penyimpangan kekuasaan, keterbukaan, dan supremasi aturan; plagiat oleh pejabat kampus adalah pelanggaran integritas akademik.
2. Keberanian diwujudkan dengan melapor secara terbuka melalui mekanisme resmi yang berwenang, bukan menunda, bersembunyi, atau memanfaatkan untuk kepentingan pribadi.
3. Meminta pergantian pembimbing melindungi hak Anda agar proses skripsi tetap adil. Opsi C memenuhi semua unsur.

Jadi, jawaban yang tepat adalah (C) Melaporkan dugaan plagiat beserta buktinya melalui mekanisme resmi kampus, seperti komisi etik atau senat akademik, dan bila perlu meminta pergantian pembimbing agar proses skripsi tetap adil.

Mengapa opsi lain kurang tepat:
- (A) Diam membiarkan pelanggaran integritas akademik.
- (B) Menunda laporan bertahun-tahun bukan sikap berani dan membiarkan pelanggaran berlanjut.
- (D) Bersembunyi di balik massa menghindari tanggung jawab pribadi.
- (E) Memakai bukti untuk menekan dosen adalah pemerasan dan juga tidak berintegritas.', updated_at=now() WHERE id='019b0c6a-ac10-72e2-a7e6-e4ff2013f01a';
UPDATE answers SET description='Diam dan pura-pura tidak tahu demi kelancaran skripsi.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac10-72e2-a7e6-e4ff2013f01a' ORDER BY created_at, id OFFSET 0 LIMIT 1);
UPDATE answers SET description='Menyimpan bukti dan baru melaporkannya bertahun-tahun kemudian setelah semua urusan Anda di kampus selesai.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac10-72e2-a7e6-e4ff2013f01a' ORDER BY created_at, id OFFSET 1 LIMIT 1);
UPDATE answers SET description='Melaporkan dugaan plagiat beserta buktinya melalui mekanisme resmi kampus, seperti komisi etik atau senat akademik, dan bila perlu meminta pergantian pembimbing agar proses skripsi tetap adil.', is_correct=true, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac10-72e2-a7e6-e4ff2013f01a' ORDER BY created_at, id OFFSET 2 LIMIT 1);
UPDATE answers SET description='Menceritakannya kepada teman aktivis agar mereka yang berdemonstrasi, sementara Anda bersembunyi di balik massa.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac10-72e2-a7e6-e4ff2013f01a' ORDER BY created_at, id OFFSET 3 LIMIT 1);
UPDATE answers SET description='Memakai bukti itu untuk menekan dosen agar mempermudah skripsi Anda.', is_correct=false, point=1, updated_at=now()
 WHERE id=(SELECT id FROM answers WHERE question_id='019b0c6a-ac10-72e2-a7e6-e4ff2013f01a' ORDER BY created_at, id OFFSET 4 LIMIT 1);
COMMIT;
