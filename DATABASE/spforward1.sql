-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 10:12 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spforward1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_diagnosa`
--

CREATE TABLE `tb_diagnosa` (
  `kode_diagnosa` varchar(16) NOT NULL,
  `nama_diagnosa` varchar(255) DEFAULT NULL,
  `penyebab` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_diagnosa`
--

INSERT INTO `tb_diagnosa` (`kode_diagnosa`, `nama_diagnosa`, `penyebab`, `solusi`) VALUES
('P01', 'Abortus', 'DATA PENYEBAB', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. Pemeriksaan USG transabdominal atau transvaginal\r\n4. Memeriksa kadar hormon HCG\r\n5. Pemeriksaan gen untuk memeriksa kelainan genetik\r\n6. Tes darah untuk memeriksa gangguan tertentu\r\n7. Operasi kecil dengan melebarkan serviks (leher rahim) menggunakan alat khusus untuk mengeluarkan jaringan ari-ari dan janin dari dalam rahim'),
('P02', 'Adenomiosis', 'DATA PENYEBAB', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. USG transvaginal\r\n4. Pemeriksaan darah untuk mengetahui dampak dari perdarahan\r\n5. Lakukan terapi hormon'),
('P03', 'Bartholinitis', '', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. Merendam vagina hingga panggul dan bokong di dalam air hangat, beberapa kali dalam sehari selama 3-4 hari\r\n4. Mengonsumsi antibiotik untuk menangani kista yang terinfeksi bakteri\r\n5. Operasi untuk mengeringkan cairan pada kista apabila sudah sangat besar'),
('P04', 'Gangguan Haid', 'DATA PENYEBAB', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. Tes biopsi endometrium untuk mengambil sedikit sampel dari jaringan dinding rahim\r\n4. Pemeriksaan menggunakan alat medis histeroskop\r\n5. Pengobatan hormon seperti obat-obatan estrogen atau progestin\r\n6. Mengurangi rasa sakit dengan obat anjuran dokter'),
('P05', 'Hyperemesis Gravidarum', 'DATA PENYEBAB', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. Pemeriksaan laboratorium darah, urine, dan elektrolit untuk memastikan pengidap benar-benar mengalami hiperemesis gravidarum\r\n4. Melakukan USG untuk melihat kondisi janin dalam kandungan\r\n5. Pemberian obat-obatan lewat suntikan, seperti vitamin B6, vitamin B12, serta antiemetik atau antimual\r\n6. Pemasangan cairan infus, untuk menjaga asupan cairan yang dibutuhkan'),
('P06', 'Infeksi Vagina', 'DATA PENYEBAB', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. Pengobatan terdiri dari antijamur dan antibiotik\r\n4. Personal hygiene'),
('P07', 'Kehamilan Ektopik', 'DATA PENYEBAB', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. Melakukan USG kehamilan secara rutin\r\n4. USG transvaginal untuk melihat lokasi kehamilan\r\n5. Tes darah untuk melihat apakah ada tanda-tanda perdarahan atau anemia\r\n6. Pada stadium awal, cukup dengan obat\r\n7. Stadium lanjut memerlukan operasi'),
('P08', 'Kista Cokelat', 'DATA PENYEBAB', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. Pemeriksaan USG pelvis\r\n4. Pemeriksaan secara rutin untuk memantau kondisi\r\n5. Konsumsi obat untuk menghambat ovulasi\r\n6. Perbanyak makanan yang kaya antioksidan\r\n7. Kompres perut yang nyeri dengan air hangat'),
('P09', 'Kista Ovarium', 'DATA PENYEBAB', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. Tes kehamilan\r\n4. USG panggul untuk menghasilkan gambar dari rahim dan ovarium\r\n5. Laparoskopi yang dilakukan dengan alat laparoskop yang dimasukkan ke dalam perut untuk melihat ovarium atau mengangkat kista\r\n6. Tes darah CA 125 untuk mendeteksi tanda-tanda keganasan'),
('P10', 'Mioma Uteri', 'DATA PENYEBAB', '1. Pemeriksaan medis\r\n2. Konsumsi obat sesuai anjuran dokter\r\n3. Pemberian anti-nyeri berupa parasetamol\r\n4. Pemeriksaan fisik dan USG, yang diulangi setiap 6-8 minggu\r\n5. Pembedahan untuk mengangkat mioma apabila masih berusia muda dan masih ingin memiliki anak lagi, serta menunda kehamilan selama 4-6 bulan\r\n6. Operasi pengangkatan rahim bagi yang nyeri dan pertumbuhan mioma yang tidak sembuh');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `kode_gejala` varchar(16) NOT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`kode_gejala`, `nama_gejala`, `keterangan`) VALUES
('G001', 'Keluar flek', 'Diskripsi penyakit'),
('G002', 'Keluar darah', 'Diskripsi penyakit'),
('G003', 'Keluar darah yang berkepanjangan', 'Diskripsi penyakit'),
('G004', 'Mual dan muntah berlebihan', 'Diskripsi penyakit'),
('G005', 'Nyeri pada ari-ari', 'Diskripsi penyakit'),
('G006', 'Pusing yang berkepanjangan', 'Diskripsi penyakit'),
('G007', 'Nyeri saat buang air kecil', 'Diskripsi penyakit'),
('G008', 'Perdarahan pervaginam', 'Diskripsi penyakit'),
('G009', 'Perubahan gejala kehamilan secara drastis', 'Diskripsi penyakit'),
('G010', 'Rasa nyeri dan sakit pada panggul dan perut', 'Diskripsi penyakit'),
('G011', 'Disminore (rasa nyeri selama haid)', 'Diskripsi penyakit'),
('G012', 'Haid tidak teratur / bulan 2kali', 'Diskripsi penyakit'),
('G013', 'Keputihan dan bau', 'Diskripsi penyakit'),
('G014', 'Nyeri perut', 'Diskripsi penyakit'),
('G015', 'Nyeri saat berhubungan intim', 'Diskripsi penyakit'),
('G016', 'Pendarahan dalam jumlah banyak', 'Diskripsi penyakit'),
('G017', 'Bengkak di pangkal paha', 'Diskripsi penyakit'),
('G018', 'Benjolan atau pembengkakan di vagina', 'Diskripsi penyakit'),
('G019', 'Rasa nyeri dan sakit pada panggul', 'Diskripsi penyakit'),
('G020', 'Sakit dan nyeri di bagian intens saat aktivitas', 'Diskripsi penyakit'),
('G021', 'Kram perut sebelum atau selama haid', 'Diskripsi penyakit'),
('G022', 'Mengalami susah tidur', 'Diskripsi penyakit'),
('G023', 'Nyeri pada punggung', 'Diskripsi penyakit'),
('G024', 'Pusing dan sakit kepala', 'Diskripsi penyakit'),
('G025', 'Hilang selera makan', 'Diskripsi penyakit'),
('G026', 'Menggigil', 'Diskripsi penyakit'),
('G027', 'Nyeri ulu hati', 'Diskripsi penyakit'),
('G028', 'Tidak haid kurang lebih 2 bulan', 'Diskripsi penyakit'),
('G029', 'Dehidrasi', 'Diskripsi penyakit'),
('G030', 'Hipotensi atau tekanan darah rendah', 'Diskripsi penyakit'),
('G031', 'Jantung berdebar', 'Diskripsi penyakit'),
('G032', 'Mengeluarkan air liur secara berlebihan', 'Diskripsi penyakit'),
('G033', 'Merasa stres, bingung, cemas', 'Diskripsi penyakit'),
('G034', 'Sangat sensitif terhadap aroma', 'Diskripsi penyakit'),
('G035', 'Keluar cairan', 'Diskripsi penyakit'),
('G036', 'Nyeri pada perut bagian bawah', 'Diskripsi penyakit'),
('G037', 'Gatal-gatal di bagian alat kelamin luar', 'Diskripsi penyakit'),
('G038', 'Keputihan, peradangan, dan kemerahan pada genitalia eksterna', 'Diskripsi penyakit'),
('G039', 'Nyeri pada bagian intens', 'Diskripsi penyakit'),
('G040', 'Keluar air dibekas operasi', 'Diskripsi penyakit'),
('G041', 'Nyeri sebelah kiri', 'Diskripsi penyakit'),
('G042', 'Sakit pinggang berkepanjangan', 'Diskripsi penyakit'),
('G043', 'Tidak haid dan tes kehamilan fositif', 'Diskripsi penyakit'),
('G044', 'Buang air kecil sakit', 'Diskripsi penyakit'),
('G045', 'Haid tidak teratur', 'Diskripsi penyakit'),
('G046', 'Haid tidak berhenti', 'Diskripsi penyakit'),
('G047', 'Sakit pinggang', 'Diskripsi penyakit'),
('G048', 'Vagina gatal', 'Diskripsi penyakit'),
('G049', 'Merasa depresi', 'Diskripsi penyakit'),
('G050', 'Nyeri pada pinggul', 'Diskripsi penyakit'),
('G051', 'Nyeri setelah berhubungan intim', 'Diskripsi penyakit'),
('G052', 'Tubuh mudah kelelahan', 'Diskripsi penyakit'),
('G053', 'Demam', 'Diskripsi penyakit'),
('G054', 'Gatal-gatal dibagian perut dan kaki', 'Diskripsi penyakit'),
('G055', 'Mual dan muntah biasa', 'Diskripsi penyakit'),
('G056', 'Nyeri perut secara tiba-tiba', 'Diskripsi penyakit'),
('G057', 'Sering merasa pusing', 'Diskripsi penyakit'),
('G058', 'Dada terasa teregang', 'Diskripsi penyakit'),
('G059', 'Masalah buang air kecil dan besar', 'Diskripsi penyakit'),
('G060', 'Nyeri pada pinggul, panggung, dan paha', 'Diskripsi penyakit'),
('G061', 'Haid banyak', 'Diskripsi penyakit'),
('G062', 'Keluar darah dibagian intens', 'Diskripsi penyakit'),
('G063', 'Nyeri haid', 'Diskripsi penyakit'),
('G064', 'Nyeri saat terjadi penekanan pada panggul', 'Diskripsi penyakit'),
('G065', 'Nyeri panggul setelah berhubungan intim', 'Diskripsi penyakit'),
('G066', 'Terasa tertekan pada bagian bawah usus besar', 'Diskripsi penyakit'),
('G067', 'Perut terasa penuh dan kembung', 'Diskripsi penyakit');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id` int(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl` varchar(50) NOT NULL,
  `hasil_konsultasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`id`, `nama`, `no_hp`, `jk`, `alamat`, `tgl`, `hasil_konsultasi`) VALUES
(94, 'gunawan', '085381259307', 'Laki - Laki', 'Padang', '17:07 · 22 November 2020', ''),
(95, 'gunawan', '085381259307', 'Laki - Laki', 'Padang', '17:07 · 22 November 2020', 'Abortus'),
(96, 'gunawan', '085381259307', 'Laki - Laki', 'Padang', '17:07 · 22 November 2020', 'Abortus');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsultasi`
--

CREATE TABLE `tb_konsultasi` (
  `ID` int(11) NOT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL,
  `jawaban` varchar(6) DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_konsultasi`
--

INSERT INTO `tb_konsultasi` (`ID`, `kode_gejala`, `jawaban`) VALUES
(1, 'G001', 'Ya'),
(2, 'G002', 'Ya'),
(3, 'G003', 'Ya'),
(4, 'G004', 'Ya'),
(5, 'G005', 'Ya'),
(6, 'G006', 'Ya'),
(7, 'G007', 'Ya'),
(8, 'G008', 'Ya'),
(9, 'G009', 'Ya'),
(10, 'G010', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_relasi`
--

CREATE TABLE `tb_relasi` (
  `ID` int(11) NOT NULL,
  `kode_diagnosa` varchar(16) DEFAULT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_relasi`
--

INSERT INTO `tb_relasi` (`ID`, `kode_diagnosa`, `kode_gejala`) VALUES
(219, 'P01', 'G002'),
(220, 'P01', 'G003'),
(221, 'P01', 'G004'),
(222, 'P01', 'G005'),
(223, 'P01', 'G006'),
(224, 'P01', 'G007'),
(225, 'P01', 'G008'),
(226, 'P01', 'G009'),
(227, 'P01', 'G010'),
(228, 'P02', 'G011'),
(229, 'P02', 'G012'),
(230, 'P02', 'G013'),
(231, 'P02', 'G014'),
(232, 'P02', 'G015'),
(233, 'P02', 'G016'),
(234, 'P03', 'G017'),
(235, 'P03', 'G018'),
(237, 'P03', 'G020'),
(238, 'P04', 'G021'),
(239, 'P04', 'G022'),
(240, 'P04', 'G023'),
(241, 'P04', 'G024'),
(242, 'P05', 'G025'),
(243, 'P05', 'G026'),
(244, 'P05', 'G027'),
(245, 'P05', 'G028'),
(246, 'P05', 'G029'),
(247, 'P05', 'G030'),
(248, 'P05', 'G031'),
(249, 'P05', 'G032'),
(250, 'P05', 'G033'),
(251, 'P05', 'G034'),
(252, 'P06', 'G035'),
(253, 'P06', 'G036'),
(254, 'P06', 'G037'),
(255, 'P06', 'G038'),
(256, 'P06', 'G039'),
(257, 'P07', 'G040'),
(258, 'P07', 'G041'),
(259, 'P07', 'G042'),
(260, 'P07', 'G043'),
(261, 'P08', 'G044'),
(262, 'P08', 'G045'),
(263, 'P08', 'G046'),
(264, 'P08', 'G047'),
(265, 'P08', 'G048'),
(266, 'P08', 'G049'),
(267, 'P08', 'G050'),
(268, 'P08', 'G051'),
(269, 'P08', 'G052'),
(270, 'P09', 'G053'),
(271, 'P09', 'G054'),
(272, 'P09', 'G055'),
(273, 'P09', 'G056'),
(274, 'P09', 'G057'),
(275, 'P09', 'G058'),
(276, 'P09', 'G059'),
(277, 'P09', 'G060'),
(278, 'P10', 'G061'),
(279, 'P10', 'G062'),
(280, 'P10', 'G063'),
(281, 'P10', 'G064'),
(282, 'P10', 'G065'),
(283, 'P10', 'G066'),
(284, 'P10', 'G067'),
(285, 'P03', 'G019'),
(286, 'P01', 'G001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
  ADD PRIMARY KEY (`kode_diagnosa`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_relasi`
--
ALTER TABLE `tb_relasi`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_relasi`
--
ALTER TABLE `tb_relasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
