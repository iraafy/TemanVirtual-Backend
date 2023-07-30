-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 05:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_temanvirtual`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(3) NOT NULL,
  `title` text NOT NULL,
  `artikel` text NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `title`, `artikel`, `thumbnail`) VALUES
(1, 'Pengertian Kesehatan Mental', 'Kesehatan jiwa atau sebutan lainnya kesehatan mental adalah kesehatan yang berkaitan dengan kondisi emosi, kejiwaan, dan psikis seseorang. Perlu kamu ketahui bahwa peristiwa dalam hidup yang berdampak besar pada kepribadian dan perilaku seseorang bisa berpengaruh pada kesehatan mentalnya.\r\n\r\nMisalnya, pelecehan saat usia dini, stres berat dalam jangka waktu lama tanpa adanya penanganan, dan mengalami kekerasan dalam rumah tangga. Berbagai kondisi tersebut bisa membuat kondisi kejiwaan seseorang terganggu, sehingga muncul gejala gangguan kesehatan jiwa. \r\n\r\nAkan tetapi, masalah kesehatan mental bisa mengubah cara seseorang dalam mengatasi stres, berhubungan dengan orang lain, membuat pilihan, dan memicu hasrat untuk menyakiti diri sendiri.\r\n\r\nBeberapa jenis gangguan mental yang umum terjadi antara lain depresi, gangguan bipolar, kecemasan, gangguan stres pasca trauma (PTSD), gangguan obsesif kompulsif (OCD), dan psikosis.\r\n\r\nSelain itu, ada beberapa penyakit mental hanya terjadi pada jenis pengidap tertentu, seperti postpartum depression hanya menyerang ibu setelah melahirkan.', 'pict-1'),
(2, 'Apa Itu Psikolog?', 'Untuk menjadi seorang psikolog, kamu harus mengenyam pendidikan sarjana di Fakultas Psikologi. Setelah itu, kamu harus melanjutkan ke jenjang berikutnya yaitu program profesi untuk mempelajari secara langsung dan mempraktikan kerja psikolog. Bidang pekerjaan psikologi yang paling dekat dengan psikolog adalah psikologi klinik.\r\n\r\nPada bidang ini, psikolog menangani kasus-kasus kejiwaan, mendiagnosis gejala psikologis pasien, dan melakukan psikoterapi sebagai bentuk penanganannya. Itu sebabnya, psikolog berkompeten untuk melakukan beberapa tes psikologi yang kemudian hasilnya diinterpretasikan sebagai jawaban dari masalah yang dialami oleh pasiennya. \r\n\r\nBeberapa tes yang bisa dilakukan oleh seorang psikolog antara lain tes Intelligence Quotient (IQ), minat bakat, tes kepribadian dan lain sebagainya. Sayangnya, psikolog tidak bisa meresepkan obat-obatan, karena dalam menangani kasus kejiwaan mereka berfokus pada terapi psikososial untuk mengendalikan perilaku, pikiran, dan emosi pasien.\r\n\r\nBerbeda dengan psikolog, seseorang yang ingin menjadi psikiater harus menyelesaikan pendidikan kedokteran dan mengambil spesialisasi kejiwaan. Sebab, psikiater adalah spesialisasi dari ilmu kedokteran. \r\n\r\nSetelah mendapatkan sarjana dokter umum, dibutuhkan waktu selama empat tahun untuk menjalani residensi yang dikhususkan dalam bidang psikiatri. Setelah lulus masa residensi, nantinya psikiater bergelar dokter dan Sp.KJ (Spesialis Kesehatan Jiwa).\r\n\r\nSebagai dokter ahli psikiatri, seorang psikiater mengetahui segala hal tentang diagnosis dan perawatan yang bisa dilakukan untuk setiap kondisi psikologis setiap pasien yang cenderung rumit, seperti gangguan bipolar dan skizofrenia.\r\n\r\nDi banyak negara, psikiater adalah pekerjaan legal dan klinis sehingga ia bertanggung jawab atas keseluruhan perawatan kesehatan mental pasien. Itu sebabnya psikiater diperbolehkan dan bertanggung jawab untuk mendiagnosis gangguan mental seorang pasien dan menentukan pengobatan yang mereka lakukan.\r\n\r\nHal ini karena keahlian mereka berfokus pada ketidakseimbangan kimia di dalam otak manusia. Oleh sebabnya, psikiater bisa memberikan resep dan terapi obat-obatan (farmakoterapi), terapi stimulasi otak, pemeriksaan fisik dan laboratorium sesuai dengan kebutuhan para pasien.', 'pict-2'),
(3, 'Pengertian Stress', 'Stres adalah suatu bentuk tekanan fisik dan psikologis yang muncul saat menghadapi kondisi yang terasa berbahaya. Mudahnya, stres adalah cara tubuh memberikan tanggapan atas ancaman, tekanan, dan tuntutan yang muncul. Penyebab stres bisa sangat beragam, mulai dari diri sendiri hingga faktor lingkungan. \r\n\r\nSaat merasakan adanya ancaman, sistem saraf akan memberikan respons dengan cara merilis aliran hormon kortisol dan adrenalin. Kedua jenis hormon ini bisa memicu munculnya reaksi pada tubuh, misalnya jantung yang berdetak lebih cepat, otot tubuh terasa menegang, napas memburu, dan tekanan darah yang mengalami peningkatan. \r\n\r\nBerbagai reaksi yang terjadi ini memiliki istilah respons stres atau “fight-or-flight”. Masalah ini bisa terjadi pada setiap orang, mulai dari anak hingga dewasa. Ketika terjadi tubuh akan menunjukkan sinyal waspada terhadap bahaya dan tantangan tersebut. \r\n\r\nSelain itu, reaksi tubuh yang muncul bisa positif atau negatif. Reaksi yang positif misalnya meningkatnya rasa waspada atau termotivasi ketika menghadapi tantangan. Sementara itu, reaksi negatif muncul dengan tanda kecemasan dan ketakutan, biasanya berbarengan dengan munculnya banyak keluhan fisik. ', 'pict-3');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`id`, `id_user`, `title`, `content`, `timestamp`) VALUES
(1, 1, 'Senangnya', 'Akhirnya aku bisa bertemu dengan teman lamaku.', '2023-07-30 07:50:38'),
(2, 1, 'Asik..', 'Aku bertemu dengan keluarga jauhku malam nanti.', '2023-07-30 07:53:48'),
(3, 2, 'Horee', 'Nilaiku saat ini memuaskan', '2023-07-30 15:02:10'),
(4, 1, 'WOHOOO', 'Aku bertemu dengan crush ku..', '2023-07-30 08:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `moods`
--

CREATE TABLE `moods` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `mood` enum('bahagia','senang','netral','murung','sedih') NOT NULL,
  `reason` text NOT NULL,
  `timestamp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `moods`
--

INSERT INTO `moods` (`id`, `id_user`, `mood`, `reason`, `timestamp`) VALUES
(1, 1, 'bahagia', 'pokonya aku senanggg', '2023-07-30'),
(2, 1, 'sedih', 'huaa aku sedih sekarang', '2023-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(3) NOT NULL,
  `quotes` text NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quotes`, `author`) VALUES
(1, 'Hidup itu seperti nasi goreng, kadang pahit, kadang manis, tapi selalu bikin ketagihan.', 'Tukang Martabak'),
(2, 'Kalau hidupmu pahit, tambahkan gula dan air panas, jadi teh tarik.', 'Raditya Dika'),
(3, 'Kalau kamu galau, jangan lupa ada tuhan di atas sana yang masih bingung mengurus dirimu.', 'Raditya Dika'),
(4, 'Jangan terlalu serius dalam hidup, kamu bukan serial drama Korea.', 'Ernest Prakasa'),
(5, 'Hidup ini seperti soto, harus dicampur dengan bumbu-bumbu kehidupan yang bikin berwarna.', 'Ernest Prakasa'),
(6, 'Jangan pernah takut untuk menjadi dirimu sendiri, karena keunikanmu adalah yang membuatmu istimewa.', 'Rintik Sedu'),
(7, 'Jangan biarkan rasa takut menghentikanmu untuk menjadi versi terbaik dari dirimu sendiri.', 'Sitta Karina'),
(8, 'Jangan pernah meremehkan kekuatan dan pengaruhmu sebagai seorang remaja, karena kamu mampu merubah dunia.', 'Risa Saraswati'),
(9, 'Kamu kuat, kamu berharga, dan kamu layak mendapatkan kebahagiaan.', 'Penulis tidak diketahui'),
(10, 'Kesehatan mentalmu penting, dan kamu sedang berjuang dengan baik.', 'Penulis tidak diketahui'),
(11, 'Setiap langkah kecilmu dalam pemulihan adalah sebuah prestasi yang patut dibanggakan.', 'Penulis tidak diketahui'),
(12, 'Jangan biarkan pikiran negatif menghalangi potensimu untuk bersinar.', 'Penulis tidak diketahui'),
(13, 'Kamu tidak sendirian, banyak orang di sekitarmu yang siap mendukung dan memahami perjuanganmu.', 'Penulis tidak diketahui'),
(14, 'Hargai dirimu sendiri, kamu adalah pribadi yang berharga dan berarti.', 'Penulis tidak diketahui'),
(15, 'Teruslah bergerak maju, meskipun lambat, setiap langkah membawamu lebih dekat ke dalam cahaya.', 'Penulis tidak diketahui'),
(16, 'Jadilah saksi kekuatanmu sendiri, kamu telah menghadapi tantangan yang tak terbayangkan.', 'Penulis tidak diketahui'),
(17, 'Kamu memiliki kekuatan yang tak terbatas dalam dirimu, jangan pernah meragukannya.', 'Penulis tidak diketahui'),
(18, 'Percayalah bahwa kamu berhak mendapatkan kesembuhan dan kebahagiaan yang sejati.', 'Penulis tidak diketahui'),
(19, 'Kamu adalah pahlawan dalam perjuanganmu melawan penyakit mental, teruslah bertahan.', 'Penulis tidak diketahui'),
(20, 'Lemahkan suaramu yang meragukan dirimu dan dengarlah suara yang membanggakan pencapaianmu.', 'Penulis tidak diketahui'),
(21, 'Kamu berani, kamu tangguh, dan kamu mampu mengatasi setiap rintangan.', 'Penulis tidak diketahui'),
(22, 'Pilih untuk melihat keindahan dalam dirimu, meskipun saat ini terasa sulit.', 'Penulis tidak diketahui'),
(23, 'Terima dirimu apa adanya, dengan segala kelebihan dan kekuranganmu.', 'Penulis tidak diketahui'),
(24, 'Kamu adalah inspirasi bagi orang-orang di sekitarmu yang juga berjuang dengan kesehatan mental.', 'Penulis tidak diketahui'),
(25, 'Ingatlah bahwa kegelapan hanya sementara, dan matahari akan bersinar kembali dalam hidupmu.', 'Penulis tidak diketahui'),
(26, 'Penuhi dirimu dengan pikiran positif dan cinta diri, karena kamu pantas mendapatkannya.', 'Penulis tidak diketahui'),
(27, 'Kamu layak mendapatkan cinta dan dukungan, jadi jangan ragu untuk meminta bantuan ketika dibutuhkan.', 'Penulis tidak diketahui'),
(28, 'Jadikan dirimu prioritas, berikan waktu dan perhatian yang baik untuk merawat kesehatan mentalmu.', 'Penulis tidak diketahui');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `friend` varchar(255) DEFAULT NULL,
  `profile` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `friend`, `profile`) VALUES
(1, 'Ira Fitri Yani', 'ira@mail.com', '123', 'cactus', 'ava-1'),
(2, 'Tester', 'test@mail.com', '123', 'piggy', 'ava-4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `moods`
--
ALTER TABLE `moods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `moods`
--
ALTER TABLE `moods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `moods`
--
ALTER TABLE `moods`
  ADD CONSTRAINT `moods_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
