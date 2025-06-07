-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2025 at 03:02 PM
-- Server version: 8.0.40
-- PHP Version: 8.1.10

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
  `id_alumni` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `npm` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tahun_lulus` date NOT NULL,
  `id_jurusan` int NOT NULL,
  `id_status_kerja` int DEFAULT NULL,
  `waktu_dapat_kerja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int NOT NULL,
  `nama_fakultas` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
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
  `id_indeks` int NOT NULL,
  `tipe` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `L` int DEFAULT NULL,
  `P` int DEFAULT NULL,
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
  `id_jenis` int NOT NULL,
  `nama_jenis` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
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
  `id_jurusan` int NOT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_fakultas` int DEFAULT NULL
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
  `id_kolaborasi_internasional` int NOT NULL,
  `id_jurusan` int DEFAULT NULL,
  `id_negara` int DEFAULT NULL,
  `id_jenis` int DEFAULT NULL,
  `nama_kolaborasi` text COLLATE utf8mb4_general_ci,
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
  `id_kolaborasi_nasional` int NOT NULL,
  `id_jurusan` int DEFAULT NULL,
  `id_provinsi` int DEFAULT NULL,
  `id_jenis` int DEFAULT NULL,
  `nama_kolaborasi` text COLLATE utf8mb4_general_ci,
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
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `mahasiswa_id` int NOT NULL,
  `npm` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `semester` int NOT NULL,
  `id_jurusan` int NOT NULL,
  `id_fakultas` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `id_negara` int NOT NULL,
  `nama_negara` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kode_iso` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `program_id` int NOT NULL,
  `nama_program` varchar(150) NOT NULL,
  `mahasiswa_id` int NOT NULL,
  `tipe_program` enum('Inbound','Outbound') NOT NULL,
  `id_negara` int NOT NULL,
  `universitas_id` int NOT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  `tahun` int NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int NOT NULL,
  `nama_provinsi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kode_posisi` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `id_status` int NOT NULL,
  `posisi_kerja` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `universitas`
--

CREATE TABLE `universitas` (
  `universitas_id` int NOT NULL,
  `nama_universitas` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  ADD KEY `id_status_kerja` (`id_status_kerja`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `mahasiswa_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `program_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `status_kerja`
--
ALTER TABLE `status_kerja`
  MODIFY `id_status` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `universitas_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `alumni_ibfk_2` FOREIGN KEY (`id_status_kerja`) REFERENCES `status_kerja` (`id_status`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
