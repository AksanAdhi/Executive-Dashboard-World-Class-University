-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 08:16 AM
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
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `tahun_lulus` date NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_status_kerja` int(11) DEFAULT NULL,
  `waktu_dapat_kerja` date DEFAULT NULL,
  `program_studi_id` int(11) DEFAULT NULL,
  `status_kerja_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `nama`, `npm`, `tahun_lulus`, `id_jurusan`, `id_status_kerja`, `waktu_dapat_kerja`, `program_studi_id`, `status_kerja_id`) VALUES
(1, 'Rizky Pratama', '2111050001', '2015-08-12', 45, 3, '2016-01-20', 25, 3),
(2, 'Siti Aminah', '1911050002', '2012-03-01', 12, 7, '2012-07-15', 40, 7),
(3, 'Budi Santoso', '2211050003', '2018-11-20', 67, 1, '2019-03-10', 5, 1),
(4, 'Dewi Lestari', '1711050004', '2010-06-05', 33, 9, '2010-10-01', 48, 9),
(5, 'Ahmad Fauzi', '2311050005', '2020-09-15', 2, 5, '2021-02-01', 3, 5),
(6, 'Nurul Hidayah', '2011050006', '2017-04-22', 58, 2, '2017-09-01', 18, 2),
(7, 'Joko Susanto', '1811050007', '2013-01-10', 70, 8, '2013-05-20', 37, 8),
(8, 'Fitriani Indah', '2411050008', '2022-10-03', 9, 4, '2023-02-15', 22, 4),
(9, 'Bayu Pamungkas', '1911050009', '2011-05-18', 25, 6, '2011-09-10', 41, 6),
(10, 'Wulan Sari', '2111050010', '2016-12-01', 51, 10, '2017-04-05', 5, 10),
(11, 'Eko Wahyudi', '2011050011', '2019-07-10', 18, 3, '2019-11-25', 30, 3),
(12, 'Linda Natalia', '1811050012', '2014-02-28', 60, 7, '2014-06-10', 46, 7),
(13, 'Agus Setiawan', '2211050013', '2021-08-05', 35, 1, '2022-01-01', 11, 1),
(14, 'Dian Kusuma', '1711050014', '2010-01-15', 68, 9, '2010-05-01', 51, 9),
(15, 'Putri Amelia', '2311050015', '2023-06-20', 3, 5, '2023-11-10', 4, 5),
(16, 'Ryan Aditama', '2011050016', '2017-03-08', 46, 2, '2017-07-01', 19, 2),
(17, 'Citra Kirana', '1811050017', '2013-10-14', 71, 8, '2014-02-01', 38, 8),
(18, 'Fajar Ramadhan', '2411050018', '2024-05-01', 10, 4, '2024-09-15', 23, 4),
(19, 'Maya Suryani', '1911050019', '2011-11-25', 26, 6, '2012-03-10', 42, 6),
(20, 'Gilang Pratama', '2111050020', '2016-06-30', 52, 10, '2016-11-15', 6, 10),
(21, 'Restu Dwiputra', '2011050021', '2015-04-05', 59, 3, '2015-08-10', 31, 3),
(22, 'Sinta Maharani', '1911050022', '2012-09-18', 13, 7, '2013-01-01', 47, 7),
(23, 'Hadi Wijaya', '2211050023', '2018-02-14', 34, 1, '2018-06-01', 12, 1),
(24, 'Rina Permata', '1711050024', '2010-07-20', 69, 9, '2010-11-05', 52, 9),
(25, 'Arif Rachman', '2311050025', '2020-11-01', 4, 5, '2021-03-20', 5, 5),
(26, 'Yuni Kartika', '2011050026', '2017-06-10', 47, 2, '2017-10-25', 20, 2),
(27, 'Taufik Hidayat', '1811050027', '2013-03-25', 72, 8, '2013-07-10', 39, 8),
(28, 'Zahra Annisa', '2411050028', '2022-01-12', 11, 4, '2022-05-30', 24, 4),
(29, 'Ivan Gunawan', '1911050029', '2011-08-01', 27, 6, '2011-12-15', 43, 6),
(30, 'Kartika Putri', '2111050030', '2016-01-07', 53, 10, '2016-05-01', 7, 10),
(31, 'Daffa Ramadhan', '2011050031', '2019-09-01', 19, 3, '2020-01-15', 32, 3),
(32, 'Bella Ananda', '1811050032', '2014-04-16', 61, 7, '2014-08-01', 48, 7),
(33, 'Aditya Pratama', '2211050033', '2021-03-11', 36, 1, '2021-07-20', 13, 1),
(34, 'Gita Paramitha', '1711050034', '2010-09-09', 69, 9, '2011-01-25', 52, 9),
(35, 'Kevin Wijaya', '2311050035', '2023-01-28', 5, 5, '2023-06-10', 6, 5),
(36, 'Lina Marlina', '2011050036', '2017-07-07', 48, 2, '2017-11-01', 21, 2),
(37, 'Fahmi Nugraha', '1811050037', '2013-04-19', 1, 8, '2013-08-05', 40, 8),
(38, 'Nadia Putri', '2411050038', '2024-02-29', 12, 4, '2024-07-10', 25, 4),
(39, 'Aldi Saputra', '1911050039', '2011-10-03', 28, 6, '2012-02-18', 44, 6),
(40, 'Dina Mardiana', '2111050040', '2016-02-14', 54, 10, '2016-06-01', 8, 10),
(41, 'Rendi Firmansyah', '2011050041', '2015-05-10', 60, 3, '2015-09-01', 33, 3),
(42, 'Shinta Dewi', '1911050042', '2012-10-25', 14, 7, '2013-02-10', 49, 7),
(43, 'Yoga Pratama', '2211050043', '2018-03-01', 37, 1, '2018-07-15', 14, 1),
(44, 'Indah Permatasari', '1711050044', '2010-08-11', 70, 9, '2010-12-01', 1, 9),
(45, 'Faris Setiadi', '2311050045', '2020-12-05', 6, 5, '2021-04-01', 7, 5),
(46, 'Ani Suryani', '2011050046', '2017-08-15', 49, 2, '2017-12-20', 22, 2),
(47, 'Dimas Sanjaya', '1811050047', '2013-05-02', 2, 8, '2013-09-01', 41, 8),
(48, 'Siska Amelia', '2411050048', '2022-03-07', 13, 4, '2022-07-20', 26, 4),
(49, 'Ferdiansyah Putra', '1911050049', '2011-12-19', 29, 6, '2012-04-05', 45, 6),
(50, 'Risa Lestari', '2111050050', '2016-07-22', 55, 10, '2016-11-08', 9, 10),
(51, 'Andre Saputra', '2011050051', '2019-10-03', 20, 3, '2020-02-10', 34, 3),
(52, 'Lisa Mardiana', '1811050052', '2014-05-09', 62, 7, '2014-09-20', 50, 7),
(53, 'Candra Wijaya', '2211050053', '2021-04-17', 38, 1, '2021-08-01', 15, 1),
(54, 'Mega Wati', '1711050054', '2010-10-29', 71, 9, '2011-02-15', 2, 9),
(55, 'Heri Kusuma', '2311050055', '2023-02-01', 7, 5, '2023-06-15', 8, 5),
(56, 'Fitra Lestari', '2011050056', '2017-09-01', 50, 2, '2018-01-05', 23, 2),
(57, 'Gatot Subroto', '1811050057', '2013-06-11', 3, 8, '2013-10-20', 42, 8),
(58, 'Dian Ayu', '2411050058', '2024-03-20', 14, 4, '2024-08-01', 27, 4),
(59, 'Eka Prasetya', '1911050059', '2011-09-07', 30, 6, '2012-01-25', 46, 6),
(60, 'Putri Ningsih', '2111050060', '2016-03-18', 56, 10, '2016-07-05', 10, 10),
(61, 'Rizka Nuraini', '2011050061', '2015-06-14', 61, 3, '2015-10-01', 35, 3),
(62, 'Tono Susanto', '1911050062', '2012-11-01', 15, 7, '2013-03-15', 51, 7),
(63, 'Wina Rahayu', '2211050063', '2018-04-26', 39, 1, '2018-08-10', 16, 1),
(64, 'Bagus Permana', '1711050064', '2010-02-08', 72, 9, '2010-06-01', 3, 9),
(65, 'Sari Indah', '2311050065', '2020-05-19', 8, 5, '2020-09-05', 9, 5),
(66, 'Ardiansyah Putra', '2011050066', '2017-10-05', 51, 2, '2018-02-20', 24, 2),
(67, 'Vina Lestari', '1811050067', '2013-07-03', 4, 8, '2013-11-15', 43, 8),
(68, 'Doni Setiawan', '2411050068', '2022-04-18', 15, 4, '2022-09-01', 28, 4),
(69, 'Nurul Fatimah', '1911050069', '2011-06-21', 31, 6, '2011-10-05', 47, 6),
(70, 'Dedi Iskandar', '2111050070', '2016-04-09', 57, 10, '2016-08-25', 11, 10),
(71, 'Maria Ulfa', '2011050071', '2019-11-11', 21, 3, '2020-03-01', 36, 3),
(72, 'Hasan Basri', '1811050072', '2014-06-25', 63, 7, '2014-10-10', 52, 7),
(73, 'Nina Suryani', '2211050073', '2021-05-02', 40, 1, '2021-09-15', 17, 1),
(74, 'Andi Rachman', '1711050074', '2010-03-17', 1, 9, '2010-07-01', 4, 9),
(75, 'Citra Dewi', '2311050075', '2023-03-03', 9, 5, '2023-07-10', 10, 5),
(76, 'Fandi Ahmad', '2011050076', '2017-11-29', 52, 2, '2018-03-15', 25, 2),
(77, 'Lisa Fauziah', '1811050077', '2013-08-08', 5, 8, '2013-12-01', 44, 8),
(78, 'Rizky Fadillah', '2411050078', '2024-01-05', 16, 4, '2024-05-20', 29, 4),
(79, 'Slamet Widodo', '1911050079', '2011-07-14', 32, 6, '2011-11-01', 48, 6),
(80, 'Sri Wahyuni', '2111050080', '2016-05-23', 58, 10, '2016-09-10', 12, 10),
(81, 'Agnes Monica', '2011050081', '2015-07-01', 62, 3, '2015-11-15', 37, 3),
(82, 'Dwi Cahyo', '1911050082', '2012-12-10', 16, 7, '2013-04-01', 52, 7),
(83, 'Bima Sakti', '2211050083', '2018-05-16', 41, 1, '2018-09-01', 18, 1),
(84, 'Yeni Susanti', '1711050084', '2010-04-20', 2, 9, '2010-08-05', 5, 9),
(85, 'Irfan Hakim', '2311050085', '2020-06-29', 10, 5, '2020-10-15', 11, 5),
(86, 'Nita Sari', '2011050086', '2017-12-07', 53, 2, '2018-04-01', 26, 2),
(87, 'Rangga Pratama', '1811050087', '2013-09-24', 6, 8, '2014-01-10', 45, 8),
(88, 'Dewi Kartika', '2411050088', '2024-04-08', 17, 4, '2024-08-25', 30, 4),
(89, 'Teguh Saputra', '1911050089', '2011-07-03', 33, 6, '2011-11-18', 49, 6),
(90, 'Siti Rahayu', '2111050090', '2016-06-02', 59, 10, '2016-10-01', 13, 10),
(91, 'Bowo Laksono', '2011050091', '2019-12-15', 22, 3, '2020-04-01', 38, 3),
(92, 'Laila Fitriani', '1811050092', '2014-07-06', 64, 7, '2014-11-20', 1, 7),
(93, 'Asep Saepudin', '2211050093', '2021-06-19', 42, 1, '2021-10-05', 19, 1),
(94, 'Putri Permata', '1711050094', '2010-05-01', 3, 9, '2010-09-10', 6, 9),
(95, 'Denny Cahyadi', '2311050095', '2023-04-12', 11, 5, '2023-08-25', 12, 5),
(96, 'Winda Sari', '2011050096', '2017-10-26', 54, 2, '2018-02-10', 27, 2),
(97, 'Fadli Rahman', '1811050097', '2013-09-05', 7, 8, '2014-01-15', 46, 8),
(98, 'Cindy Adelia', '2411050098', '2024-02-14', 18, 4, '2024-06-30', 31, 4),
(99, 'Krisna Murti', '1911050099', '2011-09-13', 34, 6, '2012-01-01', 50, 6),
(100, 'Diana Putri', '2111050100', '2016-07-09', 60, 10, '2016-11-20', 14, 10);

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
(20, 51, 14, 4, 'Seminar teknologi dengan Shanghai Jiao Tong University', '2023-03-20', '2023-03-22'),
(21, 3, 15, 1, 'Kuliah dosen tamu dari Kyoto University', '2023-05-01', '2023-05-10'),
(22, 6, 21, 2, 'Publikasi bersama Humboldt University of Berlin', '2022-04-10', '2022-11-30'),
(23, 9, 22, 3, 'Pertukaran pelajar dengan Sorbonne University', '2023-01-15', '2023-07-15'),
(24, 12, 23, 4, 'Seminar budaya dengan University of Oxford', '2023-03-05', '2023-03-07'),
(25, 15, 24, 1, 'Dosen tamu dari University of São Paulo', '2022-09-01', '2022-09-07'),
(26, 17, 25, 2, 'Kolaborasi riset dengan University of Cape Town', '2022-06-10', '2022-12-10'),
(27, 20, 26, 3, 'Program akademik dengan University of Bologna', '2023-02-01', '2023-08-01'),
(28, 23, 27, 4, 'Workshop pertanian dengan University of Amsterdam', '2023-04-01', '2023-04-03'),
(29, 26, 28, 1, 'Kuliah umum oleh University of Barcelona', '2022-11-10', '2022-11-12'),
(30, 29, 29, 2, 'Riset teknik dengan Middle East Technical University', '2022-07-15', '2022-12-15'),
(31, 32, 30, 3, 'Program pertukaran dengan ETH Zurich', '2023-01-20', '2023-07-20'),
(32, 34, 14, 4, 'Seminar teknologi dengan Tsinghua University', '2023-04-05', '2023-04-07'),
(33, 36, 18, 1, 'Dosen tamu dari University of Melbourne', '2022-10-10', '2022-10-15'),
(34, 38, 13, 2, 'Kolaborasi lingkungan dengan McGill University', '2022-06-01', '2022-12-01'),
(35, 40, 11, 3, 'Akademik dengan Timor Leste National University', '2023-02-10', '2023-08-10'),
(36, 42, 19, 4, 'Seminar geopolitik dengan Lomonosov Moscow State University', '2023-03-01', '2023-03-03'),
(37, 44, 20, 1, 'Kuliah dosen tamu oleh King Saud University', '2022-09-20', '2022-09-25'),
(38, 46, 17, 2, 'Riset bersama dengan IIT India', '2022-05-15', '2022-11-15'),
(39, 48, 16, 3, 'Pertukaran pelajar dengan SNU Korea Selatan', '2023-03-10', '2023-09-10'),
(40, 50, 12, 4, 'Workshop inovasi dengan Harvard University', '2023-04-25', '2023-04-27'),
(41, 52, 6, 1, 'Dosen tamu dari Filipina', '2022-08-01', '2022-08-07'),
(42, 53, 3, 2, 'Kolaborasi teknologi dengan NUS Singapore', '2022-06-01', '2022-12-01'),
(43, 54, 5, 3, 'Pertukaran akademik dengan VNU Vietnam', '2023-02-15', '2023-08-15'),
(44, 55, 7, 4, 'Workshop kesehatan dengan Universiti Brunei Darussalam', '2023-05-01', '2023-05-03'),
(45, 56, 8, 1, 'Kuliah umum dari Royal University of Phnom Penh', '2022-10-10', '2022-10-15'),
(46, 57, 10, 2, 'Penelitian bersama dengan University of Yangon', '2022-07-01', '2022-12-31'),
(47, 58, 30, 3, 'Program akademik ETH Zurich', '2023-01-15', '2023-07-15'),
(48, 59, 26, 4, 'Workshop hukum dengan University of Bologna', '2023-03-01', '2023-03-03'),
(49, 60, 2, 1, 'Dosen tamu dari Universiti Malaya', '2022-09-10', '2022-09-15'),
(50, 61, 1, 2, 'Riset nasional bersama UI', '2022-06-01', '2022-12-01'),
(51, 3, 15, 1, 'Dosen tamu dari Kyoto University', '2023-02-10', '2023-02-15'),
(52, 5, 15, 2, 'Penelitian bersama Tokyo University tentang AI', '2023-03-01', '2023-09-01'),
(53, 7, 15, 3, 'Program akademik dengan Osaka University', '2023-04-01', '2023-10-01'),
(54, 9, 15, 4, 'Workshop teknologi pendidikan dengan Tohoku University', '2023-05-10', '2023-05-12'),
(55, 11, 15, 1, 'Kuliah umum oleh dosen dari Nagoya University', '2023-06-01', '2023-06-03'),
(56, 13, 16, 1, 'Dosen tamu dari Seoul National University', '2023-01-10', '2023-01-15'),
(57, 15, 16, 2, 'Riset bersama bidang energi terbarukan dengan KAIST', '2023-03-01', '2023-09-01'),
(58, 17, 16, 3, 'Pertukaran mahasiswa dengan Yonsei University', '2023-04-01', '2023-10-01'),
(59, 19, 21, 2, 'Publikasi bersama dengan Humboldt University of Berlin', '2022-06-01', '2022-12-01'),
(60, 21, 21, 3, 'Program akademik dengan University of Munich', '2023-01-15', '2023-07-15'),
(61, 23, 21, 4, 'Seminar teknologi dengan Technical University of Berlin', '2023-03-10', '2023-03-12'),
(62, 25, 12, 1, 'Dosen tamu dari MIT', '2022-09-01', '2022-09-05'),
(63, 27, 12, 2, 'Kolaborasi riset dengan Stanford University', '2022-07-01', '2022-12-01'),
(64, 29, 12, 4, 'Workshop inovasi bersama Harvard University', '2023-04-10', '2023-04-12'),
(65, 31, 22, 1, 'Dosen tamu dari Sorbonne University', '2023-01-05', '2023-01-10'),
(66, 33, 22, 2, 'Riset bersama bidang budaya dengan University of Paris', '2023-02-10', '2023-08-10'),
(67, 35, 22, 3, 'Pertukaran akademik dengan Sciences Po', '2023-03-15', '2023-09-15'),
(68, 37, 22, 4, 'Workshop bersama ENS Paris bidang literasi', '2023-04-20', '2023-04-22'),
(69, 39, 4, 2, 'Kolaborasi riset agrikultur dengan Chulalongkorn University', '2023-02-01', '2023-07-31'),
(70, 41, 4, 4, 'Seminar regional bersama Mahidol University', '2023-03-10', '2023-03-12');

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
(20, 49, 30, 1, 'Kuliah dosen tamu oleh Universitas Halu Oleo', '2022-10-15', '2022-10-20'),
(21, 3, 10, 1, 'Kuliah umum dari Universitas Maritim Raja Ali Haji', '2023-04-01', '2023-04-05'),
(22, 6, 6, 2, 'Penelitian bersama Universitas Sriwijaya', '2022-03-10', '2022-12-10'),
(23, 9, 7, 3, 'Pertukaran akademik dengan Universitas Bengkulu', '2023-02-01', '2023-08-01'),
(24, 12, 8, 4, 'Seminar budaya dengan Universitas Lampung', '2023-05-05', '2023-05-07'),
(25, 15, 1, 1, 'Kuliah dosen tamu oleh Universitas Syiah Kuala', '2022-09-01', '2022-09-05'),
(26, 17, 2, 2, 'Riset dengan Universitas Sumatera Utara', '2022-06-01', '2022-12-01'),
(27, 20, 3, 3, 'Program akademik dengan Universitas Andalas', '2023-01-10', '2023-06-10'),
(28, 23, 4, 4, 'Workshop ekonomi dengan Universitas Riau', '2023-04-10', '2023-04-12'),
(29, 26, 5, 1, 'Kuliah umum dari Universitas Jambi', '2022-10-01', '2022-10-05'),
(30, 29, 9, 2, 'Penelitian lingkungan dengan Universitas Bangka Belitung', '2023-02-01', '2023-08-01'),
(31, 32, 31, 3, 'Pertukaran akademik dengan Universitas Pattimura', '2023-03-01', '2023-09-01'),
(32, 34, 32, 4, 'Seminar teknologi dengan Universitas Khairun', '2023-04-20', '2023-04-22'),
(33, 36, 33, 1, 'Dosen tamu dari Universitas Cenderawasih', '2022-08-01', '2022-08-05'),
(34, 38, 34, 2, 'Riset teknik bersama Universitas Papua Barat', '2023-01-01', '2023-07-01'),
(35, 40, 35, 3, 'Program akademik dengan Universitas Papua Pegunungan', '2022-06-01', '2022-12-01'),
(36, 42, 36, 4, 'Workshop lingkungan Universitas Papua Tengah', '2023-05-10', '2023-05-12'),
(37, 44, 37, 1, 'Kuliah umum Universitas Papua Selatan', '2022-09-01', '2022-09-05'),
(38, 46, 38, 2, 'Riset sosial dengan Universitas Papua Barat Daya', '2023-02-01', '2023-08-01'),
(39, 48, 26, 3, 'Program akademik dengan Universitas Negeri Gorontalo', '2022-07-01', '2022-12-31'),
(40, 50, 28, 4, 'Seminar bisnis dengan Universitas Sulawesi Barat', '2023-03-10', '2023-03-12'),
(41, 52, 27, 1, 'Kuliah tamu oleh Universitas Tadulako', '2022-10-01', '2022-10-05'),
(42, 53, 25, 2, 'Kolaborasi teknik dengan Universitas Sam Ratulangi', '2023-01-15', '2023-07-15'),
(43, 54, 29, 3, 'Akademik dengan Universitas Hasanuddin', '2022-05-01', '2022-11-01'),
(44, 55, 30, 4, 'Workshop pertanian Universitas Halu Oleo', '2023-04-20', '2023-04-22'),
(45, 56, 11, 1, 'Kuliah dosen tamu Universitas Negeri Jakarta', '2022-08-10', '2022-08-15'),
(46, 57, 13, 2, 'Penelitian bersama Universitas Diponegoro', '2023-01-01', '2023-07-01'),
(47, 58, 14, 3, 'Program akademik UGM Yogyakarta', '2022-06-01', '2022-12-01'),
(48, 59, 15, 4, 'Workshop dengan Universitas Airlangga', '2023-05-10', '2023-05-12'),
(49, 60, 16, 1, 'Kuliah tamu dari Universitas Sultan Ageng Tirtayasa', '2022-09-01', '2022-09-05'),
(50, 61, 19, 2, 'Kolaborasi pertanian dengan Universitas Nusa Cendana', '2023-02-01', '2023-08-01'),
(51, 4, 12, 1, 'Dosen tamu dari Universitas Padjadjaran', '2023-02-01', '2023-02-05'),
(52, 6, 12, 2, 'Penelitian bersama bidang agribisnis dengan ITB', '2023-03-01', '2023-09-01'),
(53, 8, 12, 3, 'Pertukaran akademik dengan Universitas Telkom', '2023-04-01', '2023-10-01'),
(54, 10, 12, 4, 'Seminar nasional di Universitas Pendidikan Indonesia', '2023-05-10', '2023-05-12'),
(55, 12, 12, 1, 'Kuliah umum dari Universitas Islam Bandung', '2023-06-01', '2023-06-03'),
(56, 31, 13, 1, 'Kuliah umum dari Universitas Negeri Semarang', '2023-01-10', '2023-01-12'),
(57, 33, 13, 2, 'Penelitian sosial dengan Universitas Diponegoro', '2022-07-01', '2022-12-01'),
(58, 35, 13, 4, 'Workshop bahasa di Universitas Muhammadiyah Surakarta', '2023-05-10', '2023-05-12'),
(59, 37, 29, 1, 'Kuliah umum dari Universitas Hasanuddin', '2022-10-01', '2022-10-05'),
(60, 39, 29, 3, 'Program akademik maritim dengan UNHAS', '2023-01-10', '2023-06-10'),
(61, 41, 29, 4, 'Workshop lingkungan pesisir di Makassar', '2023-03-01', '2023-03-03'),
(62, 43, 18, 2, 'Riset bersama tentang pertanian di Universitas Mataram', '2023-02-01', '2023-08-01'),
(63, 45, 18, 3, 'Pertukaran mahasiswa dengan Universitas Mataram', '2022-05-01', '2022-11-01'),
(64, 47, 18, 4, 'Seminar nasional ketahanan pangan', '2023-05-01', '2023-05-03'),
(65, 49, 14, 1, 'Dosen tamu dari Universitas Negeri Yogyakarta', '2023-01-05', '2023-01-07'),
(66, 51, 14, 2, 'Riset sosial dengan Universitas Gadjah Mada', '2023-02-15', '2023-08-15'),
(67, 53, 14, 3, 'Program akademik bersama Universitas Islam Indonesia', '2023-03-01', '2023-09-01'),
(68, 55, 14, 4, 'Workshop nasional pendidikan di Yogyakarta', '2023-04-10', '2023-04-12'),
(69, 57, 20, 2, 'Penelitian lingkungan dengan Universitas Tanjungpura', '2023-01-20', '2023-07-20'),
(70, 59, 20, 3, 'Program akademik konservasi hutan tropis', '2023-03-05', '2023-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mahasiswa_id` int(11) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`mahasiswa_id`, `npm`, `nama`, `semester`, `id_jurusan`, `id_fakultas`) VALUES
(1, '22171001', 'Ahmad Fauzi', 3, 5, 1),
(2, '22171002', 'Budi Santoso', 6, 48, 5),
(3, '22171003', 'Citra Dewi', 2, 11, 3),
(4, '22171004', 'Dewi Anggraini', 8, 9, 3),
(5, '22171005', 'Eka Putri', 1, 14, 3),
(6, '22171006', 'Fajar Hidayat', 5, 23, 3),
(7, '22171007', 'Gita Ramadhani', 4, 51, 5),
(8, '22171008', 'Hendra Wijaya', 7, 50, 5),
(9, '22171009', 'Intan Permata', 3, 2, 1),
(10, '22171010', 'Joko Riyanto', 6, 6, 1),
(11, '22171011', 'Kiki Amelia', 2, 48, 5),
(12, '22171012', 'Lina Marlina', 4, 56, 6),
(13, '22171013', 'Maya Sari', 7, 72, 8),
(14, '22171014', 'Nadia Zahra', 1, 17, 3),
(15, '22171015', 'Omar Bakri', 5, 31, 4),
(16, '22171016', 'Putri Ayu', 8, 33, 4),
(17, '22171017', 'Qasim Alamsyah', 4, 69, 7),
(18, '22171018', 'Rina Aprilia', 2, 21, 3),
(19, '22171019', 'Sari Indah', 6, 15, 3),
(20, '22171020', 'Taufik Hidayat', 3, 16, 3),
(21, '22171021', 'Umi Latifah', 7, 38, 4),
(22, '22171022', 'Vera Maulida', 1, 61, 6),
(23, '22171023', 'Wahyu Setiawan', 5, 14, 3),
(24, '22171024', 'Xenia Marlina', 4, 44, 5),
(25, '22171025', 'Yusuf Maulana', 2, 45, 5),
(26, '22171026', 'Zahra Lestari', 6, 47, 5),
(27, '22171027', 'Andi Saputra', 3, 55, 5),
(28, '22171028', 'Bella Anggraini', 8, 65, 7),
(29, '22171029', 'Cahya Nugroho', 1, 9, 3),
(30, '22171030', 'Dewi Sartika', 7, 38, 4),
(31, '22171031', 'Eko Supriadi', 4, 48, 5),
(32, '22171032', 'Farah Amalia', 2, 56, 6),
(33, '22171033', 'Galih Aditya', 6, 51, 5),
(34, '22171034', 'Hana Oktavia', 3, 65, 7),
(35, '22171035', 'Imam Nawawi', 5, 14, 3),
(36, '22171036', 'Jihan Khairunnisa', 8, 72, 8),
(37, '22171037', 'Kurniawan Dwi', 2, 70, 7),
(38, '22171038', 'Lina Marlina', 3, 9, 3),
(39, '22171039', 'Miko Prasetyo', 7, 49, 5),
(40, '22171040', 'Nadia Zahra', 1, 61, 6),
(41, '22171041', 'Omar Bakri', 5, 21, 3),
(42, '22171042', 'Pipit Ayuningtyas', 8, 38, 4),
(43, '22171043', 'Qory Kurnia', 4, 65, 7),
(44, '22171044', 'Rian Hidayat', 2, 17, 3),
(45, '22171045', 'Santi Agustin', 6, 51, 5),
(46, '22171046', 'Teguh Prasetyo', 3, 44, 5),
(47, '22171047', 'Ujang Sopiyan', 7, 7, 1),
(48, '22171048', 'Vina Oktaviani', 1, 2, 1),
(49, '22171049', 'Wulan Fitriani', 4, 5, 1),
(50, '22171050', 'Yudi Hermawan', 6, 48, 5);

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
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_id` int(11) NOT NULL,
  `nama_program` varchar(150) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `tipe_program` enum('Inbound','Outbound') NOT NULL,
  `id_negara` int(11) NOT NULL,
  `universitas_id` int(11) NOT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  `tahun` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_id`, `nama_program`, `mahasiswa_id`, `tipe_program`, `id_negara`, `universitas_id`, `durasi`, `tahun`, `semester`) VALUES
(1, 'Pertukaran Pelajar', 1, 'Outbound', 1, 1, '4', 2023, '2'),
(2, 'Riset', 2, 'Inbound', 2, 2, '6', 2022, '1'),
(3, 'Magang', 3, 'Outbound', 1, 1, '3', 2024, '2'),
(4, 'Double Degree', 4, 'Inbound', 4, 4, '5', 2021, '1'),
(5, 'Pertukaran Pelajar', 5, 'Outbound', 1, 1, '4', 2023, '1'),
(6, 'Riset', 6, 'Inbound', 6, 6, '4', 2024, '2'),
(7, 'Magang', 7, 'Outbound', 1, 1, '4', 2025, '2'),
(8, 'Double Degree', 8, 'Inbound', 8, 8, '3', 2021, '2'),
(9, 'Pertukaran Pelajar', 9, 'Outbound', 1, 1, '3', 2022, '2'),
(10, 'Riset', 10, 'Inbound', 10, 10, '3', 2023, '1'),
(11, 'Magang', 11, 'Outbound', 1, 1, '1', 2024, '2'),
(12, 'Double Degree', 12, 'Inbound', 12, 12, '3', 2025, '1'),
(13, 'Pertukaran Pelajar', 13, 'Outbound', 1, 1, '10', 2022, '1'),
(14, 'Riset', 14, 'Inbound', 14, 14, '4', 2023, '2'),
(15, 'Magang', 15, 'Outbound', 1, 1, '5', 2024, '1'),
(16, 'Double Degree', 16, 'Inbound', 16, 16, '5', 2025, '2'),
(17, 'Pertukaran Pelajar', 17, 'Outbound', 1, 1, '1', 2023, '1'),
(18, 'Riset', 18, 'Inbound', 18, 18, '2', 2024, '2'),
(19, 'Magang', 19, 'Outbound', 1, 1, '6', 2025, '2'),
(20, 'Double Degree', 20, 'Inbound', 20, 20, '1', 2021, '1'),
(21, 'Pertukaran Pelajar', 21, 'Outbound', 1, 1, '2', 2022, '2'),
(22, 'Riset', 22, 'Inbound', 22, 22, '5', 2023, '1'),
(23, 'Magang', 23, 'Outbound', 1, 1, '4', 2024, '2'),
(24, 'Double Degree', 24, 'Inbound', 24, 24, '2', 2025, '1'),
(25, 'Pertukaran Pelajar', 25, 'Outbound', 1, 1, '1', 2021, '2'),
(26, 'Riset', 26, 'Inbound', 26, 26, '3', 2022, '1'),
(27, 'Magang', 27, 'Outbound', 1, 1, '5', 2023, '2'),
(28, 'Double Degree', 28, 'Inbound', 28, 28, '10', 2024, '1'),
(29, 'Pertukaran Pelajar', 29, 'Outbound', 1, 1, '3', 2025, '2'),
(30, 'Riset', 30, 'Inbound', 30, 30, '6', 2021, '1'),
(31, 'Magang', 31, 'Outbound', 1, 1, '2', 2022, '2'),
(32, 'Double Degree', 32, 'Inbound', 3, 3, '1', 2023, '1'),
(33, 'Pertukaran Pelajar', 33, 'Outbound', 1, 1, '3', 2024, '2'),
(34, 'Riset', 34, 'Inbound', 5, 5, '2', 2025, '1'),
(35, 'Magang', 35, 'Outbound', 1, 1, '5', 2021, '2'),
(36, 'Double Degree', 36, 'Inbound', 7, 7, '10', 2022, '1'),
(37, 'Pertukaran Pelajar', 37, 'Outbound', 1, 1, '4', 2023, '2'),
(38, 'Riset', 38, 'Inbound', 9, 9, '5', 2024, '1'),
(39, 'Magang', 39, 'Outbound', 1, 1, '3', 2025, '2'),
(40, 'Double Degree', 40, 'Inbound', 11, 11, '6', 2021, '1'),
(41, 'Pertukaran Pelajar', 41, 'Outbound', 1, 1, '2', 2022, '2'),
(42, 'Riset', 42, 'Inbound', 13, 13, '1', 2023, '1'),
(43, 'Magang', 43, 'Outbound', 1, 1, '5', 2024, '2'),
(44, 'Double Degree', 44, 'Inbound', 15, 15, '10', 2025, '1'),
(45, 'Pertukaran Pelajar', 45, 'Outbound', 1, 1, '4', 2021, '1'),
(46, 'Riset', 46, 'Inbound', 17, 17, '1', 2022, '2'),
(47, 'Magang', 47, 'Outbound', 1, 1, '2', 2023, '1'),
(48, 'Double Degree', 48, 'Inbound', 19, 19, '10', 2024, '2'),
(49, 'Pertukaran Pelajar', 49, 'Outbound', 1, 1, '3', 2025, '1'),
(50, 'Riset', 50, 'Inbound', 21, 21, '5', 2021, '2');

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `fakultas_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`id`, `nama_prodi`, `fakultas_id`) VALUES
(1, 'Manajemen', 1),
(2, 'Akuntansi', 1),
(3, 'Ilmu Ekonomi dan Studi Pembangunan', 1),
(4, 'Ekonomi Pembangunan', 1),
(5, 'Bisnis Digital', 1),
(6, 'Ilmu Hukum', 2),
(7, 'Pendidikan Bahasa dan Sastra Indonesia', 3),
(8, 'Pendidikan Bahasa Inggris', 3),
(9, 'Pendidikan Biologi', 3),
(10, 'Pendidikan Kimia', 3),
(11, 'Pendidikan Fisika', 3),
(12, 'Pendidikan Matematika', 3),
(13, 'Pendidikan Pancasila dan Kewarganegaraan', 3),
(14, 'Pendidikan Sejarah', 3),
(15, 'Pendidikan Ekonomi', 3),
(16, 'Pendidikan Geografi', 3),
(17, 'Pendidikan Jasmani, Kesehatan, dan Rekreasi', 3),
(18, 'Pendidikan Guru Sekolah Dasar', 3),
(19, 'Pendidikan Anak Usia Dini', 3),
(20, 'Bimbingan dan Konseling', 3),
(21, 'Pendidikan Vokasional Teknologi Informasi', 3),
(22, 'Agroteknologi', 4),
(23, 'Agribisnis', 4),
(24, 'Ilmu Kelautan', 4),
(25, 'Teknik Pertanian', 4),
(26, 'Nutrisi dan Teknologi Pakan', 4),
(27, 'Kehutanan', 4),
(28, 'Budidaya Perairan', 4),
(29, 'Proteksi Tanaman', 4),
(30, 'Penyuluhan Pertanian', 4),
(31, 'Teknik Sipil', 5),
(32, 'Teknik Elektro', 5),
(33, 'Teknik Mesin', 5),
(34, 'Teknik Kimia', 5),
(35, 'Teknik Informatika', 5),
(36, 'Teknik Arsitektur', 5),
(37, 'Teknik Geodesi', 5),
(38, 'Ilmu Administrasi Publik', 6),
(39, 'Ilmu Pemerintahan', 6),
(40, 'Ilmu Komunikasi', 6),
(41, 'Sosiologi', 6),
(42, 'Hubungan Internasional', 6),
(43, 'Matematika', 7),
(44, 'Fisika', 7),
(45, 'Kimia', 7),
(46, 'Biologi', 7),
(47, 'Ilmu Komputer', 7),
(48, 'Statistika', 7),
(49, 'Farmasi', 7),
(50, 'Pendidikan Dokter', 8),
(51, 'Ilmu Keperawatan', 8),
(52, 'Farmasi Klinis', 8);

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

-- --------------------------------------------------------

--
-- Table structure for table `status_kerja`
--

CREATE TABLE `status_kerja` (
  `id_status` int(11) NOT NULL,
  `posisi_kerja` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_kerja`
--

INSERT INTO `status_kerja` (`id_status`, `posisi_kerja`) VALUES
(1, 'CEO'),
(2, 'Manager'),
(3, 'Staf Ahli'),
(4, 'Marketing Specialist'),
(5, 'Graphic Designer'),
(6, 'Software Engineer'),
(7, 'Content Creator'),
(8, 'Accountant'),
(9, 'HR Specialist'),
(10, 'Supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `universitas`
--

CREATE TABLE `universitas` (
  `universitas_id` int(11) NOT NULL,
  `nama_universitas` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `universitas`
--

INSERT INTO `universitas` (`universitas_id`, `nama_universitas`) VALUES
(1, 'Universitas Lampung'),
(2, 'Universiti Malaya'),
(3, 'National University of Singapore'),
(4, 'Chulalongkorn University'),
(5, 'Vietnam National University'),
(6, 'University of the Philippines'),
(7, 'Universiti Brunei Darussalam'),
(8, 'Royal University of Phnom Penh'),
(9, 'National University of Laos'),
(10, 'University of Yangon'),
(11, 'Timor Leste National University'),
(12, 'Harvard University'),
(13, 'McGill University'),
(14, 'Tsinghua University'),
(15, 'University of Tokyo'),
(16, 'Seoul National University'),
(17, 'Indian Institute of Technology'),
(18, 'University of Melbourne'),
(19, 'Lomonosov Moscow State University'),
(20, 'King Saud University'),
(21, 'Humboldt University of Berlin'),
(22, 'Sorbonne University'),
(23, 'University of Oxford'),
(24, 'University of São Paulo'),
(25, 'University of Cape Town'),
(26, 'University of Bologna'),
(27, 'University of Amsterdam'),
(28, 'University of Barcelona'),
(29, 'Middle East Technical University'),
(30, 'ETH Zurich');

-- --------------------------------------------------------

--
-- Table structure for table `wcu_data`
--

CREATE TABLE `wcu_data` (
  `id` int(11) NOT NULL,
  `affiliation_name` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `total_paper` float DEFAULT NULL,
  `citation_ex_self_citation` float DEFAULT NULL,
  `faculty_staff_international` float DEFAULT NULL,
  `faculty_staff_national` float DEFAULT NULL,
  `fte_staff` float DEFAULT NULL,
  `citation_per_faculty` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wcu_data`
--

INSERT INTO `wcu_data` (`id`, `affiliation_name`, `year`, `total_paper`, `citation_ex_self_citation`, `faculty_staff_international`, `faculty_staff_national`, `fte_staff`, `citation_per_faculty`) VALUES
(1, 'IPB', 2020, 5.622, 12383.9, 7.588, 10.987, 6.56, 1887.79),
(2, 'IPB', 2021, 4.092, 1226.05, 8.796, 11.011, 12.081, 101.49),
(3, 'IPB', 2022, 3.144, 12623.9, 8.492, 7.123, 6.818, 1851.55),
(4, 'IPB', 2023, 4.284, 4303.03, 5.723, 9.319, 7.912, 543.86),
(5, 'IPB', 2024, 7.283, 2243.67, 3.629, 8.664, 9.561, 234.67),
(6, 'UI', 2020, 8.496, 2995.92, 5.628, 10.924, 5.465, 548.2),
(7, 'UI', 2021, 7.253, 2631.55, 1.585, 14.489, 14.656, 179.55),
(8, 'UI', 2022, 8.659, 4307.67, 1.879, 11.842, 9.402, 458.17),
(9, 'UI', 2023, 3.854, 6689.71, 1.309, 14.093, 7.588, 881.62),
(10, 'UI', 2024, 7.638, 4396.39, 5.681, 10.467, 6.849, 641.9),
(11, 'ITB', 2020, 9.787, 10189.2, 9.455, 13.948, 10.979, 928.06),
(12, 'ITB', 2021, 9.453, 1606.16, 2.764, 5.452, 8.253, 194.61),
(13, 'ITB', 2022, 5.721, 3891.86, 8.459, 8.568, 7.809, 498.38),
(14, 'ITB', 2023, 6.799, 2261.55, 8.22, 5.746, 14.869, 152.1),
(15, 'ITB', 2024, 8.406, 2983.95, 1.05, 13.155, 12.069, 247.24),
(16, 'UGM', 2020, 8.103, 10140.9, 1.666, 8.585, 6.159, 1646.51),
(17, 'UGM', 2021, 9.042, 8291.23, 3.978, 5.636, 8.11, 1022.35),
(18, 'UGM', 2022, 5.276, 9620.08, 6.738, 13.872, 9.722, 989.52),
(19, 'UGM', 2023, 3.837, 9415.56, 7.847, 10.613, 12.71, 740.8),
(20, 'UGM', 2024, 6.457, 7034.16, 4.848, 5.254, 6.079, 1157.12),
(21, 'UNPAD', 2020, 3.22, 8455.13, 3.829, 10.086, 14.076, 600.68),
(22, 'UNPAD', 2021, 4.745, 5629.79, 7.8, 7.288, 5.77, 975.7),
(23, 'UNPAD', 2022, 5.028, 2515.27, 9.367, 13.081, 11.334, 221.92),
(24, 'UNPAD', 2023, 9.1, 10545.9, 2.679, 13.926, 10.393, 1014.71),
(25, 'UNPAD', 2024, 8.652, 11701.1, 3.862, 6.101, 7.279, 1607.52),
(26, 'UNDIP', 2020, 5.99, 10725.2, 8.747, 5.07, 10.107, 1061.16),
(27, 'UNDIP', 2021, 5.922, 3276.35, 2.079, 8.376, 14.429, 227.07),
(28, 'UNDIP', 2022, 5.262, 6984.88, 7.327, 8.636, 14.718, 474.58),
(29, 'UNDIP', 2023, 9.737, 3647.28, 5.475, 8.009, 7.848, 464.74),
(30, 'UNDIP', 2024, 3.258, 8119.55, 5.524, 5.515, 7.786, 1042.84),
(31, 'UNS', 2020, 9.358, 3494.52, 2.304, 9.895, 14.857, 235.21),
(32, 'UNS', 2021, 4.694, 8901.69, 7.855, 7.376, 12.282, 724.78),
(33, 'UNS', 2022, 5.574, 8403.82, 6.702, 10.358, 5.903, 1423.65),
(34, 'UNS', 2023, 8.847, 4509.75, 2.679, 5.408, 10.909, 413.4),
(35, 'UNS', 2024, 7.743, 707.348, 5.609, 7.265, 11.452, 61.77),
(36, 'UNAIR', 2020, 4.221, 9136.72, 4.481, 14.367, 6.375, 1433.21),
(37, 'UNAIR', 2021, 5.387, 1918.42, 9.322, 13.773, 7.579, 253.12),
(38, 'UNAIR', 2022, 7.62, 10715.3, 5.997, 10.297, 7.419, 1444.3),
(39, 'UNAIR', 2023, 3.652, 11715.2, 9.104, 11.331, 8.39, 1396.33),
(40, 'UNAIR', 2024, 5.444, 9574.45, 9.074, 13.871, 12.799, 748.06);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`),
  ADD UNIQUE KEY `npm` (`npm`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_status_kerja` (`id_status_kerja`),
  ADD KEY `fk_program_studi` (`program_studi_id`),
  ADD KEY `fk_status_kerja` (`status_kerja_id`);

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
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`),
  ADD UNIQUE KEY `npm` (`npm`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`),
  ADD KEY `mahasiswa_id` (`mahasiswa_id`),
  ADD KEY `id_negara` (`id_negara`),
  ADD KEY `universitas_id` (`universitas_id`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fakultas_id` (`fakultas_id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `status_kerja`
--
ALTER TABLE `status_kerja`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`universitas_id`);

--
-- Indexes for table `wcu_data`
--
ALTER TABLE `wcu_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `mahasiswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `status_kerja`
--
ALTER TABLE `status_kerja`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `universitas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wcu_data`
--
ALTER TABLE `wcu_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `alumni_ibfk_2` FOREIGN KEY (`id_status_kerja`) REFERENCES `status_kerja` (`id_status`),
  ADD CONSTRAINT `fk_program_studi` FOREIGN KEY (`program_studi_id`) REFERENCES `program_studi` (`id`),
  ADD CONSTRAINT `fk_status_kerja` FOREIGN KEY (`status_kerja_id`) REFERENCES `status_kerja` (`id_status`);

--
-- Constraints for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `jurusan_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`);

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`mahasiswa_id`),
  ADD CONSTRAINT `program_ibfk_2` FOREIGN KEY (`id_negara`) REFERENCES `negara` (`id_negara`),
  ADD CONSTRAINT `program_ibfk_3` FOREIGN KEY (`universitas_id`) REFERENCES `universitas` (`universitas_id`);

--
-- Constraints for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD CONSTRAINT `program_studi_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id_fakultas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
