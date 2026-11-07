BEGIN;
UPDATE answers SET description='Menyelesaikan tugas tersebut sampai tuntas, lalu menghubungi keluarga untuk meminta maaf dan menjelaskan bahwa Anda akan datang terlambat atau tidak dapat hadir.', is_correct=true, point=4, updated_at=now() WHERE id='019b6e3f-2099-7f0b-9002-bdd41b5dbc05';
UPDATE answers SET description='Menghadiri acara keluarga terlebih dahulu, lalu kembali ke kantor pada malam harinya untuk menyelesaikan tugas tersebut.', is_correct=true, point=3, updated_at=now() WHERE id='019b6e3f-209a-73f0-8c5c-9db693a6ada7';
UPDATE questions SET explanation='DIKETAHUI:
- Atasan meminta Anda lembur untuk menyelesaikan tugas yang sangat penting malam ini juga.
- Anda sudah berjanji menghadiri acara keluarga yang penting.

DITANYAKAN:
Sikap yang paling tepat ketika permintaan lembur bentrok dengan acara keluarga.

JAWAB:
1. Aspek yang diuji: profesionalisme, yaitu penetapan prioritas, tanggung jawab terhadap tugas, dan komunikasi saat tugas kantor bentrok dengan urusan pribadi.
2. Tugas yang sangat penting dan mendesak harus tetap diselesaikan, tetapi komunikasi terbuka dengan atasan dapat menghasilkan jalan tengah yang menjaga dua komitmen sekaligus.
3. Sikap ideal: menyampaikan kondisi secara jujur dan menawarkan solusi konkret tanpa mengorbankan tugas.
4. Uji setiap opsi dari poin tertinggi ke terendah:
   (C) — poin 5: menjelaskan kondisi dan menegosiasikan solusi, misalnya menyelesaikan sebagian besar tugas lalu meminta izin pulang lebih cepat. Bertanggung jawab, komunikatif, dan solutif.
   (D) — poin 4: menuntaskan tugas lalu meminta maaf kepada keluarga menunjukkan dedikasi tinggi pada tugas, tetapi tidak mencoba berkomunikasi dengan atasan untuk mencari jalan tengah.
   (E) — poin 3: menghadiri acara lalu kembali ke kantor malam harinya tetap berniat menyelesaikan tugas, tetapi mengambil keputusan sepihak tanpa izin atasan dan berisiko tugas terlambat.
   (B) — poin 2: meminta atasan mendelegasikan tugas kepada rekan lain berarti melimpahkan beban; tidak ada upaya menyelesaikan bagian sendiri.
   (A) — poin 1: menolak permintaan atasan karena acara keluarga mengabaikan tugas penting tanpa negosiasi.
Jadi, jawaban yang tepat adalah (C) Menjelaskan kondisi Anda dan mencoba menegosiasikan solusi, misalnya menyelesaikan sebagian besar tugas, lalu meminta izin meninggalkan kantor lebih cepat.
Mengapa opsi lain kurang tepat:
- (D) poin 4: tuntas tetapi tanpa komunikasi dan negosiasi dengan atasan.
- (E) poin 3: keputusan sepihak tanpa izin atasan.
- (B) poin 2: melimpahkan tugas kepada orang lain.
- (A) poin 1: menolak tanpa negosiasi.', updated_at=now() WHERE id='019b6e3f-2099-711d-ae09-e77dc88fda95';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('2102ba8d-8432-49b9-b71b-7bf641adfa9b','8b7a27ee-92ff-4dab-ab1d-1fe0d83a9a33','Decision is making an important',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Soal meminta menyusun kata acak menjadi kalimat yang benar.
- Kata pada soal: a (an), important, making, is, decision.
- Catatan: kunci memakai kata important dua kali dan artikel an (sebelum bunyi vokal). Penyusunan di bawah ini mengikuti kalimat gramatikal pada opsi B.
- Peran kata: Making an important decision = gerund phrase (frasa kata kerja-benda) sebagai subjek; is = kata kerja penghubung; important = kata sifat sebagai pelengkap.

DITANYAKAN:
Susunan kata yang membentuk kalimat bahasa Inggris yang benar.

JAWAB:
1. Dalam bahasa Inggris, kata kerja berbentuk V-ing dapat menjadi subjek (gerund). Contoh: "Swimming is fun."
2. Bentuk subjek: Making an important decision. Urutannya: making (V-ing) + an (artikel) + important (sifat) + decision (benda), artinya "membuat suatu keputusan penting".
3. Setelah subjek, tempatkan is sebagai penghubung (to be) dan kata sifat important sebagai pelengkap.
4. Susun: Making an important decision is important. Artinya: "Membuat keputusan penting itu penting." Struktur: Subject (gerund phrase) + is + Complement (adjective).
5. Aturan a/an: an dipakai sebelum kata yang diawali bunyi vokal (important), sehingga bentuk a important salah.
Jadi, jawaban yang tepat adalah (B) Making an important decision is important.
Mengapa opsi lain kurang tepat:
- (A) "A important making decision is": urutan kata acak (kata kerja di akhir), dan a important seharusnya an important.
- (C) "Important a making decision is": diawali kata sifat lalu artikel; tidak membentuk kalimat.
- (D) "Is making a important decision": diawali is sehingga menjadi pola tanya tanpa subjek, dan a important salah.
- (E) "Decision is making an important": kata benda decision tanpa artikel, dan an important tidak diikuti kata benda sehingga frasanya menggantung.', updated_at=now() WHERE id='8b7a27ee-92ff-4dab-ab1d-1fe0d83a9a33';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('e6f5d04a-3fd9-4b90-930d-f443652a202c','9b4be7dc-4e2b-458d-87d4-c786996d10eb','To report the results of a sports match',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Soal: "Read the text and answer: What is the main purpose of the passage about environmental conservation?" Teks bacaan tidak disertakan.
- Satu-satunya informasi: topik teks adalah pelestarian lingkungan (environmental conservation).
- Opsi: To entertain with stories; To persuade readers to protect nature; To describe a vacation; To explain a recipe; To report the results of a sports match.

DITANYAKAN:
Apa tujuan utama teks yang membahas pelestarian lingkungan?

JAWAB:
1. Tujuan teks (author''s purpose) umumnya berupa menghibur (entertain), membujuk (persuade), menjelaskan (explain), mendeskripsikan (describe), atau melaporkan (report).
2. Karena teks tidak disertakan, jawaban ditentukan lewat topik: teks tentang pelestarian lingkungan.
3. Teks bertopik pelestarian lingkungan lazimnya mengajak pembaca menjaga alam, yaitu bertujuan membujuk (persuasive).
4. Opsi lain tidak sesuai topik: cerita hiburan, deskripsi liburan, resep, dan laporan pertandingan tidak berkaitan dengan pelestarian lingkungan.
5. Catatan: soal ini sebaiknya dilengkapi teks bacaan agar dapat dijawab secara pasti.
Jadi, jawaban yang tepat adalah (B) To persuade readers to protect nature.
Mengapa opsi lain kurang tepat:
- (A) To entertain with stories (menghibur dengan cerita): tidak sesuai topik pelestarian lingkungan.
- (C) To describe a vacation (menggambarkan liburan): tidak berhubungan dengan topik.
- (D) To explain a recipe (menjelaskan resep): tidak berhubungan dengan topik.
- (E) To report the results of a sports match (melaporkan hasil pertandingan): tidak berhubungan dengan topik.', updated_at=now() WHERE id='9b4be7dc-4e2b-458d-87d4-c786996d10eb';
UPDATE answers SET description='He was naive and easily fooled', is_correct=false, point=1, updated_at=now() WHERE id='019ad58c-8beb-7c50-8833-1eb1ce7045f5';
UPDATE questions SET explanation='DIKETAHUI:
- Teks tentang raja yang menguji rakyatnya dengan meletakkan batu besar di jalan menuju pasar.
- Paragraf 1: "there lived a wise and curious king" (hidup seorang raja yang bijak dan ingin tahu); ia merancang ujian dengan batu besar dan bersembunyi untuk mengamati.
- Paragraf 3: raja muncul dan menjelaskan bahwa kebijaksanaan serta kepemimpinan ditunjukkan oleh tanggung jawab dan tindakan tanpa pamrih.

DITANYAKAN:
Apa yang dapat disimpulkan (inferred) tentang karakter sang raja?

JAWAB:
1. Pertanyaan "inferred" meminta kesimpulan dari bukti di teks.
2. Bukti 1: penulis menyebut raja "wise and curious". Ini bukti langsung sifat bijak.
3. Bukti 2: raja merancang ujian cerdas (meletakkan batu, bersembunyi, mengamati reaksi rakyat). Perilaku ini menunjukkan wawasan (insight) tentang watak manusia.
4. Bukti 3: ia menghadiahkan emas kepada petani yang bertanggung jawab dan menjelaskan nilai moral di baliknya. Ini bukan sikap kejam, ceroboh, atau naif.
5. Maka sifat yang tepat adalah "wise and insightful" (bijak dan berwawasan), yaitu opsi C.
Jadi, jawaban yang tepat adalah (C) He was wise and insightful.
Mengapa opsi lain kurang tepat:
- (A) "Lazy and arrogant" (malas dan sombong): raja aktif merancang ujian dan menghargai orang yang rendah hati.
- (B) "Naive and easily fooled" (naif dan mudah tertipu): justru raja yang menguji rakyatnya dengan cermat, bukan pihak yang tertipu.
- (D) "Cruel and strict" (kejam dan keras): ia memberi hadiah emas, bukan hukuman.
- (E) "Careless and emotional" (ceroboh dan emosional): ujiannya direncanakan matang dan ia tenang mengamati.', updated_at=now() WHERE id='019ad58c-8be5-7027-bbd9-128fcfd13d9f';
UPDATE answers SET description='TRX8437', is_correct=false, point=1, updated_at=now() WHERE id='01986461-e9d7-7672-9e01-d8b1320d504d';
UPDATE questions SET explanation='DIKETAHUI:
- Email Reza kepada Customer Support.
- Kalimat kunci: "My booking ID is #TRX8473." (ID pemesanan saya adalah #TRX8473.)
- Pilihan: 7839TR; TRX8473; 8437TRX; TRV8347; TRX8437.

DITANYAKAN:
Booking ID Reza.

JAWAB:
1. Cari frasa "booking ID" di email. Ditemukan "#TRX8473" (tanda # hanya penanda nomor, bukan bagian kode).
2. Kode yang tertulis: huruf T-R-X diikuti angka 8-4-7-3.
3. Bandingkan karakter demi karakter dengan setiap opsi:
   - 7839TR: angka di depan dan angkanya berbeda.
   - TRX8473: huruf TRX dan angka 8473, cocok persis.
   - 8437TRX: angka di depan, urutan angka 8437.
   - TRV8347: huruf ketiga V (bukan X) dan angka 8347.
   - TRX8437: huruf benar, tetapi dua angka terakhir tertukar (37, bukan 73).
Jadi, jawaban yang tepat adalah (B) TRX8473.
Mengapa opsi lain kurang tepat:
- (A) 7839TR: angka dan susunan berbeda dari teks.
- (C) 8437TRX: susunan terbalik dan angkanya 8437.
- (D) TRV8347: huruf V bukan X, dan angka 8347 berbeda dari 8473.
- (E) TRX8437: angka 7 dan 3 tertukar posisinya; pengecoh bagi pembaca yang kurang teliti.', updated_at=now() WHERE id='01986461-e9ca-79e7-9846-9f21c061d17e';
UPDATE answers SET description='Menyampaikan keberatan secara sopan kepada atasan dan meminta perintah tersebut diberikan secara tertulis sebelum melaksanakannya.', is_correct=true, point=4, updated_at=now() WHERE id='019b6e3f-2061-742e-8f74-f14994c2969e';
UPDATE questions SET explanation='DIKETAHUI:
- Atasan memerintahkan pekerjaan yang bertentangan dengan prosedur/SOP kantor.

DITANYAKAN:
Sikap yang tepat ketika perintah atasan bertentangan dengan SOP.

JAWAB:
1. Aspek yang diuji: profesionalisme, yaitu kepatuhan pada SOP dan komunikasi asertif kepada atasan.
2. SOP adalah aturan yang mengikat. Melanggarnya, meski atas perintah atasan, tetap berisiko dan menjadi tanggung jawab pelaksana juga.
3. Sikap profesional: menyampaikan risiko dengan sopan dan menawarkan alternatif yang sesuai aturan sehingga atasan dapat mempertimbangkan ulang.
4. Uji setiap opsi dari poin tertinggi ke terendah:
   (D) — poin 5: menjelaskan risiko pelanggaran SOP secara rinci dan mengajukan alternatif solusi sesuai aturan. Taat aturan, santun, dan solutif.
   (C) — poin 4: menyampaikan keberatan dengan sopan dan meminta perintah tertulis menunjukkan kehati-hatian dan akuntabilitas, tetapi belum menawarkan solusi yang sesuai SOP.
   (B) — poin 3: menjaga SOP itu benar, tetapi menolak dengan keras tidak santun dan tidak menawarkan solusi.
   (A) — poin 2: menjalankan perintah dengan dalih atasan bertanggung jawab tetap melanggar SOP; tanggung jawab tidak dapat dilimpahkan sepenuhnya.
   (E) — poin 1: melaksanakan secara diam-diam berarti sadar salah tetapi menutupinya; tidak transparan dan tetap melanggar SOP.
Jadi, jawaban yang tepat adalah (D) Menjelaskan secara rinci kepada atasan mengenai risiko pelanggaran SOP dan mengajukan alternatif solusi yang sesuai dengan aturan.
Mengapa opsi lain kurang tepat:
- (C) poin 4: berhati-hati, tetapi belum memberi solusi sesuai aturan.
- (B) poin 3: benar menjaga SOP, tetapi kasar dan tanpa solusi.
- (A) poin 2: tetap melanggar SOP.
- (E) poin 1: melanggar SOP secara tertutup.', updated_at=now() WHERE id='019b6e3f-2060-770a-8327-1dd0db3f179d';
UPDATE answers SET description='Membuat laporan sesuai data sebenarnya, tetapi menonjolkan capaian-capaian positif tim yang memang ada agar tetap menarik bagi pemberi anggaran.', is_correct=true, point=4, updated_at=now() WHERE id='019b6e3f-20a3-7aba-a0d3-d6eb6abafa9a';
UPDATE questions SET explanation='DIKETAHUI:
- Atasan meminta laporan kinerja tim dibuat terlihat luar biasa, padahal kinerja sebenarnya biasa saja.
- Laporan digunakan untuk meminta alokasi anggaran yang lebih besar.

DITANYAKAN:
Sikap yang tepat terhadap permintaan memperindah laporan kinerja yang tidak sesuai kenyataan.

JAWAB:
1. Aspek yang diuji: profesionalisme dan integritas, yaitu menolak manipulasi data dan menyampaikan alasan dengan baik.
2. Memalsukan data kinerja adalah ketidakjujuran dan dapat melanggar hukum karena berkaitan dengan anggaran negara.
3. Sikap terbaik: laporan disusun sesuai data sebenarnya dan atasan diberi penjelasan sopan tentang risiko pemalsuan.
4. Uji setiap opsi dari poin tertinggi ke terendah:
   (C) — poin 5: membuat laporan sesuai data sebenarnya dan menjelaskan bahwa pemalsuan melanggar integritas dan hukum. Jujur, tegas, dan santun.
   (D) — poin 4: laporan tetap jujur dan menonjolkan capaian nyata, tetapi tidak meluruskan permintaan atasan yang keliru.
   (B) — poin 3: menolak sudah benar, tetapi langsung melaporkan atasan ke Inspektorat Jenderal tanpa dialog terlebih dahulu terlalu tergesa-gesa.
   (A) — poin 2: membuat laporan sesuai permintaan berarti memalsukan data demi anggaran.
   (E) — poin 1: meminta rekan membuat laporan itu melimpahkan pelanggaran kepada orang lain dan tetap membiarkan pemalsuan.
Jadi, jawaban yang tepat adalah (C) Membuat laporan sesuai data sebenarnya dan menjelaskan kepada atasan bahwa pemalsuan data adalah tindakan yang tidak berintegritas dan melanggar hukum.
Mengapa opsi lain kurang tepat:
- (D) poin 4: jujur, tetapi tidak meluruskan permintaan yang keliru.
- (B) poin 3: melapor tanpa dialog terlebih dahulu.
- (A) poin 2: memalsukan data.
- (E) poin 1: melimpahkan pelanggaran kepada orang lain.', updated_at=now() WHERE id='019b6e3f-20a2-79ac-a0d2-d2ce705e9594';
UPDATE answers SET description='Mengevaluasi kembali standar tersebut untuk menyederhanakan alur pelayanan tanpa mengurangi aspek kepastian hukum, lalu menyosialisasikannya kepada masyarakat.', is_correct=true, point=5, updated_at=now() WHERE id='019b6e3f-2078-7603-a740-fff1f300277b';
UPDATE questions SET explanation='DIKETAHUI:
- Anda ditugaskan menyusun standar pelayanan baru.
- Standar yang Anda susun lebih rumit dan memperpanjang proses.
- Standar tersebut lebih aman secara hukum bagi instansi.

DITANYAKAN:
Reaksi yang paling tepat setelah mengetahui standar baru memperlambat layanan.

JAWAB:
1. Aspek yang diuji: pelayanan publik. Standar pelayanan idealnya aman secara hukum sekaligus mudah dan cepat bagi masyarakat.
2. Sikap ideal adalah memperbaiki standar sendiri: menyederhanakan alur tanpa mengorbankan kepastian hukum, lalu menyosialisasikannya.
3. Uji setiap opsi dari poin tertinggi ke terendah:
   (C) — poin 5: mengevaluasi dan menyederhanakan alur tanpa mengurangi kepastian hukum, lalu menyosialisasikannya. Berorientasi pada masyarakat sekaligus taat hukum.
   (A) — poin 4: tetap menerapkan standar karena sesuai ketentuan hukum menjaga akuntabilitas instansi, tetapi tidak berupaya memperbaiki kelambatan layanan.
   (D) — poin 3: menjelaskan alasan kepada masyarakat bersikap transparan, tetapi alasannya berfokus pada keamanan instansi, bukan kemudahan masyarakat.
   (B) — poin 2: menarik standar semata karena khawatir keluhan mengabaikan aspek hukum dan tidak berpegang pada ketentuan.
   (E) — poin 1: menyalahkan bagian hukum adalah sikap melempar kesalahan dan tidak konstruktif.
Jadi, jawaban yang tepat adalah (C) Mengevaluasi kembali standar tersebut untuk menyederhanakan alur pelayanan tanpa mengurangi aspek kepastian hukum, lalu menyosialisasikannya kepada masyarakat.
Mengapa opsi lain kurang tepat:
- (A) poin 4: taat hukum, tetapi tidak memperbaiki kelambatan layanan.
- (D) poin 3: transparan, tetapi berfokus pada kepentingan instansi.
- (B) poin 2: mengabaikan aspek hukum karena takut keluhan.
- (E) poin 1: melempar kesalahan.', updated_at=now() WHERE id='019b6e3f-2077-7900-8c6d-5c493a2581fb';
UPDATE answers SET description='Being a political leader', is_correct=false, point=1, updated_at=now() WHERE id='019ad58c-8e73-7a5b-9319-ea5d13d25211';
UPDATE answers SET description='Advocating for girls’ education', is_correct=true, point=1, updated_at=now() WHERE id='019ad58c-8e76-7cee-9b0c-d0ef6fcaafc5';
UPDATE questions SET explanation='DIKETAHUI:
- Teks biografi "The Life of Malala Yousafzai".
- Kalimat pembuka: Malala lahir di Mingora, Pakistan, tahun 1997, adalah "a global advocate for girls’ education and the youngest recipient of the Nobel Peace Prize" (pembela global pendidikan anak perempuan dan penerima Nobel Perdamaian termuda).
- Ia selamat dari percobaan pembunuhan oleh Taliban tahun 2012 karena menyuarakan pendidikan anak perempuan, lalu melalui Malala Fund mendukung akses pendidikan.

DITANYAKAN:
Untuk apa Malala Yousafzai paling dikenal (best known for)?

JAWAB:
1. Kata kunci: "best known for". Jawabannya ada pada kalimat perkenalan tokoh di awal teks: "a global advocate for girls’ education".
2. Paragraf kedua dan ketiga menguatkan hal ini: ia berbicara tentang pendidikan anak perempuan, mendirikan Malala Fund untuk akses pendidikan, dan berjuang agar pendidikan menjadi hak universal.
3. Jadi Malala paling dikenal sebagai pembela pendidikan anak perempuan, yaitu "Advocating for girls’ education".
4. Opsi lain tidak disebut atau bertentangan dengan teks.
Jadi, jawaban yang tepat adalah (B) Advocating for girls’ education.
Mengapa opsi lain kurang tepat:
- (A) "Being a political leader": teks tidak menyebut jabatan politik; aktivisme bukan kepemimpinan politik.
- (C) "Writing children’s books": tidak disebut dalam teks.
- (D) "Teaching at a university": tidak disebut; yang seorang pendidik adalah ayahnya.
- (E) "Managing a charity for hospitals": keliru, Malala Fund bergerak di bidang pendidikan, bukan rumah sakit.', updated_at=now() WHERE id='019ad58c-8e70-724a-90a2-05e1c4f0deef';
UPDATE answers SET description='Konsumen kehilangan minat terhadap produk tersebut sehingga hanya membeli dalam jumlah sekecil mungkin.', is_correct=false, point=1, updated_at=now() WHERE id='019ae94b-24f2-738f-93e6-8476a6fcbc37';
UPDATE questions SET explanation='DIKETAHUI:
- Penelitian perilaku konsumen menguji kebiasaan belanja berdasarkan kestabilan harga.
- Saat harga suatu produk berfluktuasi moderat, terjadi peningkatan pembelian dalam jumlah kecil tetapi berulang.

DITANYAKAN:
Interpretasi yang paling tepat atas pola pembelian kecil tetapi berulang saat harga berfluktuasi moderat.

JAWAB:
1. Inti soal: hasil penelitian dikaitkan dengan KESTABILAN harga; fluktuasi berarti ketidakpastian harga. Interpretasi terbaik adalah yang menjelaskan hubungan perubahan harga dengan persepsi ketidakpastian/risiko.
2. Opsi B menyatakan perubahan harga jangka pendek memengaruhi persepsi risiko sehingga konsumen membeli lebih sering untuk menghindari ketidakpastian. Ini satu-satunya opsi yang secara eksplisit menghubungkan fluktuasi harga dengan ketidakpastian.
3. Opsi A, C, dan D menjelaskan perilaku yang sama dengan motif lain (mencari harga terbaik, mengendalikan pengeluaran, memanfaatkan peluang) yang tidak ditunjukkan data soal.
4. Opsi E bertentangan dengan data karena pembelian justru meningkat.
Jadi, jawaban yang tepat adalah (B) Perubahan harga jangka pendek mempengaruhi persepsi risiko sehingga pembelian lebih sering dilakukan untuk menghindari ketidakpastian.
Mengapa opsi lain kurang tepat:
- (A) Berfokus pada pencarian harga terbaik; tidak menyinggung ketidakpastian akibat fluktuasi yang menjadi tema soal.
- (C) Menjelaskan motif pengendalian anggaran, bukan respons terhadap kestabilan harga.
- (D) Menafsirkan fluktuasi sebagai peluang keuntungan; asumsi ini tidak ditunjukkan data.
- (E) Bertentangan dengan data: frekuensi pembelian justru meningkat, bukan minat yang menurun.', updated_at=now() WHERE id='019ae94b-24de-704e-8c56-a3471db5e26b';
UPDATE answers SET description='186', is_correct=false, point=1, updated_at=now() WHERE id='0199fd77-931a-79e6-af44-6c0b830b9ebb';
UPDATE questions SET explanation='DIKETAHUI:
- Dipilih 5 anggota tim inti dari 10 kandidat: 6 pria (termasuk P1 dan P2) dan 4 wanita.
- Syarat 1: minimal 2 wanita.
- Syarat 2: P1 dan P2 tidak boleh bersama-sama dalam tim.

DITANYAKAN:
Banyak susunan tim inti yang memenuhi kedua syarat.

JAWAB:
1. Urutan anggota tidak penting, jadi dipakai kombinasi C(n, r).
2. Hitung tim yang memenuhi syarat 1 (minimal 2 wanita):
   - 2 wanita + 3 pria: C(4, 2) × C(6, 3) = 6 × 20 = 120.
   - 3 wanita + 2 pria: C(4, 3) × C(6, 2) = 4 × 15 = 60.
   - 4 wanita + 1 pria: C(4, 4) × C(6, 1) = 1 × 6 = 6.
   Jumlah = 120 + 60 + 6 = 186.
   (Cek: C(10, 5) = 252; 0 wanita = C(6, 5) = 6; 1 wanita = 4 × C(6, 4) = 60; 252 − 6 − 60 = 186.)
3. Hitung tim yang melanggar syarat 2 (memuat P1 dan P2 sekaligus, tetap minimal 2 wanita). Sisa 3 kursi diisi dari 4 pria lain dan 4 wanita:
   - 2 wanita + 1 pria lain: C(4, 2) × C(4, 1) = 6 × 4 = 24.
   - 3 wanita: C(4, 3) = 4.
   Jumlah = 24 + 4 = 28.
4. Tim yang memenuhi kedua syarat = 186 − 28 = 158.
Jadi, jawaban yang tepat adalah (D) 158.
Mengapa opsi lain kurang tepat:
- (A) 134: terjadi bila jumlah yang dikurangkan terlalu besar.
- (B) 136: tidak sesuai dengan 186 − 28.
- (C) 235: melebihi 186 (jumlah tim yang memenuhi syarat 1 saja), jadi mustahil.
- (E) 186: baru memenuhi syarat 1; tim yang memuat P1 dan P2 sekaligus belum dikurangkan.', updated_at=now() WHERE id='0199fd77-9319-7630-85a4-30a9de0169d3';
UPDATE answers SET description='Mengerjakan proyek tersebut sesuai prosedur, tetapi mengeluhkan kepada atasan bahwa tim Anda layak mendapat tugas yang lebih bergengsi.', is_correct=true, point=2, updated_at=now() WHERE id='019b6e3f-209b-7bfc-a472-b23f68a43ec4';
UPDATE questions SET explanation='DIKETAHUI:
- Tim Anda ditugaskan mengurus proyek yang berulang dan cenderung membosankan.
- Anda merasa proyek itu membuang potensi tim yang bisa mengerjakan hal lebih menantang.

DITANYAKAN:
Sikap yang tepat menghadapi proyek rutin yang dinilai kurang menantang.

JAWAB:
1. Aspek yang diuji: profesionalisme, yaitu inovasi dan efisiensi dalam menangani pekerjaan rutin.
2. Tugas rutin tetap harus diselesaikan; solusi terbaik adalah meningkatkan efisiensinya agar waktu tim bisa dipakai untuk tugas yang lebih menantang.
3. Uji setiap opsi dari poin tertinggi ke terendah:
   (C) — poin 5: mencari cara mengotomatisasi atau menyederhanakan proyek agar tim fokus pada tugas menantang. Inovatif, efisien, dan bertanggung jawab.
   (A) — poin 4: mengusulkan penghapusan proyek menunjukkan inisiatif, tetapi tidak realistis karena proyek mungkin dibutuhkan organisasi.
   (B) — poin 3: mengerjakan seadanya tetap menyelesaikan tugas, tetapi mengabaikan kualitas.
   (D) — poin 2: tugas dikerjakan, tetapi disertai keluhan dan tuntutan tugas bergengsi; berorientasi gengsi, bukan solusi.
   (E) — poin 1: meminta mengganti semua anggota tim menyalahkan tim dan tidak menyelesaikan akar masalah.
Jadi, jawaban yang tepat adalah (C) Mencari cara untuk mengotomatisasi atau menyederhanakan proyek tersebut agar tim bisa fokus pada tugas yang lebih menantang.
Mengapa opsi lain kurang tepat:
- (A) poin 4: tidak realistis; proyek mungkin dibutuhkan.
- (B) poin 3: mengabaikan kualitas.
- (D) poin 2: mengeluh dan menuntut gengsi.
- (E) poin 1: menyalahkan tim; tidak menyelesaikan masalah.', updated_at=now() WHERE id='019b6e3f-209a-7823-a309-ca4f65b5a49d';
UPDATE answers SET description='Menolak tawaran tersebut dan menyerahkan keputusan pemilihan supplier kepada tim pengadaan agar Anda terhindar dari konflik kepentingan.', is_correct=true, point=4, updated_at=now() WHERE id='019b6e3f-204a-7bb9-a7ea-f7971ad0934b';
UPDATE questions SET explanation='DIKETAHUI:
- Anda bekerja di bagian pengadaan barang.
- Seorang supplier menawarkan komisi (uang pelicin) besar bila Anda memilih produknya.
- Produk supplier itu sedikit di bawah standar kantor.

DITANYAKAN:
Sikap yang tepat terhadap tawaran uang pelicin dari supplier.

JAWAB:
1. Aspek yang diuji: profesionalisme dan integritas (antikorupsi/gratifikasi) dalam pengadaan barang.
2. Uang pelicin kepada petugas pengadaan termasuk gratifikasi/suap yang harus ditolak.
3. Pemilihan supplier harus berdasarkan kualitas dan kebutuhan kantor, bukan imbalan pribadi.
4. Uji setiap opsi dari poin tertinggi ke terendah:
   (B) — poin 5: menolak komisi dan memilih supplier terbaik. Integritas terjaga dan keputusan berdasar kualitas.
   (C) — poin 4: menolak komisi dan menghindari konflik kepentingan sudah berintegritas, tetapi melepaskan tanggung jawab memilih supplier terbaik yang merupakan tugas Anda.
   (E) — poin 3: menolak tawaran, tetapi tetap memilih supplier yang memberi komisi lebih kecil; komisi tetap memengaruhi keputusan.
   (D) — poin 2: menerima komisi walau dipakai untuk acara sosial tetap gratifikasi; tujuan baik tidak menghapus pelanggaran.
   (A) — poin 1: menerima suap dan menawar kualitas diam-diam adalah korupsi sekaligus manipulasi pengadaan.
Jadi, jawaban yang tepat adalah (B) Menolak tawaran tersebut dan memilih supplier dengan produk terbaik meskipun tidak ada komisi.
Mengapa opsi lain kurang tepat:
- (C) poin 4: berintegritas, tetapi melepaskan tanggung jawab tugas.
- (E) poin 3: komisi tetap menjadi pertimbangan.
- (D) poin 2: tetap menerima gratifikasi.
- (A) poin 1: menerima suap dan memanipulasi pengadaan.', updated_at=now() WHERE id='019b6e3f-2049-7777-9c28-93cf6e8ae1a1';
UPDATE answers SET description='Menerima target tersebut tanpa membahasnya dengan tim, lalu menyerahkan pencapaiannya kepada masing-masing anggota.', is_correct=true, point=1, updated_at=now() WHERE id='019b6e3f-2084-74fb-9bb5-c37e1d345099';
UPDATE questions SET explanation='DIKETAHUI:
- Atasan memberi target sangat tinggi yang dianggap tidak realistis oleh tim.
- Anda adalah ketua tim.

DITANYAKAN:
Sikap ketua tim yang tepat menghadapi target yang dianggap mustahil.

JAWAB:
1. Aspek yang diuji: profesionalisme, yaitu kepemimpinan, perencanaan, dan tanggung jawab atas hasil.
2. Pemimpin yang profesional tidak langsung menolak target, tetapi mengajak tim menganalisis dan menyusun strategi.
3. Uji setiap opsi dari poin tertinggi ke terendah:
   (C) — poin 5: menerima target, menganalisis bersama tim, merancang strategi inovatif, dan berkomitmen maksimal. Solutif dan memotivasi.
   (B) — poin 4: menerima dan membagi tugas sesuai kemampuan sudah baik, tetapi tanpa analisis dan strategi baru.
   (A) — poin 3: menyampaikan keberatan itu sah, tetapi langsung meminta penurunan target tanpa upaya terlebih dahulu.
   (E) — poin 2: menanyakan reward lebih dulu menunjukkan orientasi imbalan, bukan solusi.
   (D) — poin 1: menerima tanpa membahas dan melepas pencapaian kepada anggota berarti ketua tim tidak menjalankan fungsi kepemimpinan.
Jadi, jawaban yang tepat adalah (C) Menerima target, lalu mengajak tim untuk menganalisis dan merancang strategi inovatif, serta berkomitmen untuk mencapai hasil maksimal, meskipun tidak 100% target tercapai.
Mengapa opsi lain kurang tepat:
- (B) poin 4: tanpa analisis dan strategi baru.
- (A) poin 3: meminta target turun tanpa mencoba.
- (E) poin 2: berorientasi imbalan.
- (D) poin 1: lepas tangan sebagai pemimpin.', updated_at=now() WHERE id='019b6e3f-2083-771c-8dc5-aab9839abc93';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('f3fda1e7-8bf3-4b7e-abae-d9065e39dc80','0d396061-2681-4319-84bd-41f0f38b758a','is',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Kalimat: "If I ___ you, I would accept the offer." (Jika saya ___ kamu, saya akan menerima tawaran itu.)
- Main clause: would accept (would + V1).
- Opsi: am, was, were, be, is.

DITANYAKAN:
Bentuk to be yang tepat pada if-clause.

JAWAB:
1. Would + V1 menandakan Conditional Type 2 (pengandaian tidak nyata di masa kini). Mustahil saya menjadi "kamu", jadi sifatnya pengandaian murni.
2. Rumus Type 2: If + S + V2, S + would + V1. Khusus kata kerja be, dipakai were untuk semua subjek termasuk I, he, she, it (subjunctive baku).
3. Hasil: "If I were you, I would accept the offer." Artinya: Seandainya saya jadi kamu, saya akan menerima tawaran itu. Ungkapan ini lazim dipakai untuk memberi saran.
Jadi, jawaban yang tepat adalah (C) were.
Mengapa opsi lain kurang tepat:
- (A) am: bentuk present; tidak cocok dengan would.
- (B) was: dipakai dalam percakapan informal, tetapi bentuk baku pengandaian adalah were.
- (D) be: bentuk dasar yang tidak membentuk kalimat gramatikal setelah If I.
- (E) is: bentuk present untuk orang ketiga tunggal; tidak cocok dengan subjek I maupun pola would.', updated_at=now() WHERE id='0d396061-2681-4319-84bd-41f0f38b758a';
UPDATE answers SET description='Deni', is_correct=false, point=1, updated_at=now() WHERE id='0198612c-bb34-736d-aeee-5bbb4393e745';
UPDATE questions SET explanation='DIKETAHUI:
- Anton lebih tinggi daripada Budi → Anton > Budi.
- Candra lebih pendek daripada Deni → Deni > Candra.
- Budi dan Deni sama tinggi → Budi = Deni.

DITANYAKAN:
Siapa yang paling tinggi.

JAWAB:
1. Ganti Deni dengan Budi karena tingginya sama: Deni > Candra menjadi Budi > Candra.
2. Gabungkan: Anton > Budi = Deni > Candra.
3. Urutan dari tertinggi: Anton, lalu Budi dan Deni (sama), lalu Candra.
4. Anton lebih tinggi daripada Budi, sehingga juga lebih tinggi daripada Deni (yang sama tinggi dengan Budi) dan Candra. Tidak ada yang menyamai atau melebihi Anton.
Jadi, jawaban yang tepat adalah (A) Anton.
Mengapa opsi lain kurang tepat:
- (B) Budi lebih pendek daripada Anton.
- (C) Candra justru paling pendek.
- (D) Deni sama tinggi dengan Budi, sehingga juga lebih pendek daripada Anton.
- (E) Data cukup untuk menentukan: rantai Anton > Budi = Deni > Candra lengkap.', updated_at=now() WHERE id='0198612c-bb2a-75e1-a344-a8d132edee4b';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('2a3d1666-64ad-422f-a18e-77f25ce4c601','09143587-b4ef-476b-820d-bfaea58a2bae','Lazy and careless',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Soal: "Choose the synonym of ''BENEVOLENT''" (Pilih sinonim dari "benevolent").
- Pilihan: Cruel and mean; Kind and generous; Angry and harsh; Sad and miserable; Lazy and careless.

DITANYAKAN:
Frasa yang bersinonim (semakna) dengan "benevolent".

JAWAB:
1. Arti "benevolent": baik hati, suka menolong, dan murah hati (kata benda: benevolence = kebajikan). Contoh: "a benevolent donor" = donatur yang dermawan.
2. Uji setiap opsi:
   - Cruel and mean = kejam dan jahat (berlawanan).
   - Kind and generous = baik hati dan dermawan (semakna).
   - Angry and harsh = marah dan kasar (berlawanan).
   - Sad and miserable = sedih dan merana (tidak berhubungan).
   - Lazy and careless = malas dan ceroboh (tidak berhubungan).
3. Makna "baik hati, dermawan" hanya cocok dengan "kind and generous".
Jadi, jawaban yang tepat adalah (B) Kind and generous.
Mengapa opsi lain kurang tepat:
- (A) Cruel and mean: antonim benevolent.
- (C) Angry and harsh: sifat keras dan emosional, bukan kebaikan hati.
- (D) Sad and miserable: menyatakan perasaan sedih, tidak berkaitan dengan kedermawanan.
- (E) Lazy and careless: menyatakan sifat malas dan ceroboh, tidak berkaitan dengan kebaikan hati.', updated_at=now() WHERE id='09143587-b4ef-476b-820d-bfaea58a2bae';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('b77b6727-271b-4870-b815-fa381082d7c3','98b62b7e-11e3-42d7-9d0d-846a65e805de','36',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Barisan: 2, 6, 12, 20, 30, ...

DITANYAKAN:
Bilangan berikutnya.

JAWAB:
1. Selisih antarsuku:
   6 − 2 = 4
   12 − 6 = 6
   20 − 12 = 8
   30 − 20 = 10
   Selisihnya bilangan genap yang naik 2.
2. Selisih berikutnya = 10 + 2 = 12.
3. Bilangan berikutnya = 30 + 12 = 42.
4. Cek dengan rumus suku ke-n = n × (n + 1): 1 × 2 = 2, 2 × 3 = 6, 3 × 4 = 12, 4 × 5 = 20, 5 × 6 = 30, sehingga suku ke-6 = 6 × 7 = 42.
Jadi, jawaban yang tepat adalah (C) 42.
Mengapa opsi lain kurang tepat:
- (A) 38: selisih 8, tidak mengikuti kenaikan selisih.
- (B) 40: selisih 10, mengulang selisih sebelumnya.
- (D) 44: selisih 14, melompati 12.
- (E) 36: selisih 6, seolah-olah polanya ditambah 6 terus; tidak sesuai selisih yang terus naik.', updated_at=now() WHERE id='98b62b7e-11e3-42d7-9d0d-846a65e805de';
UPDATE answers SET description='3.600 meter', is_correct=false, point=1, updated_at=now() WHERE id='0198612c-baa7-7114-b3cd-cc6b7152333f';
UPDATE questions SET explanation='DIKETAHUI:
- Lama tes lari = 12 menit.
- Sampai akhir menit ke-6, jarak yang ditempuh = 1.800 meter (dengan kecepatan tetap).
- Pada menit ke-7 sampai ke-12, kecepatan naik 25% dari kecepatan sebelumnya, lalu dipertahankan.

DITANYAKAN:
Total jarak yang ditempuh selama 12 menit.

JAWAB:
1. Rumus: kecepatan v = jarak ÷ waktu; jarak s = v × t.
2. Kecepatan 6 menit pertama: v1 = 1.800 m ÷ 6 menit = 300 m/menit.
3. Kenaikan 25%: 0,25 × 300 = 75 m/menit, sehingga v2 = 300 + 75 = 375 m/menit.
4. Sisa waktu: 12 − 6 = 6 menit.
5. Jarak 6 menit terakhir: s2 = 375 × 6 = 2.250 m.
6. Total jarak: 1.800 + 2.250 = 4.050 m.
7. Cek: 2.250 ÷ 1.800 = 1,25, artinya paruh kedua memang 25% lebih jauh karena waktunya sama (6 menit).
Jadi, jawaban yang tepat adalah (C) 4.050 meter.
Mengapa opsi lain kurang tepat:
- (A) 3.900 meter: setara paruh kedua 2.100 m (naik ≈16,7%), tidak sesuai 25%.
- (B) 4.000 meter: setara paruh kedua 2.200 m (naik ≈22%), bukan 25%.
- (D) 3.600 meter: hasil bila kecepatan tidak naik sama sekali (1.800 × 2); kenaikan 25% diabaikan.
- (E) 4.500 meter: setara paruh kedua 2.700 m (naik 50%), kenaikan terlalu besar.', updated_at=now() WHERE id='0198612c-ba9b-763c-b89c-d667fe348376';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('cf6475ff-f0c8-4e1c-9f30-b57832d1e335','f02b4bd7-0e6f-46df-8c97-5d8e19257947','Beberapa karyawan negeri sipil tidak mengikuti upacara bendera setiap hari Senin',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Premis 1: Semua karyawan negeri sipil (PNS) wajib mengikuti upacara bendera setiap hari Senin.
- Premis 2: Beberapa karyawan yang bertugas di bidang kesehatan tidak mengikuti upacara bendera setiap hari Senin.
- Dalam silogisme, "wajib mengikuti upacara" diperlakukan sebagai sifat yang melekat pada semua PNS.

DITANYAKAN:
Kesimpulan yang paling tepat dari kedua pernyataan.

JAWAB:
1. Misalkan N = PNS, U = (wajib) mengikuti upacara, K = karyawan bidang kesehatan.
2. Premis 1: semua N berada di dalam U. Kontraposisinya: yang tidak termasuk U pasti bukan N.
3. Premis 2: beberapa K berada di luar U.
4. Maka beberapa K tersebut bukan PNS. Karena bukan PNS, aturan "PNS wajib upacara" tidak berlaku bagi mereka; artinya beberapa karyawan kesehatan memang tidak terkena kewajiban upacara.
5. Opsi yang sejalan dengan hasil ini adalah "Beberapa karyawan bidang kesehatan tidak wajib mengikuti upacara bendera".
Jadi, jawaban yang tepat adalah (C) Beberapa karyawan bidang kesehatan tidak wajib mengikuti upacara bendera.
Mengapa opsi lain kurang tepat:
- (A) Terlalu luas; hanya "beberapa" karyawan kesehatan yang dapat dipastikan bukan PNS.
- (B) Bertentangan dengan premis 1; tidak ada PNS yang tidak wajib upacara.
- (D) Bertentangan dengan premis 2 dan hasil langkah 4.
- (E) Bertentangan dengan premis 1; karyawan kesehatan yang tidak ikut upacara justru bukan PNS, sehingga tidak dapat disimpulkan ada PNS yang tidak ikut upacara.', updated_at=now() WHERE id='f02b4bd7-0e6f-46df-8c97-5d8e19257947';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('d0794a23-a065-4ba1-bb2c-3c70841b738c','0199fb42-c0dc-7501-a43e-b265bc88b302','Kesalahan kecil dalam penanganan barang bukti elektronik dapat berakibat ditolaknya bukti tersebut di pengadilan.',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Investigasi digital forensik memerlukan metodologi yang ketat untuk menjamin integritas barang bukti elektronik.
- Setiap langkah, dari pengumpulan data sampai analisis, harus didokumentasikan secara rinci.
- Kesalahan kecil (misalnya tanpa sengaja mengubah metadata file) dapat membuat barang bukti ditolak di pengadilan.
- Analis forensik harus ahli secara teknis serta sangat teliti dan disiplin mengikuti protokol standar.

DITANYAKAN:
Pernyataan yang TIDAK didukung oleh wacana.

JAWAB:
1. Untuk soal "tidak didukung", periksa setiap opsi: bila ada kalimat di teks yang membenarkannya, opsi itu didukung dan bukan jawaban.
2. Opsi A "Analis forensik wajib memiliki ketelitian yang tinggi" didukung kalimat terakhir: analis "harus sangat teliti".
3. Opsi B "Integritas barang bukti elektronik sangat bergantung pada metodologi" didukung kalimat pertama.
4. Opsi C "Dokumentasi yang rinci adalah bagian penting dari investigasi" didukung kalimat kedua.
5. Opsi E "Kesalahan kecil ... dapat berakibat ditolaknya bukti di pengadilan" didukung kalimat ketiga.
6. Opsi D "Investigasi digital forensik lebih mudah daripada investigasi konvensional" tidak punya dasar: wacana tidak membahas investigasi konvensional, dan isinya justru menggambarkan proses yang rumit.
Jadi, jawaban yang tepat adalah (D) Investigasi digital forensik lebih mudah daripada investigasi konvensional.
Mengapa opsi lain kurang tepat:
- (A) Didukung frasa "harus sangat teliti".
- (B) Didukung frasa "metodologi yang ketat untuk menjamin integritas barang bukti".
- (C) Didukung frasa "harus didokumentasikan secara rinci".
- (E) Didukung frasa "dapat membuat barang bukti tersebut ditolak di pengadilan".', updated_at=now() WHERE id='0199fb42-c0dc-7501-a43e-b265bc88b302';
UPDATE answers SET description='Komet : Asteroid', is_correct=false, point=1, updated_at=now() WHERE id='019865e9-5261-7677-9495-1d1c72d34199';
UPDATE questions SET explanation='DIKETAHUI:
- Pola analogi: ... : Bintang = Bumi : ...
- Opsi (isian pertama : isian kedua): Bulan : Satelit; Planet : Matahari; Matahari : Planet; Matahari : Tata Surya; Komet : Asteroid.

DITANYAKAN:
Pasangan isian yang membuat analogi "[isian 1] : Bintang = Bumi : [isian 2]" setara.

JAWAB:
1. Bentuk analogi A : B = C : D, dengan B = Bintang dan C = Bumi.
2. Relasi yang lazim dengan "bintang": benda langit yang tergolong bintang adalah Matahari. Relasinya "A adalah anggota golongan B".
3. Terapkan pada Bumi: Bumi tergolong PLANET. Jadi Bumi : Planet.
4. Uji opsi C: Matahari : Bintang = Bumi : Planet. Matahari adalah sebuah bintang; Bumi adalah sebuah planet. Setara.
5. Uji opsi lain:
   - A: Bulan : Bintang = Bumi : Satelit. Bulan bukan bintang dan Bumi bukan satelit.
   - B: Planet : Bintang = Bumi : Matahari. Kiri dua golongan benda langit; kanan Bumi mengelilingi Matahari.
   - D: Matahari : Bintang = Bumi : Tata Surya. Kanan "bagian dari sistem", bukan "anggota golongan".
   - E: Komet : Bintang = Bumi : Asteroid. Komet bukan bintang dan Bumi bukan asteroid.
Jadi, jawaban yang tepat adalah (C) Matahari : Planet.
Mengapa opsi lain kurang tepat:
- (A) Bulan : Satelit: Bulan bukan bintang dan Bumi bukan satelit.
- (B) Planet : Matahari: relasi kiri dan kanan berbeda.
- (D) Matahari : Tata Surya: Bumi adalah bagian Tata Surya, bukan jenisnya.
- (E) Komet : Asteroid: komet bukan bintang dan Bumi bukan asteroid; keduanya hanya sama-sama benda langit.', updated_at=now() WHERE id='019865e9-5256-7d37-a580-8479dde3a9c8';
UPDATE answers SET description='Memberikan sanksi administratif kepada pengelola yang data debitnya menyimpang jauh dari rata-rata wilayah lain.', is_correct=false, point=1, updated_at=now() WHERE id='019b139a-8447-7907-9a51-24209f36f800';
UPDATE questions SET explanation='DIKETAHUI:
- Pemerintah mewajibkan pelaporan debit sumber mata air yang dikelola masyarakat di kawasan konservasi air.
- Data pencatatan sangat bervariasi antarwilayah sehingga akurasi pemantauan menurun.

DITANYAKAN:
Tindakan paling tepat untuk memastikan keandalan data debit.

JAWAB:
1. Debit air diukur dengan alat; variasi data antarwilayah menunjukkan alat atau cara ukur yang berbeda. Agar andal, hasil ukur harus sebanding antarwilayah.
2. Opsi B: alat ukur standar yang terkalibrasi dan wajib dipakai semua pengelola. Dengan alat yang sama dan terkalibrasi, perbedaan akibat alat hilang sehingga data seragam dan dapat dipertanggungjawabkan.
3. Opsi A (panduan metode seragam) membantu, tetapi hasil tetap bergantung pada alat tiap pengelola.
4. Opsi C (inspeksi berkala) hanya memverifikasi setelah data dicatat, tidak mencegah variasi.
5. Opsi D (sanksi bagi data menyimpang) keliru karena perbedaan debit antarwilayah bisa jadi nyata; sanksi tidak memperbaiki cara ukur.
6. Opsi E (pelatihan lanjutan) meningkatkan kemampuan, tetapi tidak menjamin kesamaan alat dan hasil.
Jadi, jawaban yang tepat adalah (B) Menerapkan alat ukur standar yang telah dikalibrasi dan wajib digunakan oleh seluruh pengelola di setiap wilayah.
Mengapa opsi lain kurang tepat:
- (A) Panduan tertulis tidak menjamin alat yang dipakai sama dan akurat.
- (C) Inspeksi hanya memeriksa setelah data dibuat dan tidak mencegah variasi.
- (D) Sanksi tidak menyentuh sumber masalah (alat dan cara ukur), dan debit tiap wilayah memang bisa berbeda.
- (E) Pelatihan tidak menjamin kesamaan alat dan kalibrasi.', updated_at=now() WHERE id='019b139a-8437-7594-b7d4-c9f74004d7f9';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('d638721f-97d0-4606-973b-5fc9e930a531','6f915592-6c86-4bdc-9913-3b1e856add87','Gunting : Potong',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Pasangan acuan: BUKU : BACA.
- Buku adalah benda yang DIBACA; buku adalah OBJEK (sasaran) kegiatan membaca, bukan alat untuk membaca.
- Bentuk kata: kata benda : kata kerja bentuk dasar.

DITANYAKAN:
Pasangan kata yang hubungannya sama dengan BUKU : BACA.

JAWAB:
1. Rumuskan relasinya: "Buku adalah benda yang dibaca." Pola: objek : kegiatan yang dikenakan padanya. (Uji: "Saya membaca buku" → buku adalah objek.)
2. Uji setiap opsi dengan kalimat "X adalah benda yang di-Y":
   - (A) Pisang adalah benda yang dimakan. Benar ("Saya makan pisang" → pisang objek). Bentuk katanya sama: benda : kata kerja dasar.
   - (B) Pensil adalah ALAT untuk menulis, bukan benda yang ditulis.
   - (C) Sepatu adalah perlengkapan untuk berjalan.
   - (D) Telepon adalah alat untuk berbicara.
   - (E) Gunting adalah ALAT untuk memotong, bukan benda yang dipotong.
3. Jebakan soal: buku sering dianggap "alat untuk membaca". Padahal kita membaca BUKU (objek), sedangkan kita menulis DENGAN pensil dan memotong DENGAN gunting (alat).
Jadi, jawaban yang tepat adalah (A) Pisang : Makan.
Mengapa opsi lain kurang tepat:
- (B) Pensil adalah alat untuk menulis, bukan objek yang ditulis.
- (C) Sepatu adalah perlengkapan untuk berjalan, bukan objek.
- (D) Telepon adalah alat untuk berbicara, bukan objek.
- (E) Gunting adalah alat untuk memotong, bukan objek yang dipotong.', updated_at=now() WHERE id='6f915592-6c86-4bdc-9913-3b1e856add87';
UPDATE answers SET description='P = 2Q', is_correct=false, point=1, updated_at=now() WHERE id='019a23b9-317f-743c-98f7-73c7f8581ef1';
UPDATE questions SET explanation='DIKETAHUI:
- P = 20% dari 150.
- Q = 150% dari 20.
- Kata "dari" pada persentase berarti dikalikan.

DITANYAKAN:
Hubungan yang benar antara P dan Q.

JAWAB:
1. Ubah persen menjadi pecahan: a% = a/100.
2. P = (20/100) × 150 = 3.000/100 = 30.
3. Q = (150/100) × 20 = 3.000/100 = 30.
4. Bandingkan: P = 30 dan Q = 30, jadi P = Q.
5. Cek ulang: 0,2 × 150 = 30 dan 1,5 × 20 = 30.
Cara cepat: a% dari b selalu sama dengan b% dari a, karena keduanya = (a × b)/100.
Jadi, jawaban yang tepat adalah (C) P = Q.
Mengapa opsi lain kurang tepat:
- (A) P > Q: keduanya bernilai 30.
- (B) P < Q: keduanya bernilai 30.
- (D) P = 2Q: berarti P = 60, padahal P = 30.
- (E) Tidak dapat ditentukan: kedua nilai dapat dihitung pasti dari data soal.', updated_at=now() WHERE id='019a23b9-317e-70c7-ba10-3af9538d6846';
UPDATE answers SET description='Menolak menjalankan prosedur tersebut sampai SOP diganti oleh pimpinan.', is_correct=true, point=1, updated_at=now() WHERE id='019b6e3f-20a2-7693-ab77-a1c29e95a319';
UPDATE questions SET explanation='DIKETAHUI:
- Anda menemukan prosedur kerja kantor yang sudah usang dan tidak relevan dengan perkembangan teknologi.

DITANYAKAN:
Sikap yang tepat menghadapi SOP yang sudah usang.

JAWAB:
1. Aspek yang diuji: profesionalisme, yaitu inisiatif perbaikan prosedur melalui jalur resmi.
2. SOP tidak boleh dilanggar atau ditolak secara sepihak sebelum direvisi secara resmi.
3. Cara yang benar adalah mengajukan usulan resmi dengan argumentasi dan data agar SOP ditinjau dan diperbarui.
4. Uji setiap opsi dari poin tertinggi ke terendah:
   (C) — poin 5: mengajukan usulan resmi peninjauan SOP lengkap dengan data. Prosedural, konstruktif, dan berbasis bukti.
   (B) — poin 4: inisiatif modernisasi baik dan pekerjaan tetap berjalan, tetapi melanggar SOP yang berlaku secara sepihak.
   (D) — poin 3: mengeluh kepada rekan hanya menyebar keluhan tanpa solusi.
   (A) — poin 2: mengabaikan masalah dan tetap memakai prosedur lama bersikap pasif dan tidak berkontribusi.
   (E) — poin 1: menolak menjalankan prosedur berarti mogok kerja; pekerjaan terhenti dan tidak ada usulan perbaikan.
Jadi, jawaban yang tepat adalah (C) Mengajukan usulan resmi kepada atasan untuk meninjau dan memperbarui SOP tersebut, lengkap dengan argumentasi data pendukung.
Mengapa opsi lain kurang tepat:
- (B) poin 4: melanggar SOP yang masih berlaku.
- (D) poin 3: hanya mengeluh.
- (A) poin 2: pasif; tidak ada perbaikan.
- (E) poin 1: menghentikan pekerjaan tanpa solusi.', updated_at=now() WHERE id='019b6e3f-20a0-7ef4-b6b1-2789bf9a50d6';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('46d1df30-7646-406c-ae5b-16bec05673db','cd79bb4b-30d7-4d92-b3f4-b7c6d9a94b8d','16',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Deret: 1, 1, 2, 3, 5, 8, ...

DITANYAKAN:
Angka selanjutnya dari deret.

JAWAB:
1. Ini deret Fibonacci: dua suku pertama 1 dan 1, setiap suku berikutnya = jumlah dua suku sebelumnya.
2. Bukti:
   - 1 + 1 = 2
   - 1 + 2 = 3
   - 2 + 3 = 5
   - 3 + 5 = 8
3. Suku ke-7 = 5 + 8 = 13.
Jadi, jawaban yang tepat adalah (D) 13.
Mengapa opsi lain kurang tepat:
- (A) 10: 8 + 2, tidak menjumlahkan dua suku sebelumnya.
- (B) 11: 8 + 3, salah mengambil suku.
- (C) 12: tidak sesuai pola penjumlahan.
- (E) 16: 8 × 2, menganggap deret dikali 2; tidak sesuai karena 3 × 2 ≠ 5.', updated_at=now() WHERE id='cd79bb4b-30d7-4d92-b3f4-b7c6d9a94b8d';
UPDATE answers SET description='WUCIC', is_correct=false, point=1, updated_at=now() WHERE id='019ad9f5-1276-7a4b-89bf-01a2513c5146';
UPDATE questions SET explanation='DIKETAHUI:
- KARYA dikodekan menjadi MCTAC.
- Pola enkripsi yang sama dipakai untuk kata lain.
- Urutan abjad A=1 sampai Z=26, melingkar (setelah Z kembali ke A).

DITANYAKAN:
Kode untuk kata USAHA.

JAWAB:
1. Bandingkan KARYA dengan MCTAC huruf per huruf:
   - K(11) → M(13): +2
   - A(1) → C(3): +2
   - R(18) → T(20): +2
   - Y(25) → A: 25 + 2 = 27; 27 − 26 = 1 = A, jadi +2
   - A(1) → C(3): +2
   Pola: setiap huruf digeser maju 2 langkah.
2. Terapkan pada USAHA:
   - U(21) + 2 = 23 = W
   - S(19) + 2 = 21 = U
   - A(1) + 2 = 3 = C
   - H(8) + 2 = 10 = J
   - A(1) + 2 = 3 = C
3. Hasil: WUCJC. Huruf A muncul dua kali (posisi 3 dan 5), sehingga kodenya sama-sama C.
Jadi, jawaban yang tepat adalah (A) WUCJC.
Mengapa opsi lain kurang tepat:
- (B) WUCIC: H hanya digeser +1 (I), tidak sesuai pola +2.
- (C) WTCJB: S digeser +1 (T) dan A terakhir +1 (B); tidak konsisten.
- (D) VTBIB: semua huruf hanya digeser +1.
- (E) WUDKC: A ketiga digeser +3 (D) dan H digeser +3 (K); tidak sesuai pola +2.', updated_at=now() WHERE id='019ad9f5-1275-7cd1-8267-908dd92828a0';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('2a5dbdab-2b53-49b4-a110-2980a36a87a0','a0e8f46d-0ac2-4ebd-859e-06cabf5c522a','Semua orang yang menggunakan seragam adalah karyawan perusahaan X',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Premis 1: Semua karyawan perusahaan X wajib menggunakan seragam.
- Premis 2: Budi adalah karyawan perusahaan X.

DITANYAKAN:
Kesimpulan yang tepat tentang Budi.

JAWAB:
1. Misalkan X = karyawan perusahaan X, S = wajib menggunakan seragam.
2. Premis 1: semua X termasuk S (X ⊂ S).
3. Premis 2: Budi termasuk X.
4. Karena seluruh X berada di dalam S, Budi pasti berada di dalam S.
5. Pola: "Semua X adalah S" + "Budi adalah X" → "Budi adalah S" (Budi wajib menggunakan seragam).
Jadi, jawaban yang tepat adalah (C) Budi wajib menggunakan seragam.
Mengapa opsi lain kurang tepat:
- (A) Bertentangan langsung dengan premis "semua karyawan wajib".
- (B) "Mungkin tidak" melemahkan kesimpulan yang sebenarnya pasti; kewajiban itu pasti berlaku bagi Budi.
- (D) Terlalu luas; aturan hanya berlaku untuk karyawan perusahaan X.
- (E) Membalik premis 1; "semua X wajib berseragam" tidak berarti semua yang berseragam adalah karyawan X.', updated_at=now() WHERE id='a0e8f46d-0ac2-4ebd-859e-06cabf5c522a';
DELETE FROM user_answers WHERE answer_id='019983d1-8de6-7cdc-bfb3-36e00013421e'; DELETE FROM answers WHERE id='019983d1-8de6-7cdc-bfb3-36e00013421e';
DELETE FROM user_answers WHERE answer_id='019983d1-8de7-74b8-901e-d8224e0b0d03'; DELETE FROM answers WHERE id='019983d1-8de7-74b8-901e-d8224e0b0d03';
DELETE FROM user_answers WHERE answer_id='019983d1-8de7-7963-8964-4ff6e8899a2d'; DELETE FROM answers WHERE id='019983d1-8de7-7963-8964-4ff6e8899a2d';
DELETE FROM user_answers WHERE answer_id='019983d1-8de7-7e62-8496-2ef8cac4a757'; DELETE FROM answers WHERE id='019983d1-8de7-7e62-8496-2ef8cac4a757';
DELETE FROM user_answers WHERE answer_id='019983d1-8de8-748f-a936-91241a907534'; DELETE FROM answers WHERE id='019983d1-8de8-748f-a936-91241a907534';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('3af6862d-1def-4ea5-8aed-f566318d1450','a948fab0-18e3-4247-ab6d-b2dc0c88fc69','Semua orang jujur adalah politikus',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Premis 1: Semua politikus jujur.
- Premis 2: Beberapa pejabat adalah politikus.

DITANYAKAN:
Simpulan yang benar dari kedua premis.

JAWAB:
1. Misalkan P = politikus, J = orang jujur, B = pejabat.
2. Premis 1: semua P berada di dalam J (P ⊂ J).
3. Premis 2: sebagian B berada di dalam P.
4. Sebagian B yang berada di dalam P otomatis berada di dalam J. Jadi beberapa pejabat (yang politikus) pasti jujur.
5. Pejabat yang bukan politikus tidak dibahas; mereka bisa jujur, bisa juga tidak.
6. Pola: "Semua P adalah J" + "Beberapa B adalah P" → "Beberapa B adalah J".
7. Di antara opsi, yang sesuai adalah "Beberapa pejabat mungkin jujur". Kesimpulan logisnya sebenarnya lebih kuat (beberapa pejabat PASTI jujur), tetapi pernyataan ini tetap benar dan satu-satunya yang tidak bertentangan dengan premis.
Jadi, jawaban yang tepat adalah (C) Beberapa pejabat mungkin jujur.
Mengapa opsi lain kurang tepat:
- (A) Terlalu luas; pejabat yang bukan politikus tidak diketahui kejujurannya.
- (B) Bertentangan dengan premis; pejabat yang politikus pasti jujur.
- (D) Bertentangan dengan premis 2; ada pejabat yang politikus, jadi ada politikus yang pejabat.
- (E) Membalik premis 1; "semua politikus jujur" tidak berarti semua orang jujur adalah politikus.', updated_at=now() WHERE id='a948fab0-18e3-4247-ab6d-b2dc0c88fc69';
DELETE FROM user_answers WHERE answer_id='019983d1-6962-761d-957e-4a58d68b3688'; DELETE FROM answers WHERE id='019983d1-6962-761d-957e-4a58d68b3688';
DELETE FROM user_answers WHERE answer_id='019983d1-6965-77c5-b350-b80aeddd34d3'; DELETE FROM answers WHERE id='019983d1-6965-77c5-b350-b80aeddd34d3';
DELETE FROM user_answers WHERE answer_id='019983d1-6967-7134-918f-cfb8c6c13f10'; DELETE FROM answers WHERE id='019983d1-6967-7134-918f-cfb8c6c13f10';
DELETE FROM user_answers WHERE answer_id='019983d1-6967-7890-bf74-f321ff49df32'; DELETE FROM answers WHERE id='019983d1-6967-7890-bf74-f321ff49df32';
DELETE FROM user_answers WHERE answer_id='019983d1-6968-7562-9d24-dadd00023b2f'; DELETE FROM answers WHERE id='019983d1-6968-7562-9d24-dadd00023b2f';
UPDATE answers SET description='Langsung melapor kepada atasan bahwa data kemungkinan hilang dan meminta tambahan waktu, tanpa mengecek sistem terlebih dahulu.', is_correct=true, point=2, updated_at=now() WHERE id='019b5ef7-08ef-710f-b2a2-f5e6e3784a78';
UPDATE questions SET explanation='DIKETAHUI:
- Anda baru selesai menginput 100 data pemohon ke sistem.
- Saat menekan tombol Simpan, koneksi internet terputus dan layar menjadi putih.
- Anda tidak tahu apakah data tersimpan atau hilang.

DITANYAKAN:
Sikap yang paling tepat menghadapi ketidakpastian status penyimpanan data.

JAWAB:
1. Aspek yang diuji: teknologi informasi dan komunikasi (TKP-05), yaitu keamanan data dan pemanfaatan teknologi secara bertanggung jawab.
2. Prinsip: verifikasi fakta lebih dulu sebelum bertindak, aman terhadap data dan sistem, serta melibatkan pihak berwenang (tim IT) bila perlu.
3. Uji setiap opsi dari poin tertinggi ke terendah:
   (B) — poin 5: menunggu sebentar, me-refresh, mengecek log data masuk atau menghubungi tim IT sebelum memutuskan input ulang. Memverifikasi lebih dulu sehingga tidak terjadi kerja ganda maupun data ganda.
   (A) — poin 4: langsung input ulang menunjukkan tanggung jawab dan kerja keras, tetapi berpotensi menghasilkan data ganda dan membuang waktu tanpa verifikasi.
   (C) — poin 3: marah kepada penyedia internet melampiaskan emosi; tidak menyelesaikan masalah dan tidak profesional.
   (E) — poin 2: melapor kepada atasan itu terbuka, tetapi menyampaikan informasi yang belum diverifikasi dan menyerahkan masalah tanpa usaha mengecek sendiri.
   (D) — poin 1: meninggalkan komputer dan beristirahat membiarkan status data tidak jelas; sikap lalai.
Jadi, jawaban yang tepat adalah (B) Menunggu sebentar, me-refresh halaman, lalu mengecek daftar data masuk (log history) atau menghubungi tim IT untuk mengecek database sebelum mengambil tindakan input ulang.
Mengapa opsi lain kurang tepat:
- (A) poin 4: berpotensi menghasilkan data ganda tanpa verifikasi.
- (C) poin 3: emosional dan tidak menyelesaikan masalah.
- (E) poin 2: melapor informasi yang belum diverifikasi.
- (D) poin 1: lalai dan tidak bertanggung jawab.', updated_at=now() WHERE id='019b5ef7-08ed-73e3-8eff-db183406f292';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('fa4c5bab-bda2-48f2-8f3c-7c961b1c934b','23cf2f73-57bc-40a0-bd5c-651e773672b0','Penulis : Buku',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Pasangan acuan: GURU : SEKOLAH.
- Guru adalah tenaga profesional yang mengajar; sekolah adalah LEMBAGA tempat guru bekerja melayani masyarakat di bidang pendidikan.

DITANYAKAN:
Pasangan kata yang hubungannya paling sama dengan GURU : SEKOLAH.

JAWAB:
1. Rumuskan relasinya: "Guru bekerja di sebuah lembaga (sekolah) untuk melayani orang lain." Pola: profesi : lembaga tempat bekerja.
2. Uji setiap opsi:
   - (A) Petani : Sawah. Sawah adalah lahan tempat bertani, bukan lembaga.
   - (B) Dokter : Rumah Sakit. Rumah sakit adalah lembaga pelayanan kesehatan tempat dokter bekerja melayani pasien, sejajar dengan sekolah sebagai lembaga pendidikan tempat guru melayani siswa.
   - (C) Pilot : Pesawat. Pesawat adalah kendaraan yang dikemudikan pilot.
   - (D) Nelayan : Laut. Laut adalah tempat alami mencari ikan.
   - (E) Penulis : Buku. Buku adalah HASIL karya penulis, bukan tempat kerja.
3. Hanya B yang kata keduanya berupa institusi pelayanan, sejajar dengan sekolah.
Jadi, jawaban yang tepat adalah (B) Dokter : Rumah Sakit.
Mengapa opsi lain kurang tepat:
- (A) Sawah adalah lahan, bukan lembaga.
- (C) Pesawat adalah alat/kendaraan yang dikemudikan.
- (D) Laut adalah tempat alami, bukan lembaga.
- (E) Buku adalah hasil karya (profesi : produk), bukan tempat kerja.', updated_at=now() WHERE id='23cf2f73-57bc-40a0-bd5c-651e773672b0';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('9c0f4a27-18ec-430c-a66f-3df6a4a440ab','da4ff54c-ea5d-4080-bfd8-b414cc67a6c5','Semua mahasiswa yang wajib mengikuti ujian tengah semester mengikuti organisasi kemahasiswaan.',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Premis 1: Semua mahasiswa wajib mengikuti ujian tengah semester (UTS).
- Premis 2: Sebagian mahasiswa mengikuti organisasi kemahasiswaan.

DITANYAKAN:
Simpulan yang tepat dari kedua premis.

JAWAB:
1. Misalkan M = mahasiswa, U = wajib mengikuti UTS, O = anggota organisasi kemahasiswaan.
2. Premis 1: semua M berada di dalam U.
3. Premis 2: sebagian M juga berada di dalam O.
4. Mahasiswa yang ikut organisasi tetaplah mahasiswa. Karena SEMUA mahasiswa wajib UTS, mahasiswa yang ikut organisasi pun wajib UTS.
5. Catatan: dalam logika, "sebagian" berarti "sekurang-kurangnya satu"; kata itu tidak otomatis menyatakan ada mahasiswa yang tidak ikut organisasi.
Jadi, jawaban yang tepat adalah (A) Semua mahasiswa yang mengikuti organisasi kemahasiswaan wajib mengikuti ujian tengah semester.
Mengapa opsi lain kurang tepat:
- (B) Bertentangan dengan premis 1; semua mahasiswa wajib UTS tanpa kecuali.
- (C) Premis 2 hanya menyebut sebagian mahasiswa ikut organisasi, bukan kewajiban bagi semua.
- (D) Tidak pasti; "sebagian ikut organisasi" tidak menjamin ada mahasiswa yang tidak ikut organisasi.
- (E) Terlalu luas; premis 2 hanya menyebut sebagian mahasiswa yang ikut organisasi, bukan semua.', updated_at=now() WHERE id='da4ff54c-ea5d-4080-bfd8-b414cc67a6c5';
UPDATE answers SET description='Q, R, P, S', is_correct=false, point=1, updated_at=now() WHERE id='8fea8208-5baf-48b4-bcf2-453fe00a1596';
UPDATE questions SET explanation='DIKETAHUI:
- P = 7/8.
- Q = 0,86.
- R = 85%.
- S = √0,79.

DITANYAKAN:
Urutan keempat bilangan dari yang terkecil ke yang terbesar.

JAWAB:
1. Samakan semua bentuk menjadi desimal.
2. P = 7/8 = 0,875.
3. Q = 0,86.
4. R = 85% = 0,85.
5. S = √0,79. Taksir: 0,88² = 0,7744 dan 0,89² = 0,7921. Karena 0,79 terletak di antara keduanya (sangat dekat ke 0,7921), S ≈ 0,889.
6. Bandingkan: 0,85 (R) < 0,86 (Q) < 0,875 (P) < 0,889 (S).
7. Catatan: untuk bilangan antara 0 dan 1, akarnya selalu lebih besar dari bilangan itu sendiri, jadi √0,79 > 0,79.
Jadi, jawaban yang tepat adalah (B) R, Q, P, S.
Mengapa opsi lain kurang tepat:
- (A) S, P, Q, R: menganggap S paling kecil (keliru membaca √0,79 sebagai 0,79) dan urutannya terbalik.
- (C) P, Q, R, S: P justru lebih besar dari Q dan R.
- (D) Q, R, P, S: menempatkan Q (0,86) sebelum R (0,85), padahal 0,85 < 0,86.
- (E) R, P, Q, S: menempatkan P (0,875) sebelum Q (0,86), padahal 0,86 < 0,875.', updated_at=now() WHERE id='b82efdae-9e6e-4406-a111-766f1d0bd513';
UPDATE answers SET description='Predictable', is_correct=false, point=1, updated_at=now() WHERE id='019ad749-786f-7474-8d96-0b69512448a6';
UPDATE questions SET explanation='DIKETAHUI:
- Teks ulasan novel fiksi ilmiah "The Last Aurora": dunia kehilangan sinar matahari akibat bencana atmosfer; tokoh utama Rhea, ilmuwan muda, menjalankan misi memperbaiki mesin pembawa cahaya.
- Kata yang ditanyakan: "immersive" pada kalimat "The world-building is vivid and immersive."

DITANYAKAN:
Sinonim kata "immersive" sesuai konteks bacaan.

JAWAB:
1. Arti kata: immersive berasal dari immerse (membenamkan). Dalam konteks cerita, immersive berarti sangat menyerap perhatian sehingga pembaca merasa ikut masuk ke dunia cerita; padanannya engaging, absorbing, captivating.
2. Periksa konteks: kata ini disandingkan dengan vivid (hidup/jelas) dan diikuti uraian bahwa dunia cerita "paint a haunting picture" serta cerita tetap "accessible". Semua bernada pujian, jadi maknanya positif.
3. Arti tiap opsi: Confusing = membingungkan; Disturbing = meresahkan; Engaging = menarik dan melibatkan; Predictable = mudah ditebak; Weak = lemah.
4. Yang bermakna positif dan sejalan dengan "menyerap perhatian pembaca" hanya Engaging.
Jadi, jawaban yang tepat adalah (C) Engaging.
Mengapa opsi lain kurang tepat:
- (A) Confusing: teks menyebut konsep ilmiahnya dijelaskan tanpa membuat pembaca kewalahan, jadi bukan membingungkan.
- (B) Disturbing: bermakna meresahkan; teks memakai kata haunting untuk gambaran dunia, tetapi itu bukan padanan immersive.
- (D) Predictable: dalam teks kata ini dipakai untuk sebagian plot twist (bagian kelemahan), bukan untuk world-building, dan maknanya tidak sama dengan immersive.
- (E) Weak: bertentangan dengan vivid dan dengan nada pujian ulasan.', updated_at=now() WHERE id='019ad749-7862-7d8d-a074-01074209d203';
UPDATE answers SET description='Tetap tenang, berterima kasih atas masukannya, lalu dengan sopan mengajak forum kembali membahas substansi ide disertai data pendukung.', is_correct=true, point=5, updated_at=now() WHERE id='019b5ef7-08fd-7f2f-a273-8fdb47504686';
UPDATE questions SET explanation='DIKETAHUI:
- Rapat tim untuk menentukan strategi promosi.
- Ide Anda dikritik tajam oleh rekan kerja yang menjadi saingan Anda.
- Kritik itu terdengar menyerang pribadi, bukan substansi ide.

DITANYAKAN:
Respons yang paling tepat ketika Anda dikritik secara pribadi oleh rekan saingan di tengah rapat.

JAWAB:
1. Aspek yang diuji: jejaring kerja dan pengendalian emosi, yaitu menyikapi perbedaan pendapat secara profesional.
2. Prinsip: jawaban terbaik menjaga suasana rapat tetap kondusif, tidak membalas dengan emosi, dan mengarahkan diskusi kembali ke substansi.
3. Uji setiap opsi dari poin tertinggi ke terendah:
   (C) — poin 5: tetap tenang, menghargai masukan, dan mengajak forum kembali ke substansi ide dengan data. Emosi terkendali, hubungan terjaga, dan tujuan rapat tercapai.
   (B) — poin 4: diam menjaga rapat tetap tenang, tetapi perasaan marah dipendam dan ide Anda tidak dibela secara substantif.
   (E) — poin 3: meminta pimpinan rapat menegur adalah jalur wajar dan tidak emosional, tetapi menyerahkan masalah kepada pihak lain dan berpotensi memperlebar permusuhan.
   (A) — poin 2: membalas dengan mencari kelemahan ide lawan menjadikan rapat ajang adu gengsi.
   (D) — poin 1: meninggalkan rapat berarti lari dari tanggung jawab dan mengganggu jalannya rapat.
Jadi, jawaban yang tepat adalah (C) Tetap tenang, berterima kasih atas masukannya, lalu dengan sopan mengajak forum kembali membahas substansi ide disertai data pendukung.
Mengapa opsi lain kurang tepat:
- (B) poin 4: tenang, tetapi memendam emosi dan tidak membela ide secara substantif.
- (E) poin 3: menyerahkan masalah kepada pimpinan rapat.
- (A) poin 2: membalas, rapat berubah menjadi adu gengsi.
- (D) poin 1: lari dari tanggung jawab.', updated_at=now() WHERE id='019b5ef7-08fd-7573-8cba-42468258a25a';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('b2ef8e5f-9ddc-4391-acf9-7b97f2ebb3fc','7deb9a83-cb17-4634-9899-885085468eae','Semua mahasiswa yang mendapat kesempatan magang di perusahaan pemerintah adalah mahasiswa S1.',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Premis 1: Semua mahasiswa S1 harus mengikuti seminar nasional.
- Premis 2: Sebagian mahasiswa yang mengikuti seminar nasional akan mendapat kesempatan magang di perusahaan pemerintah.

DITANYAKAN:
Kesimpulan yang tepat dari kedua premis.

JAWAB:
1. Misalkan S = mahasiswa S1, N = peserta seminar nasional, M = penerima kesempatan magang.
2. Premis 1: S berada seluruhnya di dalam N (S ⊂ N).
3. Premis 2: sebagian N beririsan dengan M.
4. Bagian N yang mendapat magang bisa jatuh pada mahasiswa S1, bisa juga pada peserta non-S1. Jadi tidak dapat dipastikan mahasiswa S1 tertentu pasti magang.
5. Yang dapat dikatakan: mahasiswa S1 (yang semuanya peserta seminar) termasuk kelompok yang berpeluang magang.
6. Bila premis kedua memakai "sebagian" pada term tengah, kesimpulan pasti tidak dapat ditarik; yang tersisa hanyalah kemungkinan.
Jadi, jawaban yang tepat adalah (C) Sebagian mahasiswa S1 yang mengikuti seminar nasional berpeluang mendapat kesempatan magang.
Mengapa opsi lain kurang tepat:
- (A) Premis 2 hanya menyebut "sebagian" peserta seminar yang magang, jadi tidak semua mahasiswa S1 pasti magang.
- (B) Premis tidak menyatakan bahwa magang hanya untuk peserta seminar.
- (D) Premis 1 tidak berarti hanya mahasiswa S1 yang boleh ikut seminar; ini membalik premis.
- (E) Tidak dapat dipastikan; penerima magang bisa saja peserta seminar yang bukan mahasiswa S1.', updated_at=now() WHERE id='7deb9a83-cb17-4634-9899-885085468eae';
UPDATE answers SET description='Menggunakan pakaian adat hanya ketika ada kunjungan pimpinan atau tamu penting ke kantor.', is_correct=true, point=2, updated_at=now() WHERE id='019b6e3f-20a0-7b90-982a-07e8e473dc03';
UPDATE questions SET explanation='DIKETAHUI:
- Kantor mewajibkan petugas pelayanan memakai pakaian adat daerah setiap Kamis dalam rangka peningkatan layanan.
- Banyak petugas mengeluh karena pakaian adat tidak nyaman dan mengganggu pekerjaan.

DITANYAKAN:
Sikap yang tepat terhadap kebijakan pakaian adat yang dikeluhkan rekan-rekan.

JAWAB:
1. Aspek yang diuji: sosial budaya, yaitu pelestarian budaya, kedisiplinan terhadap kebijakan kantor, dan kebanggaan pada identitas bangsa.
2. Prinsip: mematuhi kebijakan yang sah dan bertujuan melestarikan budaya, serta menjadi teladan positif bagi rekan.
3. Ketidaknyamanan adalah hal yang dapat diatasi, bukan alasan untuk melanggar.
4. Uji setiap opsi dari poin tertinggi ke terendah:
   (A) — poin 5: menjelaskan nilai pakaian adat dan tetap memakainya dengan baik. Patuh, menjadi teladan, dan memberi perspektif positif kepada rekan.
   (D) — poin 4: memakai pakaian adat yang paling sederhana tetap menaati kebijakan dan praktis, tetapi belum sepenuhnya sesuai maksud kebijakan.
   (B) — poin 3: mengusulkan peninjauan ulang adalah jalur sah, tetapi didorong keluhan dan kurang mendukung kebijakan.
   (E) — poin 2: memakai pakaian adat hanya saat ada pimpinan atau tamu berarti patuh demi penilaian, bukan karena kesadaran; kebijakan dijalankan setengah hati.
   (C) — poin 1: tidak memakai pakaian adat dan meminta ditegur berarti sengaja melanggar kebijakan.
Jadi, jawaban yang tepat adalah (A) Menjelaskan kepada rekan-rekan bahwa pakaian adat adalah identitas bangsa yang harus dibanggakan, dan tetap menggunakan pakaian adat dengan baik.
Mengapa opsi lain kurang tepat:
- (D) poin 4: patuh, tetapi kurang sesuai maksud kebijakan.
- (B) poin 3: menyangsikan kebijakan karena keluhan.
- (E) poin 2: patuh hanya ketika diawasi.
- (C) poin 1: sengaja melanggar kebijakan.', updated_at=now() WHERE id='019b6e3f-209f-76a5-b4ec-f37b98649c5f';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('733ccf8b-1038-4129-8a2a-9b443183190d','019cf46c-3c99-7b10-b6d2-59050e1ad036','Elena dan Chika',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Alya: Arab, Rusia.
- Ben: Mandarin, Spanyol.
- Chika: Spanyol, Mandarin.
- Dario: Rusia, Jepang.
- Elena: Arab, Mandarin.
- Dua orang dapat berkomunikasi langsung jika memiliki minimal satu bahasa yang sama.

DITANYAKAN:
Di antara pasangan pada opsi, pasangan yang tidak memiliki bahasa bersama sehingga perlu penerjemah.

JAWAB:
1. Tabel bantu (v = menguasai):
   Bahasa   : Alya Ben Chika Dario Elena
   Arab     :  v    -    -     -     v
   Rusia    :  v    -    -     v     -
   Mandarin :  -    v    v     -     v
   Spanyol  :  -    v    v     -     -
   Jepang   :  -    -    -     v     -
2. Uji setiap pasangan pada opsi dengan mencari irisan bahasa:
   - Alya dan Elena: irisan = Arab. Bisa berkomunikasi.
   - Ben dan Dario: {Mandarin, Spanyol} dan {Rusia, Jepang}, irisan kosong. Perlu penerjemah.
   - Dario dan Alya: irisan = Rusia. Bisa berkomunikasi.
   - Chika dan Ben: irisan = Mandarin dan Spanyol. Bisa berkomunikasi.
   - Elena dan Chika: irisan = Mandarin. Bisa berkomunikasi.
3. Hanya pasangan Ben dan Dario yang irisannya kosong di antara opsi.
Jadi, jawaban yang tepat adalah (B) Ben dan Dario.
Mengapa opsi lain kurang tepat:
- (A) Alya dan Elena: sama-sama berbahasa Arab.
- (C) Dario dan Alya: sama-sama berbahasa Rusia.
- (D) Chika dan Ben: sama-sama berbahasa Spanyol dan Mandarin.
- (E) Elena dan Chika: sama-sama berbahasa Mandarin.', updated_at=now() WHERE id='019cf46c-3c99-7b10-b6d2-59050e1ad036';
UPDATE answers SET description='Beberapa mahasiswa yang rajin belajar memiliki nilai sempurna.', is_correct=false, point=1, updated_at=now() WHERE id='7b0ef0ed-e8e3-40b3-a3e4-5fcedbcd14aa';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('3b8c98c6-382d-4043-83d1-01f1fe624baa','f0243739-9912-449c-9f67-4a6d37eb436c','Tidak dapat ditarik simpulan yang pasti benar.',true,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Premis 1: Semua mahasiswa yang rajin belajar akan lulus ujian.
- Premis 2: Sebagian mahasiswa yang lulus ujian memiliki nilai sempurna.
- Soal meminta simpulan yang PALING BENAR (pasti sah).

DITANYAKAN:
Simpulan yang sah dari kedua premis.

JAWAB:
1. Misalkan R = mahasiswa rajin belajar, L = lulus ujian, S = bernilai sempurna.
2. Premis 1: R berada seluruhnya di dalam L.
3. Premis 2: sebagian L beririsan dengan S.
4. Uji kemungkinan diagram:
   a. Kemungkinan 1: mahasiswa bernilai sempurna berada di dalam R → ada mahasiswa rajin yang bernilai sempurna.
   b. Kemungkinan 2: mahasiswa bernilai sempurna seluruhnya berada di bagian L yang bukan R → tidak ada mahasiswa rajin yang bernilai sempurna.
5. Keduanya memenuhi premis, jadi hubungan R dan S tidak pasti. Pola "Semua R adalah L" + "Sebagian L adalah S" tidak menghasilkan simpulan pasti (term tengah L tidak tersebar).
6. Karena itu simpulan yang paling benar adalah bahwa tidak ada simpulan pasti yang dapat ditarik.
Jadi, jawaban yang tepat adalah (E) Tidak dapat ditarik simpulan yang pasti benar.
Mengapa opsi lain kurang tepat:
- (A) Premis tidak membahas mahasiswa yang tidak rajin; menyangkal anteseden adalah kekeliruan.
- (B) Hanya benar pada kemungkinan 1, bukan pasti benar.
- (C) Premis tidak menyebut adanya mahasiswa tidak rajin yang lulus; hanya kemungkinan.
- (D) Membalik arah premis; nilai sempurna tidak menjamin rajin belajar.', updated_at=now() WHERE id='f0243739-9912-449c-9f67-4a6d37eb436c';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('020a34d2-7d03-4ce0-ac3f-04fb2c6e9a25','daef8e64-f165-4c30-a35c-25daea6b3b4f','She isn''t like coffee.',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Soal meminta memilih kalimat yang benar.
- Subjek She = orang ketiga tunggal; kata kerja like.
- Opsi: She don''t like coffee; She doesn''t like coffee; She not like coffee; She doesn''t likes coffee; She isn''t like coffee.

DITANYAKAN:
Kalimat negatif simple present yang benar untuk subjek She.

JAWAB:
1. Rumus: Subject + do/does + not + V1 (kata kerja bentuk dasar).
2. Subjek She memakai does, sehingga negatifnya doesn''t.
3. Akhiran s/es orang ketiga tunggal PINDAH ke kata bantu does, sehingga kata kerja utama kembali ke bentuk dasar (like), bukan likes.
4. Hasil: She doesn''t like coffee. Artinya: "Dia tidak suka kopi."
Jadi, jawaban yang tepat adalah (B) She doesn''t like coffee.
Mengapa opsi lain kurang tepat:
- (A) don''t tidak dipakai untuk She; seharusnya doesn''t.
- (C) She not like coffee: tidak ada kata bantu do/does.
- (D) She doesn''t likes coffee: doesn''t sudah memuat s orang ketiga, sehingga likes menjadi s ganda.
- (E) She isn''t like coffee: isn''t (to be) tidak dipakai untuk menegasikan kata kerja biasa; "is like" bermakna "seperti", bukan "suka".', updated_at=now() WHERE id='daef8e64-f165-4c30-a35c-25daea6b3b4f';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('84c37a14-5e0f-4882-822c-f22b4c503220','9d9c172a-487e-4769-9062-398bf24ec73b','She doesn''t likes the way he talks',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Soal meminta memilih kalimat yang benar.
- Subjek She = orang ketiga tunggal.
- Opsi: She don''t like ...; She doesn''t like ...; She not like ...; She dislike ...; She doesn''t likes ... the way he talks.

DITANYAKAN:
Kalimat yang benar secara tata bahasa.

JAWAB:
1. Kalimat negatif simple present: Subject + do/does + not + V1.
2. Subjek She memakai does, maka bentuk negatifnya doesn''t + like (bentuk dasar).
3. Hasil: She doesn''t like the way he talks. Artinya: "Dia tidak suka cara dia (laki-laki) berbicara."
4. Uji opsi D: kata kerja dislike untuk subjek She harus berakhiran s (dislikes). Tanpa s, kalimat salah.
Jadi, jawaban yang tepat adalah (B) She doesn''t like the way he talks.
Mengapa opsi lain kurang tepat:
- (A) don''t tidak cocok untuk She; harus doesn''t.
- (C) She not like: tidak ada kata bantu does; not tidak bisa langsung di depan kata kerja biasa.
- (D) She dislike: kata kerja orang ketiga tunggal harus dislikes.
- (E) She doesn''t likes: setelah doesn''t, kata kerja kembali ke bentuk dasar (like), bukan likes.', updated_at=now() WHERE id='9d9c172a-487e-4769-9062-398bf24ec73b';
UPDATE answers SET description='Mendekati anggota tersebut secara personal untuk memahami alasannya, lalu menyepakati cara koordinasi kerja yang tetap menghormati latar belakangnya.', is_correct=true, point=5, updated_at=now() WHERE id='019b5ef7-0905-70fc-b0f1-56ab9bef1ef3';
UPDATE questions SET explanation='DIKETAHUI:
- Anda ketua tim dengan anggota berlatar budaya dan agama sangat beragam.
- Seorang anggota sering menyendiri dan tidak mau berbaur saat istirahat sehingga koordinasi kerja kadang terhambat.

DITANYAKAN:
Sikap ketua tim menghadapi anggota yang menyendiri dan menghambat koordinasi.

JAWAB:
1. Aspek yang diuji: sosial budaya dan kepemimpinan, yaitu menghargai keberagaman dan privasi sambil menjaga kerja sama tim.
2. Dalam tim yang beragam, kebiasaan makan, ibadah, dan bersosialisasi bisa berbeda. Menyendiri belum tentu kesalahan.
3. Ketua tim idealnya mendekati anggota secara personal, memahami alasannya, dan memastikan koordinasi kerja tetap berjalan tanpa memaksa.
4. Uji setiap opsi dari poin tertinggi ke terendah:
   (D) — poin 5: pendekatan personal untuk memahami alasan, lalu menyepakati cara koordinasi yang menghormati latar belakangnya. Empatik, menghargai keberagaman, dan menyelesaikan masalah koordinasi.
   (E) — poin 4: aturan makan siang bersama mendorong kebersamaan, tetapi bersifat memaksa dan dapat berbenturan dengan keragaman (jam ibadah atau pantangan makanan).
   (A) — poin 3: membiarkan dengan alasan privasi menghargai pilihan pribadi, tetapi ketua tidak berupaya memperbaiki koordinasi.
   (C) — poin 2: meminta penggantian anggota membuang masalah dan tidak menjalankan peran ketua untuk membina.
   (B) — poin 1: menegur di depan anggota lain mempermalukan dan merusak suasana tim.
Jadi, jawaban yang tepat adalah (D) Mendekati anggota tersebut secara personal untuk memahami alasannya, lalu menyepakati cara koordinasi kerja yang tetap menghormati latar belakangnya.
Mengapa opsi lain kurang tepat:
- (E) poin 4: mendorong kebersamaan, tetapi memaksa.
- (A) poin 3: menghargai privasi, tetapi pasif.
- (C) poin 2: menyingkirkan anggota.
- (B) poin 1: mempermalukan di depan umum.', updated_at=now() WHERE id='019b5ef7-0904-7245-b18e-10313b62932b';
UPDATE answers SET description='Mengembalikan penghargaan tersebut kepada pimpinan agar rekan-rekan tidak lagi merasa iri.', is_correct=true, point=1, updated_at=now() WHERE id='019b6e3f-2070-7998-ab3d-03515c4acd9a';
UPDATE questions SET explanation='DIKETAHUI:
- Anda baru memenangkan penghargaan atas inovasi di kantor.
- Rekan kerja merasa iri, menyindir, dan mengucilkan Anda.

DITANYAKAN:
Reaksi yang tepat terhadap rekan yang iri dan mengucilkan Anda.

JAWAB:
1. Aspek yang diuji: jejaring kerja (menjaga hubungan dengan rekan, mengelola rasa iri di tempat kerja) dan kerendahan hati.
2. Prinsip: tetap positif dan profesional, serta mengubah kecemburuan menjadi kolaborasi lewat berbagi pengalaman.
3. Uji setiap opsi dari poin tertinggi ke terendah:
   (C) — poin 5: tetap berinteraksi profesional, menjadikan sindiran motivasi, dan berbagi ilmu. Hubungan membaik dan prestasi berlanjut.
   (A) — poin 4: mengabaikan sindiran menjaga ketenangan dan kinerja, tetapi tidak aktif memperbaiki hubungan.
   (D) — poin 3: melapor ke atasan bisa dibenarkan bila pengucilan berat, tetapi tanpa dialog lebih dulu dapat memperuncing konflik.
   (B) — poin 2: menarik diri dan bekerja dari rumah adalah menghindar, memperburuk keterasingan, dan mengganggu kerja sama tim.
   (E) — poin 1: mengembalikan penghargaan tidak menyelesaikan masalah, merendahkan prestasi sendiri, dan tunduk pada tekanan yang tidak sehat.
Jadi, jawaban yang tepat adalah (C) Tetap berinteraksi secara profesional, menjadikan sindiran sebagai motivasi untuk terus berprestasi, dan berbagi ilmu/pengalaman tentang inovasi tersebut kepada rekan yang lain.
Mengapa opsi lain kurang tepat:
- (A) poin 4: cukup baik, tetapi tidak memperbaiki hubungan.
- (D) poin 3: melapor tanpa upaya dialog lebih dulu.
- (B) poin 2: menghindar dan memperburuk keterasingan.
- (E) poin 1: menyerah pada tekanan dan tidak menyelesaikan masalah.', updated_at=now() WHERE id='019b6e3f-206f-7576-b8ba-ff231938bbeb';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('dfd77af5-8d24-4e68-96b4-cc99134cb4a2','291857ad-af71-4741-a912-deb2d2993902','Momentary',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Soal: "Choose the antonym of ''TEMPORARY''" (Pilih antonim dari "temporary").
- Pilihan: Brief, Short, Permanent, Fleeting, Momentary.

DITANYAKAN:
Lawan kata dari "temporary".

JAWAB:
1. Arti "temporary": sementara, tidak tetap.
2. Lawan dari "sementara" adalah "tetap / kekal / berlangsung terus".
3. Uji setiap opsi:
   - Brief = singkat (searah dengan temporary).
   - Short = pendek/singkat (searah).
   - Permanent = tetap, terus-menerus (berlawanan).
   - Fleeting = cepat berlalu (searah).
   - Momentary = sesaat (searah).
4. Empat opsi bermakna "singkat/sesaat", sedangkan "permanent" bermakna "tidak berakhir".
Jadi, jawaban yang tepat adalah (C) Permanent.
Mengapa opsi lain kurang tepat:
- (A) Brief: singkat, justru sinonim temporary.
- (B) Short: pendek/singkat, sinonim.
- (D) Fleeting: cepat berlalu, sinonim.
- (E) Momentary: sesaat, sinonim.', updated_at=now() WHERE id='291857ad-af71-4741-a912-deb2d2993902';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('a43c0906-9fd8-495e-bfad-fa28a58f198d','671539b6-d076-45fc-bbbe-29afaa5b8c05','Semua orang yang mengikuti pelatihan berkala adalah PNS.',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Premis 1: Pak Budi adalah seorang PNS.
- Premis 2: Semua PNS wajib mengikuti pelatihan berkala.
- Tidak ada informasi lain (misalnya usia Pak Budi atau pengecualian).

DITANYAKAN:
Kesimpulan yang paling tepat.

JAWAB:
1. Misalkan P = PNS, W = wajib mengikuti pelatihan berkala.
2. Premis 2: semua P termasuk W (P ⊂ W).
3. Premis 1: Pak Budi adalah anggota P.
4. Karena seluruh anggota P berada di dalam W, Pak Budi pasti berada di dalam W.
5. Pola: "Semua P adalah W" + "Pak Budi adalah P" → "Pak Budi adalah W".
Jadi, jawaban yang tepat adalah (B) Pak Budi wajib mengikuti pelatihan berkala.
Mengapa opsi lain kurang tepat:
- (A) Menambahkan informasi usia yang tidak ada di premis dan bertentangan dengan kata "semua".
- (C) Bertentangan dengan premis "semua PNS wajib".
- (D) Bertentangan dengan premis; pelatihan berlaku untuk semua PNS.
- (E) Membalik premis 2; "semua PNS wajib pelatihan" tidak berarti semua peserta pelatihan adalah PNS.', updated_at=now() WHERE id='671539b6-d076-45fc-bbbe-29afaa5b8c05';
UPDATE answers SET description='8/15', is_correct=false, point=1, updated_at=now() WHERE id='019865d5-0490-73c4-a34c-981e4deec8af';
UPDATE answers SET description='14/23', is_correct=false, point=1, updated_at=now() WHERE id='019865d5-0494-7e52-b32b-e5b7679a4a19';
UPDATE answers SET description='7/30', is_correct=false, point=1, updated_at=now() WHERE id='019865d5-0496-7d8e-bd7d-5fc199703b93';
UPDATE questions SET explanation='DIKETAHUI:
- Kristal bayangan = 14.
- Kristal api = 9.
- Kristal cahaya = 7.
- Bentuk kristal identik dan diambil satu tanpa melihat (acak).
- Waktu 4 detik hanya informasi tambahan, tidak memengaruhi peluang.

DITANYAKAN:
Peluang Narel mendapatkan kristal bayangan.

JAWAB:
1. Rumus peluang: P(A) = n(A) / n(S).
2. Banyak seluruh kristal: n(S) = 14 + 9 + 7 = 30.
3. Banyak kristal bayangan: n(A) = 14.
4. P(bayangan) = 14/30.
5. Sederhanakan dengan FPB 14 dan 30, yaitu 2: 14 : 2 = 7 dan 30 : 2 = 15, sehingga P(bayangan) = 7/15.
6. Cek: 7/15 × 30 = 14 kristal bayangan. Sesuai.
Jadi, jawaban yang tepat adalah (A) 7/15.
Mengapa opsi lain kurang tepat:
- (B) 8/15: peluang TIDAK mendapat kristal bayangan (16/30), yaitu komplemen dari 7/15.
- (C) 2/3: 2/3 × 30 = 20, padahal kristal bayangan hanya 14.
- (D) 14/23: penyebutnya hanya kristal bayangan + api (14 + 9); kristal cahaya terlupa.
- (E) 7/30: peluang mendapat kristal cahaya, bukan kristal bayangan.', updated_at=now() WHERE id='019865d5-048a-7b8e-a0ca-85f22825d507';
UPDATE answers SET description='Q, R, P, S', is_correct=false, point=1, updated_at=now() WHERE id='019ae47c-82ea-7d76-8e06-ca9b05623e81';
UPDATE questions SET explanation='DIKETAHUI:
- P = 7/8.
- Q = 0,86.
- R = 85%.
- S = √0,79.

DITANYAKAN:
Urutan keempat bilangan dari yang terkecil ke yang terbesar.

JAWAB:
1. Samakan semua bentuk menjadi desimal.
2. P = 7/8 = 0,875.
3. Q = 0,86.
4. R = 85% = 0,85.
5. S = √0,79. Taksir: 0,88² = 0,7744 dan 0,89² = 0,7921, sehingga S ≈ 0,889.
6. Bandingkan: 0,85 (R) < 0,86 (Q) < 0,875 (P) < 0,889 (S).
7. Catatan: untuk bilangan antara 0 dan 1, akarnya selalu lebih besar dari bilangan itu sendiri, jadi √0,79 > 0,79.
Jadi, jawaban yang tepat adalah (B) R, Q, P, S.
Mengapa opsi lain kurang tepat:
- (A) R, P, Q, S: menempatkan P (0,875) sebelum Q (0,86), padahal 0,86 < 0,875.
- (C) Q, R, P, S: menempatkan Q (0,86) sebelum R (0,85), padahal 0,85 < 0,86.
- (D) S, P, Q, R: menganggap S paling kecil (keliru membaca √0,79 sebagai 0,79) dan urutannya terbalik.
- (E) P, Q, R, S: P justru lebih besar dari Q dan R.', updated_at=now() WHERE id='019ae47c-82ea-72ed-a263-726657ecc0a9';
UPDATE answers SET description='Chika dan Elena', is_correct=false, point=1, updated_at=now() WHERE id='019cf46c-3c9a-780c-a9b7-326614a2eb7f';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('ac5efde4-dfeb-4c10-becf-8713a203ae83','019cf46c-3c9a-747a-a2d5-9c1b277a02fb','Alya dan Elena',false,1,now()+interval '1 second',now());
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('5227b6d3-da41-429a-ac42-f6d380aaa144','019cf46c-3c9a-747a-a2d5-9c1b277a02fb','Ben dan Chika',false,1,now()+interval '2 second',now());
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('bd4bf811-f179-49c5-84fb-39ef5610a29e','019cf46c-3c9a-747a-a2d5-9c1b277a02fb','Dario dan Ben',true,1,now()+interval '3 second',now());
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('87b1d99d-a0de-46d5-bdcf-e6a961acce36','019cf46c-3c9a-747a-a2d5-9c1b277a02fb','Alya dan Dario',false,1,now()+interval '4 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Alya: Arab, Rusia.
- Ben: Mandarin, Spanyol.
- Chika: Spanyol, Mandarin.
- Dario: Rusia, Jepang.
- Elena: Arab, Mandarin.
- Dua orang dapat berkomunikasi langsung bila punya minimal satu bahasa yang sama (irisan bahasa tidak kosong).

DITANYAKAN:
Di antara pasangan pada opsi, pasangan duta besar yang tidak memiliki bahasa bersama sehingga harus memakai penerjemah.

JAWAB:
1. Tabel bantu (v = menguasai):
   Bahasa   : Alya Ben Chika Dario Elena
   Arab     :  v    -    -     -     v
   Rusia    :  v    -    -     v     -
   Mandarin :  -    v    v     -     v
   Spanyol  :  -    v    v     -     -
   Jepang   :  -    -    -     v     -
2. Uji setiap pasangan pada opsi:
   - Chika dan Elena: {Spanyol, Mandarin} dan {Arab, Mandarin}, irisan = Mandarin. Bisa berkomunikasi.
   - Alya dan Elena: irisan = Arab. Bisa berkomunikasi.
   - Ben dan Chika: irisan = Mandarin dan Spanyol. Bisa berkomunikasi.
   - Dario dan Ben: {Rusia, Jepang} dan {Mandarin, Spanyol}, irisan kosong. Perlu penerjemah.
   - Alya dan Dario: irisan = Rusia. Bisa berkomunikasi.
3. Satu-satunya pasangan pada opsi yang irisannya kosong adalah Dario dan Ben.
Jadi, jawaban yang tepat adalah (D) Dario dan Ben.
Mengapa opsi lain kurang tepat:
- (A) Chika dan Elena: sama-sama berbahasa Mandarin.
- (B) Alya dan Elena: sama-sama berbahasa Arab.
- (C) Ben dan Chika: sama-sama berbahasa Mandarin dan Spanyol.
- (E) Alya dan Dario: sama-sama berbahasa Rusia.', updated_at=now() WHERE id='019cf46c-3c9a-747a-a2d5-9c1b277a02fb';
UPDATE answers SET description='Melaporkan supervisor kepada pemilik perusahaan karena dianggap tidak mendukung produk dalam negeri.', is_correct=false, point=1, updated_at=now() WHERE id='019b0657-ebbe-7836-aa12-4dbb40894425';
UPDATE questions SET explanation='DIKETAHUI:
- Saat PKL di industri perakitan, supervisor meminta memakai suku cadang impor (KW) yang murah demi biaya produksi rendah.
- Ada suku cadang buatan IKM lokal yang memenuhi SNI dengan harga sedikit lebih mahal.
- Anda hanya anak magang dengan posisi lemah.

DITANYAKAN:
Tindakan asertif (tegas tetapi santun) untuk mendukung produk dalam negeri dari posisi anak magang.

JAWAB:
1. Asertif artinya menyampaikan pendapat dengan jelas dan sopan, tidak menyerang dan tidak pasif. Posisi magang yang lemah berarti Anda perlu strategi berbasis data, bukan konfrontasi.
2. Opsi D mengusulkan analisis perbandingan biaya dan kualitas (cost-benefit analysis) antara produk impor dan lokal sebagai bahan pertimbangan. Cara ini menghormati wewenang supervisor, memakai alasan rasional (SNI, kualitas, umur pakai, biaya jangka panjang), dan membuka peluang produk lokal dipilih.
3. Opsi A pasif, B melangkahi hierarki, C membangkang tanpa data, E memakai uang pribadi di luar prosedur.
4. Karena itu D paling asertif, santun, dan konstruktif.
Jadi, jawaban yang tepat adalah (D) Mengusulkan analisis perbandingan biaya dan kualitas (Cost-Benefit Analysis) antara produk impor dan lokal kepada supervisor sebagai bahan pertimbangan rasional.
Mengapa opsi lain kurang tepat:
- (A) Menurut sambil mencatat diam-diam adalah sikap pasif dan tidak transparan.
- (B) Melaporkan supervisor kepada pemilik perusahaan melangkahi hierarki tanpa dialog lebih dulu dan bersifat menyerang, bukan asertif.
- (C) Menolak pemasangan melanggar kewajiban dan hierarki kerja, serta hanya berdasar perasaan tanpa data.
- (E) Membeli dengan uang pribadi tidak berkelanjutan, melangkahi prosedur, dan tidak mengubah kebijakan perusahaan.', updated_at=now() WHERE id='019b0657-ebbd-7a86-bc2d-2c74ea53ccfc';
UPDATE answers SET description='Menegur langsung para pemilik akun melalui kolom komentar agar menghapus postingan tersebut.', is_correct=true, point=3, updated_at=now() WHERE id='019b6e3f-209d-71b4-9d99-129e54f6adc6';
UPDATE questions SET explanation='DIKETAHUI:
- Ada beberapa akun media sosial milik ASN dari instansi lain.
- Akun-akun itu sering memposting konten memuja Khilafah dan ingin mengganti Pancasila.

DITANYAKAN:
Sikap Anda terhadap akun ASN instansi lain yang menyebarkan konten bertentangan dengan Pancasila.

JAWAB:
1. Aspek yang diuji: antiradikalisme, yaitu kepedulian terhadap ideologi bangsa dan pelaporan melalui jalur resmi.
2. ASN wajib setia kepada Pancasila dan UUD 1945. Konten yang ingin mengganti Pancasila adalah pelanggaran berat.
3. Meskipun berbeda instansi, Anda tetap bertanggung jawab sebagai warga negara; jalur terbaik adalah melapor ke BKN atau pihak berwenang.
4. Uji setiap opsi dari poin tertinggi ke terendah:
   (B) — poin 5: melaporkan akun ke BKN atau pihak berwenang karena melanggar netralitas dan ideologi ASN. Cepat, resmi, dan bertanggung jawab.
   (D) — poin 4: menyimpan bukti sudah baik, tetapi menunggu kasus viral menunda penindakan dan membiarkan konten terus menyebar.
   (C) — poin 3: menegur langsung menunjukkan kepedulian, tetapi bukan jalur resmi, berisiko memicu perdebatan terbuka, dan tidak menjamin penindakan.
   (A) — poin 2: mengabaikan karena bukan urusan instansi sendiri menunjukkan sikap acuh terhadap ideologi bangsa.
   (E) — poin 1: menyebut akun itu palsu adalah informasi tanpa dasar dan menyesatkan.
Jadi, jawaban yang tepat adalah (B) Melaporkan akun-akun tersebut kepada BKN (Badan Kepegawaian Negara) atau pihak berwenang karena melanggar netralitas dan ideologi ASN.
Mengapa opsi lain kurang tepat:
- (D) poin 4: menunda penindakan.
- (C) poin 3: peduli, tetapi tidak melalui jalur resmi.
- (A) poin 2: acuh terhadap ideologi bangsa.
- (E) poin 1: menyebarkan informasi tanpa dasar.', updated_at=now() WHERE id='019b6e3f-209c-74ca-b76e-477ee542b822';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('474cb9f5-ccad-4ddd-8302-40393e591b18','d8ab9329-144e-4e18-aa11-1a79137ffb0f','is completing',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Kalimat: "The students ___ the assignment when the teacher arrived." (Para siswa ... tugas ketika guru tiba.)
- Subjek: the students (jamak).
- Kejadian singkat: the teacher arrived (simple past).
- Opsi: were completing, was completing, are completing, have completed, is completing.

DITANYAKAN:
Bentuk kata kerja yang tepat untuk kegiatan yang sedang berlangsung saat guru tiba.

JAWAB:
1. Pola: Past Continuous + when + Simple Past. Rumus past continuous: Subject + was/were + V-ing.
2. Subjek students jamak, jadi memakai were (bukan was).
3. Kata kerja complete menjadi completing.
4. Kalimat: The students were completing the assignment when the teacher arrived. Artinya: "Para siswa sedang menyelesaikan tugas ketika guru tiba."
Jadi, jawaban yang tepat adalah (A) were completing.
Mengapa opsi lain kurang tepat:
- (B) was completing: was hanya untuk subjek tunggal (I, he, she, it).
- (C) are completing: present continuous; bertentangan dengan arrived yang lampau.
- (D) have completed: present perfect; tidak sesuai dengan when yang menunjuk waktu lampau tertentu.
- (E) is completing: present dan tunggal; salah pada waktu dan kesesuaian subjek.', updated_at=now() WHERE id='d8ab9329-144e-4e18-aa11-1a79137ffb0f';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('d4741d48-b2fd-4a71-af23-d0805f7b1dec','949dbe6d-ef86-4c46-b468-87ce2de77c0f','Kasir : Bayar',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Pasangan acuan: HARGA : BELI.
- Harga adalah nilai uang yang harus dibayarkan dalam kegiatan membeli.
- Pola: nilai uang yang menjadi imbalan : kegiatan yang terkait dengannya.

DITANYAKAN:
Pasangan kata yang hubungannya sama dengan HARGA : BELI.

JAWAB:
1. Rumuskan relasinya: "Harga adalah sejumlah uang yang menjadi imbangan dalam kegiatan membeli."
2. Uji setiap opsi dengan kalimat "X adalah sejumlah uang yang menjadi imbalan dalam kegiatan Y":
   - (A) Pasar : Jual. Pasar adalah TEMPAT menjual, bukan sejumlah uang.
   - (B) Upah : Kerja. Upah adalah uang imbalan bekerja. Pola sama.
   - (C) Makanan : Masak. Makanan adalah HASIL memasak.
   - (D) Uang : Simpan. Uang adalah BENDA yang disimpan, bukan imbalan suatu kegiatan.
   - (E) Kasir : Bayar. Kasir adalah ORANG yang menerima pembayaran, bukan nilai uang.
3. Harga dan upah sama-sama besaran nilai uang yang ditetapkan dalam suatu transaksi (jual-beli / kerja).
Jadi, jawaban yang tepat adalah (B) Upah : Kerja.
Mengapa opsi lain kurang tepat:
- (A) Pasar adalah tempat.
- (C) Makanan adalah hasil memasak.
- (D) Uang adalah objek yang disimpan, bukan imbalan suatu kegiatan.
- (E) Kasir adalah pelaku (orang), bukan nilai uang.', updated_at=now() WHERE id='949dbe6d-ef86-4c46-b468-87ce2de77c0f';
UPDATE answers SET description='16', is_correct=false, point=1, updated_at=now() WHERE id='019a6927-5164-7ea5-bb22-a614d08b27fd';
UPDATE answers SET description='27', is_correct=false, point=1, updated_at=now() WHERE id='019a6927-5165-751f-9f78-7707d5c40037';
UPDATE answers SET description='125', is_correct=false, point=1, updated_at=now() WHERE id='019a6927-5165-7a5f-a4d2-efe24c41cc7f';
UPDATE answers SET description='144', is_correct=false, point=1, updated_at=now() WHERE id='019a6927-5165-7ea4-812f-33cf7accee46';
UPDATE questions SET explanation='DIKETAHUI:
- Dicari bilangan hasil perpangkatan bilangan bulat positif.
- Bilangan itu sekaligus bilangan kuadrat (n = a²) dan bilangan kubik (n = b³).
- Pilihan: 16, 27, 125, 144, 64.

DITANYAKAN:
Bilangan mana yang sekaligus kuadrat sempurna dan kubik sempurna?

JAWAB:
1. Bilangan yang sekaligus kuadrat dan kubik pasti berbentuk pangkat enam: n = k^6, karena KPK(2, 3) = 6.
2. Pangkat enam bilangan bulat positif: 1^6 = 1; 2^6 = 64; 3^6 = 729; dan seterusnya.
3. Uji setiap opsi:
   - 16 = 4², tetapi 2³ = 8 dan 3³ = 27, jadi 16 bukan kubik.
   - 27 = 3³, tetapi 5² = 25 dan 6² = 36, jadi 27 bukan kuadrat.
   - 125 = 5³, tetapi 11² = 121 dan 12² = 144, jadi 125 bukan kuadrat.
   - 144 = 12², tetapi 5³ = 125 dan 6³ = 216, jadi 144 bukan kubik.
   - 64 = 8² dan 64 = 4³. Memenuhi keduanya.
4. Cek bentuk pangkat enam: 64 = 2^6 = (2³)² = 8² dan (2²)³ = 4³.
Jadi, jawaban yang tepat adalah (E) 64.
Mengapa opsi lain kurang tepat:
- (A) 16: hanya bilangan kuadrat (4²).
- (B) 27: hanya bilangan kubik (3³).
- (C) 125: hanya bilangan kubik (5³).
- (D) 144: hanya bilangan kuadrat (12²).', updated_at=now() WHERE id='019a6927-5164-7976-91a9-ec7cac886123';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('8d0cf674-21a9-4501-b557-243144aeeb32','019a6927-5137-74e9-8349-f08a79bef075','728 cm³',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Dua kubus memiliki perbandingan panjang rusuk 3 : 4.
- Panjang rusuk kubus kecil = 6 cm.

DITANYAKAN:
Selisih volume kubus besar dan kubus kecil.

JAWAB:
1. Rusuk kubus besar: 6 : r = 3 : 4, sehingga r = 6 × 4 : 3 = 8 cm.
2. Rumus volume kubus: V = r³.
3. Volume kubus kecil = 6 × 6 × 6 = 216 cm³.
4. Volume kubus besar = 8 × 8 × 8 = 512 cm³.
5. Selisih volume = 512 − 216 = 296 cm³.
6. Cek: 216 + 296 = 512.
Cara cepat: perbandingan volume = 3³ : 4³ = 27 : 64. Satu bagian = 216 : 27 = 8 cm³. Selisih = (64 − 27) × 8 = 37 × 8 = 296 cm³.
Jadi, jawaban yang tepat adalah (A) 296 cm³.
Mengapa opsi lain kurang tepat:
- (B) 269 cm³: digit 296 tertukar.
- (C) 387 cm³: tidak sesuai dengan 512 − 216.
- (D) 279 cm³: tidak sesuai dengan 512 − 216.
- (E) 728 cm³: hasil penjumlahan 512 + 216, bukan selisih.', updated_at=now() WHERE id='019a6927-5137-74e9-8349-f08a79bef075';
DELETE FROM user_answers WHERE answer_id='019a23b9-31b5-7b35-92b8-218ba99c4a48'; DELETE FROM answers WHERE id='019a23b9-31b5-7b35-92b8-218ba99c4a48';
DELETE FROM user_answers WHERE answer_id='019a23b9-31b5-7dfd-9324-44e666f8101d'; DELETE FROM answers WHERE id='019a23b9-31b5-7dfd-9324-44e666f8101d';
DELETE FROM user_answers WHERE answer_id='019a23b9-31b6-724b-a27c-99213124480d'; DELETE FROM answers WHERE id='019a23b9-31b6-724b-a27c-99213124480d';
DELETE FROM user_answers WHERE answer_id='019a23b9-31b6-76fd-9c33-e9a8aa0a52f4'; DELETE FROM answers WHERE id='019a23b9-31b6-76fd-9c33-e9a8aa0a52f4';
DELETE FROM user_answers WHERE answer_id='019a23b9-31b6-7afe-8e1e-7bc8d3a2f522'; DELETE FROM answers WHERE id='019a23b9-31b6-7afe-8e1e-7bc8d3a2f522';
UPDATE questions SET explanation='DIKETAHUI:
- Kata pada opsi: Emas, Tembaga, Besi, Perunggu, Aluminium.
- Diminta mencari kata yang secara konsep tidak termasuk kelompoknya.

DITANYAKAN:
Kata yang secara konseptual berbeda dari empat kata lainnya.

JAWAB:
1. Kenali setiap kata:
   - Emas (Au): unsur logam murni.
   - Tembaga (Cu): unsur logam murni.
   - Besi (Fe): unsur logam murni.
   - Aluminium (Al): unsur logam murni.
   - Perunggu: LOGAM PADUAN (aloi), yaitu campuran tembaga dengan timah (kadang ditambah unsur lain).
2. Kesamaan: emas, tembaga, besi, dan aluminium adalah unsur kimia dalam tabel periodik dan masing-masing punya lambang unsur.
3. Perunggu tidak punya lambang unsur karena bukan unsur, melainkan campuran beberapa logam.
4. Pembeda konseptualnya: unsur logam murni vs logam paduan.
Jadi, jawaban yang tepat adalah (D) Perunggu.
Mengapa opsi lain kurang tepat:
- (A) Emas: unsur logam murni (Au).
- (B) Tembaga: unsur logam murni (Cu).
- (C) Besi: unsur logam murni (Fe).
- (E) Aluminium: unsur logam murni (Al).', updated_at=now() WHERE id='019a23b9-31a5-7d9d-a359-be7e3f79bf9f';
UPDATE answers SET description='Modus, median, dan rata-rata tidak berubah', is_correct=false, point=1, updated_at=now() WHERE id='01986079-902e-7b27-809d-9554a9b6b7f7';
UPDATE questions SET explanation='DIKETAHUI:
- Data nilai ulangan (11 data, sudah urut): 45, 50, 55, 60, 60, 65, 65, 65, 70, 75, 80.
- Satu nilai 90 ditambahkan sehingga menjadi 12 data.

DITANYAKAN:
Perubahan modus, median, dan rata-rata setelah nilai 90 ditambahkan.

JAWAB:
1. Data awal (n = 11):
   - Modus: 65 muncul 3 kali (paling sering). Modus = 65.
   - Median: data ke-(11 + 1)/2 = data ke-6 = 65.
   - Jumlah = 45 + 50 + 55 + 60 + 60 + 65 + 65 + 65 + 70 + 75 + 80 = 690.
   - Rata-rata = 690 ÷ 11 ≈ 62,73.
2. Data baru (n = 12): 45, 50, 55, 60, 60, 65, 65, 65, 70, 75, 80, 90.
   - Modus: 65 tetap muncul 3 kali, 90 hanya 1 kali. Modus = 65 (tetap).
   - Median: (data ke-6 + data ke-7) ÷ 2 = (65 + 65) ÷ 2 = 65 (tetap).
   - Jumlah = 690 + 90 = 780. Rata-rata = 780 ÷ 12 = 65 (naik dari 62,73).
3. Alasan logis: 90 lebih besar dari rata-rata lama, sehingga rata-rata pasti naik; data ke-6 dan ke-7 sama-sama 65, sehingga median tetap.
Jadi, jawaban yang tepat adalah (A) Modus dan median tidak berubah, rata-rata bertambah.
Mengapa opsi lain kurang tepat:
- (B) Modus dan median tidak bertambah; keduanya tetap 65.
- (C) Rata-rata justru naik, dan modus tidak berubah.
- (D) Modus dan median tetap, sedangkan rata-rata berubah; kebalikan dari pernyataan ini.
- (E) Rata-rata berubah dari ≈62,73 menjadi 65, jadi tidak benar bahwa ketiganya tetap.', updated_at=now() WHERE id='01986079-901f-7de5-9b85-8ec96fda26fb';
UPDATE answers SET description='Beberapa pemuda berprestasi berasal dari Jakarta', is_correct=false, point=1, updated_at=now() WHERE id='a28a152d-5380-4445-b85b-7c4b2ddbdd17';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('96d8b3b2-eb79-44f9-8811-6209705b6f2d','a314c17c-3f2d-4f62-8bd3-3572433b0f02','Tidak dapat ditarik simpulan yang pasti benar',true,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Premis 1: Semua pemuda berprestasi adalah mahasiswa.
- Premis 2: Beberapa mahasiswa berasal dari Jakarta.
- Soal meminta simpulan yang PASTI BENAR.

DITANYAKAN:
Simpulan yang pasti benar dari kedua premis.

JAWAB:
1. Misalkan P = pemuda berprestasi, M = mahasiswa, J = berasal dari Jakarta.
2. Premis 1: P berada seluruhnya di dalam M.
3. Premis 2: sebagian M beririsan dengan J.
4. Uji kemungkinan diagram:
   a. Kemungkinan 1: mahasiswa asal Jakarta berada di dalam P → ada pemuda berprestasi dari Jakarta.
   b. Kemungkinan 2: mahasiswa asal Jakarta seluruhnya di luar P → tidak ada pemuda berprestasi dari Jakarta.
5. Kedua gambar memenuhi premis, tetapi hasilnya berbeda. Jadi "Beberapa pemuda berprestasi berasal dari Jakarta" hanya MUNGKIN benar.
6. Pola "Semua P adalah M" + "Beberapa M adalah J" tidak menghasilkan simpulan pasti tentang P dan J (term tengah M tidak tersebar).
Jadi, jawaban yang tepat adalah (E) Tidak dapat ditarik simpulan yang pasti benar.
Mengapa opsi lain kurang tepat:
- (A) Hanya benar pada kemungkinan 1; tidak pasti.
- (B) Membalik premis 1; "semua P adalah M" tidak berarti "semua M adalah P".
- (C) Bertentangan langsung dengan premis 1.
- (D) Terlalu luas; bahkan "beberapa" pun tidak pasti, apalagi "semua".', updated_at=now() WHERE id='a314c17c-3f2d-4f62-8bd3-3572433b0f02';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('27291ef5-fdb3-4acf-889b-3815e4e49be8','467bb1f4-c89c-4687-a356-c5b4e547c7a4','She doesn''t likes coffee.',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Soal meminta memilih kalimat yang benar.
- Subjek She = orang ketiga tunggal; kata kerja like.
- Opsi: She don''t like coffee; She doesn''t like coffee; She not like coffee; She no like coffee; She doesn''t likes coffee.

DITANYAKAN:
Kalimat negatif simple present yang benar untuk subjek She.

JAWAB:
1. Rumus negatif simple present dengan kata kerja biasa: Subject + do/does + not + V1.
2. Subjek She memakai does, sehingga negatifnya doesn''t (does not).
3. Setelah doesn''t, kata kerja memakai bentuk dasar (like), tidak ditambah s.
4. Hasil: She doesn''t like coffee. Artinya: "Dia tidak suka kopi."
Jadi, jawaban yang tepat adalah (B) She doesn''t like coffee.
Mengapa opsi lain kurang tepat:
- (A) She don''t like coffee: don''t hanya untuk I, you, we, they.
- (C) She not like coffee: not tidak dapat langsung di depan kata kerja biasa tanpa do/does.
- (D) She no like coffee: no dipakai di depan kata benda (no coffee), bukan untuk menegasikan kata kerja.
- (E) She doesn''t likes coffee: setelah doesn''t, kata kerja harus bentuk dasar (like); likes membuat s ganda.', updated_at=now() WHERE id='467bb1f4-c89c-4687-a356-c5b4e547c7a4';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('c4fb3f15-77fe-45ae-a27c-37a64d7f2594','61f9f5a9-1fe2-40b0-8604-cd96f3495979','Perpustakaan : Buku',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Pasangan acuan: KANTOR : PEKERJA.
- Kantor adalah tempat orang bekerja; pekerja adalah orang yang bekerja di kantor.
- Pola: tempat kerja : orang yang bekerja di tempat itu.

DITANYAKAN:
Pasangan kata yang hubungannya sama dengan KANTOR : PEKERJA.

JAWAB:
1. Rumuskan relasinya: "Kantor adalah tempat pekerja bekerja."
2. Uji setiap opsi dengan kalimat "X adalah tempat Y bekerja":
   - (A) Rumah : Tidur. Tidur adalah KEGIATAN, bukan orang.
   - (B) Sekolah : Guru. Sekolah adalah tempat guru bekerja. Pola sama.
   - (C) Rumah Sakit : Pasien. Pasien adalah orang yang DILAYANI, bukan yang bekerja.
   - (D) Restoran : Makanan. Makanan adalah BENDA yang disajikan.
   - (E) Perpustakaan : Buku. Buku adalah BENDA koleksi, bukan orang yang bekerja.
3. Pekerja dan guru sama-sama orang yang bekerja di tempat tersebut.
Jadi, jawaban yang tepat adalah (B) Sekolah : Guru.
Mengapa opsi lain kurang tepat:
- (A) Tidur adalah kegiatan, bukan orang.
- (C) Pasien adalah orang yang dilayani, bukan yang bekerja.
- (D) Makanan adalah benda yang dijual.
- (E) Buku adalah benda yang disimpan di perpustakaan, bukan orang yang bekerja.', updated_at=now() WHERE id='61f9f5a9-1fe2-40b0-8604-cd96f3495979';
UPDATE answers SET description='Mewajibkan seluruh operator mengganti armadanya dengan kendaraan listrik dalam satu tahun disertai sanksi bagi yang menolak.', is_correct=false, point=1, updated_at=now() WHERE id='019b139a-84df-7704-87ec-01bad2ba40e0';
UPDATE answers SET description='Menunda program kendaraan listrik sampai harga kendaraan listrik di pasaran turun dengan sendirinya.', is_correct=false, point=1, updated_at=now() WHERE id='019b139a-84e2-7440-af19-bb4e26188ce5';
UPDATE answers SET description='Mengadakan kampanye publik tentang manfaat energi bersih agar masyarakat mendesak operator beralih ke kendaraan listrik.', is_correct=false, point=1, updated_at=now() WHERE id='019b139a-84e7-766b-91c1-fc7b7c369f31';
UPDATE questions SET explanation='DIKETAHUI:
- Provinsi merencanakan reformasi transportasi dengan memperbanyak armada kendaraan listrik untuk angkutan umum.
- Sebagian besar operator menolak karena biaya perawatan dianggap tidak pasti dan infrastruktur pengisian daya masih terbatas.

DITANYAKAN:
Kebijakan paling realistis untuk mempercepat penerimaan operator.

JAWAB:
1. Penolakan operator memiliki dua alasan: ketidakpastian biaya perawatan dan keterbatasan infrastruktur pengisian daya. Kebijakan yang realistis harus langsung meredakan kekhawatiran operator, terutama risiko finansial yang menjadi pertimbangan utama pelaku usaha.
2. Opsi A: skema jaminan biaya perawatan awal dan transparansi komponen servis. Ini langsung menghapus ketidakpastian biaya, mengurangi risiko finansial operator pada masa transisi, dan dapat segera diterapkan.
3. Opsi B: menambah stasiun pengisian daya bertahap pada rute tersibuk. Menjawab alasan kedua, tetapi bersifat bertahap dan hasilnya lebih lambat dirasakan.
4. Opsi C: kewajiban dan sanksi bersifat memaksa, tidak menjawab kekhawatiran operator, dan justru memperbesar penolakan.
5. Opsi D: menunda program bertentangan dengan tujuan mempercepat penerimaan.
6. Opsi E: kampanye publik tidak menyentuh dua alasan penolakan operator.
Jadi, jawaban yang tepat adalah (A) Menyediakan skema jaminan biaya perawatan awal dan memastikan transparansi komponen servis kendaraan listrik kepada operator.
Mengapa opsi lain kurang tepat:
- (B) Penambahan stasiun pengisian daya secara bertahap bersifat jangka lebih panjang sehingga kurang mempercepat penerimaan.
- (C) Pemaksaan dengan sanksi tidak mengatasi kekhawatiran biaya dan infrastruktur, sehingga memicu resistensi.
- (D) Menunda program berlawanan dengan tujuan percepatan.
- (E) Tekanan publik tidak menyelesaikan masalah biaya perawatan maupun infrastruktur yang menjadi alasan penolakan.', updated_at=now() WHERE id='019b139a-84d7-743b-a86c-fca2ea6f0546';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('a3637436-1357-481a-a6e5-70be5425ce18','ed2aee26-3c03-4a2b-9174-45ada64dc05f','Ardi mungkin tidak memiliki NIM',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Premis 1: Semua mahasiswa pasti memiliki nomor induk mahasiswa (NIM).
- Premis 2: Sebagian mahasiswa yang memiliki NIM juga memiliki kartu rencana studi (KRS).
- Premis 3: Ardi adalah seorang mahasiswa.

DITANYAKAN:
Kesimpulan yang paling tepat tentang Ardi.

JAWAB:
1. Dari premis 1 dan 3: semua mahasiswa memiliki NIM, Ardi mahasiswa → Ardi PASTI memiliki NIM.
2. Dari premis 2: hanya "sebagian" pemilik NIM yang memiliki KRS; tidak disebutkan Ardi termasuk bagian yang mana.
3. Jadi untuk KRS ada dua kemungkinan: Ardi memiliki KRS atau tidak. Yang aman adalah "mungkin memiliki KRS".
4. Gabungan yang tepat: Ardi pasti memiliki NIM dan mungkin memiliki KRS.
Jadi, jawaban yang tepat adalah (C) Ardi pasti memiliki NIM dan mungkin memiliki KRS.
Mengapa opsi lain kurang tepat:
- (A) "Pasti memiliki KRS" tidak sah karena hanya sebagian pemilik NIM yang memiliki KRS.
- (B) Bertentangan dengan premis 1; semua mahasiswa memiliki NIM.
- (D) Tidak dapat dipastikan; Ardi bisa saja termasuk yang memiliki KRS.
- (E) Bertentangan dengan premis 1; kepemilikan NIM bagi Ardi sudah pasti, bukan sekadar mungkin.', updated_at=now() WHERE id='ed2aee26-3c03-4a2b-9174-45ada64dc05f';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('deb4f29a-e5e0-4577-a5fb-6e9a570b1ea9','3fb2926c-51e8-416a-bc2e-83397c8acee4','has been',false,1,now()+interval '1 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Kalimat: "Yesterday, the information ___ very useful for the research." (Kemarin, informasi itu ... sangat berguna untuk penelitian.)
- Subjek: the information, kata benda tak terhitung (uncountable) sehingga tunggal.
- Keterangan waktu: yesterday = lampau.
- Opsi: were, was, is, are, has been.

DITANYAKAN:
Bentuk to be yang tepat untuk subjek tunggal tak terhitung dalam waktu lampau.

JAWAB:
1. Information tidak punya bentuk jamak dan memakai kata kerja tunggal.
2. Keterangan yesterday menuntut bentuk lampau (simple past).
3. To be lampau tunggal adalah was.
4. Kalimat: Yesterday, the information was very useful for the research.
Jadi, jawaban yang tepat adalah (B) was.
Mengapa opsi lain kurang tepat:
- (A) were: lampau tetapi jamak; information tunggal.
- (C) is: tunggal tetapi present; tidak cocok dengan yesterday.
- (D) are: jamak dan present; salah pada kedua aspek.
- (E) has been: present perfect tidak dipakai bersama keterangan waktu lampau tertentu seperti yesterday.', updated_at=now() WHERE id='3fb2926c-51e8-416a-bc2e-83397c8acee4';
UPDATE answers SET description='378 cm³', is_correct=false, point=1, updated_at=now() WHERE id='019a6927-5136-7ebb-92fa-b52bba8169cc';
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('1d3f9eaf-8baa-4234-a522-c6b0eba663a7','019a6927-5136-7975-adc1-88fc83ca86e8','216 cm³',false,1,now()+interval '1 second',now());
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('274e8b3c-5129-4e6c-920a-9d803eba0e1f','019a6927-5136-7975-adc1-88fc83ca86e8','512 cm³',false,1,now()+interval '2 second',now());
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('91f3082e-2c44-4922-96e9-1bfb94745da8','019a6927-5136-7975-adc1-88fc83ca86e8','296 cm³',true,1,now()+interval '3 second',now());
INSERT INTO answers (id,question_id,description,is_correct,point,created_at,updated_at) VALUES ('1f2e9b0d-e8b4-4b9e-9139-e665de825f6c','019a6927-5136-7975-adc1-88fc83ca86e8','37 cm³',false,1,now()+interval '4 second',now());
UPDATE questions SET explanation='DIKETAHUI:
- Dua kubus memiliki perbandingan panjang rusuk 3 : 4.
- Panjang rusuk kubus yang lebih kecil = 6 cm.

DITANYAKAN:
Selisih volume kedua kubus.

JAWAB:
1. Rusuk kubus besar: 6 : r = 3 : 4, sehingga r = 6 × 4 : 3 = 24 : 3 = 8 cm.
2. Rumus volume kubus: V = r × r × r = r³.
3. Volume kubus kecil = 6 × 6 × 6 = 216 cm³.
4. Volume kubus besar = 8 × 8 × 8 = 512 cm³.
5. Selisih volume = 512 − 216 = 296 cm³.
6. Cek dengan perbandingan volume: 3³ : 4³ = 27 : 64. Satu bagian = 216 : 27 = 8, maka selisih = (64 − 27) × 8 = 37 × 8 = 296 cm³. Sama.
Jadi, jawaban yang tepat adalah (D) 296 cm³.
Mengapa opsi lain kurang tepat:
- (A) 378 cm³: tidak sesuai dengan 512 − 216.
- (B) 216 cm³: volume kubus kecil, bukan selisih.
- (C) 512 cm³: volume kubus besar, bukan selisih.
- (E) 37 cm³: hanya selisih bagian perbandingan volume (64 − 27); belum dikalikan nilai satu bagian (8 cm³).', updated_at=now() WHERE id='019a6927-5136-7975-adc1-88fc83ca86e8';
UPDATE bank_soal b SET
  options = (SELECT jsonb_agg(jsonb_build_object('id',a.id::text,'description',a.description,'isCorrect',a.is_correct,'point',a.point) ORDER BY a.created_at,a.id) FROM answers a WHERE a.question_id=s.question_id),
  explanation = q.explanation, updated_at = now()
FROM bank_soal_sources s JOIN questions q ON q.id=s.question_id
WHERE s.bank_soal_id=b.id AND s.question_id IN ('019b6e3f-2099-711d-ae09-e77dc88fda95','8b7a27ee-92ff-4dab-ab1d-1fe0d83a9a33','9b4be7dc-4e2b-458d-87d4-c786996d10eb','019ad58c-8be5-7027-bbd9-128fcfd13d9f','01986461-e9ca-79e7-9846-9f21c061d17e','019b6e3f-2060-770a-8327-1dd0db3f179d','019b6e3f-20a2-79ac-a0d2-d2ce705e9594','019b6e3f-2077-7900-8c6d-5c493a2581fb','019ad58c-8e70-724a-90a2-05e1c4f0deef','019ae94b-24de-704e-8c56-a3471db5e26b','0199fd77-9319-7630-85a4-30a9de0169d3','019b6e3f-209a-7823-a309-ca4f65b5a49d','019b6e3f-2049-7777-9c28-93cf6e8ae1a1','019b6e3f-2083-771c-8dc5-aab9839abc93','0d396061-2681-4319-84bd-41f0f38b758a','0198612c-bb2a-75e1-a344-a8d132edee4b','09143587-b4ef-476b-820d-bfaea58a2bae','98b62b7e-11e3-42d7-9d0d-846a65e805de','0198612c-ba9b-763c-b89c-d667fe348376','f02b4bd7-0e6f-46df-8c97-5d8e19257947','0199fb42-c0dc-7501-a43e-b265bc88b302','019865e9-5256-7d37-a580-8479dde3a9c8','019b139a-8437-7594-b7d4-c9f74004d7f9','6f915592-6c86-4bdc-9913-3b1e856add87','019a23b9-317e-70c7-ba10-3af9538d6846','019b6e3f-20a0-7ef4-b6b1-2789bf9a50d6','cd79bb4b-30d7-4d92-b3f4-b7c6d9a94b8d','019ad9f5-1275-7cd1-8267-908dd92828a0','a0e8f46d-0ac2-4ebd-859e-06cabf5c522a','019983d1-8de4-7907-9c97-080f2c54a126','a948fab0-18e3-4247-ab6d-b2dc0c88fc69','019983d1-695b-7acf-9f1b-7f638db346d0','019b5ef7-08ed-73e3-8eff-db183406f292','23cf2f73-57bc-40a0-bd5c-651e773672b0','da4ff54c-ea5d-4080-bfd8-b414cc67a6c5','b82efdae-9e6e-4406-a111-766f1d0bd513','019ad749-7862-7d8d-a074-01074209d203','019b5ef7-08fd-7573-8cba-42468258a25a','7deb9a83-cb17-4634-9899-885085468eae','019b6e3f-209f-76a5-b4ec-f37b98649c5f','019cf46c-3c99-7b10-b6d2-59050e1ad036','f0243739-9912-449c-9f67-4a6d37eb436c','daef8e64-f165-4c30-a35c-25daea6b3b4f','9d9c172a-487e-4769-9062-398bf24ec73b','019b5ef7-0904-7245-b18e-10313b62932b','019b6e3f-206f-7576-b8ba-ff231938bbeb','291857ad-af71-4741-a912-deb2d2993902','671539b6-d076-45fc-bbbe-29afaa5b8c05','019865d5-048a-7b8e-a0ca-85f22825d507','019ae47c-82ea-72ed-a263-726657ecc0a9','019cf46c-3c9a-747a-a2d5-9c1b277a02fb','019b0657-ebbd-7a86-bc2d-2c74ea53ccfc','019b6e3f-209c-74ca-b76e-477ee542b822','d8ab9329-144e-4e18-aa11-1a79137ffb0f','949dbe6d-ef86-4c46-b468-87ce2de77c0f','019a6927-5164-7976-91a9-ec7cac886123','019a6927-5137-74e9-8349-f08a79bef075','019a23b9-31a5-7d9d-a359-be7e3f79bf9f','01986079-901f-7de5-9b85-8ec96fda26fb','a314c17c-3f2d-4f62-8bd3-3572433b0f02','467bb1f4-c89c-4687-a356-c5b4e547c7a4','61f9f5a9-1fe2-40b0-8604-cd96f3495979','019b139a-84d7-743b-a86c-fca2ea6f0546','ed2aee26-3c03-4a2b-9174-45ada64dc05f','3fb2926c-51e8-416a-bc2e-83397c8acee4','019a6927-5136-7975-adc1-88fc83ca86e8')
  AND s.question_id = (SELECT min(s2.question_id::text)::uuid FROM bank_soal_sources s2 WHERE s2.bank_soal_id=b.id AND s2.question_id IN ('019b6e3f-2099-711d-ae09-e77dc88fda95','8b7a27ee-92ff-4dab-ab1d-1fe0d83a9a33','9b4be7dc-4e2b-458d-87d4-c786996d10eb','019ad58c-8be5-7027-bbd9-128fcfd13d9f','01986461-e9ca-79e7-9846-9f21c061d17e','019b6e3f-2060-770a-8327-1dd0db3f179d','019b6e3f-20a2-79ac-a0d2-d2ce705e9594','019b6e3f-2077-7900-8c6d-5c493a2581fb','019ad58c-8e70-724a-90a2-05e1c4f0deef','019ae94b-24de-704e-8c56-a3471db5e26b','0199fd77-9319-7630-85a4-30a9de0169d3','019b6e3f-209a-7823-a309-ca4f65b5a49d','019b6e3f-2049-7777-9c28-93cf6e8ae1a1','019b6e3f-2083-771c-8dc5-aab9839abc93','0d396061-2681-4319-84bd-41f0f38b758a','0198612c-bb2a-75e1-a344-a8d132edee4b','09143587-b4ef-476b-820d-bfaea58a2bae','98b62b7e-11e3-42d7-9d0d-846a65e805de','0198612c-ba9b-763c-b89c-d667fe348376','f02b4bd7-0e6f-46df-8c97-5d8e19257947','0199fb42-c0dc-7501-a43e-b265bc88b302','019865e9-5256-7d37-a580-8479dde3a9c8','019b139a-8437-7594-b7d4-c9f74004d7f9','6f915592-6c86-4bdc-9913-3b1e856add87','019a23b9-317e-70c7-ba10-3af9538d6846','019b6e3f-20a0-7ef4-b6b1-2789bf9a50d6','cd79bb4b-30d7-4d92-b3f4-b7c6d9a94b8d','019ad9f5-1275-7cd1-8267-908dd92828a0','a0e8f46d-0ac2-4ebd-859e-06cabf5c522a','019983d1-8de4-7907-9c97-080f2c54a126','a948fab0-18e3-4247-ab6d-b2dc0c88fc69','019983d1-695b-7acf-9f1b-7f638db346d0','019b5ef7-08ed-73e3-8eff-db183406f292','23cf2f73-57bc-40a0-bd5c-651e773672b0','da4ff54c-ea5d-4080-bfd8-b414cc67a6c5','b82efdae-9e6e-4406-a111-766f1d0bd513','019ad749-7862-7d8d-a074-01074209d203','019b5ef7-08fd-7573-8cba-42468258a25a','7deb9a83-cb17-4634-9899-885085468eae','019b6e3f-209f-76a5-b4ec-f37b98649c5f','019cf46c-3c99-7b10-b6d2-59050e1ad036','f0243739-9912-449c-9f67-4a6d37eb436c','daef8e64-f165-4c30-a35c-25daea6b3b4f','9d9c172a-487e-4769-9062-398bf24ec73b','019b5ef7-0904-7245-b18e-10313b62932b','019b6e3f-206f-7576-b8ba-ff231938bbeb','291857ad-af71-4741-a912-deb2d2993902','671539b6-d076-45fc-bbbe-29afaa5b8c05','019865d5-048a-7b8e-a0ca-85f22825d507','019ae47c-82ea-72ed-a263-726657ecc0a9','019cf46c-3c9a-747a-a2d5-9c1b277a02fb','019b0657-ebbd-7a86-bc2d-2c74ea53ccfc','019b6e3f-209c-74ca-b76e-477ee542b822','d8ab9329-144e-4e18-aa11-1a79137ffb0f','949dbe6d-ef86-4c46-b468-87ce2de77c0f','019a6927-5164-7976-91a9-ec7cac886123','019a6927-5137-74e9-8349-f08a79bef075','019a23b9-31a5-7d9d-a359-be7e3f79bf9f','01986079-901f-7de5-9b85-8ec96fda26fb','a314c17c-3f2d-4f62-8bd3-3572433b0f02','467bb1f4-c89c-4687-a356-c5b4e547c7a4','61f9f5a9-1fe2-40b0-8604-cd96f3495979','019b139a-84d7-743b-a86c-fca2ea6f0546','ed2aee26-3c03-4a2b-9174-45ada64dc05f','3fb2926c-51e8-416a-bc2e-83397c8acee4','019a6927-5136-7975-adc1-88fc83ca86e8'));
COMMIT;
