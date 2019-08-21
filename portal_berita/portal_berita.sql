-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 04:10 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_adm` int(10) NOT NULL,
  `user_adm` varchar(20) NOT NULL,
  `pass_adm` varchar(20) NOT NULL,
  `nama_adm` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_adm`, `user_adm`, `pass_adm`, `nama_adm`) VALUES
(1, 'admin', 'qwerty', 'Adi Hidayat'),
(2, 'admin2', 'qwerty', 'Aditya Agus Wisanto'),
(3, 'admin3', 'qwerty', 'Akmal Ardhi Pangestu');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL,
  `id_kategori` int(2) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `isi` longtext NOT NULL,
  `tanggal` date NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `id_adm` int(10) NOT NULL,
  `view` int(11) NOT NULL,
  `stat_berita` int(1) NOT NULL,
  `foto_utama` varchar(255) NOT NULL,
  `jmlh_komen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `judul`, `isi`, `tanggal`, `penulis`, `id_adm`, `view`, `stat_berita`, `foto_utama`, `jmlh_komen`) VALUES
(12, 6, 'Terima Rombongan Komisi V DPR, Rudi Maesyal Minta Percepatan 3 Flyover', '<p style=\"text-align:justify\"><strong>SINDIKAT, Tigaraksa</strong>&nbsp;&ndash; Pemerintah Kabupaten Tangerang meminta dukungan Komisi V DPR RI dalam percepatan pembangunan infrastruktur. Terutama rencana pembangunan jembatan layang (flyover) di tiga titik dan normalisasi sebanyak 26 situ di Kabupaten Tangerang.</p>\r\n\r\n<!--ReadMore-->\r\n\r\n<p style=\"text-align:justify\">Permintaan tersebut disampaikan Sekretaris Daerah Kabupaten Tangerang Moch Maesyal Rasyid saat menerima kunjungan kerja Komisi V DPR RI di Ruang Rapat Wareng, Gedung Sekretariat Daerah Kabupaten Tangerang, Tigaraksa, Selasa (12/3/2019).</p>\r\n\r\n<p style=\"text-align:justify\">Pria yang akrab disapa Rudi Maesyal itu mengatakan, banyak permasalahan yang dihadapi Pemkab Tangerang terkait infrastruktur dan perhubungan. Di antaranya persoalan kemacetan, jaringan jalan tol, dan jalan nasional.</p>\r\n\r\n<p style=\"text-align:justify\">Dia pun meminta pembangunan flyover di Bitung, Pasar Cikupa, dan Cisauk. Di Kecamatan Cisauk, flyover akan dibangun di perlintasan kereta api. Rudi Maesyal berharap pemerintah pusat dapat merealisasikan pembangunan tersebut pada tahun 2020 mendatang.</p>\r\n\r\n<p style=\"text-align:justify\">&ldquo;Kami sangat berharap untuk tahun 2020 terutama pembangunan jalan layang di Bitung kerena DED (detail engineering design) dan feasibility study-nya sudah rampung. Ini sangat mendesak sekali karena itu setiap saat selalu macet,&rdquo; ujar Rudi Maesyal dalam keterangan tertulis.</p>\r\n\r\n<p style=\"text-align:justify\">Di samping itu, ada sebanyak 26 situ atau waduk di Kabupaten Tangerang yang menjadi kewenangan pemerintah pusat. Menurut Rudi Maesyal, 26 situ tersebut perlu dilakukan normalisasi dalam waktu cepat.</p>\r\n\r\n<p style=\"text-align:justify\">Diketahui, rombongan Komisi V DPR RI dipimpin politikus Partai Golkar, Ibnu Munzir. Pada kesempatan itu dia berjanji untuk menyampaikan semua permasalahan infrastruktur dan perhubungan di Kabupaten Tangerang kepada kementerian terkait.</p>\r\n\r\n<p style=\"text-align:justify\">&ldquo;Kabupaten Tangerang harus menjadi skala prioritas karena daerah ini merupakan penyangga ibu kota, mumpung belum terlambat. Jangan seperti Depok dan Bekasi yang sudah terlambat. Maka dari itu harus kita prioritaskan betul dan perhatikan,&rdquo; ucap Ibnu. (<strong>rls</strong>/<strong>srh</strong>)</p>\r\n', '2019-03-12', 'Adi Hidayat', 1, 0, 1, '314Kunker-Komisi-V-DPR-RI.jpeg', 0),
(21, 2, 'Tangsel Genjot Potensi Wisata Belanja', 'Sebagai kota perdagangan dan jasa, sektor perekonomian Kota Tangerang Selatan salah satunya ditopang oleh geliat pusat perbelanjaan.\r\n\r\nDalam dua tahun terakhir, terjadi peningkatan jumlah pengunjung ke pusat perbelanjaan di Tangsel, dari angka dibawah satu juta pengunjung pada tahun 2017 menjadi 1,3 juta pengunjung pada tahun 2018.\r\n\r\nHal itu mengemuka saat Wali Kota Tangsel Airin Rachmy Diani mengunjungi salah satu pusat perbelanjaan di Tangsel, ITC BSD. Kehadiran orang nomor satu di Tangsel itu di lokasi tersebut untuk menghadiri Festival Imlek 2019.\r\n\r\nDalam kesempatan itu, Airin menyinggung soal tantangan pusat perbelanjaan di era digital market ini. Airin menyebut, saat ini terjadi pergeseran perilaku masyarakat soal berbelanja yang lebih memilih online dibanding berbelanja offline seperti datang ke ITC BSD ini. \r\n\r\n\"Tetapi tetap prinsipnya bagi saya, bahwa online sekarang memang ada dimana-mana, tapi suatu saat masyarakat akan kembali pada offline (datang ke pusat perbelanjaan),\" jelasnya. \r\n\r\nMenurutnya, antara kedua pilihan itu memiliki plus dan minusnya masing-masing. \"Online bisa cepat, mudah, dan bisa milih kapanpun di manapun, sedangkan offline dibatasi dengan waktu tetapi bisa coba baju, atau barangnya. Kalau online kadang gambar tidak sama dengan aslinya,\" ujar Airin. \r\n\r\nAirin mengapresiasi kepada para pengelola pusat perbelanjaan karena terus berinovasi ditengah tumbuhnya pula berbagai toko online.\r\n\r\n\"Terimakasih untuk terus mendorong agar ada pertumbuhan ekonomi yang luar biasa di Tangsel. Karena kita sadari betul, Tangsel adalah wilayah perdagangan dan jasa,\" tukasnya. \r\n\r\nDitambahkan Kepala Dinas Pariwisata, Judianto bahwa pihaknya telah melakukan kerjasama dengan pusat perbelanjaan untuk mengadakan beberapa festival, salah satunya dengan ITC BSD. \r\n\r\n\"Rencana ada festival burung, festival clothing, dan pasar rakyat. Pasar rakyat dilaksanakan nanti saat HUT Tangsel,\" ungkapnya. \r\n\r\nJudianto berharap, dari digelarnya berbagai festival itu, jumlah kunjungan ke pusat perbelanjaan meningkat.\r\n\r\n\"Jumlah kunjungan berjumlah 1,3 juta pada tahun 2018, dan pada tahun 2017 dibawah satu juta. Sedangkan target untuk tahun 2019, yakni naik 10 persen,\" bebernya.', '2019-02-07', 'Aditya Agus Wisanto', 0, 0, 0, 'barongsai.jpg', 0),
(28, 3, 'Aksi Freestyle Polisi Pukau Peserta Kampanye Lantas di Cikupa', 'Berbagai atraksi keterampilan ditampilkan saat digelar Millenial Safety Road Festival di Mardigrass, Citra Raya, Panongan, Minggu (17/3/2019).\r\n\r\nBeberapa atraksi yang menarik perhatian peserta tersebut adalah freestyle roda dua dan pementasan musik band.\r\n\r\nBerbagai komunitas sepeda motor turut ambil bagian untuk menunjukkan kemampuan mereka mengendarai roda dua dengan beragam gaya, salah satunya adalah komunitas CRX Street Bike Extrem.\r\n\r\n\"Kami ingin menunjukkan kepada kaum milenial lainnya, bahwa anak motor itu tidak selalu identik dengan balap liar, tapi juga ada kegiatan positif lainnya,\" ungkap Dewantoro, ketua komunitas yang sudah berkiprah sejak tahun 2010 itu.\r\n\r\nDikatakannya, selain mempelajari keterampilan freestyle, kegiatan yang terbilang ekstrem dan berbahaya itu juga turut memupuk mental, diantaranya disiplin dan keberanian.\r\n\r\n\"Kami selalu menekankan kepada anggota komunitas dan lainnya, bahwa disiplin berlalu lintas itu wajib. Seperti halnya kita melengkapi diri dengan berbagai alat pengaman saat melakukan freestyle,\" bebernya.\r\n\r\nSelain kaum milenial, personel kepolisian pun tidak ingin ketinggalan untuk unjuk kebolehan mengendalikan kuda besi itu, salah satunya Kapolsek Tigaraka Kompol Dodid Prastowo.\r\n\r\nPria yang dikenal menggandrungi musik dan otomotif itu juga terjun di lokasi memacu gas roda sepeda motornya dengan beberapa aksi freestyle.\r\n\r\n\"Saya menganggapnya ini olahraga, digandrungi kaum milenial, sehingga kami perlu juga turut hadir di tengah-tengah mereka,\" ungkapnya.\r\n\r\nIa juga mengatakan, dibandingkan memilih menunjukkan kemampuan melalui balap liar, kaum milenial lebih baik unjuk kemampuan melalui aksi freestyle. Menurutnya, kegiatan ini jauh lebih positif.\r\n\r\n\"Kalau sudah benar-benar ahli dan profesional kan bisa ikut kejuaraan, bahkan bisa keliling dunia,\" tambah Dodid yang juga unjuk kemampuan memainkan alat musik drum di kegiatan tersebut.', '2019-03-17', 'Aditya Agus Wisanto', 0, 0, 0, 'motor.jpg', 0),
(30, 1, 'Icon Walk Hadir di Tengah Kota Tangerang, Persaingan Pusat Belanja Makin Sengit', 'Persaingan pusat perbelanjaan modern di Kota Tangerang semakin sengit. Mall terbaru, Ikon Walk hadir di tengah-tengah pusat kota dan diyakini sebagai penggebrak konsumennya.\r\n\r\nSejak dibuka pada 9 Mei 2018 kemarin, Icon Walk langsung membuat serangkaian acara yang dengan mengundang musisi terkemuka dan berhasil menyedot perhatian publik.\r\n\r\nMall yang merupakan persembahan dari PT Adhi Persada Properti ini mengusung konsep hiburan keluarga yakni lifestyle dan entertainment.\r\n\r\nProject Director Icon Walk Tubagus Asep Chairuman mengatakan, wilayah Tangerang merupakan pasar yang sangat potensial dengan laju pertumbuhan penduduk dan ekonomi yang cukup pesat.\r\n\r\n\"Saat ini, kebutuhan masyarakat terhadap pusat belanja modern tidak terelakkan. Tentu, ini menjadi hal yang positif,\" ujarnya, Sabtu (12/5/2018).\r\n\r\nTidak hanya mengedepankan penjualan. Mall yang terletak di pertengahan kota ini di Jalan Merdeka, No 1, Cimone, Karawaci, juga menawarkan banyak hiburan bagi keluarga kelas menengah ke bawah.\r\n\r\n\"Kami juga menggandeng banyak pelaku UMKM di Kota Tangerang. Saat ini sedikitnya sudah ada 20 pelaku UMKM yang bergabung dan masih ada ratusan tempat lagi bagi pelaku UMKM,\" ucap Asep.\r\n\r\nMenurutnya, konsep yang ditawarkan Icon Walk sangatlah berbeda dengan mall pada umumnya.\r\n\r\nSejumlah tenant atau penyewa yang menjadi unggulan dari mall ini cukup lengkap untuk memenuhi kebutuhan keluarga.\r\n\r\nTenant tersebut telah hadir mewarnai mall baru ini seperti toko buku, bioskop, pusat kuliner dan pusat belanja pakaian. \r\n\r\n\"Kami juga menyediakan hiburan gratis bagi para pengunjung, setiap Jumat dan Sabtu. Sudah banyak komunitas di Kota Tangerang yang siap mengisi acara. Dan tentu kami merangkul semua kepentingan,\" imbuh Asep.\r\n\r\nMenurut Leasing Manager Icon Walk Gery Tito, berdasarkan survei, dalam satu bulan warga Kota Tangerang pasti menghilangkan rasa penatnya dengan pergi ke mall.\r\n\r\nDan Icon Walk, tentu menjadi pilihan bagi keluarga yang ingin menghabiskan waktunya dengan berlibur.\r\n\r\n\"Biasanya, mereka ke mall bukan hanya untuk belanja. Tetapi juga untuk liburan. Di sini, kami menawarkan tempat belanja sekaligus hiburan bagi keluarga. Terutama yang dari kelas menengah,\" tuturnya.\r\n\r\nTerlebih, banyak hiburan yang tersedia saat pembukaan seperti konser musisi terkemuka di Indonesia, Ello dan Nia Hamidah, pada hari ini dan esok. Dipastikan, banyak warga Kota Tangerang yang akan menyambanginya.\r\n\r\n\"Dengan konsep baru yang kami tawarkan, saya yakin Icon Walk bisa bersaing dalam bisnis belanja modern di Kota Tangerang. Pastinya, tanpa menggusur dan mengancam pasar tradisonal,\" paparnya.', '2018-05-13', 'Aditya Agus Wisanto', 0, 0, 0, 'iconwalk.jpg', 0),
(31, 5, 'Sampah Sisa Makanan Berserakan di Pasar Lama Tangerang', 'Sampah masih menjadi persoalan di Kota Tangerang. Salah satu penyebabnya adalah kurangnya kesadaran masyarakat.\r\n\r\nPemandangan sampah yang berserakan memang sangat mudah ditemui di Kota Tangerang. Di kawasan Kuliner Pasar Lama, misalnya. Pandangan tak sedap mewarnai pusat kuliner yang setiap malam ramai dikunjungi.\r\n\r\nSampah-sampah plastik dan bungkus makanan tampak berserakan di sepanjang jalan kisamaun pada Sabtu (16/3/2019) malam.\r\n\r\nMenurut seorang pedagang bernama Anwar, sampah biasanya berserakan saat aktifitas pusat kuliner menjelang tutup.\r\n\r\n\"Setiap hari (malam) juga berserakan di mana-mana,\" kata Anwar kepada TangerangNews.\r\n\r\nIa mengelak jika sampah yang berserakan ini berasal dari para pedagang.\r\n\r\nMenurutnya, sampah-sampah itu berasal dari pecinta kuliner yang membuangnya dengan sembarangan usai menyantap makanan.\r\n\r\n\"Ya bukan dari pedagang ini mah. Soalnya walaupun dari kita, pas tutup selalu dibersihin,\" ucap dia.\r\n\r\nPadahal, sampah masih saja tetap berserakan walaupun gerobak-gerobak pedagang sudah tak berjualan.\r\nBerdasarkan pantauan TangerangNews, sebagian pedagang merapihkan sampah di area berjualannya. Sebagian lagi, ada yang acuh dengan sampah.\r\n\r\nRubby, pengunjung di pasar lama merasa terganggu ketika menyantap makanan sambil memandang sampah.\r\n\r\n\"Dibilang terganggu sih terganggu. Orang makan masa ada sampah, sambil liat sampah. Kan sampah ada baunya juga,\" kata pria asal Palembang ini.\r\n\r\nSementara itu, Ketua Forum Hijau Kota Tangerang Oktian Jaya Wiguna menuturkan, sampah adalah tanggung jawab bersama.\r\n\r\nMenurutnya, mengatasi sampah tidak hanya dilakukan pemerintah. Masyarakat pun harus terlibat dalam kepedulian lingkungan.\r\n\r\n\"Kita harus sosialisasi bersama bahwa yang digencarkan adalah sampah tanggung jawab bersama,\" tuturnya.\r\n\r\nIa menambahkan intinya bicara soal sampah butuh kesadaran dan kerja sama dari semua pihak.\r\n\r\nWilayah pun tidak hanya memberi laporan adanya sampah menumpuk. Karena sangat percuma jika saat ini menumpuk dan diangkut, kemudian menumpuk lagi.\r\n\r\n\"Wilayah harus bisa bareng-bareng cari solusi supaya permasalahan sampah agar bisa ditangani dengan baik,\" tukasnya.', '2019-03-17', 'Aditya Agus Wisanto', 0, 0, 0, 'pasarlama.jpg', 0),
(32, 4, 'Dealer MINI Cooper Pertama di Tangerang, Hadir di Gading Serpong', 'MINI Indonesia dan PT Plaza Auto Raya meresmikan dealer MINI pertama di daerah Tangerang, tepatnya di Jalan Raya Boulevard Kavling 5 Nomor 10, Gading Serpong, Tangerang, Jumat (4/5/2018) siang tadi.\r\n\r\nDealer yang berdiri diatas lahan seluas 1.579 meter persegi itu memiliki keunikan tersendiri, dimana konsep designnya mengusung urban modern atau industrial. Hal itu bisa dilihat dari ragam fasilitas di dalamnya yang mencerminkan sesuatu yang istimewa.\r\n\r\n\"Jadi arahnya memang industrial, tapi yang sangat menarik dari MINI ini, dia punya alat, dia punya perlengkapan dan bahan semuanya itu memang mesti premium arahnya, kayu ya kayu, batu ya batu, jadi memang sangat premium,\" jelas Ferdy Purnama, General Manager PT Plaza Auto Raya - MINI Plaza, usai peresmian.\r\n\r\nPlaza MINI sendiri memiliki ragam fasilitas, diantaranya adalah MINI Showroom, MINI Costumer Lounge, MINI One Stop Service, MINI Aftersales Service, MINI Individual Hub, MINI Lifestyle Collection. \r\n\r\nUniknya, semua fasilitas baik meja dan kursi yang disediakan, terbuat dari bahan-bahan serta desain yang menampilkan corak industrial ketimbang dealer pada umumnya.\r\n\r\n\"Gaya dalam bangunan ini ya memang berbeda, dari kursinya, mejanya, temboknya, semua arahnya industrial,\" imbuh Ferdy.\r\n\r\nDari data penjualan, diketahui Indonesia merupakan pasar dengan penjualan MINI terbanyak dibandingkan negara Asia lainnya seperti Singapura, Brunei, Vietnam, Kaledonia Baru, Guam, Sri Lanka, Tahiti, Filipina. Hal ini dianggap luar biasa, lantaran kendaraan MINI baru dipasarkan di Indonesia sejak tahun 2012.\r\n\r\n\"Hadirnya Plaza MINI merupakan komitmen MINI Indonesia dalam meningkatkan performa dan kemudahan akses terhadap seluruh layanan dan ketersediaan kendaraan MINI di tanah air. MINI bukan hanya sekedar brand otomotif, namun merupakan gaya hidup bagi penggemarnya,\" tandasnya.', '2018-05-04', 'Aditya Agus Wisanto', 0, 0, 0, 'mini.jpg', 0),
(33, 7, 'Pose Dua Jari, Pria Ini \'Disemprot\' Kapolresta Tangerang', 'Kapolresta Tangerang Kombes Pol Sabilul Alif dibuat berang oleh ulah salah satu peserta Millenial Safety Road Festival yang digelar di Mardigrass, Citra Raya, Minggu (17/3/2019).\r\n\r\nPemicunya karena ada salah satu peserta berfoto bersama dengan Sabilul sambi menunjukkan pose dua jari yang merupakan simbol dukungan politik terhadap calon presiden nomor urut dua.\r\n\r\nMerasa tidak terima oleh ulah pria tersebut, Sabilul pun kemudian memerintahkan personelnya untuk memeriksa yang bersangkutan, lalu menghapus foto tersebut karena khawatir disebarkan melalui media sosial.\r\n\r\nKekhawatiran itu ditegaskannya karena ia adalah aparat penegak hukum yang harus bersikap netral dalam perhelatan Pemilu. Karenanya, tindakan pria tersebut akan berpotensi merusak citra baik dirinya maupun institusi Polri di mata publik.\r\n\r\nKemudian, saat Sabilul memberikan sambutan dalam kegiatan itu, pria tersebut pun dipanggil olehnya ke atas panggung. Dihadapan peserta, pria itu pun mengakui bahwa dirinya berpose dua jari.\r\n\r\n\"Saya berfoto sama pak Alif dua kali jepretan. Pertama pose biasa, yang kedua pose jempol dan telunjuk,\" ujar pria tersebut.\r\n\r\nMenanggapi pernyataan pria yang tidak disebutkan identitasnya tersebut, Sabilul kemudian bertanya kepada yang bersangkutan untuk mmemastikan bahwa dia seorang relawan.\r\n\r\n\"Betul tidak relawan?,\" tanya Sabilul kepada pria tersbut.\r\n\r\n\"Saya hanya tergabung di grup relawan, tapi tidak pernah kopi darat langsung,\" jawab pria itu.\r\n\r\nAtas kejadian tersebut, Sabilul pun menegaskan bahwa kegiatan Millenila Safety Road Festival itu harus terbebas dari muatan politik, karena ini kegiatan institusi Polri untuk mengajak masyarakat terutama kaum milenial disiplin berlalu lintas.\r\n\r\n\"Saya maafkan dan saya anggap masalah dengan pribadi saya selesai. Saya adalah aparat hukum yang dituntut betul-betul netral. Kalau saya diajak berfoto itu menandakan salah satu paslon, itu sangat berbahaya. Anda sudah menjatuhkan saya, karier saya, institusi dan organisasi saya,\" tegasnya.\r\n\r\nSetelah mendapatkan kata maaf dari Sabilul, peserta tersebut itu pun kemudian turun dari panggung. Sabilul pun meminta, foto pose dua jari di ponsel pintar pria tersebut benar-benar sudah terhapus.', '2019-03-17', 'Aditya Agus Wisanto', 0, 0, 0, 'pose2.jpg', 0),
(38, 7, 'Bawaslu Gandeng Pokja WHTR, Awasi Pemilu 2019', 'Badan Pengawasan Pemilu (Bawaslu) Kota Tangerang menggandeng Kelompok Kerja Wartawan Harian Tangerang Raya (Pokja WHTR) untuk bersama-sama mengawasi pemilihan umum (Pemilu) serentak.\r\n\r\nKetua Bawaslu Kota Tangerang Agus Muslim mengatakan, intensitas politik di Kota Tangerang kian terasa. Mengingat waktu pencoblosan Pilpres dan Pileg tinggal 38 hari lagi.\r\n\r\n\"Kolaborasi dan kerjasama dengan rekan media sangat penting. Jadi sukses pemilu adalah agar bagaimana minimnya pelanggaran. Dengan terus saling berkordinasi kita tetap pada koridor pencegahan,\" ujarnya dalam Media Meeting Pokja WHTR dengan Bawaslu di Sekretariat Pokja WHTR, Senin (11/3/2019).\r\n\r\nMenurutnya, sinergitas dengan stakeholder begitu penting terutama awak media. Demi menjaga pelaksanaan pemilu yang berlangsung tentram dan damai.\r\n\"Kalau kita sudah bergandengan tangan, saya pikir tidak ada yang tidak mungkin. Mudah-mudahan pemilu 2019 bisa kita bersama-sama tuntaskan sebagaimana pemilu kemarin,\" ucapnya.\r\n\r\nSementara itu, Ketua Pokja WHTR Imam Fauzi menuturkan, pada prinsipnya Pokja WHTR berdiri sebagai tempat berhimpun rekan-rekan jurnalis.\r\n\r\nMenurutnya, selain sebagai agen sosial kontrol, wartawan harus memberikan edukasi bagi masyarakat seperti pemberitaan politik.\r\n\r\n\"Apalagi saat ini tahun politik. Untuk itulah kami Pokja WHTR siap bersinergi dengan Bawaslu Kota Tangerang,\" katanya.', '2019-03-11', 'Aditya Agus Wisanto', 0, 0, 0, 'meeting.jpg', 0),
(41, 7, 'RPJMD Disahkan, Dewan Minta Segera Disosialisasikan', 'Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Tangerang menyetujui Rancangan Peraturan Daerah (Raperda) Rencana Pembangunan Jangka Menengah Daerah (RPJMD) Kabupaten Tangerang Tahun 2019-2013 menjadi Perda, Senin (11/3/2019).\r\n\r\nHal itu berlangsung dalam Rapat Paripurna yang dihelat di gedung DPRD Kabupaten Tangerang di lingkup Puspemkab Tangerang, Tigaraksa.\r\n\r\nPihak eksekutif yang diwakili Wakil Bupati Mad Romli dalam sambutannya mengatakan, pengesahan RPJMD yang akan menjadi peta pembangunan lima tahun ke depan di Kabupaten Tangerang itu mencerminkan komitmen bersama antara Pemerintah Daerah dan DPRD Kabupaten Tangerang dalam hal pelayanan kepada masyarakat.\r\n\r\n\"Kita patut bersyukur karena atas kerja keras yang dilakukan oleh pihak legislatif bersama jajaran eksekutif pada akhirnya mencapai hasil (RPJMD) seperti yang kita harapkan bersama,\" ungkapnya.\r\n\r\nDiketahui, sebelum ditetapkan, RPJMD yang merupakan penerjemahan dari janji politik duet kepemimpinan Ahmed Zaki Iskandar dan Mad Romli itu, telah melalui serangkaian proses pembahasan, baik dipihak eksekutif maupun legislatif. Salah satunya studi banding legislatif (Pansus RPJMD) ke Bali beberapa waktu yang lalu.\r\n\r\n\"Saya menyampaikan terima kasih yang sedalam-dalamnya kepada semua pihak, terutama kepada seluruh fraksi DPRD Kabupaten Tangerang yang telah memberikan tanggapan, pandangan, saran, koreksi, serta masukan atas RPJMD Kabupaten Tangerang 2019-2023. Sehingga akhirnya kita semua sampai pada tahap persetujuan,\" beber Romli.\r\n\r\nSementara, Dedi Sutardi selaku Wakil Ketua DPRD Kabupaten Tangerang  mengimbau kepada seluruh Organisasi Perangkat Daerah untuk segera menindaklanjuti dengan menyusun peraturan pelaksanaan atas program kegiatan dalam  RPJMD tersebut.\r\n\r\nDedi juga berharap, masyarakat segera mengetahui isi dari RPJMD itu, sehingga ia meminta segera disosialisasikan.\r\n\r\n\"Segera bentuk dan susun peraturan pelaksana, sehingga program kegiatan yang telah disusun dalam RPJMD ini dapat berjalan efektif sesuai dengan harapan.\" ujar Dedi.', '2019-03-11', 'Aditya Agus Wisanto', 0, 0, 0, 'rapat.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(2) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Entertainment'),
(2, 'Bisnis'),
(3, 'Sports'),
(4, 'Otomotif'),
(5, 'Food and Travel'),
(6, 'News'),
(7, 'Politik');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komen` int(10) NOT NULL,
  `id_user` int(20) NOT NULL,
  `isi_komen` mediumtext NOT NULL,
  `tgl_komen` date NOT NULL,
  `id_berita` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komen`, `id_user`, `isi_komen`, `tgl_komen`, `id_berita`) VALUES
(1, 1, '<p>Test komentar berita apa aja dah, Ada apa tuh rame - rame ?<p>', '2019-03-18', 15);

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `id_statistik` int(20) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `os` varchar(225) NOT NULL,
  `browser` varchar(225) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hits` int(10) NOT NULL,
  `online` varchar(225) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `terakhir_kali` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`id_statistik`, `ip`, `os`, `browser`, `date_create`, `hits`, `online`, `tanggal`, `terakhir_kali`) VALUES
(1, '::1', 'Windows 10', 'Google Chrome v.72.0.3626.119', '2019-03-01 10:52:35', 40, '1551437555', '01 March 2019', '2019-03-01 11:52:35'),
(2, '::1', 'Windows 10', 'Google Chrome v.72.0.3626.119', '2019-03-02 22:47:14', 2, '1551566833', '02 March 2019', '2019-03-02 23:47:13'),
(3, '::1', 'Windows 10', 'Google Chrome v.72.0.3626.119', '2019-03-02 23:54:07', 9, '1551570847', '03 March 2019', '2019-03-03 00:54:07'),
(4, '::1', 'Windows 10', 'Google Chrome v.72.0.3626.119', '2019-03-04 07:40:23', 21, '1551685223', '04 March 2019', '2019-03-04 08:40:23'),
(5, '::1', 'Windows 10', 'Google Chrome v.72.0.3626.121', '2019-03-16 18:33:45', 20, '1552761225', '16 March 2019', '2019-03-16 19:33:45'),
(6, '::1', 'Windows 10', 'Google Chrome v.72.0.3626.121', '2019-03-17 12:48:27', 33, '1552826907', '17 March 2019', '2019-03-17 13:48:27'),
(7, '::1', 'Windows 10', 'Google Chrome v.72.0.3626.121', '2019-03-18 09:02:23', 35, '1552899743', '18 March 2019', '2019-03-18 10:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nm_user` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pemulihan` varchar(30) NOT NULL,
  `tgl_join` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nm_user`, `username`, `password`, `email`, `pemulihan`, `tgl_join`, `status`) VALUES
(1, 'Adi Hidayat', 'adihidayat22', 'qwerty', 'adi.hidayat@raharja.info', '123456', '2019-03-02 23:29:18', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `viewer`
--

CREATE TABLE `viewer` (
  `id_view` int(20) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `total` int(10) NOT NULL,
  `tgl_baca` int(11) NOT NULL,
  `id_berita` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id_statistik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`,`username`);

--
-- Indexes for table `viewer`
--
ALTER TABLE `viewer`
  ADD PRIMARY KEY (`id_view`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_adm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id_statistik` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `viewer`
--
ALTER TABLE `viewer`
  MODIFY `id_view` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
