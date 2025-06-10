-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2025 pada 19.31
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

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
-- Struktur dari tabel `alumni`
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
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `nama`, `npm`, `tahun_lulus`, `id_jurusan`, `id_status_kerja`, `waktu_dapat_kerja`, `program_studi_id`, `status_kerja_id`) VALUES
(1, 'Ahmad Fauzi', '1817051001', '2022-08-15', 10, 2, '2022-10-01', 10, 2),
(2, 'Siti Rahayu', '1957051002', '2023-07-20', 1, 3, '2023-09-01', 1, 3),
(3, 'Bambang Susanto', '1717051003', '2021-09-01', 5, 1, '2021-11-10', 5, 1),
(4, 'Dewi Nurmala', '2017051004', '2024-06-01', 12, 5, '2024-08-01', 12, 5),
(5, 'Eko Prasetya', '1917051005', '2023-08-25', 20, 2, '2023-11-15', 20, 2),
(6, 'Fitri Lestari', '1857051006', '2022-07-10', 2, 4, '2022-09-01', 2, 4),
(7, 'Ganesha Putra', '2017051007', '2024-05-30', 25, 2, '2024-07-20', 25, 2),
(8, 'Hana Wulandari', '1717051008', '2021-09-05', 18, 3, '2021-12-01', 18, 3),
(9, 'Indra Wijaya', '1917051009', '2023-06-10', 1, 2, '2023-09-01', 1, 2),
(10, 'Juliati Sari', '1857051010', '2022-07-05', 7, 5, '2022-09-15', 7, 5),
(11, 'Kevin Darmawan', '1817051011', '2022-09-01', 15, 2, '2022-11-05', 15, 2),
(12, 'Lina Puspita', '1957051012', '2023-08-10', 3, 3, '2023-10-01', 3, 3),
(13, 'M. Arif Rahman', '1717051013', '2021-10-01', 6, 1, '2022-01-20', 6, 1),
(14, 'Nia Ramadhani', '2017051014', '2024-07-01', 18, 5, '2024-09-01', 18, 5),
(15, 'Oscar Wijaya', '1917051015', '2023-09-01', 22, 2, '2023-12-01', 22, 2),
(16, 'Putri Handayani', '1857051016', '2022-08-01', 4, 4, '2022-10-01', 4, 4),
(17, 'Rizal Kurniawan', '2017051017', '2024-06-15', 25, 2, '2024-08-01', 25, 2),
(18, 'Santi Melati', '1717051018', '2021-10-10', 19, 3, '2022-01-15', 19, 3),
(19, 'Taufik Hidayat', '1917051019', '2023-07-01', 9, 2, '2023-10-01', 9, 2),
(20, 'Ulfah Cahaya', '1857051020', '2022-06-20', 11, 5, '2022-08-20', 11, 5),
(21, 'Vina Anggraini', '1817051021', '2022-09-10', 16, 2, '2022-11-20', 16, 2),
(22, 'Wayan Sucipta', '1957051022', '2023-08-20', 8, 3, '2023-10-10', 8, 3),
(23, 'Xena Putri', '1717051023', '2021-10-15', 13, 1, '2022-02-01', 13, 1),
(24, 'Yudi Ramadhan', '2017051024', '2024-07-10', 19, 5, '2024-09-10', 19, 5),
(25, 'Zahra Khairani', '1917051025', '2023-09-15', 23, 2, '2023-12-10', 23, 2),
(26, 'Aditama Putra', '1857051026', '2022-08-10', 14, 4, '2022-10-10', 14, 4),
(27, 'Bella Permata', '2017051027', '2024-06-20', 25, 2, '2024-08-15', 25, 2),
(28, 'Candra Buana', '1717051028', '2021-10-20', 20, 3, '2022-02-10', 20, 3),
(29, 'Dian Kusuma', '1917051029', '2023-07-15', 17, 2, '2023-10-15', 17, 2),
(30, 'Elvin Nugraha', '1857051030', '2022-06-25', 21, 5, '2022-08-25', 21, 5),
(31, 'Fajar Kurnia', '1817051031', '2022-09-20', 10, 2, '2022-12-01', 10, 2),
(32, 'Gita Anjani', '1957051032', '2023-08-30', 1, 3, '2023-11-01', 1, 3),
(33, 'Hendra Wijaya', '1717051033', '2021-11-01', 5, 1, '2022-01-25', 5, 1),
(34, 'Ira Savitri', '2017051034', '2024-07-20', 12, 5, '2024-09-20', 12, 5),
(35, 'Joko Susanto', '1917051035', '2023-09-20', 20, 2, '2023-12-15', 20, 2),
(36, 'Kartika Dewi', '1857051036', '2022-08-20', 2, 4, '2022-10-20', 2, 4),
(37, 'Lukman Hakim', '2017051037', '2024-06-25', 25, 2, '2024-08-20', 25, 2),
(38, 'Maya Sari', '1717051038', '2021-11-05', 18, 3, '2022-02-15', 18, 3),
(39, 'Nanda Putra', '1917051039', '2023-07-20', 7, 2, '2023-10-20', 7, 2),
(40, 'Okta Viani', '1857051040', '2022-07-01', 11, 5, '2022-09-01', 11, 5),
(41, 'Pandu Wiguna', '1817051041', '2022-10-01', 15, 2, '2022-12-05', 15, 2),
(42, 'Qiana Maharani', '1957051042', '2023-09-01', 3, 3, '2023-11-01', 3, 3),
(43, 'Raka Satria', '1717051043', '2021-11-10', 6, 1, '2022-02-20', 6, 1),
(44, 'Sinta Amelia', '2017051044', '2024-07-30', 18, 5, '2024-09-30', 18, 5),
(45, 'Tito Ardian', '1917051045', '2023-10-01', 22, 2, '2024-01-01', 22, 2),
(46, 'Ulfa Rizky', '1857051046', '2022-09-01', 4, 4, '2022-11-01', 4, 4),
(47, 'Vicky Darma', '2017051047', '2024-07-05', 25, 2, '2024-09-01', 25, 2),
(48, 'Wulan Septiani', '1717051048', '2021-11-15', 19, 3, '2022-02-25', 19, 3),
(49, 'Xavier Reynaldi', '1917051049', '2023-08-01', 9, 2, '2023-11-01', 9, 2),
(50, 'Yuliana Dewi', '1857051050', '2022-07-10', 13, 5, '2022-09-10', 13, 5),
(51, 'Zaky Maulana', '1817051051', '2022-10-10', 16, 2, '2022-12-15', 16, 2),
(52, 'Alia Fitri', '1957051052', '2023-09-10', 8, 3, '2023-11-10', 8, 3),
(53, 'Bagus Cahyo', '1717051053', '2021-11-20', 13, 1, '2022-03-01', 13, 1),
(54, 'Citra Dewi', '2017051054', '2024-08-05', 19, 5, '2024-10-05', 19, 5),
(55, 'Dicky Kurniawan', '1917051055', '2023-10-10', 23, 2, '2024-01-10', 23, 2),
(56, 'Ema Rosalia', '1857051056', '2022-09-10', 14, 4, '2022-11-10', 14, 4),
(57, 'Fahmi Ramadhan', '2017051057', '2024-07-15', 25, 2, '2024-09-10', 25, 2),
(58, 'Gita Lestari', '1717051058', '2021-11-25', 20, 3, '2022-03-05', 20, 3),
(59, 'Hadi Santoso', '1917051059', '2023-08-10', 17, 2, '2023-11-10', 17, 2),
(60, 'Ika Putri', '1857051060', '2022-07-20', 21, 5, '2022-09-20', 21, 5),
(61, 'Jaka Permana', '1817051061', '2022-10-20', 10, 2, '2022-12-20', 10, 2),
(62, 'Kiki Amelia', '1957051062', '2023-09-20', 1, 3, '2023-11-20', 1, 3),
(63, 'Lutfi Hidayat', '1717051063', '2021-12-01', 5, 1, '2022-03-10', 5, 1),
(64, 'Mega Wulandari', '2017051064', '2024-08-10', 12, 5, '2024-10-10', 12, 5),
(65, 'Nanda Rizky', '1917051065', '2023-10-20', 20, 2, '2024-01-20', 20, 2),
(66, 'Ola Savitri', '1857051066', '2022-09-20', 2, 4, '2022-11-20', 2, 4),
(67, 'Pramudya Hadi', '2017051067', '2024-07-25', 25, 2, '2024-09-20', 25, 2),
(68, 'Rani Oktaviani', '1717051068', '2021-12-05', 18, 3, '2022-03-15', 18, 3),
(69, 'Surya Pratama', '1917051069', '2023-08-20', 7, 2, '2023-11-20', 7, 2),
(70, 'Tiara Putri', '1857051070', '2022-07-25', 11, 5, '2022-09-25', 11, 5),
(71, 'Umar Abdullah', '1817051071', '2022-11-01', 15, 2, '2023-01-01', 15, 2),
(72, 'Vika Nurlita', '1957051072', '2023-10-01', 3, 3, '2023-12-01', 3, 3),
(73, 'Wira Pratama', '1717051073', '2021-12-10', 6, 1, '2022-03-20', 6, 1),
(74, 'Xenia Azzahra', '2017051074', '2024-08-20', 18, 5, '2024-10-20', 18, 5),
(75, 'Yoga Saputra', '1917051075', '2023-11-01', 22, 2, '2024-02-01', 22, 2),
(76, 'Zaskia Aprilia', '1857051076', '2022-10-01', 4, 4, '2022-12-01', 4, 4),
(77, 'Andika Pratama', '2017051077', '2024-08-25', 25, 2, '2024-10-01', 25, 2),
(78, 'Bunga Lestari', '1717051078', '2021-12-15', 19, 3, '2022-03-25', 19, 3),
(79, 'Cahya Permata', '1917051079', '2023-09-01', 9, 2, '2023-12-01', 9, 2),
(80, 'Dafa Alfarizi', '1857051080', '2022-08-05', 13, 5, '2022-10-05', 13, 5),
(81, 'Erlangga Putra', '1817051081', '2022-11-10', 16, 2, '2023-01-10', 16, 2),
(82, 'Fanny Rahmawati', '1957051082', '2023-10-10', 8, 3, '2023-12-10', 8, 3),
(83, 'Galih Maulana', '1717051083', '2021-12-20', 13, 1, '2022-03-30', 13, 1),
(84, 'Hanna Febriani', '2017051084', '2024-09-01', 19, 5, '2024-11-01', 19, 5),
(85, 'Ivan Hidayat', '1917051085', '2023-11-10', 23, 2, '2024-02-10', 23, 2),
(86, 'Jihan Salma', '1857051086', '2022-08-15', 14, 4, '2022-10-15', 14, 4),
(87, 'Kurnia Sandi', '2017051087', '2024-09-05', 25, 2, '2024-11-05', 25, 2),
(88, 'Lia Mariana', '1717051088', '2021-12-25', 20, 3, '2022-04-01', 20, 3),
(89, 'M. Rafi Akbar', '1917051089', '2023-09-10', 17, 2, '2023-12-10', 17, 2),
(90, 'Nadia Putri', '1857051090', '2022-08-20', 21, 5, '2022-10-20', 21, 5),
(91, 'Omar Faruq', '1817051091', '2022-11-20', 10, 2, '2023-01-20', 10, 2),
(92, 'Pia Lestari', '1957051092', '2023-10-20', 1, 3, '2023-12-20', 1, 3),
(93, 'Raihan Naufal', '1717051093', '2022-01-01', 5, 1, '2022-04-05', 5, 1),
(94, 'Selly Melinda', '2017051094', '2024-09-15', 12, 5, '2024-11-15', 12, 5),
(95, 'Tegar Setiawan', '1917051095', '2023-11-20', 20, 2, '2024-02-20', 20, 2),
(96, 'Uswatun Hasanah', '1857051096', '2022-09-01', 2, 4, '2022-11-01', 2, 4),
(97, 'Vino Septian', '2017051097', '2024-09-20', 25, 2, '2024-11-20', 25, 2),
(98, 'Wulan Oktaviani', '1717051098', '2022-01-05', 18, 3, '2022-04-10', 18, 3),
(99, 'Yudha Firmansyah', '1917051099', '2023-10-01', 7, 2, '2023-12-20', 7, 2),
(100, 'Zahira Kamila', '1857051100', '2022-08-01', 11, 5, '2022-10-01', 11, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fakultas`
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
-- Struktur dari tabel `indeks_kolaborasi`
--

CREATE TABLE `indeks_kolaborasi` (
  `id_indeks` int(11) NOT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `P` int(11) DEFAULT NULL,
  `nilai_indeks` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `indeks_kolaborasi`
--

INSERT INTO `indeks_kolaborasi` (`id_indeks`, `tipe`, `L`, `P`, `nilai_indeks`) VALUES
(1, 'internasional', 17, 20, 5.67474),
(2, 'nasional', 18, 20, 6.00855);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kolaborasi`
--

CREATE TABLE `jenis_kolaborasi` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis_kolaborasi`
--

INSERT INTO `jenis_kolaborasi` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Dosen Tamu'),
(2, 'Riset dan Publikasi'),
(3, 'Akademik'),
(4, 'Seminar dan Workshop');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `id_fakultas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
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
-- Struktur dari tabel `kolaborasi_internasional`
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
-- Dumping data untuk tabel `kolaborasi_internasional`
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
-- Struktur dari tabel `kolaborasi_nasional`
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
-- Dumping data untuk tabel `kolaborasi_nasional`
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
-- Struktur dari tabel `mahasiswa`
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
-- Dumping data untuk tabel `mahasiswa`
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
-- Struktur dari tabel `negara`
--

CREATE TABLE `negara` (
  `id_negara` int(11) NOT NULL,
  `nama_negara` varchar(255) NOT NULL,
  `kode_iso` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `negara`
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
-- Struktur dari tabel `program`
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
-- Dumping data untuk tabel `program`
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
-- Struktur dari tabel `program_studi`
--

CREATE TABLE `program_studi` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `fakultas_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `program_studi`
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
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `kode_posisi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `provinsi`
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
-- Struktur dari tabel `status_kerja`
--

CREATE TABLE `status_kerja` (
  `id_status` int(11) NOT NULL,
  `posisi_kerja` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `status_kerja`
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
-- Struktur dari tabel `universitas`
--

CREATE TABLE `universitas` (
  `universitas_id` int(11) NOT NULL,
  `nama_universitas` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `universitas`
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
-- Struktur dari tabel `wcu_data`
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
-- Dumping data untuk tabel `wcu_data`
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
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`),
  ADD UNIQUE KEY `npm` (`npm`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_status_kerja` (`id_status_kerja`),
  ADD KEY `fk_program_studi` (`program_studi_id`),
  ADD KEY `fk_status_kerja` (`status_kerja_id`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indeks untuk tabel `indeks_kolaborasi`
--
ALTER TABLE `indeks_kolaborasi`
  ADD PRIMARY KEY (`id_indeks`);

--
-- Indeks untuk tabel `jenis_kolaborasi`
--
ALTER TABLE `jenis_kolaborasi`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indeks untuk tabel `kolaborasi_internasional`
--
ALTER TABLE `kolaborasi_internasional`
  ADD PRIMARY KEY (`id_kolaborasi_internasional`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_negara` (`id_negara`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indeks untuk tabel `kolaborasi_nasional`
--
ALTER TABLE `kolaborasi_nasional`
  ADD PRIMARY KEY (`id_kolaborasi_nasional`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_provinsi` (`id_provinsi`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`mahasiswa_id`),
  ADD UNIQUE KEY `npm` (`npm`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indeks untuk tabel `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indeks untuk tabel `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`),
  ADD KEY `mahasiswa_id` (`mahasiswa_id`),
  ADD KEY `id_negara` (`id_negara`),
  ADD KEY `universitas_id` (`universitas_id`);

--
-- Indeks untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fakultas_id` (`fakultas_id`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indeks untuk tabel `status_kerja`
--
ALTER TABLE `status_kerja`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`universitas_id`);

--
-- Indeks untuk tabel `wcu_data`
--
ALTER TABLE `wcu_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `mahasiswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `program`
--
ALTER TABLE `program`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `status_kerja`
--
ALTER TABLE `status_kerja`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `universitas`
--
ALTER TABLE `universitas`
  MODIFY `universitas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `wcu_data`
--
ALTER TABLE `wcu_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `alumni_ibfk_2` FOREIGN KEY (`id_status_kerja`) REFERENCES `status_kerja` (`id_status`),
  ADD CONSTRAINT `fk_program_studi` FOREIGN KEY (`program_studi_id`) REFERENCES `program_studi` (`id`),
  ADD CONSTRAINT `fk_status_kerja` FOREIGN KEY (`status_kerja_id`) REFERENCES `status_kerja` (`id_status`);

--
-- Ketidakleluasaan untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `jurusan_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`);

--
-- Ketidakleluasaan untuk tabel `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`mahasiswa_id`),
  ADD CONSTRAINT `program_ibfk_2` FOREIGN KEY (`id_negara`) REFERENCES `negara` (`id_negara`),
  ADD CONSTRAINT `program_ibfk_3` FOREIGN KEY (`universitas_id`) REFERENCES `universitas` (`universitas_id`);

--
-- Ketidakleluasaan untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD CONSTRAINT `program_studi_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `fakultas` (`id_fakultas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
