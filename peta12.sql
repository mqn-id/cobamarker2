-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07 Nov 2017 pada 15.01
-- Versi Server: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peta12`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE `client` (
  `id_client` int(50) NOT NULL,
  `id_koridor` int(50) NOT NULL,
  `ip_client` varchar(50) NOT NULL,
  `nama_halte` varchar(255) NOT NULL,
  `status_client` enum('Connected','Disconnected','Destination net unreachable','Destination host unreachable','Request timed out') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`id_client`, `id_koridor`, `ip_client`, `nama_halte`, `status_client`) VALUES
(1, 11, '10.1.16.22', 'Asmi [W]', 'Disconnected'),
(2, 11, '10.1.17.21', 'Galur [E]', 'Disconnected'),
(3, 11, '10.1.17.22', 'Galur [W]', 'Disconnected'),
(4, 11, '10.1.18.22', 'Rawa Buaya [W]', 'Disconnected'),
(5, 11, '10.1.19.22', 'Grogol [W]', 'Disconnected'),
(6, 11, '10.1.23.21', 'TU GAS [E]', 'Disconnected'),
(7, 11, '10.1.23.22', 'TU GAS [W]', 'Disconnected'),
(8, 11, '10.1.24.21', 'Layur [E]', 'Disconnected'),
(9, 11, '10.1.24.22', 'Layur [W]', 'Disconnected'),
(10, 11, '10.1.25.21', 'Pemuda Rawamangun [E]', 'Disconnected'),
(11, 11, '10.1.25.22', 'Pemuda Rawamangun [W]', 'Disconnected'),
(12, 11, '10.1.26.21', 'Valedrome [E]', 'Disconnected'),
(13, 11, '10.1.26.22', 'Valedrome [W]', 'Disconnected'),
(14, 11, '10.1.27.21', 'Sunan Giri [E]', 'Disconnected'),
(15, 11, '10.1.28.21', 'UNJ [E]', 'Disconnected'),
(16, 11, '10.1.28.22', 'UNJ [W]', 'Disconnected'),
(17, 11, '10.1.29.21', 'Pramuka BPKP [E]', 'Disconnected'),
(18, 11, '10.1.29.22', 'Pramuka BPKP [W]', 'Disconnected'),
(19, 11, '10.1.31.21', 'Utan Kayu [E]', 'Disconnected'),
(20, 11, '10.1.32.21', 'Pasar Genjing [E]', 'Disconnected'),
(21, 11, '10.1.35.21', 'Pasar Rumput [E]', 'Disconnected'),
(22, 11, '10.1.35.22', 'Pasar Rumput [W]', 'Disconnected'),
(23, 11, '10.1.36.21', 'Halimun [E]', 'Disconnected'),
(24, 11, '10.1.36.22', 'Halimun [W]', 'Disconnected'),
(25, 11, '10.1.43.22', 'Matraman [W]', 'Disconnected'),
(26, 11, '10.1.43.24', 'Matraman [S]', 'Disconnected'),
(27, 11, '10.1.43.25', 'Matraman [N]', 'Disconnected'),
(28, 11, '10.1.44.21', 'Salemba Carolus [E]', 'Disconnected'),
(29, 11, '10.1.45.21', 'UI Salemba [E]', 'Disconnected'),
(30, 11, '10.1.45.22', 'UI Salemba [W]', 'Disconnected'),
(31, 11, '10.1.47.22', 'Pal Putih [W]', 'Connected'),
(32, 11, '10.1.49.21', 'Budi Utomo [E]', 'Connected'),
(33, 11, '10.1.50.21', 'Pasar Baru [E]', 'Connected'),
(34, 11, '10.1.50.22', 'Pasar Baru [W]', 'Connected'),
(35, 11, '10.1.52.21', 'Pademangan [E]', 'Connected'),
(36, 11, '10.1.52.22', 'Pademangan [W]', 'Connected'),
(37, 11, '10.1.58.22', 'SMK 57 [N]', 'Connected'),
(38, 11, '10.1.62.21', 'Warung Jati [S]', 'Connected'),
(39, 11, '10.1.63.21', 'Imigrasi [S]', 'Destination host unreachable'),
(40, 11, '10.1.64.21', 'Duren Tiga [S]', 'Destination host unreachable'),
(41, 11, '10.1.64.22', 'Duren Tiga [N]', 'Destination host unreachable'),
(42, 11, '10.1.65.21', '09  - Mampang Prapatan [S]', 'Destination host unreachable'),
(43, 11, '10.1.65.22', '09  - Mampang Prapatan [N]', 'Destination host unreachable'),
(44, 11, '10.1.66.21', 'Kuningan Timur [S]', 'Disconnected'),
(45, 11, '10.1.66.22', 'Kuningan Timur [N]', 'Destination host unreachable'),
(46, 11, '10.1.67.21', 'Patra Kuningan [S]', 'Connected'),
(47, 11, '10.1.67.22', 'Patra Kuningan [N]', 'Disconnected'),
(48, 11, '10.1.70.21', 'Karet Kuningan [S]', 'Connected'),
(49, 11, '10.1.70.22', 'Karet Kuningan [N]', 'Connected'),
(50, 11, '10.1.71.21', 'Kuningan Madya Aini [S]', 'Connected'),
(51, 11, '10.1.72.21', 'Setiabudi Utara [S]', 'Connected'),
(52, 11, '10.1.72.22', 'Setiabudi Utara [N]', 'Connected'),
(53, 11, '10.1.140.58', 'Kampung Melayu [S]', 'Connected'),
(54, 11, '10.1.140.59', 'Kampung Melayu [N]', 'Connected'),
(55, 11, '10.1.140.2', 'Bidara Cina [S]', 'Destination host unreachable'),
(56, 11, '10.1.140.3', 'Bidara Cina [S]', 'Destination host unreachable'),
(57, 11, '10.1.140.4', 'Cawang Otista [S]', 'Connected'),
(58, 11, '10.1.140.5', 'Cawang Otista [N]', 'Connected'),
(59, 11, '10.1.140.6', 'BNN [S]', 'Connected'),
(60, 11, '10.1.140.7', 'BNN [N]', 'Connected'),
(61, 11, '10.1.140.9', 'Cawang UKI [N]', 'Connected'),
(62, 11, '10.1.140.12', 'PGC Cililitan [S]', 'Connected'),
(63, 11, '10.1.140.13', 'PGC Cililitan [N]', 'Connected'),
(64, 11, '10.1.140.15', 'Pasar Induk [N]', 'Connected'),
(65, 11, '10.1.140.16', 'RS. Harapan Bunda [S]', 'Destination host unreachable'),
(66, 11, '10.1.140.30', 'FO. Raya Bogor [S]', 'Connected'),
(67, 11, '10.1.140.31', 'FO. Raya Bogor [N]', 'Connected'),
(68, 11, '10.1.140.19', 'Tanah Merdeka [N]', 'Connected'),
(69, 11, '10.1.78.21', 'Pond Indah 2 [S]', 'Connected'),
(70, 11, '10.1.78.22', 'Pond Indah 2 [N]', 'Connected'),
(71, 11, '10.1.140.24', 'Pondok Indah 1 [S]', 'Destination host unreachable'),
(72, 11, '10.1.140.25', 'Pondok Indah 1 [N]', 'Destination host unreachable'),
(73, 11, '10.1.140.26', 'Tanah Kusir Kodim [S]', 'Connected'),
(74, 11, '10.1.140.28', 'Kebayoran Lama Bungur [S]', 'Disconnected'),
(75, 11, '10.1.140.34', 'Permata Hijau [S]', 'Connected'),
(76, 11, '10.1.140.35', 'Permata Hijau [N]', 'Connected'),
(77, 11, '10.1.140.36', 'RS Medika Permata Hijau [S]', 'Connected'),
(78, 11, '10.1.140.37', 'RS Medika Permata Hijau [N]', 'Connected'),
(79, 11, '10.1.140.38', 'Pos Pengumben [S]', 'Connected'),
(80, 11, '10.1.140.39', 'Pos Pengumben [N]', 'Connected'),
(81, 11, '10.1.140.41', 'Kebon Jeruk [N]', 'Destination host unreachable'),
(82, 11, '10.1.140.42', 'Duri Kepa [S]', 'Destination host unreachable'),
(83, 11, '10.1.140.43', 'Duri Kepa [N]', 'Connected'),
(84, 11, '10.1.140.44', 'Kedoya Raya/Assidiqiyah [S]', 'Connected'),
(85, 11, '10.1.140.45', 'Kedoya Raya/Assidiqiyah [N]', 'Connected'),
(86, 11, '10.1.140.46', 'Kedoya Green Garden [S]', 'Connected'),
(87, 11, '10.1.140.47', 'Kedoya Green Garden [N]', 'Connected'),
(88, 11, '10.1.140.49', 'Grogol 2 [N]', 'Connected'),
(89, 11, '10.1.140.54', 'Rs. Tarakan [S]', 'Connected'),
(90, 11, '10.1.140.55', 'Rs. Tarakan [N]', 'Connected'),
(91, 11, '10.1.140.56', 'Petojo [S]', 'Connected'),
(92, 11, '10.1.140.57', 'Petojo [N]', 'Connected'),
(93, 11, '10.1.140.60', 'Harmoni [S]', 'Connected'),
(94, 11, '10.1.140.61', 'Harmoni [N]', 'Connected');

-- --------------------------------------------------------

--
-- Struktur dari tabel `koridor`
--

CREATE TABLE `koridor` (
  `id_koridor` int(50) NOT NULL,
  `name_koridor` varchar(255) NOT NULL,
  `sum_client` int(100) NOT NULL,
  `pusat_client` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `koridor`
--

INSERT INTO `koridor` (`id_koridor`, `name_koridor`, `sum_client`, `pusat_client`) VALUES
(2, 'Pulogadung - Harmoni', 0, '0'),
(3, 'Kalideres - Pasar Baru', 0, '0'),
(4, 'Pulogadung - Dukuh Atas', 0, '0'),
(5, 'Kp. Melayu - Ancol', 0, '0'),
(6, 'Ragunan - Dukuh Atas', 0, '0'),
(7, 'Kp. Melayu - Kp. Rambutan', 0, '0'),
(8, 'Harmoni - Lebak Bulus', 0, '0'),
(11, 'Kantor DAOP Tiga', 0, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_log` int(10) NOT NULL,
  `id_client` varchar(100) NOT NULL,
  `date_log` varchar(25) NOT NULL,
  `hour_log` varchar(25) NOT NULL,
  `status_log` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id_log`, `id_client`, `date_log`, `hour_log`, `status_log`) VALUES
(96, '5', '05 Feb 2016', '20', 0),
(97, '26', '05 Feb 2016', '20', 0),
(98, '16', '05 Feb 2016', '19', 0),
(110, '23', '05 Feb 2016', '20', 0),
(111, '21', '05 Feb 2016', '20', 0),
(112, '14', '05 Feb 2016', '20', 0),
(113, '5', '23 Jun 2017', '23', 0),
(114, '26', '23 Jun 2017', '23', 0),
(115, '14', '23 Jun 2017', '23', 0),
(116, '15', '23 Jun 2017', '23', 0),
(117, '16', '23 Jun 2017', '23', 0),
(118, '17', '23 Jun 2017', '23', 0),
(119, '18', '23 Jun 2017', '23', 0),
(120, '3', '23 Jun 2017', '23', 0),
(121, '19', '23 Jun 2017', '23', 0),
(122, '20', '23 Jun 2017', '23', 0),
(123, '21', '23 Jun 2017', '23', 0),
(124, '23', '23 Jun 2017', '23', 0),
(125, '3', '26 Jun 2017', '14', 0),
(126, '5', '26 Jun 2017', '14', 0),
(127, '14', '26 Jun 2017', '14', 0),
(128, '15', '26 Jun 2017', '14', 0),
(129, '16', '26 Jun 2017', '14', 0),
(130, '17', '26 Jun 2017', '14', 0),
(131, '18', '26 Jun 2017', '14', 0),
(132, '19', '26 Jun 2017', '14', 0),
(133, '20', '26 Jun 2017', '14', 0),
(134, '21', '26 Jun 2017', '14', 0),
(135, '23', '26 Jun 2017', '14', 0),
(136, '26', '26 Jun 2017', '14', 0),
(137, '13', '26 Jun 2017', '14', 0),
(138, '3', '27 Jun 2017', '21', 0),
(139, '5', '27 Jun 2017', '21', 0),
(140, '13', '27 Jun 2017', '21', 0),
(141, '14', '27 Jun 2017', '21', 0),
(142, '15', '27 Jun 2017', '21', 0),
(143, '16', '27 Jun 2017', '21', 0),
(144, '17', '27 Jun 2017', '21', 0),
(145, '18', '27 Jun 2017', '21', 0),
(146, '19', '27 Jun 2017', '21', 0),
(147, '20', '27 Jun 2017', '21', 0),
(148, '21', '27 Jun 2017', '21', 0),
(149, '23', '27 Jun 2017', '21', 0),
(150, '26', '27 Jun 2017', '21', 0),
(151, '5', '04 Jul 2017', '22', 0),
(152, '13', '04 Jul 2017', '19', 0),
(153, '14', '04 Jul 2017', '19', 0),
(154, '15', '04 Jul 2017', '22', 0),
(155, '20', '04 Jul 2017', '22', 0),
(156, '21', '04 Jul 2017', '19', 0),
(157, '26', '04 Jul 2017', '19', 0),
(158, '211', '04 Jul 2017', '20', 0),
(159, '212', '04 Jul 2017', '22', 0),
(160, '5', '09 Jul 2017', '21', 0),
(161, '15', '09 Jul 2017', '21', 0),
(162, '20', '09 Jul 2017', '21', 0),
(163, '212', '09 Jul 2017', '18', 0),
(164, '211', '09 Jul 2017', '21', 0),
(165, '5', '10 Jul 2017', '20', 0),
(166, '15', '10 Jul 2017', '20', 0),
(167, '20', '10 Jul 2017', '20', 0),
(168, '211', '10 Jul 2017', '20', 0),
(169, '212', '10 Jul 2017', '20', 0),
(170, '5', '12 Jul 2017', '19', 0),
(171, '15', '12 Jul 2017', '19', 0),
(172, '20', '12 Jul 2017', '19', 0),
(173, '211', '12 Jul 2017', '19', 0),
(174, '212', '12 Jul 2017', '19', 0),
(175, '5', '16 Jul 2017', '14', 0),
(176, '15', '16 Jul 2017', '14', 0),
(177, '20', '16 Jul 2017', '14', 0),
(178, '211', '16 Jul 2017', '14', 0),
(179, '212', '16 Jul 2017', '10', 0),
(180, '12', '16 Jul 2017', '14', 0),
(181, '13', '16 Jul 2017', '14', 0),
(182, '14', '16 Jul 2017', '14', 0),
(183, '5', '22 Aug 2017', '00', 0),
(184, '12', '22 Aug 2017', '00', 0),
(185, '13', '22 Aug 2017', '00', 0),
(186, '14', '22 Aug 2017', '00', 0),
(187, '15', '22 Aug 2017', '00', 0),
(188, '20', '22 Aug 2017', '00', 0),
(189, '211', '22 Aug 2017', '00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_data`
--

CREATE TABLE `tabel_data` (
  `id_client` int(11) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `nama_halte` varchar(50) NOT NULL,
  `id_koridor` int(2) NOT NULL,
  `ip_client` varchar(50) NOT NULL,
  `status_client` enum('Connected','Disconnected','Destination net unreachable','Destination host unreachable','Request timed out') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_data`
--

INSERT INTO `tabel_data` (`id_client`, `latitude`, `longitude`, `nama_halte`, `id_koridor`, `ip_client`, `status_client`) VALUES
(1, -6.17197, 106.889, 'Asmi', 2, '10.1.16.22', 'Destination net unreachable'),
(2, -6.1744, 106.855, 'Galur [E]', 2, '10.1.17.21', 'Request timed out'),
(3, -6.17435, 106.855, 'Galur [W]', 2, '10.1.17.22', 'Connected'),
(4, -6.15397, 106.726, 'Rawa Buaya [W]', 3, '10.1.18.22', 'Disconnected'),
(5, -6.16677, 106.79, 'Grogol [W]', 3, '10.1.19.22', 'Disconnected'),
(6, -6.19233, 106.905, 'TU GAS [E]', 4, '10.1.23.21', 'Disconnected'),
(7, -6.1923, 106.905, 'TU GAS [W]', 4, '10.1.23.22', 'Disconnected'),
(8, -6.19349, 106.899, 'Layur [E]', 4, '10.1.24.21', 'Disconnected'),
(9, -6.19352, 106.899, 'Layur [W]', 4, '10.1.24.22', 'Disconnected'),
(10, -6.19348, 106.892, 'Pemuda Rawamangun [E]', 4, '10.1.25.21', 'Disconnected'),
(11, -6.19344, 106.892, 'Pemuda Rawamangun [W]', 4, '10.1.25.22', 'Disconnected'),
(12, -6.19341, 106.888, 'Valedrome [E]', 4, '10.1.26.21', 'Disconnected'),
(13, -6.19346, 106.888, 'Valedrome [W]', 4, '10.1.26.22', 'Disconnected'),
(14, -6.19323, 106.884, 'Sunan Giri [E]', 4, '10.1.27.21', 'Disconnected'),
(15, -6.19287, 106.88, 'UNJ [E]', 4, '10.1.28.21', 'Disconnected'),
(16, -6.19289, 106.88, 'UNJ [W]', 4, '10.1.28.22', 'Disconnected'),
(17, -6.19215, 106.874, 'Pramuka BPKP [E]', 4, '10.1.29.21', 'Disconnected'),
(18, -6.19217, 106.874, 'Pramuka BPKP [W]', 4, '10.1.29.22', 'Disconnected'),
(19, -6.19272, 106.865, 'Utan Kayu [E]', 4, '10.1.31.21', 'Disconnected'),
(20, -6.19445, 106.861, 'Pasar Genjing [E]', 4, '10.1.32.21', 'Disconnected'),
(21, -6.20707, 106.841, 'Pasar Rumput [E]', 4, '10.1.35.21', 'Disconnected'),
(22, -6.20719, 106.841, 'Pasar Rumput [W]', 4, '10.1.35.22', 'Disconnected'),
(23, -6.20511, 106.833, 'Halimun [E]', 4, '10.1.36.21', 'Disconnected'),
(24, -6.20512, 106.833, 'Halimun [W]', 4, '10.1.36.22', 'Disconnected'),
(25, -10000, 106.855, 'Matraman [W]', 5, '10.1.43.22', 'Disconnected'),
(26, -6.19953, 106.854, 'Matraman [S]', 5, '10.1.43.24', 'Disconnected'),
(27, -6.20001, 106.855, 'Matraman [N]', 5, '10.1.43.25', 'Disconnected'),
(28, -6.19683, 106.851, 'Salemba Carolus [E]', 5, '10.1.44.21', 'Disconnected'),
(29, -6.19366, 106.849, 'UI Salemba [E]', 5, '10.1.45.21', 'Disconnected'),
(30, -6.19353, 106.849, 'UI Salemba [W]', 5, '10.1.45.22', 'Disconnected'),
(31, -6.18451, 106.844, 'Pal Putih [W]', 5, '10.1.47.22', 'Disconnected'),
(32, -6.16598, 106.839, 'Budi Utomo [E]', 5, '10.1.49.21', 'Disconnected'),
(33, -6.16236, 106.838, 'Pasar Baru [E]', 5, '10.1.50.21', 'Disconnected'),
(34, -6.16246, 106.838, 'Pasar Baru [W]', 5, '10.1.50.22', 'Disconnected'),
(35, -6.13371, 106.832, 'Pademangan [E]', 5, '10.1.52.21', 'Disconnected'),
(36, -6.13377, 106.832, 'Pademangan [W]', 5, '10.1.52.22', 'Disconnected'),
(37, -6.29115, 106.824, 'SMK 57 [N]', 6, '10.1.58.22', 'Disconnected'),
(38, -6.26225, 106.83, 'Warung Jati [S]', 6, '10.1.62.21', 'Disconnected'),
(39, -6.25671, 106.828, 'Imigrasi [S]', 6, '10.1.63.21', 'Disconnected'),
(40, -6.25232, 106.827, 'Duren Tiga [S]', 6, '10.1.64.21', 'Disconnected'),
(41, -6.25193, 106.827, 'Duren Tiga [N]', 6, '10.1.64.22', 'Disconnected'),
(42, -6.24213, 106.826, 'Mampang Prapatan [S]', 6, '10.1.65.21', 'Disconnected'),
(43, -6.24216, 106.826, 'Mampang Prapatan [N]', 6, '10.1.65.22', 'Disconnected'),
(44, -6.23605, 106.828, 'Kuningan Timur [S]', 6, '10.1.66.21', 'Disconnected'),
(45, -6.23597, 106.828, 'Kuningan Timur [N]', 6, '10.1.66.22', 'Disconnected'),
(46, -6.23346, 106.831, 'Patra Kuningan [S]', 6, '10.1.67.21', 'Disconnected'),
(47, -6.23327, 106.831, 'Patra Kuningan [N]', 6, '10.1.67.22', 'Disconnected'),
(48, -6.21729, 106.831, 'Karet Kuningan [S]', 6, '10.1.70.21', 'Disconnected'),
(49, -6.21742, 106.831, 'Karet Kuningan [N]', 6, '10.1.70.22', 'Disconnected'),
(50, -6.21283, 106.831, 'Kuningan Madya Aini [S]', 6, '10.1.71.21', 'Disconnected'),
(51, -6.20827, 106.83, 'Setiabudi Utara [S]', 6, '10.1.72.21', 'Disconnected'),
(52, -6.20801, 106.83, 'Setiabudi Utara [N]', 6, '10.1.72.22', 'Disconnected'),
(53, -6.22491, 106.866, 'Kampung Melayu [S]', 7, '10.1.140.58', 'Disconnected'),
(54, -6.22501, 106.867, 'Kampung Melayu [N]', 7, '10.1.140.59', 'Disconnected'),
(55, -6.2299, 106.867, 'Bidara Cina [S]', 7, '10.1.140.2', 'Disconnected'),
(56, -6.22991, 106.867, 'Bidara Cina [S]', 7, '10.1.140.3', 'Disconnected'),
(57, -6.24398, 106.869, 'Cawang Otista [S]', 7, '10.1.140.4', 'Disconnected'),
(58, -6.24393, 106.869, 'Cawang Otista [N]', 7, '10.1.140.5', 'Disconnected'),
(59, -6.2462, 106.872, 'BNN [S]', 7, '10.1.140.6', 'Disconnected'),
(60, -6.24606, 106.872, 'BNN [N]', 7, '10.1.140.7', 'Disconnected'),
(61, -6.25034, 106.874, 'Cawang UKI [N]', 7, '10.1.140.9', 'Disconnected'),
(62, -6.26234, 106.867, 'PGC Cililitan [S]', 7, '10.1.140.12', 'Disconnected'),
(63, -6.26235, 106.867, 'PGC Cililitan [N]', 7, '10.1.140.13', 'Disconnected'),
(64, -6.29428, 106.872, 'Pasar Induk [N]', 7, '10.1.140.15', 'Disconnected'),
(65, -6.30207, 106.868, 'RS. Harapan Bunda [S]', 7, '10.1.140.16', 'Disconnected'),
(66, -6.30655, 106.866, 'FO. Raya Bogor [S]', 7, '10.1.140.30', 'Disconnected'),
(67, -6.30649, 106.866, 'FO. Raya Bogor [N]', 7, '10.1.140.31', 'Disconnected'),
(68, -6.30823, 106.874, 'Tanah Merdeka [N]', 7, '10.1.140.19', 'Disconnected'),
(69, -6.26722, 106.784, 'Pond Indah 2 [S]', 8, '10.1.78.21', 'Disconnected'),
(70, -6.26722, 106.784, 'Pond Indah 2 [N]', 8, '10.1.78.22', 'Disconnected'),
(71, -6.28734, 106.779, 'Pondok Indah 1 [S]', 8, '10.1.140.24', 'Disconnected'),
(72, -6.28737, 106.779, 'Pondok Indah 1 [N]', 8, '10.1.140.25', 'Disconnected'),
(73, -6.25711, 106.782, 'Tanah Kusir Kodim [S]', 8, '10.1.140.26', 'Disconnected'),
(74, -6.25289, 106.782, 'Kebayoran Lama Bungur [S]', 8, '10.1.140.28', 'Disconnected'),
(75, -6.22129, 106.783, 'Permata Hijau [S]', 8, '10.1.140.34', 'Disconnected'),
(76, -6.22145, 106.783, 'Permata Hijau [N]', 8, '10.1.140.35', 'Disconnected'),
(77, -6.21825, 106.777, 'RS Medika Permata Hijau [S]', 8, '10.1.140.36', 'Disconnected'),
(78, -6.21831, 106.777, 'RS Medika Permata Hijau [N]', 8, '10.1.140.37', 'Disconnected'),
(79, -6.21294, 106.772, 'Pos Pengumben [S]', 8, '10.1.140.38', 'Disconnected'),
(80, -6.21299, 106.772, 'Pos Pengumben [N]', 8, '10.1.140.39', 'Disconnected'),
(81, -6.19428, 106.769, 'Kebon Jeruk [N]', 8, '10.1.140.41', 'Disconnected'),
(82, -6.18533, 106.768, 'Duri Kepa [S]', 8, '10.1.140.42', 'Disconnected'),
(83, -6.18539, 106.768, 'Duri Kepa [N]', 8, '10.1.140.43', 'Disconnected'),
(84, -6.17451, 106.766, 'Kedoya Raya/Assidiqiyah [S]', 8, '10.1.140.44', 'Disconnected'),
(85, -6.17449, 106.766, 'Kedoya Raya/Assidiqiyah [N]', 8, '10.1.140.45', 'Disconnected'),
(86, -6.16443, 10000, 'Kedoya Green Garden [S]', 8, '10.1.140.46', 'Disconnected'),
(87, -6.16448, 106.763, 'Kedoya Green Garden [N]', 8, '10.1.140.47', 'Disconnected'),
(88, -6.16675, 106.79, 'Grogol 2 [N]', 8, '10.1.140.49', 'Disconnected'),
(89, -6.17113, 106.81, 'Rs. Tarakan [S]', 8, '10.1.140.54', 'Disconnected'),
(90, -6.17106, 106.81, 'Rs. Tarakan [N]', 8, '10.1.140.55', 'Disconnected'),
(91, -6.16999, 106.817, 'Petojo [S]', 8, '10.1.140.56', 'Disconnected'),
(92, -6.16995, 106.817, 'Petojo [N]', 8, '10.1.140.57', 'Disconnected'),
(93, -6.16584, 106.82, 'Harmoni [S]', 8, '10.1.140.60', 'Disconnected'),
(94, -6.16582, 106.821, 'Harmoni [N]', 8, '10.1.140.61', 'Disconnected'),
(212, -7.13734, 108.932, 'facebook.com', 4, '31.13.78.35', 'Connected');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `pwd_user` varchar(255) NOT NULL,
  `name_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `pwd_user`, `name_user`) VALUES
(1, 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`,`ip_client`);

--
-- Indexes for table `koridor`
--
ALTER TABLE `koridor`
  ADD PRIMARY KEY (`id_koridor`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `tabel_data`
--
ALTER TABLE `tabel_data`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`,`email_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `koridor`
--
ALTER TABLE `koridor`
  MODIFY `id_koridor` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT for table `tabel_data`
--
ALTER TABLE `tabel_data`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
