-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 06:50 AM
-- Server version: 10.4.28-MariaDB-log
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wcu`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(1, 'Fakultas Ekonomi dan Bisnis'),
(2, 'Fakultas Hukum'),
(3, 'Fakultas Keguruan dan Ilmu Pendidikan'),
(4, 'Fakultas Pertanian'),
(5, 'Fakultas Teknik'),
(6, 'Fakultas Ilmu Sosial dan Ilmu Politik'),
(7, 'Fakultas Matematika dan Ilmu Pengetahuan Alam'),
(8, 'Fakultas Kedokteran');

-- --------------------------------------------------------

--
-- Table structure for table `indeks_kolaborasi`
--

CREATE TABLE `indeks_kolaborasi` (
  `id_indeks` int(11) NOT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `P` int(11) DEFAULT NULL,
  `nilai_indeks` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indeks_kolaborasi`
--

INSERT INTO `indeks_kolaborasi` (`id_indeks`, `tipe`, `L`, `P`, `nilai_indeks`) VALUES
(1, 'internasional', 17, 20, 5.67474),
(2, 'nasional', 18, 20, 6.00855);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kolaborasi`
--

CREATE TABLE `jenis_kolaborasi` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_kolaborasi`
--

INSERT INTO `jenis_kolaborasi` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Dosen Tamu'),
(2, 'Riset dan Publikasi'),
(3, 'Akademik'),
(4, 'Seminar dan Workshop');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `id_fakultas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `id_fakultas`) VALUES
(1, 'Akuntansi (D3)', 1),
(2, 'Keuangan dan Perbankan (D3)', 1),
(3, 'Manajemen Pemasaran (D3)', 1),
(4, 'Perpajakan (D3)', 1),
(5, 'Akuntansi (S1)', 1),
(6, 'Ekonomi Pembangunan (S1)', 1),
(7, 'Manajemen (S1)', 1),
(8, 'Ilmu Hukum (S1)', 2),
(9, 'Bimbingan dan Konseling (S1)', 3),
(10, 'Pendidikan Bahasa dan Sastra Indonesia (S1)', 3),
(11, 'Pendidikan Bahasa Inggris (S1)', 3),
(12, 'Pendidikan Bahasa Lampung (S1)', 3),
(13, 'Pendidikan Bahasa Perancis (S1)', 3),
(14, 'Pendidikan Biologi (S1)', 3),
(15, 'Pendidikan Ekonomi (S1)', 3),
(16, 'Pendidikan Fisika (S1)', 3),
(17, 'Pendidikan Geografi (S1)', 3),
(18, 'Pendidikan Guru Pendidikan Anak Usia Dini (S1)', 3),
(19, 'Pendidikan Guru Sekolah Dasar (S1)', 3),
(20, 'Pendidikan Jasmani (S1)', 3),
(21, 'Pendidikan Kimia (S1)', 3),
(22, 'Pendidikan Matematika (S1)', 3),
(23, 'Pendidikan Musik (S1)', 3),
(24, 'Pendidikan Pancasila dan Kewarganegaraan (S1)', 3),
(25, 'Pendidikan Sejarah (S1)', 3),
(26, 'Pendidikan Tari (S1)', 3),
(27, 'Pendidikan Teknologi Informasi (S1)', 3),
(28, 'Perkebunan (D3)', 4),
(29, 'Agribisnis (S1)', 4),
(30, 'Agronomi (S1)', 4),
(31, 'Agroteknologi (S1)', 4),
(32, 'Budidaya Perairan (S1)', 4),
(33, 'Ilmu Kelautan (S1)', 4),
(34, 'Ilmu Tanah (S1)', 4),
(35, 'Kehutanan (S1)', 4),
(36, 'Nutrisi dan Teknologi Pakan Ternak (S1)', 4),
(37, 'Penyuluhan Pertanian (S1)', 4),
(38, 'Peternakan (S1)', 4),
(39, 'Proteksi Tanaman (S1)', 4),
(40, 'Sumber Daya Akuatik (S1)', 4),
(41, 'Teknik Pertanian (S1)', 4),
(42, 'Teknologi Hasil Pertanian (S1)', 4),
(43, 'Teknologi Industri Pertanian (S1)', 4),
(44, 'Teknik Mesin (D3)', 5),
(45, 'Teknik Sipil (D3)', 5),
(46, 'Teknik Survey dan Pemetaan (D3)', 5),
(47, 'Arsitektur (S1)', 5),
(48, 'Teknik Elektro (S1)', 5),
(49, 'Teknik Geodesi (S1)', 5),
(50, 'Teknik Geofisika (S1)', 5),
(51, 'Teknik Informatika (S1)', 5),
(52, 'Teknik Kimia (S1)', 5),
(53, 'Teknik Mesin (S1)', 5),
(54, 'Teknik Sipil (S1)', 5),
(55, 'Teknik Lingkungan (S1)', 5),
(56, 'Administrasi Perkantoran (D3)', 6),
(57, 'Hubungan Masyarakat (D3)', 6),
(58, 'Perpustakaan (D3)', 6),
(59, 'Hubungan Internasional (S1)', 6),
(60, 'Ilmu Administrasi Bisnis (S1)', 6),
(61, 'Ilmu Administrasi Negara (S1)', 6),
(62, 'Ilmu Komunikasi (S1)', 6),
(63, 'Ilmu Pemerintahan (S1)', 6),
(64, 'Sosiologi (S1)', 6),
(65, 'Manajemen Informatika (D3)', 7),
(66, 'Biologi (S1)', 7),
(67, 'Biologi Terapan (S1)', 7),
(68, 'Fisika (S1)', 7),
(69, 'Ilmu Komputer (S1)', 7),
(70, 'Kimia (S1)', 7),
(71, 'Matematika (S1)', 7),
(72, 'Farmasi (S1)', 8),
(73, 'Pendidikan Dokter (S1)', 8);

-- --------------------------------------------------------

--
-- Table structure for table `kolaborasi_internasional`
--

CREATE TABLE `kolaborasi_internasional` (
  `id_kolaborasi_internasional` int(11) NOT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `id_negara` int(11) DEFAULT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `nama_kolaborasi` text DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kolaborasi_internasional`
--

INSERT INTO `kolaborasi_internasional` (`id_kolaborasi_internasional`, `id_jurusan`, `id_negara`, `id_jenis`, `nama_kolaborasi`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(1, 5, 14, 2, 'Publikasi riset bersama Universitas Tsinghua', '2022-04-15', '2022-12-20'),
(2, 7, 18, 3, 'Program pertukaran akademik dengan University of Queensland', '2023-01-01', '2023-06-30'),
(3, 11, 3, 1, 'Kuliah dosen tamu oleh NUS Singapore', '2022-09-01', '2022-09-10'),
(4, 14, 15, 4, 'Seminar internasional bidang pendidikan dengan Tokyo University', '2023-03-05', '2023-03-06'),
(5, 16, 18, 2, 'Riset bersama dengan University of Melbourne', '2022-05-01', '2022-11-01'),
(6, 19, 17, 3, 'Pertukaran akademik dengan Indian Institute of Technology', '2023-02-01', '2023-08-01'),
(7, 22, 16, 1, 'Dosen tamu dari Seoul National University', '2022-10-01', '2022-10-05'),
(8, 25, 13, 4, 'Workshop lingkungan dengan University of British Columbia', '2023-04-10', '2023-04-12'),
(9, 27, 12, 2, 'Kolaborasi riset dengan Harvard University', '2022-06-01', '2022-12-01'),
(10, 30, 11, 3, 'Program akademik dengan Timor Leste University', '2023-01-15', '2023-07-15'),
(11, 33, 9, 1, 'Kuliah dosen tamu oleh National University of Laos', '2022-08-01', '2022-08-05'),
(12, 35, 8, 4, 'Seminar budaya dengan Royal University of Phnom Penh', '2023-05-20', '2023-05-22'),
(13, 37, 7, 2, 'Riset bersama dengan Universiti Brunei Darussalam', '2022-07-01', '2022-12-31'),
(14, 39, 6, 3, 'Pertukaran akademik dengan University of the Philippines', '2023-03-01', '2023-09-01'),
(15, 41, 5, 1, 'Dosen tamu dari Vietnam National University', '2022-09-15', '2022-09-20'),
(16, 43, 4, 4, 'Workshop ekonomi dengan Chulalongkorn University', '2023-04-15', '2023-04-17'),
(17, 45, 2, 2, 'Kolaborasi riset dengan Universiti Malaya', '2022-05-10', '2022-11-10'),
(18, 47, 1, 3, 'Program akademik dengan Universitas Indonesia', '2023-02-15', '2023-08-15'),
(19, 49, 3, 1, 'Kuliah dosen tamu oleh Nanyang Technological University', '2022-10-20', '2022-10-25'),
(20, 51, 14, 4, 'Seminar teknologi dengan Shanghai Jiao Tong University', '2023-03-20', '2023-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `kolaborasi_nasional`
--

CREATE TABLE `kolaborasi_nasional` (
  `id_kolaborasi_nasional` int(11) NOT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `id_provinsi` int(11) DEFAULT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `nama_kolaborasi` text DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kolaborasi_nasional`
--

INSERT INTO `kolaborasi_nasional` (`id_kolaborasi_nasional`, `id_jurusan`, `id_provinsi`, `id_jenis`, `nama_kolaborasi`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(1, 5, 12, 2, 'Riset bersama dengan Universitas Padjadjaran', '2022-03-01', '2022-12-01'),
(2, 7, 11, 3, 'Pertukaran mahasiswa dengan Universitas Indonesia', '2021-08-01', '2022-01-31'),
(3, 8, 18, 4, 'Seminar hukum nasional di NTB', '2023-05-10', '2023-05-12'),
(4, 11, 13, 1, 'Kuliah dosen tamu oleh Universitas Gadjah Mada', '2022-09-15', '2022-09-20'),
(5, 14, 12, 2, 'Penelitian bersama dengan Institut Teknologi Bandung', '2023-01-10', '2023-06-10'),
(6, 16, 14, 3, 'Program akademik dengan Universitas Negeri Yogyakarta', '2022-07-01', '2022-12-31'),
(7, 19, 15, 4, 'Workshop pendidikan di Universitas Airlangga', '2023-03-05', '2023-03-07'),
(8, 22, 16, 1, 'Dosen tamu dari Universitas Banten', '2022-10-01', '2022-10-05'),
(9, 25, 17, 2, 'Kolaborasi riset dengan Universitas Udayana', '2023-02-15', '2023-08-15'),
(10, 27, 18, 3, 'Pertukaran akademik dengan Universitas Mataram', '2022-05-01', '2022-11-01'),
(11, 30, 19, 4, 'Seminar pertanian di Universitas Nusa Cendana', '2023-04-20', '2023-04-22'),
(12, 33, 20, 1, 'Kuliah dosen tamu oleh Universitas Tanjungpura', '2022-08-10', '2022-08-15'),
(13, 35, 21, 2, 'Penelitian bersama dengan Universitas Palangka Raya', '2023-01-01', '2023-07-01'),
(14, 37, 22, 3, 'Program akademik dengan Universitas Lambung Mangkurat', '2022-06-01', '2022-12-01'),
(15, 39, 23, 4, 'Workshop lingkungan di Universitas Mulawarman', '2023-05-10', '2023-05-12'),
(16, 41, 24, 1, 'Dosen tamu dari Universitas Kalimantan Utara', '2022-09-01', '2022-09-05'),
(17, 43, 25, 2, 'Riset bersama dengan Universitas Sam Ratulangi', '2023-02-01', '2023-08-01'),
(18, 45, 27, 3, 'Pertukaran akademik dengan Universitas Tadulako', '2022-07-01', '2022-12-31'),
(19, 47, 29, 4, 'Seminar teknik di Universitas Hasanuddin', '2023-03-10', '2023-03-12'),
(20, 49, 30, 1, 'Kuliah dosen tamu oleh Universitas Halu Oleo', '2022-10-15', '2022-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `negara`
--

CREATE TABLE `negara` (
  `id_negara` int(11) NOT NULL,
  `nama_negara` varchar(255) NOT NULL,
  `kode_iso` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `negara`
--

INSERT INTO `negara` (`id_negara`, `nama_negara`, `kode_iso`) VALUES
(1, 'Indonesia', 'ID'),
(2, 'Malaysia', 'MY'),
(3, 'Singapura', 'SG'),
(4, 'Thailand', 'TH'),
(5, 'Vietnam', 'VN'),
(6, 'Filipina', 'PH'),
(7, 'Brunei Darussalam', 'BN'),
(8, 'Kamboja', 'KH'),
(9, 'Laos', 'LA'),
(10, 'Myanmar', 'MM'),
(11, 'Timor Leste', 'TL'),
(12, 'Amerika Serikat', 'US'),
(13, 'Kanada', 'CA'),
(14, 'Tiongkok', 'CN'),
(15, 'Jepang', 'JP'),
(16, 'Korea Selatan', 'KR'),
(17, 'India', 'IN'),
(18, 'Australia', 'AU'),
(19, 'Rusia', 'RU'),
(20, 'Arab Saudi', 'SA'),
(21, 'Jerman', 'DE'),
(22, 'Prancis', 'FR'),
(23, 'Britania Raya', 'GB'),
(24, 'Brazil', 'BR'),
(25, 'Afrika Selatan', 'ZA'),
(26, 'Italia', 'IT'),
(27, 'Belanda', 'NL'),
(28, 'Spanyol', 'ES'),
(29, 'Turki', 'TR'),
(30, 'Swiss', 'CH');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `kode_posisi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`, `kode_posisi`) VALUES
(1, 'Aceh', '11'),
(2, 'Sumatera Utara', '12'),
(3, 'Sumatera Barat', '13'),
(4, 'Riau', '14'),
(5, 'Jambi', '15'),
(6, 'Sumatera Selatan', '16'),
(7, 'Bengkulu', '17'),
(8, 'Lampung', '18'),
(9, 'Kepulauan Bangka Belitung', '19'),
(10, 'Kepulauan Riau', '21'),
(11, 'DKI Jakarta', '31'),
(12, 'Jawa Barat', '32'),
(13, 'Jawa Tengah', '33'),
(14, 'DI Yogyakarta', '34'),
(15, 'Jawa Timur', '35'),
(16, 'Banten', '36'),
(17, 'Bali', '51'),
(18, 'Nusa Tenggara Barat', '52'),
(19, 'Nusa Tenggara Timur', '53'),
(20, 'Kalimantan Barat', '61'),
(21, 'Kalimantan Tengah', '62'),
(22, 'Kalimantan Selatan', '63'),
(23, 'Kalimantan Timur', '64'),
(24, 'Kalimantan Utara', '65'),
(25, 'Sulawesi Utara', '71'),
(26, 'Gorontalo', '75'),
(27, 'Sulawesi Tengah', '72'),
(28, 'Sulawesi Barat', '76'),
(29, 'Sulawesi Selatan', '73'),
(30, 'Sulawesi Tenggara', '74'),
(31, 'Maluku', '81'),
(32, 'Maluku Utara', '82'),
(33, 'Papua', '91'),
(34, 'Papua Barat', '92'),
(35, 'Papua Pegunungan', '93'),
(36, 'Papua Tengah', '94'),
(37, 'Papua Selatan', '95'),
(38, 'Papua Barat Daya', '96');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `indeks_kolaborasi`
--
ALTER TABLE `indeks_kolaborasi`
  ADD PRIMARY KEY (`id_indeks`);

--
-- Indexes for table `jenis_kolaborasi`
--
ALTER TABLE `jenis_kolaborasi`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `kolaborasi_internasional`
--
ALTER TABLE `kolaborasi_internasional`
  ADD PRIMARY KEY (`id_kolaborasi_internasional`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_negara` (`id_negara`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indexes for table `kolaborasi_nasional`
--
ALTER TABLE `kolaborasi_nasional`
  ADD PRIMARY KEY (`id_kolaborasi_nasional`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_provinsi` (`id_provinsi`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `jurusan_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`);

--
-- Constraints for table `kolaborasi_internasional`
--
ALTER TABLE `kolaborasi_internasional`
  ADD CONSTRAINT `kolaborasi_internasional_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `kolaborasi_internasional_ibfk_2` FOREIGN KEY (`id_negara`) REFERENCES `negara` (`id_negara`),
  ADD CONSTRAINT `kolaborasi_internasional_ibfk_3` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_kolaborasi` (`id_jenis`);

--
-- Constraints for table `kolaborasi_nasional`
--
ALTER TABLE `kolaborasi_nasional`
  ADD CONSTRAINT `kolaborasi_nasional_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `kolaborasi_nasional_ibfk_2` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`),
  ADD CONSTRAINT `kolaborasi_nasional_ibfk_3` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_kolaborasi` (`id_jenis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
