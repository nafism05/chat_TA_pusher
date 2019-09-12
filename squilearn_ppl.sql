-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 12 Sep 2019 pada 06.54
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `squilearn_ppl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat_room`
--

CREATE TABLE `chat_room` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `jenjang_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chat_room`
--

INSERT INTO `chat_room` (`id`, `judul`, `siswa_id`, `guru_id`, `jenjang_id`, `mapel_id`, `created_at`, `updated_at`) VALUES
(1, 'testing1', 3, 2, 0, 0, NULL, NULL),
(2, 'gjhhgg', 3, 2, 1, 1, '2019-08-23 22:09:15', '2019-08-23 22:09:15'),
(3, 'inijjj', 3, 2, 1, 1, '2019-08-31 17:19:18', '2019-08-31 17:19:18'),
(4, 'inijjj', 3, 2, 1, 1, '2019-08-31 17:20:27', '2019-08-31 17:20:27'),
(5, 'alalal', 3, 2, 1, 1, '2019-08-31 21:30:49', '2019-08-31 21:30:49'),
(6, 'aaaa', 3, 2, 1, 1, '2019-08-31 21:45:47', '2019-08-31 21:45:47'),
(7, 'bbb', 3, 2, 1, 1, '2019-08-31 21:47:00', '2019-08-31 21:47:00'),
(8, 'cccc', 3, 2, 1, 1, '2019-08-31 21:53:07', '2019-08-31 21:53:07'),
(9, 'ddd', 3, 2, 1, 1, '2019-08-31 23:32:21', '2019-08-31 23:32:21'),
(10, 'eeee', 3, 2, 1, 1, '2019-09-01 00:02:20', '2019-09-01 00:02:20'),
(11, 'fff', 3, 2, 1, 1, '2019-09-01 00:05:53', '2019-09-01 00:05:53'),
(12, 'fff', 3, 2, 1, 1, '2019-09-01 00:09:00', '2019-09-01 00:09:00'),
(13, 'ggg', 3, 2, 1, 1, '2019-09-01 00:09:38', '2019-09-01 00:09:38'),
(14, 'hhh', 3, 2, 1, 1, '2019-09-01 02:06:51', '2019-09-01 02:06:51'),
(15, 'iii', 3, 2, 1, 1, '2019-09-01 02:39:34', '2019-09-01 02:39:34'),
(16, 'aaa', 5, 2, 1, 1, '2019-09-01 20:24:00', '2019-09-01 20:24:00'),
(17, 'bbb', 5, 4, 1, 1, '2019-09-01 20:24:20', '2019-09-01 20:24:20'),
(18, 'ccc', 5, 2, 1, 1, '2019-09-01 20:25:10', '2019-09-01 20:25:10'),
(19, 'ddd', 5, 2, 1, 1, '2019-09-01 20:25:25', '2019-09-01 20:25:25'),
(20, 'eee', 5, 2, 1, 1, '2019-09-01 20:25:35', '2019-09-01 20:25:35'),
(21, 'fff', 5, 4, 1, 1, '2019-09-01 20:25:48', '2019-09-01 20:25:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_mapels`
--

CREATE TABLE `kategori_mapels` (
  `id_kat_mapel` int(10) UNSIGNED NOT NULL,
  `nama_kategori_mapel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_mapels`
--

INSERT INTO `kategori_mapels` (`id_kat_mapel`, `nama_kategori_mapel`, `created_at`, `updated_at`) VALUES
(1, 'Matematika', '2019-06-27 01:42:56', '2019-06-27 01:42:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_sekolahs`
--

CREATE TABLE `kategori_sekolahs` (
  `id_kategori_sekolah` int(10) UNSIGNED NOT NULL,
  `nama_kategori_sekolah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_sekolahs`
--

INSERT INTO `kategori_sekolahs` (`id_kategori_sekolah`, `nama_kategori_sekolah`, `created_at`, `updated_at`) VALUES
(1, 'SMP', '2019-06-27 01:43:18', '2019-06-27 01:43:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kotas`
--

CREATE TABLE `kotas` (
  `id_kota` int(10) UNSIGNED NOT NULL,
  `province_id` int(11) NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kotas`
--

INSERT INTO `kotas` (`id_kota`, `province_id`, `city`, `type`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 21, 'Aceh Barat', 'Kabupaten', '23681', NULL, NULL),
(2, 21, 'Aceh Barat Daya', 'Kabupaten', '23764', NULL, NULL),
(3, 21, 'Aceh Besar', 'Kabupaten', '23951', NULL, NULL),
(4, 21, 'Aceh Jaya', 'Kabupaten', '23654', NULL, NULL),
(5, 21, 'Aceh Selatan', 'Kabupaten', '23719', NULL, NULL),
(6, 21, 'Aceh Singkil', 'Kabupaten', '24785', NULL, NULL),
(7, 21, 'Aceh Tamiang', 'Kabupaten', '24476', NULL, NULL),
(8, 21, 'Aceh Tengah', 'Kabupaten', '24511', NULL, NULL),
(9, 21, 'Aceh Tenggara', 'Kabupaten', '24611', NULL, NULL),
(10, 21, 'Aceh Timur', 'Kabupaten', '24454', NULL, NULL),
(11, 21, 'Aceh Utara', 'Kabupaten', '24382', NULL, NULL),
(12, 32, 'Agam', 'Kabupaten', '26411', NULL, NULL),
(13, 23, 'Alor', 'Kabupaten', '85811', NULL, NULL),
(14, 19, 'Ambon', 'Kota', '97222', NULL, NULL),
(15, 34, 'Asahan', 'Kabupaten', '21214', NULL, NULL),
(16, 24, 'Asmat', 'Kabupaten', '99777', NULL, NULL),
(17, 1, 'Badung', 'Kabupaten', '80351', NULL, NULL),
(18, 13, 'Balangan', 'Kabupaten', '71611', NULL, NULL),
(19, 15, 'Balikpapan', 'Kota', '76111', NULL, NULL),
(20, 21, 'Banda Aceh', 'Kota', '23238', NULL, NULL),
(21, 18, 'Bandar Lampung', 'Kota', '35139', NULL, NULL),
(22, 9, 'Bandung', 'Kabupaten', '40311', NULL, NULL),
(23, 9, 'Bandung', 'Kota', '40111', NULL, NULL),
(24, 9, 'Bandung Barat', 'Kabupaten', '40721', NULL, NULL),
(25, 29, 'Banggai', 'Kabupaten', '94711', NULL, NULL),
(26, 29, 'Banggai Kepulauan', 'Kabupaten', '94881', NULL, NULL),
(27, 2, 'Bangka', 'Kabupaten', '33212', NULL, NULL),
(28, 2, 'Bangka Barat', 'Kabupaten', '33315', NULL, NULL),
(29, 2, 'Bangka Selatan', 'Kabupaten', '33719', NULL, NULL),
(30, 2, 'Bangka Tengah', 'Kabupaten', '33613', NULL, NULL),
(31, 11, 'Bangkalan', 'Kabupaten', '69118', NULL, NULL),
(32, 1, 'Bangli', 'Kabupaten', '80619', NULL, NULL),
(33, 13, 'Banjar', 'Kabupaten', '70619', NULL, NULL),
(34, 9, 'Banjar', 'Kota', '46311', NULL, NULL),
(35, 13, 'Banjarbaru', 'Kota', '70712', NULL, NULL),
(36, 13, 'Banjarmasin', 'Kota', '70117', NULL, NULL),
(37, 10, 'Banjarnegara', 'Kabupaten', '53419', NULL, NULL),
(38, 28, 'Bantaeng', 'Kabupaten', '92411', NULL, NULL),
(39, 5, 'Bantul', 'Kabupaten', '55715', NULL, NULL),
(40, 33, 'Banyuasin', 'Kabupaten', '30911', NULL, NULL),
(41, 10, 'Banyumas', 'Kabupaten', '53114', NULL, NULL),
(42, 11, 'Banyuwangi', 'Kabupaten', '68416', NULL, NULL),
(43, 13, 'Barito Kuala', 'Kabupaten', '70511', NULL, NULL),
(44, 14, 'Barito Selatan', 'Kabupaten', '73711', NULL, NULL),
(45, 14, 'Barito Timur', 'Kabupaten', '73671', NULL, NULL),
(46, 14, 'Barito Utara', 'Kabupaten', '73881', NULL, NULL),
(47, 28, 'Barru', 'Kabupaten', '90719', NULL, NULL),
(48, 17, 'Batam', 'Kota', '29413', NULL, NULL),
(49, 10, 'Batang', 'Kabupaten', '51211', NULL, NULL),
(50, 8, 'Batang Hari', 'Kabupaten', '36613', NULL, NULL),
(51, 11, 'Batu', 'Kota', '65311', NULL, NULL),
(52, 34, 'Batu Bara', 'Kabupaten', '21655', NULL, NULL),
(53, 30, 'Bau-Bau', 'Kota', '93719', NULL, NULL),
(54, 9, 'Bekasi', 'Kabupaten', '17837', NULL, NULL),
(55, 9, 'Bekasi', 'Kota', '17121', NULL, NULL),
(56, 2, 'Belitung', 'Kabupaten', '33419', NULL, NULL),
(57, 2, 'Belitung Timur', 'Kabupaten', '33519', NULL, NULL),
(58, 23, 'Belu', 'Kabupaten', '85711', NULL, NULL),
(59, 21, 'Bener Meriah', 'Kabupaten', '24581', NULL, NULL),
(60, 26, 'Bengkalis', 'Kabupaten', '28719', NULL, NULL),
(61, 12, 'Bengkayang', 'Kabupaten', '79213', NULL, NULL),
(62, 4, 'Bengkulu', 'Kota', '38229', NULL, NULL),
(63, 4, 'Bengkulu Selatan', 'Kabupaten', '38519', NULL, NULL),
(64, 4, 'Bengkulu Tengah', 'Kabupaten', '38319', NULL, NULL),
(65, 4, 'Bengkulu Utara', 'Kabupaten', '38619', NULL, NULL),
(66, 15, 'Berau', 'Kabupaten', '77311', NULL, NULL),
(67, 24, 'Biak Numfor', 'Kabupaten', '98119', NULL, NULL),
(68, 22, 'Bima', 'Kabupaten', '84171', NULL, NULL),
(69, 22, 'Bima', 'Kota', '84139', NULL, NULL),
(70, 34, 'Binjai', 'Kota', '20712', NULL, NULL),
(71, 17, 'Bintan', 'Kabupaten', '29135', NULL, NULL),
(72, 21, 'Bireuen', 'Kabupaten', '24219', NULL, NULL),
(73, 31, 'Bitung', 'Kota', '95512', NULL, NULL),
(74, 11, 'Blitar', 'Kabupaten', '66171', NULL, NULL),
(75, 11, 'Blitar', 'Kota', '66124', NULL, NULL),
(76, 10, 'Blora', 'Kabupaten', '58219', NULL, NULL),
(77, 7, 'Boalemo', 'Kabupaten', '96319', NULL, NULL),
(78, 9, 'Bogor', 'Kabupaten', '16911', NULL, NULL),
(79, 9, 'Bogor', 'Kota', '16119', NULL, NULL),
(80, 11, 'Bojonegoro', 'Kabupaten', '62119', NULL, NULL),
(81, 31, 'Bolaang Mongondow (Bolmong)', 'Kabupaten', '95755', NULL, NULL),
(82, 31, 'Bolaang Mongondow Selatan', 'Kabupaten', '95774', NULL, NULL),
(83, 31, 'Bolaang Mongondow Timur', 'Kabupaten', '95783', NULL, NULL),
(84, 31, 'Bolaang Mongondow Utara', 'Kabupaten', '95765', NULL, NULL),
(85, 30, 'Bombana', 'Kabupaten', '93771', NULL, NULL),
(86, 11, 'Bondowoso', 'Kabupaten', '68219', NULL, NULL),
(87, 28, 'Bone', 'Kabupaten', '92713', NULL, NULL),
(88, 7, 'Bone Bolango', 'Kabupaten', '96511', NULL, NULL),
(89, 15, 'Bontang', 'Kota', '75313', NULL, NULL),
(90, 24, 'Boven Digoel', 'Kabupaten', '99662', NULL, NULL),
(91, 10, 'Boyolali', 'Kabupaten', '57312', NULL, NULL),
(92, 10, 'Brebes', 'Kabupaten', '52212', NULL, NULL),
(93, 32, 'Bukittinggi', 'Kota', '26115', NULL, NULL),
(94, 1, 'Buleleng', 'Kabupaten', '81111', NULL, NULL),
(95, 28, 'Bulukumba', 'Kabupaten', '92511', NULL, NULL),
(96, 16, 'Bulungan (Bulongan)', 'Kabupaten', '77211', NULL, NULL),
(97, 8, 'Bungo', 'Kabupaten', '37216', NULL, NULL),
(98, 29, 'Buol', 'Kabupaten', '94564', NULL, NULL),
(99, 19, 'Buru', 'Kabupaten', '97371', NULL, NULL),
(100, 19, 'Buru Selatan', 'Kabupaten', '97351', NULL, NULL),
(101, 30, 'Buton', 'Kabupaten', '93754', NULL, NULL),
(102, 30, 'Buton Utara', 'Kabupaten', '93745', NULL, NULL),
(103, 9, 'Ciamis', 'Kabupaten', '46211', NULL, NULL),
(104, 9, 'Cianjur', 'Kabupaten', '43217', NULL, NULL),
(105, 10, 'Cilacap', 'Kabupaten', '53211', NULL, NULL),
(106, 3, 'Cilegon', 'Kota', '42417', NULL, NULL),
(107, 9, 'Cimahi', 'Kota', '40512', NULL, NULL),
(108, 9, 'Cirebon', 'Kabupaten', '45611', NULL, NULL),
(109, 9, 'Cirebon', 'Kota', '45116', NULL, NULL),
(110, 34, 'Dairi', 'Kabupaten', '22211', NULL, NULL),
(111, 24, 'Deiyai (Deliyai)', 'Kabupaten', '98784', NULL, NULL),
(112, 34, 'Deli Serdang', 'Kabupaten', '20511', NULL, NULL),
(113, 10, 'Demak', 'Kabupaten', '59519', NULL, NULL),
(114, 1, 'Denpasar', 'Kota', '80227', NULL, NULL),
(115, 9, 'Depok', 'Kota', '16416', NULL, NULL),
(116, 32, 'Dharmasraya', 'Kabupaten', '27612', NULL, NULL),
(117, 24, 'Dogiyai', 'Kabupaten', '98866', NULL, NULL),
(118, 22, 'Dompu', 'Kabupaten', '84217', NULL, NULL),
(119, 29, 'Donggala', 'Kabupaten', '94341', NULL, NULL),
(120, 26, 'Dumai', 'Kota', '28811', NULL, NULL),
(121, 33, 'Empat Lawang', 'Kabupaten', '31811', NULL, NULL),
(122, 23, 'Ende', 'Kabupaten', '86351', NULL, NULL),
(123, 28, 'Enrekang', 'Kabupaten', '91719', NULL, NULL),
(124, 25, 'Fakfak', 'Kabupaten', '98651', NULL, NULL),
(125, 23, 'Flores Timur', 'Kabupaten', '86213', NULL, NULL),
(126, 9, 'Garut', 'Kabupaten', '44126', NULL, NULL),
(127, 21, 'Gayo Lues', 'Kabupaten', '24653', NULL, NULL),
(128, 1, 'Gianyar', 'Kabupaten', '80519', NULL, NULL),
(129, 7, 'Gorontalo', 'Kabupaten', '96218', NULL, NULL),
(130, 7, 'Gorontalo', 'Kota', '96115', NULL, NULL),
(131, 7, 'Gorontalo Utara', 'Kabupaten', '96611', NULL, NULL),
(132, 28, 'Gowa', 'Kabupaten', '92111', NULL, NULL),
(133, 11, 'Gresik', 'Kabupaten', '61115', NULL, NULL),
(134, 10, 'Grobogan', 'Kabupaten', '58111', NULL, NULL),
(135, 5, 'Gunung Kidul', 'Kabupaten', '55812', NULL, NULL),
(136, 14, 'Gunung Mas', 'Kabupaten', '74511', NULL, NULL),
(137, 34, 'Gunungsitoli', 'Kota', '22813', NULL, NULL),
(138, 20, 'Halmahera Barat', 'Kabupaten', '97757', NULL, NULL),
(139, 20, 'Halmahera Selatan', 'Kabupaten', '97911', NULL, NULL),
(140, 20, 'Halmahera Tengah', 'Kabupaten', '97853', NULL, NULL),
(141, 20, 'Halmahera Timur', 'Kabupaten', '97862', NULL, NULL),
(142, 20, 'Halmahera Utara', 'Kabupaten', '97762', NULL, NULL),
(143, 13, 'Hulu Sungai Selatan', 'Kabupaten', '71212', NULL, NULL),
(144, 13, 'Hulu Sungai Tengah', 'Kabupaten', '71313', NULL, NULL),
(145, 13, 'Hulu Sungai Utara', 'Kabupaten', '71419', NULL, NULL),
(146, 34, 'Humbang Hasundutan', 'Kabupaten', '22457', NULL, NULL),
(147, 26, 'Indragiri Hilir', 'Kabupaten', '29212', NULL, NULL),
(148, 26, 'Indragiri Hulu', 'Kabupaten', '29319', NULL, NULL),
(149, 9, 'Indramayu', 'Kabupaten', '45214', NULL, NULL),
(150, 24, 'Intan Jaya', 'Kabupaten', '98771', NULL, NULL),
(151, 6, 'Jakarta Barat', 'Kota', '11220', NULL, NULL),
(152, 6, 'Jakarta Pusat', 'Kota', '10540', NULL, NULL),
(153, 6, 'Jakarta Selatan', 'Kota', '12230', NULL, NULL),
(154, 6, 'Jakarta Timur', 'Kota', '13330', NULL, NULL),
(155, 6, 'Jakarta Utara', 'Kota', '14140', NULL, NULL),
(156, 8, 'Jambi', 'Kota', '36111', NULL, NULL),
(157, 24, 'Jayapura', 'Kabupaten', '99352', NULL, NULL),
(158, 24, 'Jayapura', 'Kota', '99114', NULL, NULL),
(159, 24, 'Jayawijaya', 'Kabupaten', '99511', NULL, NULL),
(160, 11, 'Jember', 'Kabupaten', '68113', NULL, NULL),
(161, 1, 'Jembrana', 'Kabupaten', '82251', NULL, NULL),
(162, 28, 'Jeneponto', 'Kabupaten', '92319', NULL, NULL),
(163, 10, 'Jepara', 'Kabupaten', '59419', NULL, NULL),
(164, 11, 'Jombang', 'Kabupaten', '61415', NULL, NULL),
(165, 25, 'Kaimana', 'Kabupaten', '98671', NULL, NULL),
(166, 26, 'Kampar', 'Kabupaten', '28411', NULL, NULL),
(167, 14, 'Kapuas', 'Kabupaten', '73583', NULL, NULL),
(168, 12, 'Kapuas Hulu', 'Kabupaten', '78719', NULL, NULL),
(169, 10, 'Karanganyar', 'Kabupaten', '57718', NULL, NULL),
(170, 1, 'Karangasem', 'Kabupaten', '80819', NULL, NULL),
(171, 9, 'Karawang', 'Kabupaten', '41311', NULL, NULL),
(172, 17, 'Karimun', 'Kabupaten', '29611', NULL, NULL),
(173, 34, 'Karo', 'Kabupaten', '22119', NULL, NULL),
(174, 14, 'Katingan', 'Kabupaten', '74411', NULL, NULL),
(175, 4, 'Kaur', 'Kabupaten', '38911', NULL, NULL),
(176, 12, 'Kayong Utara', 'Kabupaten', '78852', NULL, NULL),
(177, 10, 'Kebumen', 'Kabupaten', '54319', NULL, NULL),
(178, 11, 'Kediri', 'Kabupaten', '64184', NULL, NULL),
(179, 11, 'Kediri', 'Kota', '64125', NULL, NULL),
(180, 24, 'Keerom', 'Kabupaten', '99461', NULL, NULL),
(181, 10, 'Kendal', 'Kabupaten', '51314', NULL, NULL),
(182, 30, 'Kendari', 'Kota', '93126', NULL, NULL),
(183, 4, 'Kepahiang', 'Kabupaten', '39319', NULL, NULL),
(184, 17, 'Kepulauan Anambas', 'Kabupaten', '29991', NULL, NULL),
(185, 19, 'Kepulauan Aru', 'Kabupaten', '97681', NULL, NULL),
(186, 32, 'Kepulauan Mentawai', 'Kabupaten', '25771', NULL, NULL),
(187, 26, 'Kepulauan Meranti', 'Kabupaten', '28791', NULL, NULL),
(188, 31, 'Kepulauan Sangihe', 'Kabupaten', '95819', NULL, NULL),
(189, 6, 'Kepulauan Seribu', 'Kabupaten', '14550', NULL, NULL),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', 'Kabupaten', '95862', NULL, NULL),
(191, 20, 'Kepulauan Sula', 'Kabupaten', '97995', NULL, NULL),
(192, 31, 'Kepulauan Talaud', 'Kabupaten', '95885', NULL, NULL),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)', 'Kabupaten', '98211', NULL, NULL),
(194, 8, 'Kerinci', 'Kabupaten', '37167', NULL, NULL),
(195, 12, 'Ketapang', 'Kabupaten', '78874', NULL, NULL),
(196, 10, 'Klaten', 'Kabupaten', '57411', NULL, NULL),
(197, 1, 'Klungkung', 'Kabupaten', '80719', NULL, NULL),
(198, 30, 'Kolaka', 'Kabupaten', '93511', NULL, NULL),
(199, 30, 'Kolaka Utara', 'Kabupaten', '93911', NULL, NULL),
(200, 30, 'Konawe', 'Kabupaten', '93411', NULL, NULL),
(201, 30, 'Konawe Selatan', 'Kabupaten', '93811', NULL, NULL),
(202, 30, 'Konawe Utara', 'Kabupaten', '93311', NULL, NULL),
(203, 13, 'Kotabaru', 'Kabupaten', '72119', NULL, NULL),
(204, 31, 'Kotamobagu', 'Kota', '95711', NULL, NULL),
(205, 14, 'Kotawaringin Barat', 'Kabupaten', '74119', NULL, NULL),
(206, 14, 'Kotawaringin Timur', 'Kabupaten', '74364', NULL, NULL),
(207, 26, 'Kuantan Singingi', 'Kabupaten', '29519', NULL, NULL),
(208, 12, 'Kubu Raya', 'Kabupaten', '78311', NULL, NULL),
(209, 10, 'Kudus', 'Kabupaten', '59311', NULL, NULL),
(210, 5, 'Kulon Progo', 'Kabupaten', '55611', NULL, NULL),
(211, 9, 'Kuningan', 'Kabupaten', '45511', NULL, NULL),
(212, 23, 'Kupang', 'Kabupaten', '85362', NULL, NULL),
(213, 23, 'Kupang', 'Kota', '85119', NULL, NULL),
(214, 15, 'Kutai Barat', 'Kabupaten', '75711', NULL, NULL),
(215, 15, 'Kutai Kartanegara', 'Kabupaten', '75511', NULL, NULL),
(216, 15, 'Kutai Timur', 'Kabupaten', '75611', NULL, NULL),
(217, 34, 'Labuhan Batu', 'Kabupaten', '21412', NULL, NULL),
(218, 34, 'Labuhan Batu Selatan', 'Kabupaten', '21511', NULL, NULL),
(219, 34, 'Labuhan Batu Utara', 'Kabupaten', '21711', NULL, NULL),
(220, 33, 'Lahat', 'Kabupaten', '31419', NULL, NULL),
(221, 14, 'Lamandau', 'Kabupaten', '74611', NULL, NULL),
(222, 11, 'Lamongan', 'Kabupaten', '64125', NULL, NULL),
(223, 18, 'Lampung Barat', 'Kabupaten', '34814', NULL, NULL),
(224, 18, 'Lampung Selatan', 'Kabupaten', '35511', NULL, NULL),
(225, 18, 'Lampung Tengah', 'Kabupaten', '34212', NULL, NULL),
(226, 18, 'Lampung Timur', 'Kabupaten', '34319', NULL, NULL),
(227, 18, 'Lampung Utara', 'Kabupaten', '34516', NULL, NULL),
(228, 12, 'Landak', 'Kabupaten', '78319', NULL, NULL),
(229, 34, 'Langkat', 'Kabupaten', '20811', NULL, NULL),
(230, 21, 'Langsa', 'Kota', '24412', NULL, NULL),
(231, 24, 'Lanny Jaya', 'Kabupaten', '99531', NULL, NULL),
(232, 3, 'Lebak', 'Kabupaten', '42319', NULL, NULL),
(233, 4, 'Lebong', 'Kabupaten', '39264', NULL, NULL),
(234, 23, 'Lembata', 'Kabupaten', '86611', NULL, NULL),
(235, 21, 'Lhokseumawe', 'Kota', '24352', NULL, NULL),
(236, 32, 'Lima Puluh Koto/Kota', 'Kabupaten', '26671', NULL, NULL),
(237, 17, 'Lingga', 'Kabupaten', '29811', NULL, NULL),
(238, 22, 'Lombok Barat', 'Kabupaten', '83311', NULL, NULL),
(239, 22, 'Lombok Tengah', 'Kabupaten', '83511', NULL, NULL),
(240, 22, 'Lombok Timur', 'Kabupaten', '83612', NULL, NULL),
(241, 22, 'Lombok Utara', 'Kabupaten', '83711', NULL, NULL),
(242, 33, 'Lubuk Linggau', 'Kota', '31614', NULL, NULL),
(243, 11, 'Lumajang', 'Kabupaten', '67319', NULL, NULL),
(244, 28, 'Luwu', 'Kabupaten', '91994', NULL, NULL),
(245, 28, 'Luwu Timur', 'Kabupaten', '92981', NULL, NULL),
(246, 28, 'Luwu Utara', 'Kabupaten', '92911', NULL, NULL),
(247, 11, 'Madiun', 'Kabupaten', '63153', NULL, NULL),
(248, 11, 'Madiun', 'Kota', '63122', NULL, NULL),
(249, 10, 'Magelang', 'Kabupaten', '56519', NULL, NULL),
(250, 10, 'Magelang', 'Kota', '56133', NULL, NULL),
(251, 11, 'Magetan', 'Kabupaten', '63314', NULL, NULL),
(252, 9, 'Majalengka', 'Kabupaten', '45412', NULL, NULL),
(253, 27, 'Majene', 'Kabupaten', '91411', NULL, NULL),
(254, 28, 'Makassar', 'Kota', '90111', NULL, NULL),
(255, 11, 'Malang', 'Kabupaten', '65163', NULL, NULL),
(256, 11, 'Malang', 'Kota', '65112', NULL, NULL),
(257, 16, 'Malinau', 'Kabupaten', '77511', NULL, NULL),
(258, 19, 'Maluku Barat Daya', 'Kabupaten', '97451', NULL, NULL),
(259, 19, 'Maluku Tengah', 'Kabupaten', '97513', NULL, NULL),
(260, 19, 'Maluku Tenggara', 'Kabupaten', '97651', NULL, NULL),
(261, 19, 'Maluku Tenggara Barat', 'Kabupaten', '97465', NULL, NULL),
(262, 27, 'Mamasa', 'Kabupaten', '91362', NULL, NULL),
(263, 24, 'Mamberamo Raya', 'Kabupaten', '99381', NULL, NULL),
(264, 24, 'Mamberamo Tengah', 'Kabupaten', '99553', NULL, NULL),
(265, 27, 'Mamuju', 'Kabupaten', '91519', NULL, NULL),
(266, 27, 'Mamuju Utara', 'Kabupaten', '91571', NULL, NULL),
(267, 31, 'Manado', 'Kota', '95247', NULL, NULL),
(268, 34, 'Mandailing Natal', 'Kabupaten', '22916', NULL, NULL),
(269, 23, 'Manggarai', 'Kabupaten', '86551', NULL, NULL),
(270, 23, 'Manggarai Barat', 'Kabupaten', '86711', NULL, NULL),
(271, 23, 'Manggarai Timur', 'Kabupaten', '86811', NULL, NULL),
(272, 25, 'Manokwari', 'Kabupaten', '98311', NULL, NULL),
(273, 25, 'Manokwari Selatan', 'Kabupaten', '98355', NULL, NULL),
(274, 24, 'Mappi', 'Kabupaten', '99853', NULL, NULL),
(275, 28, 'Maros', 'Kabupaten', '90511', NULL, NULL),
(276, 22, 'Mataram', 'Kota', '83131', NULL, NULL),
(277, 25, 'Maybrat', 'Kabupaten', '98051', NULL, NULL),
(278, 34, 'Medan', 'Kota', '20228', NULL, NULL),
(279, 12, 'Melawi', 'Kabupaten', '78619', NULL, NULL),
(280, 8, 'Merangin', 'Kabupaten', '37319', NULL, NULL),
(281, 24, 'Merauke', 'Kabupaten', '99613', NULL, NULL),
(282, 18, 'Mesuji', 'Kabupaten', '34911', NULL, NULL),
(283, 18, 'Metro', 'Kota', '34111', NULL, NULL),
(284, 24, 'Mimika', 'Kabupaten', '99962', NULL, NULL),
(285, 31, 'Minahasa', 'Kabupaten', '95614', NULL, NULL),
(286, 31, 'Minahasa Selatan', 'Kabupaten', '95914', NULL, NULL),
(287, 31, 'Minahasa Tenggara', 'Kabupaten', '95995', NULL, NULL),
(288, 31, 'Minahasa Utara', 'Kabupaten', '95316', NULL, NULL),
(289, 11, 'Mojokerto', 'Kabupaten', '61382', NULL, NULL),
(290, 11, 'Mojokerto', 'Kota', '61316', NULL, NULL),
(291, 29, 'Morowali', 'Kabupaten', '94911', NULL, NULL),
(292, 33, 'Muara Enim', 'Kabupaten', '31315', NULL, NULL),
(293, 8, 'Muaro Jambi', 'Kabupaten', '36311', NULL, NULL),
(294, 4, 'Muko Muko', 'Kabupaten', '38715', NULL, NULL),
(295, 30, 'Muna', 'Kabupaten', '93611', NULL, NULL),
(296, 14, 'Murung Raya', 'Kabupaten', '73911', NULL, NULL),
(297, 33, 'Musi Banyuasin', 'Kabupaten', '30719', NULL, NULL),
(298, 33, 'Musi Rawas', 'Kabupaten', '31661', NULL, NULL),
(299, 24, 'Nabire', 'Kabupaten', '98816', NULL, NULL),
(300, 21, 'Nagan Raya', 'Kabupaten', '23674', NULL, NULL),
(301, 23, 'Nagekeo', 'Kabupaten', '86911', NULL, NULL),
(302, 17, 'Natuna', 'Kabupaten', '29711', NULL, NULL),
(303, 24, 'Nduga', 'Kabupaten', '99541', NULL, NULL),
(304, 23, 'Ngada', 'Kabupaten', '86413', NULL, NULL),
(305, 11, 'Nganjuk', 'Kabupaten', '64414', NULL, NULL),
(306, 11, 'Ngawi', 'Kabupaten', '63219', NULL, NULL),
(307, 34, 'Nias', 'Kabupaten', '22876', NULL, NULL),
(308, 34, 'Nias Barat', 'Kabupaten', '22895', NULL, NULL),
(309, 34, 'Nias Selatan', 'Kabupaten', '22865', NULL, NULL),
(310, 34, 'Nias Utara', 'Kabupaten', '22856', NULL, NULL),
(311, 16, 'Nunukan', 'Kabupaten', '77421', NULL, NULL),
(312, 33, 'Ogan Ilir', 'Kabupaten', '30811', NULL, NULL),
(313, 33, 'Ogan Komering Ilir', 'Kabupaten', '30618', NULL, NULL),
(314, 33, 'Ogan Komering Ulu', 'Kabupaten', '32112', NULL, NULL),
(315, 33, 'Ogan Komering Ulu Selatan', 'Kabupaten', '32211', NULL, NULL),
(316, 33, 'Ogan Komering Ulu Timur', 'Kabupaten', '32312', NULL, NULL),
(317, 11, 'Pacitan', 'Kabupaten', '63512', NULL, NULL),
(318, 32, 'Padang', 'Kota', '25112', NULL, NULL),
(319, 34, 'Padang Lawas', 'Kabupaten', '22763', NULL, NULL),
(320, 34, 'Padang Lawas Utara', 'Kabupaten', '22753', NULL, NULL),
(321, 32, 'Padang Panjang', 'Kota', '27122', NULL, NULL),
(322, 32, 'Padang Pariaman', 'Kabupaten', '25583', NULL, NULL),
(323, 34, 'Padang Sidempuan', 'Kota', '22727', NULL, NULL),
(324, 33, 'Pagar Alam', 'Kota', '31512', NULL, NULL),
(325, 34, 'Pakpak Bharat', 'Kabupaten', '22272', NULL, NULL),
(326, 14, 'Palangka Raya', 'Kota', '73112', NULL, NULL),
(327, 33, 'Palembang', 'Kota', '30111', NULL, NULL),
(328, 28, 'Palopo', 'Kota', '91911', NULL, NULL),
(329, 29, 'Palu', 'Kota', '94111', NULL, NULL),
(330, 11, 'Pamekasan', 'Kabupaten', '69319', NULL, NULL),
(331, 3, 'Pandeglang', 'Kabupaten', '42212', NULL, NULL),
(332, 9, 'Pangandaran', 'Kabupaten', '46511', NULL, NULL),
(333, 28, 'Pangkajene Kepulauan', 'Kabupaten', '90611', NULL, NULL),
(334, 2, 'Pangkal Pinang', 'Kota', '33115', NULL, NULL),
(335, 24, 'Paniai', 'Kabupaten', '98765', NULL, NULL),
(336, 28, 'Parepare', 'Kota', '91123', NULL, NULL),
(337, 32, 'Pariaman', 'Kota', '25511', NULL, NULL),
(338, 29, 'Parigi Moutong', 'Kabupaten', '94411', NULL, NULL),
(339, 32, 'Pasaman', 'Kabupaten', '26318', NULL, NULL),
(340, 32, 'Pasaman Barat', 'Kabupaten', '26511', NULL, NULL),
(341, 15, 'Paser', 'Kabupaten', '76211', NULL, NULL),
(342, 11, 'Pasuruan', 'Kabupaten', '67153', NULL, NULL),
(343, 11, 'Pasuruan', 'Kota', '67118', NULL, NULL),
(344, 10, 'Pati', 'Kabupaten', '59114', NULL, NULL),
(345, 32, 'Payakumbuh', 'Kota', '26213', NULL, NULL),
(346, 25, 'Pegunungan Arfak', 'Kabupaten', '98354', NULL, NULL),
(347, 24, 'Pegunungan Bintang', 'Kabupaten', '99573', NULL, NULL),
(348, 10, 'Pekalongan', 'Kabupaten', '51161', NULL, NULL),
(349, 10, 'Pekalongan', 'Kota', '51122', NULL, NULL),
(350, 26, 'Pekanbaru', 'Kota', '28112', NULL, NULL),
(351, 26, 'Pelalawan', 'Kabupaten', '28311', NULL, NULL),
(352, 10, 'Pemalang', 'Kabupaten', '52319', NULL, NULL),
(353, 34, 'Pematang Siantar', 'Kota', '21126', NULL, NULL),
(354, 15, 'Penajam Paser Utara', 'Kabupaten', '76311', NULL, NULL),
(355, 18, 'Pesawaran', 'Kabupaten', '35312', NULL, NULL),
(356, 18, 'Pesisir Barat', 'Kabupaten', '35974', NULL, NULL),
(357, 32, 'Pesisir Selatan', 'Kabupaten', '25611', NULL, NULL),
(358, 21, 'Pidie', 'Kabupaten', '24116', NULL, NULL),
(359, 21, 'Pidie Jaya', 'Kabupaten', '24186', NULL, NULL),
(360, 28, 'Pinrang', 'Kabupaten', '91251', NULL, NULL),
(361, 7, 'Pohuwato', 'Kabupaten', '96419', NULL, NULL),
(362, 27, 'Polewali Mandar', 'Kabupaten', '91311', NULL, NULL),
(363, 11, 'Ponorogo', 'Kabupaten', '63411', NULL, NULL),
(364, 12, 'Pontianak', 'Kabupaten', '78971', NULL, NULL),
(365, 12, 'Pontianak', 'Kota', '78112', NULL, NULL),
(366, 29, 'Poso', 'Kabupaten', '94615', NULL, NULL),
(367, 33, 'Prabumulih', 'Kota', '31121', NULL, NULL),
(368, 18, 'Pringsewu', 'Kabupaten', '35719', NULL, NULL),
(369, 11, 'Probolinggo', 'Kabupaten', '67282', NULL, NULL),
(370, 11, 'Probolinggo', 'Kota', '67215', NULL, NULL),
(371, 14, 'Pulang Pisau', 'Kabupaten', '74811', NULL, NULL),
(372, 20, 'Pulau Morotai', 'Kabupaten', '97771', NULL, NULL),
(373, 24, 'Puncak', 'Kabupaten', '98981', NULL, NULL),
(374, 24, 'Puncak Jaya', 'Kabupaten', '98979', NULL, NULL),
(375, 10, 'Purbalingga', 'Kabupaten', '53312', NULL, NULL),
(376, 9, 'Purwakarta', 'Kabupaten', '41119', NULL, NULL),
(377, 10, 'Purworejo', 'Kabupaten', '54111', NULL, NULL),
(378, 25, 'Raja Ampat', 'Kabupaten', '98489', NULL, NULL),
(379, 4, 'Rejang Lebong', 'Kabupaten', '39112', NULL, NULL),
(380, 10, 'Rembang', 'Kabupaten', '59219', NULL, NULL),
(381, 26, 'Rokan Hilir', 'Kabupaten', '28992', NULL, NULL),
(382, 26, 'Rokan Hulu', 'Kabupaten', '28511', NULL, NULL),
(383, 23, 'Rote Ndao', 'Kabupaten', '85982', NULL, NULL),
(384, 21, 'Sabang', 'Kota', '23512', NULL, NULL),
(385, 23, 'Sabu Raijua', 'Kabupaten', '85391', NULL, NULL),
(386, 10, 'Salatiga', 'Kota', '50711', NULL, NULL),
(387, 15, 'Samarinda', 'Kota', '75133', NULL, NULL),
(388, 12, 'Sambas', 'Kabupaten', '79453', NULL, NULL),
(389, 34, 'Samosir', 'Kabupaten', '22392', NULL, NULL),
(390, 11, 'Sampang', 'Kabupaten', '69219', NULL, NULL),
(391, 12, 'Sanggau', 'Kabupaten', '78557', NULL, NULL),
(392, 24, 'Sarmi', 'Kabupaten', '99373', NULL, NULL),
(393, 8, 'Sarolangun', 'Kabupaten', '37419', NULL, NULL),
(394, 32, 'Sawah Lunto', 'Kota', '27416', NULL, NULL),
(395, 12, 'Sekadau', 'Kabupaten', '79583', NULL, NULL),
(396, 28, 'Selayar (Kepulauan Selayar)', 'Kabupaten', '92812', NULL, NULL),
(397, 4, 'Seluma', 'Kabupaten', '38811', NULL, NULL),
(398, 10, 'Semarang', 'Kabupaten', '50511', NULL, NULL),
(399, 10, 'Semarang', 'Kota', '50135', NULL, NULL),
(400, 19, 'Seram Bagian Barat', 'Kabupaten', '97561', NULL, NULL),
(401, 19, 'Seram Bagian Timur', 'Kabupaten', '97581', NULL, NULL),
(402, 3, 'Serang', 'Kabupaten', '42182', NULL, NULL),
(403, 3, 'Serang', 'Kota', '42111', NULL, NULL),
(404, 34, 'Serdang Bedagai', 'Kabupaten', '20915', NULL, NULL),
(405, 14, 'Seruyan', 'Kabupaten', '74211', NULL, NULL),
(406, 26, 'Siak', 'Kabupaten', '28623', NULL, NULL),
(407, 34, 'Sibolga', 'Kota', '22522', NULL, NULL),
(408, 28, 'Sidenreng Rappang/Rapang', 'Kabupaten', '91613', NULL, NULL),
(409, 11, 'Sidoarjo', 'Kabupaten', '61219', NULL, NULL),
(410, 29, 'Sigi', 'Kabupaten', '94364', NULL, NULL),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)', 'Kabupaten', '27511', NULL, NULL),
(412, 23, 'Sikka', 'Kabupaten', '86121', NULL, NULL),
(413, 34, 'Simalungun', 'Kabupaten', '21162', NULL, NULL),
(414, 21, 'Simeulue', 'Kabupaten', '23891', NULL, NULL),
(415, 12, 'Singkawang', 'Kota', '79117', NULL, NULL),
(416, 28, 'Sinjai', 'Kabupaten', '92615', NULL, NULL),
(417, 12, 'Sintang', 'Kabupaten', '78619', NULL, NULL),
(418, 11, 'Situbondo', 'Kabupaten', '68316', NULL, NULL),
(419, 5, 'Sleman', 'Kabupaten', '55513', NULL, NULL),
(420, 32, 'Solok', 'Kabupaten', '27365', NULL, NULL),
(421, 32, 'Solok', 'Kota', '27315', NULL, NULL),
(422, 32, 'Solok Selatan', 'Kabupaten', '27779', NULL, NULL),
(423, 28, 'Soppeng', 'Kabupaten', '90812', NULL, NULL),
(424, 25, 'Sorong', 'Kabupaten', '98431', NULL, NULL),
(425, 25, 'Sorong', 'Kota', '98411', NULL, NULL),
(426, 25, 'Sorong Selatan', 'Kabupaten', '98454', NULL, NULL),
(427, 10, 'Sragen', 'Kabupaten', '57211', NULL, NULL),
(428, 9, 'Subang', 'Kabupaten', '41215', NULL, NULL),
(429, 21, 'Subulussalam', 'Kota', '24882', NULL, NULL),
(430, 9, 'Sukabumi', 'Kabupaten', '43311', NULL, NULL),
(431, 9, 'Sukabumi', 'Kota', '43114', NULL, NULL),
(432, 14, 'Sukamara', 'Kabupaten', '74712', NULL, NULL),
(433, 10, 'Sukoharjo', 'Kabupaten', '57514', NULL, NULL),
(434, 23, 'Sumba Barat', 'Kabupaten', '87219', NULL, NULL),
(435, 23, 'Sumba Barat Daya', 'Kabupaten', '87453', NULL, NULL),
(436, 23, 'Sumba Tengah', 'Kabupaten', '87358', NULL, NULL),
(437, 23, 'Sumba Timur', 'Kabupaten', '87112', NULL, NULL),
(438, 22, 'Sumbawa', 'Kabupaten', '84315', NULL, NULL),
(439, 22, 'Sumbawa Barat', 'Kabupaten', '84419', NULL, NULL),
(440, 9, 'Sumedang', 'Kabupaten', '45326', NULL, NULL),
(441, 11, 'Sumenep', 'Kabupaten', '69413', NULL, NULL),
(442, 8, 'Sungaipenuh', 'Kota', '37113', NULL, NULL),
(443, 24, 'Supiori', 'Kabupaten', '98164', NULL, NULL),
(444, 11, 'Surabaya', 'Kota', '60119', NULL, NULL),
(445, 10, 'Surakarta (Solo)', 'Kota', '57113', NULL, NULL),
(446, 13, 'Tabalong', 'Kabupaten', '71513', NULL, NULL),
(447, 1, 'Tabanan', 'Kabupaten', '82119', NULL, NULL),
(448, 28, 'Takalar', 'Kabupaten', '92212', NULL, NULL),
(449, 25, 'Tambrauw', 'Kabupaten', '98475', NULL, NULL),
(450, 16, 'Tana Tidung', 'Kabupaten', '77611', NULL, NULL),
(451, 28, 'Tana Toraja', 'Kabupaten', '91819', NULL, NULL),
(452, 13, 'Tanah Bumbu', 'Kabupaten', '72211', NULL, NULL),
(453, 32, 'Tanah Datar', 'Kabupaten', '27211', NULL, NULL),
(454, 13, 'Tanah Laut', 'Kabupaten', '70811', NULL, NULL),
(455, 3, 'Tangerang', 'Kabupaten', '15914', NULL, NULL),
(456, 3, 'Tangerang', 'Kota', '15111', NULL, NULL),
(457, 3, 'Tangerang Selatan', 'Kota', '15332', NULL, NULL),
(458, 18, 'Tanggamus', 'Kabupaten', '35619', NULL, NULL),
(459, 34, 'Tanjung Balai', 'Kota', '21321', NULL, NULL),
(460, 8, 'Tanjung Jabung Barat', 'Kabupaten', '36513', NULL, NULL),
(461, 8, 'Tanjung Jabung Timur', 'Kabupaten', '36719', NULL, NULL),
(462, 17, 'Tanjung Pinang', 'Kota', '29111', NULL, NULL),
(463, 34, 'Tapanuli Selatan', 'Kabupaten', '22742', NULL, NULL),
(464, 34, 'Tapanuli Tengah', 'Kabupaten', '22611', NULL, NULL),
(465, 34, 'Tapanuli Utara', 'Kabupaten', '22414', NULL, NULL),
(466, 13, 'Tapin', 'Kabupaten', '71119', NULL, NULL),
(467, 16, 'Tarakan', 'Kota', '77114', NULL, NULL),
(468, 9, 'Tasikmalaya', 'Kabupaten', '46411', NULL, NULL),
(469, 9, 'Tasikmalaya', 'Kota', '46116', NULL, NULL),
(470, 34, 'Tebing Tinggi', 'Kota', '20632', NULL, NULL),
(471, 8, 'Tebo', 'Kabupaten', '37519', NULL, NULL),
(472, 10, 'Tegal', 'Kabupaten', '52419', NULL, NULL),
(473, 10, 'Tegal', 'Kota', '52114', NULL, NULL),
(474, 25, 'Teluk Bintuni', 'Kabupaten', '98551', NULL, NULL),
(475, 25, 'Teluk Wondama', 'Kabupaten', '98591', NULL, NULL),
(476, 10, 'Temanggung', 'Kabupaten', '56212', NULL, NULL),
(477, 20, 'Ternate', 'Kota', '97714', NULL, NULL),
(478, 20, 'Tidore Kepulauan', 'Kota', '97815', NULL, NULL),
(479, 23, 'Timor Tengah Selatan', 'Kabupaten', '85562', NULL, NULL),
(480, 23, 'Timor Tengah Utara', 'Kabupaten', '85612', NULL, NULL),
(481, 34, 'Toba Samosir', 'Kabupaten', '22316', NULL, NULL),
(482, 29, 'Tojo Una-Una', 'Kabupaten', '94683', NULL, NULL),
(483, 29, 'Toli-Toli', 'Kabupaten', '94542', NULL, NULL),
(484, 24, 'Tolikara', 'Kabupaten', '99411', NULL, NULL),
(485, 31, 'Tomohon', 'Kota', '95416', NULL, NULL),
(486, 28, 'Toraja Utara', 'Kabupaten', '91831', NULL, NULL),
(487, 11, 'Trenggalek', 'Kabupaten', '66312', NULL, NULL),
(488, 19, 'Tual', 'Kota', '97612', NULL, NULL),
(489, 11, 'Tuban', 'Kabupaten', '62319', NULL, NULL),
(490, 18, 'Tulang Bawang', 'Kabupaten', '34613', NULL, NULL),
(491, 18, 'Tulang Bawang Barat', 'Kabupaten', '34419', NULL, NULL),
(492, 11, 'Tulungagung', 'Kabupaten', '66212', NULL, NULL),
(493, 28, 'Wajo', 'Kabupaten', '90911', NULL, NULL),
(494, 30, 'Wakatobi', 'Kabupaten', '93791', NULL, NULL),
(495, 24, 'Waropen', 'Kabupaten', '98269', NULL, NULL),
(496, 18, 'Way Kanan', 'Kabupaten', '34711', NULL, NULL),
(497, 10, 'Wonogiri', 'Kabupaten', '57619', NULL, NULL),
(498, 10, 'Wonosobo', 'Kabupaten', '56311', NULL, NULL),
(499, 24, 'Yahukimo', 'Kabupaten', '99041', NULL, NULL),
(500, 24, 'Yalimo', 'Kabupaten', '99481', NULL, NULL),
(501, 5, 'Yogyakarta', 'Kota', '55111', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `les_privates`
--

CREATE TABLE `les_privates` (
  `id_les` int(10) UNSIGNED NOT NULL,
  `guru_id` int(11) NOT NULL,
  `murid_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_gurus`
--

CREATE TABLE `mapel_gurus` (
  `id_mapel_guru` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `kat_mapel_id` int(11) NOT NULL,
  `kategori_sekolah_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapel_gurus`
--

INSERT INTO `mapel_gurus` (`id_mapel_guru`, `user_id`, `kat_mapel_id`, `kategori_sekolah_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2019-06-27 01:44:10', '2019-06-27 01:44:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materis`
--

CREATE TABLE `materis` (
  `id_materi` int(10) UNSIGNED NOT NULL,
  `sub_materi_id` int(11) NOT NULL,
  `materi` text COLLATE utf8mb4_unicode_ci,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `materis`
--

INSERT INTO `materis` (`id_materi`, `sub_materi_id`, `materi`, `video`, `created_at`, `updated_at`) VALUES
(1, 1, '<p><b>Matematika</b>&nbsp;(dari <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Bahasa_Yunani\">bahasa Yunani</a>: <i>μαθημα</i>&nbsp;- <i>mathēma, \"pengetahuan, pemikiran,</i>&nbsp;pembelajaran\") adalah ilmu yang mempelajari hal-hal seperti <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Besaran\">besaran</a>, <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Struktur\">struktur</a>, <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Ruang\">ruang</a>, dan <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Kalkulus\">perubahan</a>. Para <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Matematikawan\">matematikawan</a>&nbsp;merangkai dan menggunakan berbagai <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Pola\">pola</a>,<a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-2\">[2]</a><a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-3\">[3]</a>dan menggunakannya untuk merumuskan <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Konjektur\">konjektur</a>&nbsp;baru, dan membangun kebenaran melalui <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Metode_deduksi\">metode deduksi</a>&nbsp;yang <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Ketat\">ketat</a>diturunkan dari <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Aksioma\">aksioma-aksioma</a>&nbsp;dan <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Definisi\">definisi-definisi</a>&nbsp;yang bersesuaian.<a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-4\">[4]</a>kahkhaskhdkassa<br></p>', 'https://www.youtube.com/watch?v=KHzbKa8qvAU&t=240s', '2019-06-27 01:44:40', '2019-07-03 21:08:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `chatroom` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `chatroom`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 0, 3, 'aa', '2019-08-24 18:49:20', '2019-08-24 18:49:20'),
(2, 0, 2, 'tes', '2019-08-24 18:49:45', '2019-08-24 18:49:45'),
(3, 0, 3, 'oi', '2019-08-24 18:50:02', '2019-08-24 18:50:02'),
(4, 0, 2, 'a', '2019-08-24 18:50:05', '2019-08-24 18:50:05'),
(5, 10, 3, 'kkk', '2019-08-24 19:08:29', '2019-08-24 19:08:29'),
(6, 10, 3, 'aaa', '2019-08-24 19:55:21', '2019-08-24 19:55:21'),
(7, 10, 2, 'bbb', '2019-08-24 19:55:35', '2019-08-24 19:55:35'),
(8, 10, 2, 'vv', '2019-08-24 19:56:01', '2019-08-24 19:56:01'),
(9, 10, 3, 'o', '2019-08-24 19:56:47', '2019-08-24 19:56:47'),
(10, 10, 3, 'a', '2019-08-24 19:57:08', '2019-08-24 19:57:08'),
(11, 10, 2, 'b', '2019-08-24 19:57:24', '2019-08-24 19:57:24'),
(12, 10, 2, 'c', '2019-08-24 19:59:56', '2019-08-24 19:59:56'),
(13, 10, 3, 'b', '2019-08-24 20:04:12', '2019-08-24 20:04:12'),
(14, 10, 3, 'c', '2019-08-24 20:05:31', '2019-08-24 20:05:31'),
(15, 10, 3, 'b', '2019-08-24 20:05:55', '2019-08-24 20:05:55'),
(16, 10, 3, 'p', '2019-08-24 20:08:52', '2019-08-24 20:08:52'),
(17, 10, 3, 'a', '2019-08-24 20:10:37', '2019-08-24 20:10:37'),
(18, 10, 3, 'p', '2019-08-24 20:24:50', '2019-08-24 20:24:50'),
(19, 10, 3, 'p', '2019-08-24 20:25:15', '2019-08-24 20:25:15'),
(20, 10, 2, 'a', '2019-08-24 20:34:32', '2019-08-24 20:34:32'),
(21, 10, 3, 'l', '2019-08-24 20:44:07', '2019-08-24 20:44:07'),
(22, 10, 2, 'm', '2019-08-24 20:50:20', '2019-08-24 20:50:20'),
(23, 10, 2, 'j', '2019-08-24 20:51:36', '2019-08-24 20:51:36'),
(24, 10, 2, 'j', '2019-08-24 20:52:10', '2019-08-24 20:52:10'),
(25, 10, 2, 'k', '2019-08-25 02:53:48', '2019-08-25 02:53:48'),
(26, 10, 2, 'g', '2019-08-25 19:01:14', '2019-08-25 19:01:14'),
(27, 10, 2, 'ff', '2019-08-25 19:30:41', '2019-08-25 19:30:41'),
(28, 10, 3, 'jancuk', '2019-08-25 19:30:52', '2019-08-25 19:30:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_31_182334_create_materis_table', 1),
(4, '2018_10_31_185926_create_kategori_mapels_table', 1),
(5, '2018_10_31_190232_create_sub_materis_table', 1),
(6, '2018_11_16_065238_create_mapel_gurus_table', 1),
(7, '2018_11_24_150953_create_les_privates_table', 1),
(8, '2018_12_18_141349_create_kotas_table', 1),
(9, '2018_12_23_234742_create_kategori_sekolahs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_materis`
--

CREATE TABLE `sub_materis` (
  `id_sub_materi` int(10) UNSIGNED NOT NULL,
  `kat_mapel_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sub_materis`
--

INSERT INTO `sub_materis` (`id_sub_materi`, `kat_mapel_id`, `guru_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Hitung', '2019-06-27 01:44:36', '2019-06-27 01:44:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` int(11) NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kampus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `api_token`, `level`, `no_hp`, `kota`, `password`, `jenis_kelamin`, `alamat`, `avatar`, `jurusan`, `semester`, `kampus`, `kelas`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, NULL, 2005, '082250314988', 2, '$2y$10$8/oE3B7MGRra1YGXAZDUIuUW.Ss9V/iFYGqLr1pZ2MZA2dI8KKVWS', NULL, NULL, 'avatar_20190703021244.jpg', NULL, NULL, NULL, NULL, 'UbMFERVyzr34kXIUGeFy5T0FMDDYIX8Hm0sTMSR3qri0UkkfSycyToMm1jLD', NULL, '2019-07-02 19:12:44'),
(2, 'level1', 'level1@gmail.com', NULL, NULL, 1, '082250314988', 2, '$2y$10$uAzdQqPcGmOjTHCCVSdtbOjGTdWoRFKnXzfVS46fHNJbj6kQpJpne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YmPX0LO3wwNVjgm9sE1Df73Gv8pslRNswaF2hCdGmxakitbJlzbHG8M5OhyB', NULL, NULL),
(3, 'level2', 'level2@gmail.com', NULL, NULL, 2, '082250314988', 2, '$2y$10$xdISk9ArrnZdYgvBIt4GhODeKqiN53vXRXKyin/XugS1bnW4FUEDy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JHZh2ZGxlPTYOrBohkCjt1630qmqmb2kzO8GEH8ZCKRu9HIvcZZdAN1ZWdN0', NULL, NULL),
(4, 'level11', 'level11@gmail.com', NULL, NULL, 1, '082250314988', 2, '$2y$10$uAzdQqPcGmOjTHCCVSdtbOjGTdWoRFKnXzfVS46fHNJbj6kQpJpne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YmPX0LO3wwNVjgm9sE1Df73Gv8pslRNswaF2hCdGmxakitbJlzbHG8M5OhyB', NULL, NULL),
(5, 'level22', 'level22@gmail.com', NULL, NULL, 2, '082250314988', 2, '$2y$10$xdISk9ArrnZdYgvBIt4GhODeKqiN53vXRXKyin/XugS1bnW4FUEDy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'JHZh2ZGxlPTYOrBohkCjt1630qmqmb2kzO8GEH8ZCKRu9HIvcZZdAN1ZWdN0', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chat_room`
--
ALTER TABLE `chat_room`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_mapels`
--
ALTER TABLE `kategori_mapels`
  ADD PRIMARY KEY (`id_kat_mapel`);

--
-- Indeks untuk tabel `kategori_sekolahs`
--
ALTER TABLE `kategori_sekolahs`
  ADD PRIMARY KEY (`id_kategori_sekolah`);

--
-- Indeks untuk tabel `kotas`
--
ALTER TABLE `kotas`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `les_privates`
--
ALTER TABLE `les_privates`
  ADD PRIMARY KEY (`id_les`);

--
-- Indeks untuk tabel `mapel_gurus`
--
ALTER TABLE `mapel_gurus`
  ADD PRIMARY KEY (`id_mapel_guru`);

--
-- Indeks untuk tabel `materis`
--
ALTER TABLE `materis`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `sub_materis`
--
ALTER TABLE `sub_materis`
  ADD PRIMARY KEY (`id_sub_materi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chat_room`
--
ALTER TABLE `chat_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kategori_mapels`
--
ALTER TABLE `kategori_mapels`
  MODIFY `id_kat_mapel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori_sekolahs`
--
ALTER TABLE `kategori_sekolahs`
  MODIFY `id_kategori_sekolah` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kotas`
--
ALTER TABLE `kotas`
  MODIFY `id_kota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `les_privates`
--
ALTER TABLE `les_privates`
  MODIFY `id_les` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mapel_gurus`
--
ALTER TABLE `mapel_gurus`
  MODIFY `id_mapel_guru` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `materis`
--
ALTER TABLE `materis`
  MODIFY `id_materi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `sub_materis`
--
ALTER TABLE `sub_materis`
  MODIFY `id_sub_materi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
