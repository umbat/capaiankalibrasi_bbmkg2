-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capaian_kalibrasi_bbmkg2`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_aaws`
--

CREATE TABLE `data_aaws` (
  `id_aaws` bigint(20) UNSIGNED NOT NULL,
  `nama_aaws` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `lat_aaws` varchar(30) NOT NULL,
  `lon_aaws` varchar(30) NOT NULL,
  `nama_penjaga_aaws` varchar(100) NOT NULL,
  `kontak_aaws` varchar(50) NOT NULL,
  `terakhir_kalibrasi_aaws` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `petugas_kalibrasi_aaws` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_aaws`
--

INSERT INTO `data_aaws` (`id_aaws`, `nama_aaws`, `provinsi`, `lat_aaws`, `lon_aaws`, `nama_penjaga_aaws`, `kontak_aaws`, `terakhir_kalibrasi_aaws`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'AAWS Kroya', 'Jawa Tengah', '-7.59953 ', '109.2452', 'Hendri ', '081319668216', '2011-05-22', 'Dedi Ristianto', '2022-05-17 12:17:22', 'Admin', '2022-05-30 15:05:01'),
(3, 'AAWS Bojongmangu ', 'Jawa Barat', '-6.432088 ', '107.19187', 'Ubuh Buhori ', '085716921544', '2022-05-24', 'Dedi Ristianto', '2022-05-17 12:22:46', 'Admin', '2022-05-30 15:05:22'),
(4, 'AAWS Indramayu', 'Jawa Barat', '-6.4903', '107.9243', 'Dedi ', '085295641888', '2006-05-24', 'Dedi Ristianto', '2022-05-17 12:24:43', 'Admin', '2022-05-30 15:05:39'),
(5, 'AAWS Lemah Abang ', 'Jawa Barat', '-6.8275 ', '108.6189', 'Edi ', '081313010752', '2006-05-02', 'Dedi Ristianto', '2022-05-17 12:25:59', 'Admin', '2022-05-30 15:06:03'),
(6, 'AAWS Bangko', 'Jambi', '-2.073987', '102.24034', 'Zamroni ', '081278143001', '2022-04-01', 'M.Sabarudin', '2022-05-19 11:05:12', 'Admin', '2022-05-30 15:06:35'),
(7, 'AAWS Muara Limun', 'Jambi', '-2.432557', '102.618544', 'Mulyadi ', '082176207367', '1111-11-11', 'M.Sabarudin', '2022-05-19 11:06:16', 'Admin', '2022-05-30 15:20:33'),
(8, 'AAWS Tanjung Jabung Timur', 'Jambi', '-1.290278', '104.0828', 'Zuhebni ', '085266469499', '2022-04-03', 'M.Sabarudin', '2022-05-19 11:07:22', 'Admin', '2022-05-30 15:20:58'),
(9, 'AAWS Pagar Alam', 'Sumatera Selatan', '-4.037614', '103.2654', 'Rendra ', '085357574854', '2022-06-01', 'M.Sabarudin', '2022-05-19 11:49:14', 'Admin', '2022-05-30 15:21:53'),
(10, 'AAWS Muara Enim', 'Sumatera Selatan', '-3.653785', '103.7763', 'sadik ', '081278923361', '2022-06-02', 'M.Sabarudin', '2022-05-19 11:50:48', 'Admin', '2022-05-30 15:22:32'),
(11, 'AAWS Belitang', 'Sumatera Selatan', '-4.106389', '104.7581', 'Agus ', '082184759899', '2022-06-03', 'M.Sabarudin', '2022-05-19 11:52:00', 'Admin', '2022-05-30 15:22:55'),
(12, 'AAWS Ogan Komering Ilir', 'Sumatera Selatan', '-3.3977639', '104.842417', 'Jafkar ', '081366565959', '2022-06-04', 'M.Sabarudin', '2022-05-19 11:53:09', 'Admin', '2022-05-30 15:23:45'),
(13, 'AAWS Lebong Muara Aman', 'Bengkulu', '-3.096778', '102.1916389', 'Marthalinda ', '082177666773', '2022-10-05', 'M.Sabarudin', '2022-05-19 13:42:32', 'Admin', '2022-05-30 15:24:56'),
(14, 'AAWS Arga Makmur Bengku Utara', 'Bengkulu', '-3.438154', '102.19923', 'Mansyur ', '085367472106', '2022-10-10', 'M.Sabarudin', '2022-05-19 13:43:23', 'Admin', '2022-05-30 15:25:28'),
(15, 'AAWS Kendawangan', 'Kalimantan Barat', '-2.516241', '110.2169', '-', '-', '2022-10-01', 'M.Sabarudin', '2022-05-20 06:47:18', 'M.Sabarudin', '2022-05-20 06:47:18'),
(16, 'AAWS Landak', 'Kalimantan Barat', '0.390977', '109.9467', 'Luther Kendek ', '081345368989', '2022-10-02', 'M.Sabarudin', '2022-05-20 06:48:32', 'Admin', '2022-05-30 15:31:11'),
(17, 'AAWS Bengkayang', 'Kalimantan Barat', '0.865779', '109.4998', 'Bpk Danuri ', '08125710613', '2022-10-03', 'M.Sabarudin', '2022-05-20 06:49:17', 'Admin', '2022-05-30 15:48:05'),
(18, 'AAWS Sambas', 'Kalimantan Barat', '1.24666', '109.1666', 'Ely Gustian ', '081345792124', '2022-10-04', 'M.Sabarudin', '2022-05-20 06:49:59', 'Admin', '2022-05-30 15:48:39'),
(19, 'AAWS Seputih Raman', 'Lampung', '-4.880942', '105.372219', 'M.Damin ', '085279297667', '2022-03-20', 'M.Sabarudin', '2022-05-23 11:52:57', 'Admin', '2022-05-30 15:49:19'),
(20, 'AAWS Sidomulyo', 'Lampung', '-5.577375', '105.477276', 'Suyadi ', '085269674323', '2022-03-21', 'M.Sabarudin', '2022-05-23 11:53:42', 'Admin', '2022-05-30 15:49:59'),
(21, 'AAWS Pringsewu', 'Lampung', '-5.358649', '105.02017', 'Lukman ', '085758940172', '2022-03-22', 'M.Sabarudin', '2022-05-23 11:54:32', 'Admin', '2022-05-30 15:50:30'),
(22, 'AAWS Tanggamus', 'Lampung', '-5.4775391', '104.6827706', 'Iswanto ', '081930240752', '2022-03-23', 'M.Sabarudin', '2022-05-23 11:55:00', 'Admin', '2022-05-30 15:51:02'),
(23, 'AAWS Banyumas', 'Jawa Tengah', '-7.553124772395491', '109.26115143924453', 'Seto mulyono ', '081327330528', '2022-05-01', 'M.Sabarudin', '2022-05-24 11:35:46', 'Admin', '2022-05-30 15:51:37'),
(24, 'AAWS Sruweng', 'Jawa Tengah', '-7.651667', '109.6081', 'Ibu Sri ', '08122992892', '2022-05-02', 'M.Sabarudin', '2022-05-24 11:36:42', 'Admin', '2022-05-30 15:52:07'),
(25, 'AAWS Ujung Genteng ex Garut', 'Jawa Barat', '-7.3248125 ', '106.4129375', 'Untung Budiono ', '085794861131', '2022-05-01', 'M.Sabarudin', '2022-05-24 11:40:24', 'Admin', '2022-05-30 15:52:51'),
(26, 'AAWS Sumedang', 'Jawa Barat', '-6.824101', '107.844793', 'Suhendri', '085320344625', '2006-05-04', 'M.Sabarudin', '2022-05-24 11:43:09', 'Admin', '2022-05-30 15:53:25'),
(27, 'AAWS Banjarsari Ciamis', 'Jawa Barat', '-7.49796', '108.61559', 'Saep Nugraha ', '085223092732', '2006-05-03', 'M.Sabarudin', '2022-05-24 11:43:58', 'Admin', '2022-05-30 15:53:51'),
(28, 'AAWS Teluk Lada', 'Banten', '-6.523345', '105.8264', 'Aris ', '081947966455', '2022-02-21', 'Admin', '2022-05-27 11:21:05', 'Admin', '2022-05-30 15:54:28'),
(29, 'AAWS Bantul', 'D.I. Yogyakarta', '-7.90717', '110.3747', 'Budi Santoso', '08122941048', '1111-11-11', 'Admin', '2022-05-30 14:57:07', 'Admin', '2022-05-30 14:57:07'),
(30, 'AAWS Gunung Kidul', 'D.I. Yogyakarta', '-7.96221', '110.6933', 'Agus', '081215169499', '1111-11-11', 'Admin', '2022-05-30 14:57:51', 'Admin', '2022-05-30 14:57:51'),
(45, 'AAWS TOBOALI', 'Bangka Belitung', '-2.968735', '106.440384', '-----', '-----', '1111-11-11', 'Admin', '2022-06-02 15:19:49', 'Admin', '2022-06-02 15:19:49'),
(33, 'AAWS Lebak', 'Banten', '-6.546103 ', '106.3906', 'Tatan ', '081288502670', '1111-11-11', 'Admin', '2022-05-30 15:57:25', 'Admin', '2022-05-30 15:57:25'),
(38, 'AAWS Jepara', 'Jawa Tengah', '-6.59639 ', '110.6606', 'Kuslin ', '085225032789', '1111-11-11', 'Admin', '2022-05-30 16:02:41', 'Admin', '2022-05-30 16:02:41'),
(39, 'AAWS Klaten', 'Jawa Tengah', '-7.70333  ', '110.6058', 'Suratman', '----', '1111-11-11', 'Admin', '2022-05-30 16:03:41', 'Admin', '2022-05-30 16:03:41'),
(40, 'AAWS Pati', 'Jawa Tengah', '-6.734057 ', '111.020859', 'Edi Atmiko ', '08156655327', '1111-11-11', 'Admin', '2022-05-30 16:04:37', 'Admin', '2022-05-30 16:04:37'),
(41, 'AAWS Purwodadi', 'Jawa Tengah', '-7.11056', '110.9208', 'Sudiyono ', '082172026075', '1111-11-11', 'Admin', '2022-05-30 16:05:29', 'Admin', '2022-05-30 16:06:34'),
(42, 'AAWS Rembang', 'Jawa Tengah', '-6.860138 ', '111.403998', 'Feri ', '081578470398', '1111-11-11', 'Admin', '2022-05-30 16:07:16', 'Admin', '2022-05-30 16:07:16'),
(43, 'AAWS Sukoharjo', 'Jawa Tengah', '-7.577065  ', '110.716759', 'Suwarto ', '081393652295', '1111-11-11', 'Admin', '2022-05-30 16:07:51', 'Admin', '2022-05-30 16:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `data_arg`
--

CREATE TABLE `data_arg` (
  `id_arg` bigint(20) UNSIGNED NOT NULL,
  `nama_arg` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `lat_arg` varchar(30) NOT NULL,
  `lon_arg` varchar(30) NOT NULL,
  `nama_penjaga_arg` varchar(100) NOT NULL,
  `kontak_arg` varchar(50) NOT NULL,
  `terakhir_kalibrasi_arg` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `petugas_kalibrasi_arg` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_arg`
--

INSERT INTO `data_arg` (`id_arg`, `nama_arg`, `provinsi`, `lat_arg`, `lon_arg`, `nama_penjaga_arg`, `kontak_arg`, `terakhir_kalibrasi_arg`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'ARG Losari', 'Jawa Tengah', '-6.847729', '108.815435', 'Wahidi', '081911547681', '2020-05-04', 'M.Sabarudin', '2022-05-17 11:41:14', 'M.Sabarudin', '2022-05-17 11:41:14'),
(3, 'ARG Karang Sembung', 'Jawa Tengah', '-6.982658311193256', '109.01528944719198', '---', '---', '2020-05-10', 'M.Sabarudin', '2022-05-17 11:44:14', 'M.Sabarudin', '2022-05-17 11:44:14'),
(4, 'ARG Malahayu', 'Jawa Tengah', '-7.02927', '108.82082', 'Dede Saefudin', '087730681687', '2020-04-13', 'M.Sabarudin', '2022-05-17 11:45:13', 'M.Sabarudin', '2022-05-17 11:45:13'),
(5, 'ARG Pulosari', 'Jawa Tengah', '-7.17015', '109.2653', 'Mulyono', '085227208593', '2020-04-13', 'M.Sabarudin', '2022-05-17 11:46:33', 'M.Sabarudin', '2022-05-17 11:46:33'),
(6, 'ARG Cibaliung', 'Banten', '-6.7156', '105.71', '---', '---', '2021-04-08', 'M.Sabarudin', '2022-05-17 11:48:02', 'Sela Febriza', '2022-05-17 15:56:54'),
(7, 'ARG SMPK Panggrangan', 'Banten', ' -6.907833 ', '106.1734 ', 'Asep Saipudin ', '085883544366', '2020-04-13', 'M.Sabarudin', '2022-05-17 12:05:42', 'M.Sabarudin', '2022-05-17 12:05:42'),
(8, 'ARG Cikeusal Timur', 'Banten', '-6.260025 ', '106.27774 ', 'PU Pengairan Bendung Gerak Pamarayan', '---', '2021-03-16', 'M.Sabarudin', '2022-05-17 12:07:59', 'Sela Febriza', '2022-05-17 15:58:35'),
(9, 'ARG Malingping', 'Banten', '-6.7675', '106.0106', 'Ade sukartono', '085289696176', '2021-04-08', 'M.Sabarudin', '2022-05-17 12:08:50', 'Sela Febriza', '2022-05-18 10:53:04'),
(10, 'ARG SMPK Singamerta', 'Banten', '-6.119277 ', '106.2406 ', 'Adung ', '087871950971', '2020-04-13', 'M.Sabarudin', '2022-05-17 12:10:06', 'M.Sabarudin', '2022-05-17 12:10:06'),
(11, 'ARG Bojong Leles', 'Banten', '-6.3559', '106.2163', '---', '--', '2021-03-16', 'M.Sabarudin', '2022-05-17 12:11:08', 'Sela Febriza', '2022-05-17 15:55:09'),
(12, 'ARG Subang ', 'Jawa Barat', '-6.5525', '107.7536', 'Toufik ', '081298775449', '2021-03-16', 'M.Sabarudin', '2022-05-17 12:13:03', 'M.Sabarudin', '2022-05-17 12:13:03'),
(13, 'ARG BP3K Payung', 'Bangka Belitung', '-2.609939', '106.147415', 'Suryati', '081367792075', '2021-11-05', 'Sela Febriza', '2022-05-17 14:07:04', 'Admin', '2022-05-23 12:59:45'),
(176, 'ARG Kawali', 'Jawa Barat', ' -7.18908', ' 108.3747', 'Bpk. Ili Herdiana', '081323771059', '2022-05-25', 'M.Sabarudin', '2022-05-24 08:59:15', 'M.Sabarudin', '2022-05-24 08:59:15'),
(290, 'ARG SMPK Singaparna', 'Jawa Barat', '-6.935969629956083', '107.6218913343733', '----', '----', '1111-11-11', 'Admin', '2022-06-06 15:24:29', 'Admin', '2022-06-06 15:24:29'),
(173, 'ARG Cisompet', 'Jawa Barat', ' -7.545038', '107.818008', 'Pak Usep', '081313901110', '2022-05-22', 'M.Sabarudin', '2022-05-24 08:46:36', 'M.Sabarudin', '2022-05-24 08:46:36'),
(172, 'ARG Salopa', 'Jawa Barat', '-7.534296', '108279', 'Budi', '081222318555', '2022-05-21', 'M.Sabarudin', '2022-05-24 08:44:21', 'M.Sabarudin', '2022-05-24 08:44:21'),
(171, 'ARG Karang Nunggal', 'Jawa Barat', '-7.63117', '108.11265', '-', '-', '2022-05-20', 'M.Sabarudin', '2022-05-24 08:42:43', 'M.Sabarudin', '2022-05-24 08:42:43'),
(170, 'ARG Setu Patok', 'Jawa Barat', '-6.786663', ' 108.572838', ' Nuryaman', '08996368625', '2022-05-19', 'M.Sabarudin', '2022-05-24 08:41:06', 'M.Sabarudin', '2022-05-24 08:41:06'),
(169, 'ARG Cidaun', 'Jawa Barat', ' -7.49112', '107.36082', '-', '-', '2022-05-18', 'M.Sabarudin', '2022-05-24 08:39:36', 'M.Sabarudin', '2022-05-24 08:39:36'),
(194, 'ARG Air Rembikang', 'Bangka Belitung', ' -2.698', ' 107.6775167', 'rasikin', '081929750069', '2022-05-24', 'M.Sabarudin', '2022-05-24 10:04:41', 'M.Sabarudin', '2022-05-24 10:04:41'),
(168, 'ARG Ciberes', 'Jawa Barat', '-6.889942', ' 108.619663', '-', '-', '2022-05-25', 'M.Sabarudin', '2022-05-24 08:35:36', 'M.Sabarudin', '2022-05-24 08:35:36'),
(166, 'ARG BP3K Tukak Sadai', 'Bangka Belitung', '-3.034014', '106.71283', 'Agus Priyono', '81918943465', '2020-02-22', 'M.Sabarudin', '2022-05-24 08:12:24', 'M.Sabarudin', '2022-05-24 08:12:24'),
(165, 'ARG Lubuk Besar', 'Bangka Belitung', '-2.543', '106668', 'Arief Septiandi', '081373836294', '2020-02-21', 'M.Sabarudin', '2022-05-24 08:10:14', 'M.Sabarudin', '2022-05-24 10:01:29'),
(164, 'ARG Air Gegas', 'Bangka Belitung', '-2.684166', '106.3883', 'muhajir', '081279834625', '2020-02-20', 'M.Sabarudin', '2022-05-24 08:09:34', 'M.Sabarudin', '2022-05-24 08:09:34'),
(163, 'ARG SMA 1 Sungai Selan', 'Bangka Belitung', '-2.363524', '106.000787', 'rian', '085609384993', '2020-02-19', 'M.Sabarudin', '2022-05-24 08:08:51', 'M.Sabarudin', '2022-05-24 08:08:51'),
(162, 'ARG Kace Timur', 'Bangka Belitung', ' -2.136', '106087', '-', '-', '2020-02-18', 'M.Sabarudin', '2022-05-24 08:08:10', 'M.Sabarudin', '2022-05-24 08:08:10'),
(161, 'ARG Puding Besar', 'Bangka Belitung', '-1.995', '105955', 'Al Khalik', '081367942014', '2020-02-17', 'M.Sabarudin', '2022-05-24 08:07:40', 'M.Sabarudin', '2022-05-24 08:10:41'),
(160, 'ARG UPTD Dispernak Kab Bangka (Pemali)', 'Bangka Belitung', '-1.924949', '106.026982', 'toyib', '081373352132', '2020-02-16', 'M.Sabarudin', '2022-05-24 08:06:53', 'M.Sabarudin', '2022-05-24 08:06:53'),
(159, 'ARG Belinyu', 'Bangka Belitung', ' -1.650138', '105.7842', 'Ahmad yazid', '082183989090', '2020-02-15', 'M.Sabarudin', '2022-05-24 08:06:12', 'M.Sabarudin', '2022-05-24 08:06:12'),
(158, 'ARG BPK Parittiga', 'Bangka Belitung', ' -1.642863', '105.506404', 'ruslan', '085268677339', '2020-01-31', 'M.Sabarudin', '2022-05-24 08:05:29', 'M.Sabarudin', '2022-05-24 08:05:29'),
(157, 'ARG Muntok', 'Bangka Belitung', '-2.064166', '105.1669', 'riki', '0 85268983433', '2020-01-30', 'M.Sabarudin', '2022-05-24 08:04:46', 'M.Sabarudin', '2022-05-24 08:04:46'),
(38, 'ARG Pelepat ilir', 'Jambi', '-1.629312', '102.348282', 'Utoyo Haharjo', '085334459511', '2021-05-23', 'M.Sabarudin', '2022-05-19 09:38:56', 'M.Sabarudin', '2022-05-19 09:38:56'),
(39, 'ARG Tanah Tumbuh', 'Jambi', '-1', '101.87665', 'Marsup', '081274068446/082279286135', '2021-05-12', 'M.Sabarudin', '2022-05-19 09:49:02', 'M.Sabarudin', '2022-05-19 09:49:02'),
(40, 'ARG Air Hangat Timur', 'Jambi', '-2.019697', '101.420638', 'Yulmansah', '085266066547', '2021-05-02', 'M.Sabarudin', '2022-05-19 09:51:06', 'M.Sabarudin', '2022-05-19 09:51:06'),
(41, 'ARG Depati Parbo', 'Jambi', ' -2.091278', '101.4619', 'Cetra Hadi', '085381829124', '2021-05-10', 'M.Sabarudin', '2022-05-19 09:53:50', 'M.Sabarudin', '2022-05-19 09:53:50'),
(42, 'ARG Sungai Manau', 'Jambi', '-2.116181', '102.0105', 'Hendra', '081366657813', '2021-05-03', 'M.Sabarudin', '2022-05-19 09:55:31', 'M.Sabarudin', '2022-05-19 09:55:31'),
(43, 'ARG Pauh Sarolangun', 'Jambi', '-2168', '102817', 'Sarpan Elyadi', '085377225992', '2021-05-30', 'M.Sabarudin', '2022-05-19 09:57:36', 'M.Sabarudin', '2022-05-19 09:57:36'),
(44, 'ARG Pamenang Barat', 'Jambi', ' -2.12231', '102.4129', ' Efendi', '081274991712', '2021-05-01', 'M.Sabarudin', '2022-05-19 09:59:19', 'M.Sabarudin', '2022-05-19 09:59:19'),
(45, 'ARG Jujuhan Ilir', 'Jambi', '-1.160127', '101.888313', 'Suryadi', '081366603708', '2021-05-04', 'M.Sabarudin', '2022-05-19 10:01:41', 'M.Sabarudin', '2022-05-19 10:01:41'),
(46, 'ARG Tasep Lintas', 'Jambi', '-1.396666667', '101.9522222', 'Yamin', '085866694226', '2021-05-05', 'M.Sabarudin', '2022-05-19 10:04:19', 'M.Sabarudin', '2022-05-19 10:04:19'),
(47, 'ARG Tanah Sepenggal', 'Jambi', ' -1.428512', '102.028278', ' Amrizal.sp', '085366553558', '2021-05-06', 'M.Sabarudin', '2022-05-19 10:06:45', 'M.Sabarudin', '2022-05-19 10:06:45'),
(48, 'ARG Muara Bungo', 'Jambi', '-1.54344', '102.1786', 'Ramses', '081272533773', '2021-05-07', 'M.Sabarudin', '2022-05-19 10:08:41', 'M.Sabarudin', '2022-05-19 10:08:41'),
(49, 'ARG Sumay', 'Jambi', ' -1.378143', '102.4184', 'Ade Suhendra', '85279202793', '2021-05-08', 'M.Sabarudin', '2022-05-19 10:10:47', 'M.Sabarudin', '2022-05-19 10:10:47'),
(50, 'ARG Cikasungka', 'Jawa Barat', '-6.552729', '106.538597', 'Yan-Yan', '085883598098', '2021-05-01', 'M.Sabarudin', '2022-05-19 10:25:07', 'M.Sabarudin', '2022-05-19 10:25:07'),
(51, 'ARG Tebo Ulu', 'Jambi', ' -1.228848', '102.2431', 'Nasrudin', '085266004338', '2021-05-16', 'M.Sabarudin', '2022-05-19 10:30:24', 'M.Sabarudin', '2022-05-19 10:30:24'),
(52, 'ARG Singkut', 'Jambi', '-2.514652', ' 102.668109', ' Sarwono', '082281161174', '2021-05-09', 'M.Sabarudin', '2022-05-19 10:36:56', 'M.Sabarudin', '2022-05-19 10:36:56'),
(53, 'ARG PTPN VI Muaro Jambi', 'Jambi', '-1.88541', '103.4', ' Budianto', '081366057083', '2021-05-11', 'M.Sabarudin', '2022-05-19 10:40:03', 'M.Sabarudin', '2022-05-19 10:40:03'),
(54, 'ARG Muara Bulian', 'Jambi', ' -1.714715', '103.2642', 'M. Said', '085266522052', '2021-05-13', 'M.Sabarudin', '2022-05-19 10:41:49', 'M.Sabarudin', '2022-05-19 10:48:15'),
(55, 'ARG Katulampa', 'Jawa Barat', '-6.6333', '106.8342', 'Andi Sudirman', '081315862047', '2022-05-30', 'M.Sabarudin', '2022-05-19 10:44:39', 'M.Sabarudin', '2022-05-19 10:44:39'),
(56, 'ARG Cariu', 'Jawa Barat', '-6.498064', '107.125061', 'Dadi hardi', '087770072105', '2022-05-31', 'M.Sabarudin', '2022-05-19 10:47:10', 'M.Sabarudin', '2022-05-19 10:47:10'),
(57, 'ARG Merlung (Ex ARG Sarolangun)', 'Jambi', '-1.38244', '102.98244', 'Ika', '082280617237', '2021-05-28', 'M.Sabarudin', '2022-05-19 10:47:17', 'M.Sabarudin', '2022-05-19 10:47:17'),
(58, 'ARG Batang Asam', 'Jambi', ' -1.045142', '102.927772', 'sucipto', '085268759139', '2021-05-27', 'M.Sabarudin', '2022-05-19 10:50:08', 'M.Sabarudin', '2022-05-19 10:50:08'),
(59, 'ARG Cikalong Kulon', 'Jawa Barat', '-6.719', '107.241964', '-', '-', '2022-05-02', 'M.Sabarudin', '2022-05-19 10:50:48', 'M.Sabarudin', '2022-05-19 10:50:48'),
(60, 'ARG Pengabuan', 'Jambi', '-0.839798', '103.208483', 'Ikbal Ferdinal', ' 0823 2829 6465', '2021-05-26', 'M.Sabarudin', '2022-05-19 10:52:21', 'M.Sabarudin', '2022-05-19 10:52:21'),
(61, 'ARG Cibeber', 'Jawa Barat', ' -6.930817', ' 107.1215', ' Bu Ai', ' 085523996944', '2022-05-03', 'M.Sabarudin', '2022-05-19 10:53:09', 'M.Sabarudin', '2022-05-19 10:53:09'),
(62, 'ARG Tanjung Jabung Barat', 'Jambi', '-0.83166', '103.4261', 'TOMI', '085266359761', '2021-05-25', 'M.Sabarudin', '2022-05-19 10:54:07', 'M.Sabarudin', '2022-05-19 10:54:07'),
(63, 'ARG BPPT Muara Sabak', 'Jambi', '-1.179694', ' 103.7654', 'suryanti', '085266901612', '2021-05-24', 'M.Sabarudin', '2022-05-19 10:55:24', 'M.Sabarudin', '2022-05-19 10:55:24'),
(64, 'ARG Pasir Malang', 'Jawa Barat', '-7.22199', ' 107.54115', 'Ajun Lesmana', '085321898125', '2022-05-04', 'M.Sabarudin', '2022-05-19 10:55:47', 'M.Sabarudin', '2022-05-19 10:55:47'),
(65, 'ARG Rantau Rasau', 'Jambi', '-1.21168', '104.068794', 'saswanto', '082177168844', '2021-05-22', 'M.Sabarudin', '2022-05-19 10:57:28', 'M.Sabarudin', '2022-05-19 10:57:28'),
(66, 'ARG Purwakarta', 'Jawa Barat', ' -6.524976', '107.47572', 'Fida Munanti', '081315518468', '2022-05-05', 'M.Sabarudin', '2022-05-19 10:58:10', 'M.Sabarudin', '2022-05-19 10:58:10'),
(67, 'ARG Nipah', 'Jambi', '-1.08123', '104.1957', 'anhar', '081210356673', '2021-05-21', 'M.Sabarudin', '2022-05-19 10:59:20', 'M.Sabarudin', '2022-05-19 10:59:20'),
(68, 'ARG Kumpeh Ulu', 'Jambi', '-1.596262', '103.796127', ' Imam Bashori', '082380945150', '2021-05-20', 'M.Sabarudin', '2022-05-19 11:03:40', 'M.Sabarudin', '2022-05-19 11:03:40'),
(69, 'ARG Pabrik Gula Subang', 'Jawa Barat', '-6.41892', '107.69408', ' Ade', '085295243844', '2022-05-07', 'M.Sabarudin', '2022-05-19 11:04:40', 'M.Sabarudin', '2022-05-19 11:04:40'),
(70, 'ARG Bekasi', 'Jawa Barat', '-6.363592', '107.172537', 'Erwin', '08121038683', '2022-05-08', 'M.Sabarudin', '2022-05-19 11:07:18', 'M.Sabarudin', '2022-05-19 11:07:18'),
(71, 'ARG Jampang Kulon', 'Jawa Barat', ' -7.25665', '106.6254', '-', '-', '2022-05-09', 'M.Sabarudin', '2022-05-19 11:09:59', 'M.Sabarudin', '2022-05-19 11:09:59'),
(72, 'ARG Babat Toman', 'Sumatera Selatan', '-2.765371', '103.664652', 'Didi Safei', '081373542117', '2021-09-01', 'M.Sabarudin', '2022-05-19 11:12:38', 'M.Sabarudin', '2022-05-19 11:12:38'),
(73, 'ARG Sekayu', 'Sumatera Selatan', '-2.89561', '103845', 'arif', '082307592450', '2021-09-02', 'M.Sabarudin', '2022-05-19 11:14:45', 'M.Sabarudin', '2022-05-19 11:14:45'),
(74, 'ARG PH Digital Bekasi Timur', 'Jawa Barat', '-6.249766', '106.997216', '-', '-', '2022-05-10', 'M.Sabarudin', '2022-05-19 11:15:54', 'Admin', '2022-05-30 15:11:05'),
(75, 'ARG Talang Ubi', 'Sumatera Selatan', '-3.272737', '103.8253', 'erik', '081929388433', '2021-09-03', 'M.Sabarudin', '2022-05-19 11:16:00', 'M.Sabarudin', '2022-05-19 11:16:00'),
(76, 'ARG Prabumulih', 'Sumatera Selatan', '-3.372838', '104.285316', ' Rinna Prasetya', '085292323740', '2021-09-04', 'M.Sabarudin', '2022-05-19 11:17:25', 'M.Sabarudin', '2022-05-19 11:17:25'),
(77, 'ARG Cinta Manis', 'Sumatera Selatan', '-3.435298', ' 104.6737', 'Mardi Susilo', '85269789799', '2021-09-05', 'M.Sabarudin', '2022-05-19 11:18:40', 'M.Sabarudin', '2022-05-19 11:18:40'),
(78, 'ARG Indralaya', 'Sumatera Selatan', ' -3.232205', '104.6795', 'surata', '081377962237', '2021-09-06', 'M.Sabarudin', '2022-05-19 11:19:45', 'M.Sabarudin', '2022-05-19 11:19:45'),
(79, 'ARG Pangkalan Lampan', 'Sumatera Selatan', '-3.202146', '105.098844', 'heru slamet', '085380855606', '2021-09-07', 'M.Sabarudin', '2022-05-19 11:21:05', 'M.Sabarudin', '2022-05-19 11:21:05'),
(80, 'ARG Tulung Salapan', 'Sumatera Selatan', '-3.164421', '105.283653', 'Totong', '082179554290', '2021-09-08', 'M.Sabarudin', '2022-05-19 11:22:22', 'M.Sabarudin', '2022-05-19 11:22:22'),
(81, 'ARG Banyu Asin I', 'Sumatera Selatan', ' -2.953133', ' 104.886', 'Elfita agustini', '082176237874', '2021-09-09', 'M.Sabarudin', '2022-05-19 11:23:43', 'M.Sabarudin', '2022-05-19 11:23:43'),
(82, 'ARG Perum Jasa Tirta II Muara', 'Jawa Barat', ' -6.124898', '107.063268', '-', '-', '2022-05-11', 'M.Sabarudin', '2022-05-19 11:24:01', 'Admin', '2022-05-30 15:09:41'),
(83, 'ARG Plaju', 'Sumatera Selatan', ' -2.992007', '104.8217', 'Syahrinudin', '085268789972', '2021-09-10', 'M.Sabarudin', '2022-05-19 11:25:11', 'M.Sabarudin', '2022-05-19 11:25:11'),
(84, 'ARG Perum Jasa Tirta II Tapak Serang', 'Jawa Barat', '-6.072986', '107.143099', '-', '-', '2022-05-12', 'M.Sabarudin', '2022-05-19 11:25:32', 'Admin', '2022-05-30 15:09:53'),
(85, 'ARG Jaka Baring', 'Sumatera Selatan', '-3.027666', '104.781354', 'Pak Yani', '082179548611', '2021-09-21', 'M.Sabarudin', '2022-05-19 11:26:51', 'M.Sabarudin', '2022-05-19 11:26:51'),
(86, 'ARG PH Digital Tempuran', 'Jawa Barat', '-6.130194', ' 107.439687', '-', '-', '2022-05-13', 'M.Sabarudin', '2022-05-19 11:27:14', 'Admin', '2022-05-30 15:11:34'),
(87, 'ARG Gandus', 'Sumatera Selatan', ' -3', '104.7', '-', '-', '2021-09-22', 'M.Sabarudin', '2022-05-19 11:27:48', 'M.Sabarudin', '2022-05-19 11:27:48'),
(88, 'ARG PH Digital Cibuaya', 'Jawa Barat', ' -6.042056', ' 107.347444', '-', '-', '2022-05-14', 'M.Sabarudin', '2022-05-19 11:29:03', 'Admin', '2022-05-30 15:11:42'),
(89, ' ARG Suak Tape', 'Sumatera Selatan', '-2.859353', '104.3568', 'wahyono', '081377903495', '2021-09-23', 'M.Sabarudin', '2022-05-19 11:29:26', 'M.Sabarudin', '2022-05-19 11:29:26'),
(90, 'ARG KTM Tanjung Lago', 'Sumatera Selatan', ' -2.645684', ' 104.760298', 'donny', '081320042166', '2021-09-24', 'M.Sabarudin', '2022-05-19 11:30:29', 'M.Sabarudin', '2022-05-19 11:30:29'),
(91, 'ARG Ciwidey', 'Jawa Barat', ' -7.098653', '107.434188', 'Asep', '085321667852', '2022-05-15', 'M.Sabarudin', '2022-05-19 11:30:58', 'M.Sabarudin', '2022-05-19 11:30:58'),
(92, 'ARG Muara Beliti', 'Sumatera Selatan', ' -3.245865', '103.011818', 'alfian', '081219572073', '2021-09-25', 'M.Sabarudin', '2022-05-19 11:32:34', 'M.Sabarudin', '2022-05-19 11:32:34'),
(93, 'ARG Lubuk Linggau', 'Sumatera Selatan', '-3.270924', '102.9733', 'Pepen Rochaendi', '085382332211', '2021-09-26', 'M.Sabarudin', '2022-05-19 11:33:52', 'M.Sabarudin', '2022-05-19 11:33:52'),
(94, 'ARG Kertajati', 'Jawa Barat', '-6.6933', ' 108.18', ' Tita Srinuningsih', '082117992218', '2022-05-16', 'M.Sabarudin', '2022-05-19 11:33:56', 'M.Sabarudin', '2022-05-19 11:33:56'),
(95, 'ARG Batu Lintang', 'Sumatera Selatan', '-3.629162', '103.046417', 'Nur Hadi', '085378638630', '2021-09-27', 'M.Sabarudin', '2022-05-19 11:35:11', 'M.Sabarudin', '2022-05-19 11:35:11'),
(96, 'ARG Sukahaji ', 'Jawa Barat', '-6.82528', '108.2886', 'Engkus Kiswaya', '085324722362', '2022-05-17', 'M.Sabarudin', '2022-05-19 11:36:16', 'Admin', '2022-05-30 15:54:45'),
(97, 'ARG SMPK Lahat', 'Sumatera Selatan', ' -3.96598', ' 103.4622', ' Elfa Trisna', '0 85211272611', '2021-09-28', 'M.Sabarudin', '2022-05-19 11:37:15', 'M.Sabarudin', '2022-05-19 11:37:15'),
(98, 'ARG Pulau Panggung', 'Sumatera Selatan', '-4.068448', ' 103.6529', 'sahudi', '085273496193', '2021-09-29', 'M.Sabarudin', '2022-05-19 11:38:38', 'M.Sabarudin', '2022-05-19 11:38:38'),
(99, 'ARG Oku', 'Sumatera Selatan', '-4.0704', '104.0188', 'Juliastri', '085380174843', '2021-09-30', 'M.Sabarudin', '2022-05-19 11:39:47', 'M.Sabarudin', '2022-05-19 11:39:47'),
(100, 'ARG Buay Madang', 'Sumatera Selatan', ' -4.1352', '104.2335', 'mardiana', '082186791314', '2021-10-01', 'M.Sabarudin', '2022-05-19 11:41:04', 'M.Sabarudin', '2022-05-19 11:41:04'),
(101, 'ARG Bayung Lencir', 'Sumatera Selatan', '-2.194636', '103.7539', 'Affandi (Ka. UPTD)', '081373539866', '2021-10-02', 'M.Sabarudin', '2022-05-19 11:44:37', 'M.Sabarudin', '2022-05-19 11:44:37'),
(102, 'ARG Empat Lawang', 'Sumatera Selatan', '-3.611684', '103.1159', 'hamzi', '082182334843', '2021-04-02', 'M.Sabarudin', '2022-05-19 11:47:29', 'M.Sabarudin', '2022-05-19 11:47:29'),
(103, 'ARG BPK Airmajunto', 'Bengkulu', '-2.51033', '101191', 'Endang Suparto', '085367870639', '2022-03-01', 'M.Sabarudin', '2022-05-19 12:59:18', 'M.Sabarudin', '2022-05-19 12:59:18'),
(104, 'ARG Ipuh', 'Bengkulu', '-2.99579', '101.49364', 'Darwin Ansori', '085274758035', '2022-03-02', 'M.Sabarudin', '2022-05-19 13:00:25', 'M.Sabarudin', '2022-05-19 13:00:25'),
(105, 'ARG Air Rami', 'Bengkulu', ' -3.09592', ' 101.55373', 'Mamay Maulana', '0 81393355905', '2022-03-03', 'M.Sabarudin', '2022-05-19 13:02:54', 'M.Sabarudin', '2022-05-19 13:02:54'),
(106, 'ARG Padang Jaya', 'Bengkulu', '-3.368083', '102.08405', 'FAUZI', '081367319155', '2022-03-04', 'M.Sabarudin', '2022-05-19 13:04:07', 'M.Sabarudin', '2022-05-19 13:04:07'),
(107, 'ARG Talang Pauh', 'Bengkulu', '-3.694143', '102245', 'Alimin', '081271787705', '2022-03-05', 'M.Sabarudin', '2022-05-19 13:08:40', 'M.Sabarudin', '2022-05-19 13:08:40'),
(108, 'ARG PH Kabawetan', 'Bengkulu', '-3.60383', '102.5941', 'Ibu Nurhayati', '082282395125', '2022-03-06', 'M.Sabarudin', '2022-05-19 13:10:36', 'M.Sabarudin', '2022-05-19 13:10:36'),
(109, 'ARG Bukit Kaba', 'Bengkulu', '-3.485916', '102.6526', 'sigit', '085289696157', '2022-03-07', 'M.Sabarudin', '2022-05-19 13:12:23', 'M.Sabarudin', '2022-05-19 13:12:23'),
(110, 'ARG Rejang Lebong', 'Bengkulu', '-3.351767', ' 102.443294', 'Muhamad Holis', 'o 81377664995', '2022-03-08', 'M.Sabarudin', '2022-05-19 13:13:34', 'M.Sabarudin', '2022-05-19 13:13:34'),
(111, 'ARG Batu Roto', 'Bengkulu', ' -3.44527', ' 102.29916', 'septi', '082371865636', '2022-03-09', 'M.Sabarudin', '2022-05-19 13:14:24', 'M.Sabarudin', '2022-05-19 13:14:24'),
(112, 'ARG Lebong Sakti', 'Bengkulu', '-3.226881', '102.34502', 'edwar', '081367670187', '2022-03-10', 'M.Sabarudin', '2022-05-19 13:15:53', 'M.Sabarudin', '2022-05-19 13:15:53'),
(113, 'ARG Manis Mata', 'Kalimantan Barat', '-2.449599', ' 111.0264', 'Nuriksan', '082153639542', '2021-11-01', 'M.Sabarudin', '2022-05-20 06:24:18', 'M.Sabarudin', '2022-05-20 06:24:18'),
(114, 'ARG Nanga Tayab', 'Kalimantan Barat', ' -1.56021', '110.5667', 'sumarlin', '081256359542', '2021-11-02', 'M.Sabarudin', '2022-05-20 06:25:37', 'M.Sabarudin', '2022-05-20 06:25:37'),
(115, 'ARG Sei Paduan', 'Kalimantan Barat', '-1.012444', ' 109.789423', 'pak sahana', '085349638941', '2021-11-03', 'M.Sabarudin', '2022-05-20 06:27:05', 'M.Sabarudin', '2022-05-20 06:27:05'),
(116, 'ARG Koramil 1207-08', 'Kalimantan Barat', ' -0.31476', ' 109.152024', ' Julkifli', '0 85845401168', '2021-11-04', 'M.Sabarudin', '2022-05-20 06:28:18', 'M.Sabarudin', '2022-05-20 06:28:18'),
(117, 'ARG BPTP KALBAR', 'Kalimantan Barat', '0.002777778', '109.3606', 'asnawi', '081251115271', '2021-11-05', 'M.Sabarudin', '2022-05-20 06:30:01', 'M.Sabarudin', '2022-05-20 06:30:01'),
(118, 'ARG Singkawang', 'Kalimantan Barat', '0.892', '108.9676', 'Oly Saryono', '085250663224', '2021-11-06', 'M.Sabarudin', '2022-05-20 06:31:31', 'M.Sabarudin', '2022-05-20 06:31:31'),
(119, 'ARG Sanggau Ledo', 'Kalimantan Barat', '1.13746', '109.326858', 'Ajudin', '081352527036', '2021-11-07', 'M.Sabarudin', '2022-05-20 06:33:34', 'M.Sabarudin', '2022-05-20 06:33:34'),
(120, 'ARG Diperta Sambas', 'Kalimantan Barat', '-1.36255', '109.326858', 'Endang Adha', '85252605594', '2021-11-08', 'M.Sabarudin', '2022-05-20 06:34:54', 'M.Sabarudin', '2022-05-20 06:34:54'),
(121, 'ARG Kembayan', 'Kalimantan Barat', '0.64057', '110.3747', 'Joseph Andi', '081345655580', '2021-11-09', 'M.Sabarudin', '2022-05-20 06:35:55', 'M.Sabarudin', '2022-05-20 06:35:55'),
(122, 'ARG Sanggau', 'Kalimantan Barat', ' 0.25591', ' 110.3186', 'Marcelius priwisono', '081345060060', '2021-11-10', 'M.Sabarudin', '2022-05-20 06:37:23', 'M.Sabarudin', '2022-05-20 06:37:23'),
(123, 'ARG Tayan Hilir', 'Kalimantan Barat', ' 0.01716', '110.01177', 'gusti', '081256206533', '2021-11-15', 'M.Sabarudin', '2022-05-20 06:38:25', 'M.Sabarudin', '2022-05-20 06:38:25'),
(124, 'ARG Balai Berkuak', 'Kalimantan Barat', ' -0.5241667', ' 110.3703', 'M. Qadarrohman', '085655665773', '2021-11-16', 'M.Sabarudin', '2022-05-20 06:39:42', 'M.Sabarudin', '2022-05-20 06:39:42'),
(125, 'ARG Koramil 1206-04 Badau', 'Kalimantan Barat', ' 1.040768', '111.906248', 'budiasih', '082251527036', '2021-11-17', 'M.Sabarudin', '2022-05-20 06:41:20', 'M.Sabarudin', '2022-05-20 06:41:20'),
(126, 'ARG Koramil 1206-14 Hulu Burung', 'Kalimantan Barat', '0.356966', '112.317444', 'abbas', '081520948183', '2021-11-18', 'M.Sabarudin', '2022-05-20 06:42:29', 'M.Sabarudin', '2022-05-20 06:42:29'),
(127, 'ARG Koramil 1205-19 Sintang', 'Kalimantan Barat', '0.057678', ' 111.638859', 'Selamet Arianto', '081344807163', '2021-11-19', 'M.Sabarudin', '2022-05-20 06:43:26', 'M.Sabarudin', '2022-05-20 06:43:26'),
(128, 'ARG Sintang', 'Kalimantan Barat', '0.05', ' 111.4833', '-', '-', '2021-11-20', 'M.Sabarudin', '2022-05-20 06:44:20', 'M.Sabarudin', '2022-05-20 06:44:20'),
(129, 'ARG Melawi', 'Kalimantan Barat', '-0.349', ' 111.711', ': Bagus sri haryo', '085820122466', '2021-11-23', 'M.Sabarudin', '2022-05-20 06:45:58', 'M.Sabarudin', '2022-05-20 06:45:58'),
(130, 'ARG Ciganjur', 'DKI Jakarta', '-6.3443', '106799', 'sutriyanto', '0 83806166222', '2020-01-02', 'M.Sabarudin', '2022-05-20 07:05:54', 'M.Sabarudin', '2022-05-20 07:08:01'),
(131, 'ARG Lebak Bulus', 'DKI Jakarta', ' -6.304318', '106.7774', 'munjahid', '08128707730', '2020-01-01', 'M.Sabarudin', '2022-05-20 07:07:32', 'M.Sabarudin', '2022-05-20 07:07:32'),
(132, 'ARG Tomang', 'DKI Jakarta', '-6.166699', ' 106.78', 'sumitra', '081510297411', '2020-01-03', 'M.Sabarudin', '2022-05-20 07:08:59', 'M.Sabarudin', '2022-05-20 07:08:59'),
(133, 'ARG Manggarai', 'DKI Jakarta', '-6.20748', '106.8487', 'Dian Nurcahyono', '089636156776', '2020-01-04', 'M.Sabarudin', '2022-05-20 07:09:56', 'M.Sabarudin', '2022-05-20 07:09:56'),
(134, 'ARG Pulomas', 'DKI Jakarta', '-6.16666', '106.8809', 'budi', '089674889382', '2020-01-05', 'M.Sabarudin', '2022-05-20 07:10:48', 'M.Sabarudin', '2022-05-20 07:10:48'),
(135, 'ARG Kelapa Gading', 'DKI Jakarta', ' -6.166633', '106.9136', 'wahyudin', '0 85217313783', '2020-01-10', 'M.Sabarudin', '2022-05-20 07:11:41', 'M.Sabarudin', '2022-05-20 07:11:41'),
(136, 'ARG BPP Sukapura', 'DKI Jakarta', ' -6.1318080', '106.957408', '-', '-', '2020-01-11', 'M.Sabarudin', '2022-05-20 07:12:27', 'M.Sabarudin', '2022-05-20 07:12:27'),
(137, 'ARG Way Tuba', 'Lampung', ' -4.399249', '104.386147', 'gito', '085307230296', '2021-12-01', 'M.Sabarudin', '2022-05-23 10:50:46', 'M.Sabarudin', '2022-05-23 10:50:46'),
(138, 'ARG Mesir Ilir', 'Lampung', '-4.26526', ' 104.66938', 'tomi', '081344036747', '2021-12-02', 'M.Sabarudin', '2022-05-23 10:51:43', 'M.Sabarudin', '2022-05-23 10:51:43'),
(139, 'ARG Menggala', 'Lampung', '-4.62792841550604', '105.21615028381348', 'Bu Murdianti', '082179970122', '2021-08-06', 'M.Sabarudin', '2022-05-23 10:52:42', 'Sela Febriza', '2022-06-06 11:24:48'),
(140, 'ARG BP3K Bunga Mayang', 'Lampung', '-4.598431', '104.8577', 'Dadang Ketut Alam', '0 82372380396', '2021-12-04', 'M.Sabarudin', '2022-05-23 10:53:45', 'M.Sabarudin', '2022-05-23 10:53:45'),
(141, 'ARG Panaragan Jaya', 'Lampung', '-4.520111', '105.084557', 'retno Sudarti', '085279620044', '2021-12-05', 'M.Sabarudin', '2022-05-23 10:54:37', 'M.Sabarudin', '2022-05-23 10:54:37'),
(142, 'ARG Kelapa Tujuh', 'Lampung', ' -4.846744', '104.9106', 'Ayu Oktorini', '0 87898691466', '2021-12-06', 'M.Sabarudin', '2022-05-23 10:55:28', 'M.Sabarudin', '2022-05-23 10:55:28'),
(143, 'ARG SMPK Abung Semuli', 'Lampung', '-4.79435', ' 105.0099', 'suwito', '085269844125', '2021-12-07', 'M.Sabarudin', '2022-05-23 10:56:09', 'M.Sabarudin', '2022-05-23 10:56:09'),
(144, 'ARG Terbanggi', 'Lampung', '-4.795819', '105.1324', ' Bpk. Santo', '081379992316', '2021-12-08', 'M.Sabarudin', '2022-05-23 10:56:51', 'M.Sabarudin', '2022-05-23 10:56:51'),
(145, 'ARG Bandar Surabaya', 'Lampung', ' -4.682475', '105.723178', 'Wahyu Suganda (KA Camat)', '08127289780', '2021-12-09', 'M.Sabarudin', '2022-05-23 10:57:39', 'M.Sabarudin', '2022-05-23 10:57:39'),
(146, 'ARG PTPN VII Unit Bekri', 'Lampung', '-5.071868', '105.1347', 'tamil', '0 81377650595', '2021-12-10', 'M.Sabarudin', '2022-05-23 10:58:25', 'M.Sabarudin', '2022-05-23 10:58:25'),
(147, 'ARG BP3K Gunung Sugih', 'Lampung', ' -4.982868', '105.2025', 'tamrin', '085282763553', '2021-12-15', 'M.Sabarudin', '2022-05-23 10:59:14', 'M.Sabarudin', '2022-05-23 10:59:14'),
(148, 'ARG Raman Utara', 'Lampung', '-4.973871', '105.4145', 'Supiati', '082183386573', '2021-12-16', 'M.Sabarudin', '2022-05-23 10:59:52', 'M.Sabarudin', '2022-05-23 10:59:52'),
(149, 'ARG Taman Bogo', 'Lampung', ' -5.00447', '105489', 'Sugiarto', '085279584568', '2021-12-17', 'M.Sabarudin', '2022-05-23 11:00:28', 'M.Sabarudin', '2022-05-23 11:00:28'),
(150, 'ARG Sukadana', 'Lampung', '-5.03268', '105.5235', 'Irhanip. SP', '081379700689', '2021-12-18', 'M.Sabarudin', '2022-05-23 11:01:13', 'M.Sabarudin', '2022-05-23 11:01:13'),
(151, 'ARG Ganti Warno', 'Lampung', ' -5.065671', '105.3592', 'taris', '081997030684', '2021-12-19', 'M.Sabarudin', '2022-05-23 11:01:52', 'M.Sabarudin', '2022-05-23 11:01:52'),
(152, 'ARG SMPK Batanghari', 'Lampung', '-5.0917', '105.3625', 'ashari', '085378840345', '2021-12-20', 'M.Sabarudin', '2022-05-23 11:02:35', 'M.Sabarudin', '2022-05-23 11:02:35'),
(153, 'ARG Trikora', 'Lampung', '-5.267856', '105.303319', 'Sri wahyu nuraini', '085269739345', '2021-12-21', 'M.Sabarudin', '2022-05-23 11:03:13', 'M.Sabarudin', '2022-05-23 11:03:13'),
(154, 'ARG Bergen', 'Lampung', '-5.3264', '105.4448', 'fauzi', '0 85287439019', '2021-12-22', 'M.Sabarudin', '2022-05-23 11:03:53', 'M.Sabarudin', '2022-05-23 11:03:53'),
(155, 'ARG Sragi', 'Lampung', '-5.634853', '105.7448', 'dodi Hidayat', '081271474459', '2021-12-23', 'M.Sabarudin', '2022-05-23 11:04:43', 'M.Sabarudin', '2022-05-23 11:04:43'),
(156, 'ARG Kalianda', 'Lampung', '-5.715325', ' 105.5830533', 'sodikin', '082178732748', '2021-12-24', 'M.Sabarudin', '2022-05-23 11:05:20', 'M.Sabarudin', '2022-05-23 11:05:20'),
(177, 'ARG Gegesik', 'Jawa Barat', '-6.6014091', '108.4152078', '-', '-', '2022-05-26', 'M.Sabarudin', '2022-05-24 09:01:01', 'M.Sabarudin', '2022-05-24 09:01:01'),
(178, '108.4152078', 'Jawa Barat', '-6.786663', '108.572838', ' Nuryaman', '08996368625', '2022-05-27', 'M.Sabarudin', '2022-05-24 09:02:13', 'M.Sabarudin', '2022-05-24 09:02:13'),
(179, 'ARG SMPK Tasikmalaya ', 'Jawa Barat', '-7.3308', '108.20254', ' Ibu Nunik Wahyuni', '081312096972', '2022-05-28', 'M.Sabarudin', '2022-05-24 09:05:16', 'M.Sabarudin', '2022-05-24 09:05:16'),
(180, 'ARG Pusaka Negara', 'Jawa Barat', '-6.280766', '107.868963', 'Jaja', '082129475264', '2022-05-29', 'M.Sabarudin', '2022-05-24 09:07:00', 'M.Sabarudin', '2022-05-24 09:07:00'),
(181, 'ARG Kiarasari (Salam Darma)', 'Jawa Barat', '-6.426631', '107.892865', '-', '-', '2022-05-30', 'M.Sabarudin', '2022-05-24 09:07:59', 'M.Sabarudin', '2022-05-24 09:07:59'),
(182, 'ARG Rengasdengklok', 'Jawa Barat', '-6.14625', '107.3025333', 'Ahmad Baki', '085691959014', '2022-05-31', 'M.Sabarudin', '2022-05-24 09:11:31', 'M.Sabarudin', '2022-05-24 09:11:31'),
(183, 'ARG PH Digital Sukatani', 'Jawa Barat', '-6.172438', ' 107.180187', '-', '-', '2022-06-01', 'M.Sabarudin', '2022-05-24 09:13:23', 'Admin', '2022-05-30 15:11:49'),
(184, 'ARG Perum Jasa Tirta II Setu', 'Jawa Barat', ' -6.339610', '107.143099', '-', '-', '2022-07-02', 'M.Sabarudin', '2022-05-24 09:15:17', 'Admin', '2022-05-30 15:10:03'),
(185, 'ARG Perum Jasa Tirta II Cibitung', 'Jawa Barat', '-6.227783', '107.093780', '-', '-', '2022-07-03', 'M.Sabarudin', '2022-05-24 09:17:45', 'Admin', '2022-05-30 15:10:12'),
(186, 'ARG Sukanegara', 'Jawa Barat', '-7.104323', '107.0618', 'Ibu Kartika', '082317048089', '2022-07-04', 'M.Sabarudin', '2022-05-24 09:20:52', 'M.Sabarudin', '2022-05-24 09:20:52'),
(187, 'ARG Agrabinta', 'Jawa Barat', '-7.40833', ' 106.99021 ', 'Zainal Mutaqin', '081573522472', '2022-07-05', 'M.Sabarudin', '2022-05-24 09:23:09', 'M.Sabarudin', '2022-05-24 09:23:09'),
(188, 'ARG Ciranjang (RELOKAS', 'Jawa Barat', ' -6.812193', '107.26517', 'Adah Kurnia', '081222602466', '2022-07-06', 'M.Sabarudin', '2022-05-24 09:24:53', 'M.Sabarudin', '2022-05-24 09:24:53'),
(189, 'ARG Kebun Raya Bogor', 'Jawa Barat', '-6.600367', '106.796222', 'Septo Mulyawan', '085693339740', '2022-07-07', 'M.Sabarudin', '2022-05-24 09:26:26', 'M.Sabarudin', '2022-05-24 09:26:26'),
(190, 'ARG PH Digital Muara Gembong', 'Jawa Barat', ' -5.984693', '  107.042771', '-', '-', '2022-07-10', 'M.Sabarudin', '2022-05-24 09:32:04', 'Admin', '2022-05-30 15:11:59'),
(191, 'ARG Perum Jasa Tirta II Gabus', 'Jawa Barat', '-6.167344', '107.048801', '-', '-', '2022-07-11', 'M.Sabarudin', '2022-05-24 09:34:08', 'Admin', '2022-05-30 15:10:23'),
(192, 'ARG Perum Jasa Tirta II Jatiasih', 'Jawa Barat', '-6.305640', '106.962220', '-', '-', '2022-07-12', 'M.Sabarudin', '2022-05-24 09:36:08', 'Admin', '2022-05-30 15:10:31'),
(193, 'ARG Karawang', 'Jawa Barat', '-6.35546', '107.2348', 'Syarip Muhyidin', '085695017515', '2022-07-13', 'M.Sabarudin', '2022-05-24 09:37:53', 'M.Sabarudin', '2022-05-24 09:37:53'),
(195, 'ARG Majenang', 'Jawa Barat', ' -7.295843', '108.7581', ' Bpk. Gunawan', '08180283018', '2022-05-01', 'M.Sabarudin', '2022-05-24 10:10:52', 'M.Sabarudin', '2022-05-24 10:10:52'),
(196, 'ARG Banyumas', 'Jawa Tengah', '-7.423486', '109.28  ', ' Abdul Cholik', '085289639414', '2022-05-02', 'M.Sabarudin', '2022-05-24 10:15:42', 'M.Sabarudin', '2022-05-24 10:15:42'),
(197, 'ARG Karang Kemiri', 'Jawa Tengah', ' -7.46123', '109.38123', 'Sugirman', '085287206532', '2022-05-03', 'M.Sabarudin', '2022-05-24 10:19:06', 'M.Sabarudin', '2022-05-24 10:19:06'),
(198, 'ARG Kebumen', 'Jawa Tengah', ' -7.56642', ' 109.48326', ' Armono', '081328078301', '2022-05-05', 'M.Sabarudin', '2022-05-24 10:20:25', 'M.Sabarudin', '2022-05-24 10:20:25'),
(199, 'ARG Waduk Mrica', 'Jawa Tengah', '-7.39719', ' 109.6072', 'Catur', '08122891426', '2022-05-06', 'M.Sabarudin', '2022-05-24 10:21:36', 'M.Sabarudin', '2022-05-24 10:21:36'),
(200, 'ARG SMPK Pemalang', 'Jawa Tengah', ' -6.896817', '109.4613', '-', '-', '2022-05-07', 'M.Sabarudin', '2022-05-24 10:22:58', 'M.Sabarudin', '2022-05-24 10:22:58'),
(201, 'ARG Batang', 'Jawa Tengah', '-6.98', ' 109.747', '-', '-', '2022-05-08', 'M.Sabarudin', '2022-05-24 10:23:50', 'M.Sabarudin', '2022-05-24 10:23:50'),
(202, 'ARG Wanayasa', 'Jawa Tengah', ' -7.241598', '109.7515', 'Dwi Lusyanti', '081390843015', '2022-05-09', 'M.Sabarudin', '2022-05-24 10:24:59', 'M.Sabarudin', '2022-05-24 10:24:59'),
(203, 'ARG Stageof Banjarnegara', 'Jawa Tengah', '-7.333353', ' 109.7099', 'Dian Budi', '082138799611', '2022-05-11', 'M.Sabarudin', '2022-05-24 10:26:37', 'M.Sabarudin', '2022-05-24 10:26:37'),
(204, 'ARG Tulis', 'Jawa Tengah', ' -7.325425', ' 109.7976', 'Taat Affandy', '081325785589', '2022-05-12', 'M.Sabarudin', '2022-05-24 10:28:12', 'M.Sabarudin', '2022-05-24 10:28:12'),
(205, 'ARG Sigaluh', 'Jawa Tengah', ' -7.396349', '109766', 'Wito', '082138923883', '2022-05-14', 'M.Sabarudin', '2022-05-24 10:31:22', 'M.Sabarudin', '2022-05-24 10:31:22'),
(206, 'ARG Serayu', 'Jawa Tengah', '-7.268377', ' 109.94301', ' Parlan', '082135947517', '2022-05-15', 'M.Sabarudin', '2022-05-24 10:32:42', 'M.Sabarudin', '2022-05-24 10:32:42'),
(207, 'ARG Kertek', 'Jawa Tengah', '-7.348869', '109.972400', 'Wagiman', '085292123248', '2022-05-16', 'M.Sabarudin', '2022-05-24 10:34:38', 'M.Sabarudin', '2022-05-24 10:34:38'),
(208, 'ARG Prembun', 'Jawa Tengah', '-7.719429', '109784', ' Bpk. Bardi', '08156880177', '2022-05-18', 'M.Sabarudin', '2022-05-24 10:37:24', 'M.Sabarudin', '2022-05-24 10:37:24'),
(209, 'ARG Temanggung ', 'Jawa Tengah', '-7.339445', ' 110.0335', 'Surti Rahayu', '08164240932', '2022-05-19', 'M.Sabarudin', '2022-05-24 10:39:36', 'M.Sabarudin', '2022-05-24 10:40:44'),
(210, 'ARG Singorojo', 'Jawa Tengah', ' -7.069769', ' 110.2566', 'Gunarto', '081392211852', '2022-05-20', 'M.Sabarudin', '2022-05-24 10:41:56', 'M.Sabarudin', '2022-05-24 10:41:56'),
(211, 'ARG Pakisdadu', 'Jawa Tengah', '-7.354779', '110.2957', 'Sutaryono', '087834139700', '2022-05-21', 'M.Sabarudin', '2022-05-24 10:43:08', 'M.Sabarudin', '2022-05-24 10:43:08'),
(212, 'ARG SMPK Borobudur', 'Jawa Tengah', '-7.61007', '110208', 'Widyo', '081325422938', '2022-05-22', 'M.Sabarudin', '2022-05-24 10:46:25', 'M.Sabarudin', '2022-05-24 10:46:25'),
(213, 'ARG Waduk Sermo/Kokap', 'D.I. Yogyakarta', '-7.823245', ' 110.123745', 'Triyana', '087839539255', '2022-05-23', 'M.Sabarudin', '2022-05-24 10:47:56', 'Admin', '2022-06-02 06:38:39'),
(214, 'ARG Panjatan', 'D.I. Yogyakarta', '-7.905279', ' 110.152711', ' Agus', '085743383211', '2022-05-24', 'M.Sabarudin', '2022-05-24 10:49:37', 'Admin', '2022-05-30 15:31:07'),
(215, 'ARG Moyudan', 'D.I. Yogyakarta', '-7.740457', '110.261993', 'Yoyo Sulissyawan', '085742833756 Pengadaan: 2017', '2022-05-25', 'M.Sabarudin', '2022-05-24 10:50:43', 'Admin', '2022-05-30 15:30:53'),
(216, 'ARG Kalibawang', 'D.I. Yogyakarta', '-7.687261', ' 110.257099', ' irmono', '05213570476', '2022-05-26', 'M.Sabarudin', '2022-05-24 10:52:35', 'Admin', '2022-06-02 06:38:25'),
(217, 'ARG Menes', 'Banten', '-6.376694', '105.92', '-', '-', '2022-02-21', 'Admin', '2022-05-27 11:27:54', 'Admin', '2022-05-27 11:27:54'),
(218, 'ARG Banjarsari', 'Banten', '-6.493333', '106.0153', '-', '-', '2022-02-21', 'Admin', '2022-05-27 11:30:04', 'Admin', '2022-05-27 11:30:04'),
(219, 'ARG Bendung Ciliman', 'Banten', '-6.611524', '105.95678', '-', '-', '2022-02-21', 'Admin', '2022-05-27 11:31:48', 'Admin', '2022-05-27 11:31:48'),
(220, 'ARG BPP Cimanuk (PH)', 'Banten', '-6.348996', '106.0440', '-', '-', '2022-02-21', 'Admin', '2022-05-27 11:33:09', 'Admin', '2022-05-27 11:33:09'),
(221, 'ARG Kramat Watu', 'Banten', '-6.0606777', '106.130694', '-', '-', '2022-02-21', 'Admin', '2022-05-27 11:41:24', 'Admin', '2022-05-27 11:41:24'),
(222, 'ARG BPTPHP Serang (PH)', 'Banten', '-6.041636', '106.2038', '-', '-', '2022-02-21', 'Admin', '2022-05-27 11:45:16', 'Admin', '2022-05-27 11:45:16'),
(223, 'ARG Tirtayasa ', 'Banten', '-6.024102', '106.32961', '-', '-', '2022-02-21', 'Admin', '2022-05-27 11:48:03', 'Admin', '2022-05-27 11:48:03'),
(224, 'ARG Pandeglang', 'Banten', '-6308', '106102', '-', '-', '2022-02-27', 'Admin', '2022-05-30 14:52:47', 'Admin', '2022-05-30 14:52:47'),
(225, 'ARG BPP Balaraja Tangerang', 'Banten', '-6.156485', '106.418242', '-', '-', '2022-02-24', 'Admin', '2022-05-30 14:56:52', 'Admin', '2022-05-30 14:56:52'),
(226, 'ARG Kresek ', 'Banten', '-6.127633', '106.3802', '-', '-', '2022-02-24', 'Admin', '2022-05-30 14:57:51', 'Admin', '2022-05-30 14:57:51'),
(227, 'ARG PH Digital Tigaraksa ', 'Banten', '-6.2956944', '106.4755556', '-', '-', '2022-02-25', 'Admin', '2022-05-30 14:59:01', 'Admin', '2022-05-30 15:12:10'),
(228, 'ARG PH Digital Kibin', 'Banten', '-6.1301944', '106.3135556', '-', '-', '2022-02-25', 'Admin', '2022-05-30 15:00:21', 'Admin', '2022-05-30 15:12:20'),
(229, 'ARG BPP Sepatan (PH)', 'Banten', '-6.116474', '106.584349', '-', '-', '2022-02-21', 'Admin', '2022-05-30 15:02:15', 'Admin', '2022-05-30 15:12:29'),
(230, 'ARG Mauk', 'Banten', '-6.0647', '106.53', '-', '-', '2022-02-21', 'Admin', '2022-05-30 15:03:36', 'Admin', '2022-05-30 15:03:36'),
(231, 'ARG Ciomas', 'Banten', '-6.204', '106.0168', '-', '-', '2022-02-21', 'Admin', '2022-05-30 15:07:52', 'Admin', '2022-06-01 08:55:47'),
(232, 'ARG Kaur Selatan', 'Bengkulu', '-4.759099', '103.3500848', 'Amri', '081278297608', '2000-01-01', 'Admin', '2022-05-30 15:20:21', 'Admin', '2022-05-30 15:20:21'),
(233, 'ARG Kedurang Ilir', 'Bengkulu', '-4.542978', '103.0685129', 'Sumarno', '085377463707', '2000-01-01', 'Admin', '2022-05-30 15:21:42', 'Admin', '2022-05-30 15:21:42'),
(234, 'ARG Rekayasa Sukaraja Seluma', 'Bengkulu', '-3.96944167', '102.4185', 'Yayuk Mugirahayu', '085273271505', '2000-01-01', 'Admin', '2022-05-30 15:24:13', 'Admin', '2022-05-30 15:24:13'),
(235, 'ARG Bunga Mas', 'Bengkulu', '-4.501679', '102.9718749', 'Sulian', '085377227102', '2000-01-01', 'Admin', '2022-05-30 15:26:09', 'Admin', '2022-05-30 15:26:09'),
(236, 'ARG Kepuharjo', 'D.I. Yogyakarta', '-7.625134', '110.45258', 'Sutardi', '081328824966', '2000-01-01', 'Admin', '2022-05-30 15:29:30', 'Admin', '2022-05-30 15:30:13'),
(237, 'ARG Piyungan', 'D.I. Yogyakarta', '-7.824514', '110.475567', 'Mardiman', '08190493943', '2000-01-01', 'Admin', '2022-05-30 15:32:12', 'Admin', '2022-05-30 15:32:12'),
(238, 'ARG Playen', 'D.I. Yogyakarta', '-7.921464', '110.561007', 'Ngadirin', '087838986418', '2000-01-01', 'Admin', '2022-05-30 15:33:34', 'Admin', '2022-05-30 15:33:34'),
(239, 'ARG Saptosari', 'D.I. Yogyakarta', '-8.047519 ', '110.5101', 'Gito', '087838270712', '2000-01-01', 'Admin', '2022-05-30 15:35:01', 'Admin', '2022-05-30 15:35:01'),
(240, 'ARG SMPK Sleman', 'D.I. Yogyakarta', '-7.750058', '110.4198', 'Sunaryono', '85228065667', '2000-01-01', 'Admin', '2022-05-30 15:37:14', 'Admin', '2022-05-30 15:37:14'),
(241, 'ARG Tepus', 'D.I. Yogyakarta', '-8.099444', '110.6286', 'Diana', '081328017293', '2000-01-01', 'Admin', '2022-05-30 15:38:52', 'Admin', '2022-05-30 15:38:52'),
(278, 'ARG Balik Bukit', 'Lampung', '-5.02294 ', '104.0575 ', 'Santo ', '081379839987', '1111-11-11', 'Admin', '2022-06-02 06:47:07', 'Admin', '2022-06-02 06:47:07'),
(243, 'ARG Sukernan', 'Jambi', '-1.453017', '103.517123', 'Ernawati', '085267464478', '2000-01-01', 'Admin', '2022-05-30 15:45:44', 'Admin', '2022-05-30 15:45:44'),
(244, 'ARG Leles', 'Jawa Barat', '-7.10933', '107.8989', 'Ibu Hajar', '082316948388', '2000-01-01', 'Admin', '2022-05-30 15:49:05', 'Admin', '2022-05-30 15:49:05'),
(245, 'ARG Rekayasa Bendungan Cipamingkis', 'Jawa Barat', '-6.50026', '107.06699', '-', '-', '2000-01-01', 'Admin', '2022-05-30 15:50:25', 'Admin', '2022-05-30 15:50:25'),
(246, 'ARG Rekayasa Cisadane', 'Jawa Barat', '-6.6075', '106.79345', 'Jumanto', '85813104176', '2000-01-01', 'Admin', '2022-05-30 15:51:34', 'Admin', '2022-05-30 15:51:34'),
(247, 'ARG Rekayasa Citeko', 'Jawa Barat', '-6.6968', '106.93501', '-', '-', '2000-01-01', 'Admin', '2022-05-30 15:52:42', 'Admin', '2022-05-30 15:52:42'),
(248, 'ARG Rekayasa Pintu Air Cibongas', 'Jawa Barat', '-6.55712', '106.86803', 'Ruslan', '087870925237', '2000-01-01', 'Admin', '2022-05-30 15:53:36', 'Admin', '2022-05-30 15:53:36'),
(249, 'ARG Sukaraja', 'Jawa Barat', '-6.921103', '106.9811', 'Bagus Setiawan', '-', '2000-01-01', 'Admin', '2022-05-30 15:56:07', 'Admin', '2022-05-30 15:56:07'),
(250, 'ARG SMPK Bojong Picung', 'Jawa Barat', '-6.83688', '107.27382', 'Yusuf', '085246233465', '2000-01-01', 'Admin', '2022-05-30 15:58:47', 'Admin', '2022-05-30 15:58:47'),
(251, 'ARG Cabak', 'Jawa Tengah', '-7.0233318', '111.52005', 'Teguh Eko', '8522566558', '2000-01-01', 'Admin', '2022-05-30 15:59:52', 'Admin', '2022-05-30 16:00:43'),
(252, 'ARG Colo', 'Jawa Tengah', '-6.66625', '110.9047', 'Sujadi', '085289405038', '2000-01-01', 'Sela Febriza', '2022-05-31 10:47:28', 'Sela Febriza', '2022-05-31 10:47:28'),
(253, 'ARG Getas', 'Jawa Tengah', '-7.268272', '110.5165', 'Ismi', '085640990983', '2000-01-01', 'Sela Febriza', '2022-05-31 10:52:17', 'Sela Febriza', '2022-05-31 10:52:17'),
(254, 'ARG Karanganyar', 'Jawa Tengah', '-6.840852', '110.810793', 'Bintoro', '085740852479', '2000-01-01', 'Sela Febriza', '2022-05-31 11:09:59', 'Sela Febriza', '2022-05-31 11:09:59'),
(255, 'ARG Karanggede', 'Jawa Tengah', '-7.36273', '110.6487', 'Ibu Sumartini', '085293399669', '2000-01-01', 'Sela Febriza', '2022-05-31 11:11:33', 'Sela Febriza', '2022-05-31 11:11:33'),
(256, 'ARG Kedungombo', 'Jawa Tengah', '-7.2527', '110.8371', 'Purwanto', '081393595866', '2000-01-01', 'Sela Febriza', '2022-05-31 11:13:02', 'Sela Febriza', '2022-05-31 11:13:02'),
(257, 'ARG Masaran', 'Jawa Tengah', '-7.468426', '110.9356', 'Warsito', '087835247663', '2000-01-01', 'Sela Febriza', '2022-05-31 11:15:38', 'Sela Febriza', '2022-05-31 11:15:38'),
(258, 'ARG Nguter', 'Jawa Tengah', '-7.72634', '110.8673', 'Supriyanto', '-', '2000-01-01', 'Sela Febriza', '2022-05-31 11:35:16', 'Sela Febriza', '2022-05-31 11:35:16'),
(259, 'ARG Palur Mojolaban', 'Jawa Tengah', '-7.579864', '110.8723', 'Endri', '085725878057', '2000-01-01', 'Sela Febriza', '2022-05-31 11:36:29', 'Sela Febriza', '2022-05-31 11:36:29'),
(260, 'ARG Pracimantoro', 'Jawa Tengah', '-8.031652', '110.8203', 'Ali Mahfud', '085228028461', '2000-01-01', 'Sela Febriza', '2022-05-31 11:37:56', 'Sela Febriza', '2022-05-31 11:37:56'),
(261, 'ARG Randublatung', 'Jawa Tengah', '-7.19387', '111.4147', 'Lilik MS.Sp', '081325515248', '2000-01-01', 'Sela Febriza', '2022-05-31 11:39:25', 'Sela Febriza', '2022-05-31 11:39:25'),
(262, 'ARG Rekayasa Staklim Semarang', 'Jawa Tengah', '-6.985', '110.38', 'Afandi (Teknisi Staklim)', '085600147121', '2000-01-01', 'Sela Febriza', '2022-05-31 11:43:10', 'Sela Febriza', '2022-05-31 11:43:10'),
(263, 'ARG Rembang-Pamotan', 'Jawa Tengah', '-6.76147', '111.4757', 'Agus Sapta Wibowo', '081226956952', '2000-01-01', 'Sela Febriza', '2022-05-31 11:44:27', 'Sela Febriza', '2022-05-31 11:44:27'),
(264, 'ARG Simo', 'Jawa Tengah', '-7.4444', '110.6778', 'Suroto', '085293548088', '2000-01-01', 'Sela Febriza', '2022-05-31 11:46:01', 'Sela Febriza', '2022-05-31 11:46:01'),
(265, 'ARG SMPK Sragen', 'Jawa Tengah', '-7.52544', '111.0438', 'Sutrisno', '85229953462', '2000-01-01', 'Sela Febriza', '2022-05-31 11:47:26', 'Sela Febriza', '2022-05-31 11:47:26'),
(266, 'ARG Toroh', 'Jawa Tengah', '-7.12489', '110.9103', 'Saswito', '085712035593', '2000-01-01', 'Sela Febriza', '2022-05-31 11:51:03', 'Sela Febriza', '2022-05-31 11:51:03'),
(267, 'ARG Kandang Serang', 'Jawa Tengah', '-7.118652', '109.518767', 'Erwin', '085869554210', '2000-01-01', 'Sela Febriza', '2022-05-31 11:52:41', 'Sela Febriza', '2022-05-31 11:52:41'),
(268, 'ARG Kradenan', 'Jawa Tengah', '-7.175692', '111.117158', 'Wardoyo', '085226281692', '2000-01-01', 'Sela Febriza', '2022-05-31 11:54:00', 'Sela Febriza', '2022-05-31 11:54:00'),
(269, 'ARG Ampel', 'Jawa Tengah', '-7.45724', '110.5471', 'Darsono', '081329065237', '2000-01-01', 'Sela Febriza', '2022-05-31 11:55:59', 'Sela Febriza', '2022-05-31 11:55:59'),
(270, 'ARG Demak', 'Jawa Tengah', '-6.95341', '110.7027', 'Agus Cahyono', '085200926700', '2000-01-01', 'Sela Febriza', '2022-05-31 11:57:21', 'Sela Febriza', '2022-05-31 11:57:21'),
(271, 'ARG Sungai Kakap', 'Kalimantan Barat', '-0.063772', '109.230068', 'Ahmadin', '085822104565', '2000-01-01', 'Sela Febriza', '2022-05-31 11:59:39', 'Sela Febriza', '2022-05-31 11:59:39'),
(272, 'ARG Banjar Irigasi', 'Banten', '-6.569224', '106.411325', '-', '-', '2022-03-09', 'M. Agung Prabowo', '2022-05-31 15:02:43', 'M. Agung Prabowo', '2022-05-31 15:02:43'),
(273, 'ARG Cirinten', 'Banten', '-6.6283', '106.16', '-', '-', '2022-03-09', 'M. Agung Prabowo', '2022-05-31 15:03:28', 'M. Agung Prabowo', '2022-05-31 15:03:28'),
(274, 'ARG Cisalak', 'Banten', '-6.37346', '106302', '-', '-', '2022-03-09', 'M. Agung Prabowo', '2022-05-31 15:05:12', 'M. Agung Prabowo', '2022-05-31 15:05:12'),
(275, 'ARG Dendang', 'Bangka Belitung', '-3.0806667 ', '107.9043333 ', 'Eka Al Fajri ', '081927672065', '1111-11-11', 'Admin', '2022-06-02 06:19:49', 'Admin', '2022-06-02 06:19:49'),
(276, 'ARG Padarincang', 'Banten', '-6.220089', '105.933051', 'Basuhi   ', '087809225506', '1111-11-11', 'Admin', '2022-06-02 06:33:07', 'Admin', '2022-06-02 06:33:07'),
(277, 'ARG Kaliasin', 'Banten', '-6.156485 ', '106.418242 ', '----', '087804143114', '1111-11-11', 'Admin', '2022-06-02 06:34:14', 'Admin', '2022-06-02 06:34:14'),
(279, 'ARG Way Lima', 'Lampung', '-5.419728 ', '105.0675 ', 'Satio ', '085788755601', '1111-11-11', 'Admin', '2022-06-02 06:48:38', 'Admin', '2022-06-02 06:48:38'),
(280, 'ARG Biha', 'Lampung', '-5.317063', '104.016307 ', 'Warto ', '082371035970', '1111-11-11', 'Admin', '2022-06-02 06:50:51', 'Admin', '2022-06-02 06:50:51'),
(281, 'ARG Krui', 'Lampung', '-5.172962', '103.946185 ', ' Yulianto ', '081369241178', '1111-11-11', 'Admin', '2022-06-02 06:51:43', 'Admin', '2022-06-02 06:51:43'),
(282, 'ARG Pandan Surat', 'Lampung', ' -5.301275 ', '105.0081 ', '------', '085269498588', '1111-11-11', 'Admin', '2022-06-02 07:37:49', 'Admin', '2022-06-02 07:37:49'),
(283, 'ARG Simpang Pematang', 'Lampung', '-4.025833 ', '105.2492 ', 'Fitriani', '082177951921', '2021-08-08', 'Admin', '2022-06-02 07:38:44', 'Sela Febriza', '2022-06-06 11:26:42'),
(284, 'ARG Blambangan Umpu', 'Lampung', '-4502', '104784', 'Ibu Neneng', '082377606431', '2000-01-01', 'Sela Febriza', '2022-06-02 11:40:31', 'Sela Febriza', '2022-06-06 10:50:03'),
(285, 'ARG Sungai Lilin', 'Sumatera Selatan', '-2.629328', '104.1036', 'Ibu Ratna (Ka. UPTD):', '085267102733', '2000-01-01', 'Sela Febriza', '2022-06-02 11:47:10', 'Sela Febriza', '2022-06-02 11:47:10'),
(286, 'ARG Muara Dua', 'Sumatera Selatan', '-4.574656', '104.0499', 'Edi Junaedi', '081367989247', '2000-01-01', 'Sela Febriza', '2022-06-02 11:50:25', 'Sela Febriza', '2022-06-02 11:50:25'),
(287, 'ARG SMPK Musi Rawas', 'Sumatera Selatan', '-3.219917', '102.9475', 'Alfian', '081219572073', '2000-01-01', 'Sela Febriza', '2022-06-02 11:53:40', 'Sela Febriza', '2022-06-02 11:53:40'),
(288, 'ARG Sumber Rejo', 'Lampung', '-5.386158', '104.7125', 'Karsono', '081391338428', '2022-04-19', 'David Yulidzar', '2022-06-02 13:58:17', 'David Yulidzar', '2022-06-02 13:58:17'),
(289, 'ARG BP3K Wonosobo', 'Lampung', '-5.493920', '104.530996', 'Supri', '085367166188', '2022-04-19', 'David Yulidzar', '2022-06-02 14:00:27', 'David Yulidzar', '2022-06-02 14:00:27'),
(291, 'ARG Cibiuk', 'Jawa Barat', '-7.00003758074107', '107.65329977845822', '---', '----', '1111-11-11', 'Admin', '2022-06-06 15:24:54', 'Admin', '2022-06-06 15:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `data_awos`
--

CREATE TABLE `data_awos` (
  `id_awos` bigint(20) UNSIGNED NOT NULL,
  `nama_awos` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `lat_awos` varchar(30) NOT NULL,
  `lon_awos` varchar(30) NOT NULL,
  `nama_penjaga_awos` varchar(100) NOT NULL,
  `kontak_awos` varchar(50) NOT NULL,
  `terakhir_kalibrasi_awos` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `petugas_kalibrasi_awos` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_awos`
--

INSERT INTO `data_awos` (`id_awos`, `nama_awos`, `provinsi`, `lat_awos`, `lon_awos`, `nama_penjaga_awos`, `kontak_awos`, `terakhir_kalibrasi_awos`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'AWOS Muara Bungo', 'Jambi', '-1.54280', '102.17793', 'Stamet Jambi', '11111', '2020-11-23', 'Admin', '2022-05-30 10:06:53', 'Admin', '2022-05-30 10:06:53'),
(3, 'AWOS Depati Parbo ', 'Jambi', ' -2.09116', '101.46234', 'Stamet Depati Parbo', '11111', '1111-11-01', 'Admin', '2022-05-30 10:08:29', 'Admin', '2022-05-30 10:08:38'),
(4, 'AWOS Muko-muko ', 'Bengkulu', '-2.54324 ', '101.09134', 'Stamet Bengkulu', '111', '1111-11-11', 'Admin', '2022-05-30 10:09:27', 'Admin', '2022-05-30 10:09:27'),
(5, 'AWOS Silampari', 'Sumatera Selatan', '-3.28368', '102.91302', 'Stamet Sumsel', '1111', '1111-11-11', 'Admin', '2022-05-30 10:12:38', 'Admin', '2022-05-30 10:12:38'),
(6, 'AWOS Atung Bungsu', 'Sumatera Selatan', '-4.018996', '103.381608', 'Stamet Palembang', '111', '1111-11-11', 'Admin', '2022-05-30 10:14:02', 'Admin', '2022-05-30 10:14:02'),
(7, 'AWOS Gatot Subroto Airport', 'Lampung', '-4.393238', '104.401227', '111', '1111', '1111-11-11', 'Admin', '2022-05-30 10:14:57', 'Admin', '2022-05-30 10:14:57'),
(8, 'AWOS M Taufiq Kiemas', 'Lampung', '-5.211288925782725', '103.94140044232677', 'Stamet Lampung', '1111', '1111-11-11', 'Admin', '2022-05-30 10:15:58', 'Admin', '2022-05-30 10:15:58'),
(9, 'AWOS Cakrabuana Penggung ', 'Jawa Barat', ' -6.75536 ', '108.54018', 'Stamet Bandung', '111', '1111-11-11', 'Admin', '2022-05-30 10:16:51', 'Admin', '2022-05-30 10:16:51'),
(10, 'AWOS Bandara Nusawiru', 'Jawa Barat', '-7.718091', '108.488492', '1111', '1111', '1111-11-11', 'Admin', '2022-05-30 10:17:37', 'Admin', '2022-05-30 10:17:37'),
(11, 'AWOS Tunggul Wulung', 'Jawa Tengah', '-7.64275', '109.03463', '111', '111', '1111-11-11', 'Admin', '2022-05-30 10:18:19', 'Admin', '2022-05-30 10:18:19'),
(12, 'AWOS Ngloram Blora', 'Jawa Tengah', '-7.189541', '111.548862', '111', '1111', '1111-11-11', 'Admin', '2022-05-30 10:19:29', 'Admin', '2022-05-30 10:19:29'),
(13, 'AWOS Karimun Jawa', 'Jawa Tengah', ' -5.80258', '110.47800', '1111', '1111', '1111-11-11', 'Admin', '2022-05-30 10:21:03', 'Admin', '2022-05-30 10:21:35'),
(14, 'AWOS Ketapang ', 'Kalimantan Barat', '-1.81679 ', '109.96194', '1111', '1111', '1111-11-11', 'Admin', '2022-05-30 10:33:37', 'Admin', '2022-05-30 10:33:37'),
(15, 'AWOS Susilo - Sintang ', 'Kalimantan Barat', ' -0.04249', '111.45687', '1111', '1111', '1111-11-11', 'Admin', '2022-05-30 10:34:15', 'Admin', '2022-05-30 10:34:15'),
(16, 'AWOS Pangsuma - Putsibau ', 'Kalimantan Barat', '0.83871 ', '112.93540', '1111', '1111', '1111-11-11', 'Admin', '2022-05-30 10:34:51', 'Admin', '2022-05-30 10:34:51'),
(17, 'AWOS Enggano', 'Bengkulu', '-5.301574', '102.189716', '1111', '1111', '1111-11-11', 'Admin', '2022-05-30 10:36:41', 'Admin', '2022-05-30 10:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `data_aws`
--

CREATE TABLE `data_aws` (
  `id_aws` bigint(20) UNSIGNED NOT NULL,
  `nama_aws` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `lat_aws` varchar(30) NOT NULL,
  `lon_aws` varchar(30) NOT NULL,
  `nama_penjaga_aws` varchar(100) NOT NULL,
  `kontak_aws` varchar(50) NOT NULL,
  `terakhir_kalibrasi_aws` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `petugas_kalibrasi_aws` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_aws`
--

INSERT INTO `data_aws` (`id_aws`, `nama_aws`, `provinsi`, `lat_aws`, `lon_aws`, `nama_penjaga_aws`, `kontak_aws`, `terakhir_kalibrasi_aws`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(5, 'AWS Kota Baru', 'Jawa Barat', '-6.3848', '107.5069', '---', '----', '2017-05-22', 'Dedi Ristianto', '2022-05-17 12:19:04', 'Dedi Ristianto', '2022-05-17 12:19:04'),
(4, 'AWS Sidareja Cilacap', 'Jawa Tengah', '-7.486167', '108.792382', '----', '-----', '2020-02-17', 'M.Sabarudin', '2022-05-17 12:15:16', 'M.Sabarudin', '2022-05-24 11:14:14'),
(6, 'AWS Kadugede', 'Jawa Barat', '-6.9997', '108.4568', '---', '---', '2017-05-22', 'Dedi Ristianto', '2022-05-17 12:19:49', 'Dedi Ristianto', '2022-05-17 12:19:49'),
(7, 'AWS Sukamandi', 'Jawa Barat', '-6.3703', '107.6251', '----', '----', '2017-05-22', 'Dedi Ristianto', '2022-05-17 12:20:32', 'Dedi Ristianto', '2022-05-17 12:20:32'),
(8, 'AWS Losarang', 'Jawa Barat', '-6.3285', '108.3216', '---', '---', '2017-05-22', 'Dedi Ristianto', '2022-05-17 12:21:27', 'Dedi Ristianto', '2022-05-17 12:21:27'),
(9, 'AWS Indramayu', 'Jawa Barat', '-6.342134', '108.3413 ', '----', '----', '2022-05-06', 'Dedi Ristianto', '2022-05-17 12:24:00', 'Dedi Ristianto', '2022-05-17 12:24:00'),
(10, 'AWS Bukit Baling', 'Jambi', '-1.45223337', '103.5193482', '-', '-', '2022-05-08', 'M.Sabarudin', '2022-05-19 09:30:37', 'Admin', '2022-06-01 23:34:18'),
(11, 'AWS Tanjung Jabung Barat', 'Jambi', '-1.178306', '103.208306', '-', '-', '2022-05-07', 'M.Sabarudin', '2022-05-19 09:32:29', 'M.Sabarudin', '2022-05-19 09:32:29'),
(12, 'AWS Wira Karya Sakti', 'Jambi', '-1.208998', '103.714318', '-', '-', '2022-05-12', 'M.Sabarudin', '2022-05-19 09:33:50', 'M.Sabarudin', '2022-05-19 09:33:50'),
(13, 'AWS Batin III', 'Jambi', '-2.065027778', '102.4077778', '-', '-', '2022-05-04', 'M.Sabarudin', '2022-05-19 09:35:05', 'M.Sabarudin', '2022-05-19 09:35:05'),
(14, 'AWS Tebo', 'Jambi', '-1.381658', '102.175553', '-', '-', '2022-05-16', 'M.Sabarudin', '2022-05-19 09:42:37', 'M.Sabarudin', '2022-05-19 09:42:37'),
(15, 'AWS Kayu Aro', 'Jambi', '-1.766861', '101.298778', '-', '-', '2022-05-01', 'M.Sabarudin', '2022-05-19 09:43:44', 'M.Sabarudin', '2022-05-19 09:43:44'),
(16, 'AWS Tujuh Koto Ilir', 'Jambi', '-1.178367', '102.155786', '-', '-', '2022-05-02', 'M.Sabarudin', '2022-05-19 09:45:19', 'M.Sabarudin', '2022-05-19 09:45:19'),
(17, 'AWS Leuwiliang Bogor', 'Jawa Barat', '-6.56485', '106.6297', '-', '-', '2022-05-10', 'M.Sabarudin', '2022-05-19 10:31:52', 'M.Sabarudin', '2022-05-19 10:31:52'),
(18, 'AWS IPB Bogor', 'Jawa Barat', '-6.600471', '106.8054', '-', '-', '2022-05-11', 'M.Sabarudin', '2022-05-19 10:35:04', 'M.Sabarudin', '2022-05-19 10:35:04'),
(19, 'AWS Tugu Mulyo', 'Sumatera Selatan', '-3.219922', '102.9419', '-', '-', '2021-08-01', 'M.Sabarudin', '2022-05-19 11:55:15', 'M.Sabarudin', '2022-05-19 11:55:15'),
(20, 'AWS Sembawa', 'Sumatera Selatan', '-2.92469', '104.54676', '-', '-', '2021-08-02', 'M.Sabarudin', '2022-05-19 11:56:11', 'M.Sabarudin', '2022-05-19 11:56:11'),
(22, 'AWS Muara Padang', 'Sumatera Selatan', '-2.597376', '105.132643', '-', '-', '2021-08-04', 'M.Sabarudin', '2022-05-19 11:58:32', 'M.Sabarudin', '2022-05-19 11:58:32'),
(23, 'AWS SMPK Ogan Ilir', 'Sumatera Selatan', '-3.22258', '104.6538', '--', '-', '2021-08-05', 'M.Sabarudin', '2022-05-19 11:59:25', 'M.Sabarudin', '2022-05-19 11:59:25'),
(24, 'AWS Sukadana', 'Kalimantan Barat', '-1.227788', '109.962395', '-', '-', '2022-07-05', 'M.Sabarudin', '2022-05-20 06:50:58', 'M.Sabarudin', '2022-05-20 06:50:58'),
(93, 'AWS Mempawah Hilir', 'Kalimantan Barat', '0.36367', '108.9558', '----', '-----', '1111-11-11', 'Admin', '2022-06-02 00:07:52', 'Admin', '2022-06-02 00:07:52'),
(26, 'AWS SMPK Anjungan Mempawah', 'Kalimantan Barat', '0.363933', '108.956333', '-', '-', '2022-07-07', 'M.Sabarudin', '2022-05-20 06:52:27', 'M.Sabarudin', '2022-05-20 06:52:27'),
(27, 'AWS SMPK Semelagi Pontianak', 'Kalimantan Barat', '0.927317', '109.0559', '-', '-', '2022-07-08', 'M.Sabarudin', '2022-05-20 06:53:05', 'M.Sabarudin', '2022-05-20 06:53:05'),
(28, 'AWS BP3K Entikong', 'Kalimantan Barat', '0.889139', '110.398383', '-', '-', '2022-07-09', 'M.Sabarudin', '2022-05-20 06:53:43', 'M.Sabarudin', '2022-05-20 06:53:43'),
(29, 'AWS Sekadau Hilir', 'Kalimantan Barat', '0.005', '110.95361', '-', '-', '2022-07-10', 'M.Sabarudin', '2022-05-20 06:54:23', 'M.Sabarudin', '2022-05-20 06:54:23'),
(30, 'AWS PIK Jakarta Utara', 'DKI Jakarta', '-6.12014', '106.7501', '-', '-', '2021-02-01', 'M.Sabarudin', '2022-05-20 07:02:52', 'M.Sabarudin', '2022-05-20 07:02:52'),
(31, 'AWS TMII Jakarta', 'DKI Jakarta', '-6.30407', '106.8987', '-', '-', '2021-02-02', 'M.Sabarudin', '2022-05-20 07:04:01', 'M.Sabarudin', '2022-05-20 07:04:01'),
(32, 'AWS Menggala Tulang Bawang', 'Lampung', '-4.481279', '105.248501', '-', '-', '2022-02-01', 'M.Sabarudin', '2022-05-23 11:44:21', 'M.Sabarudin', '2022-05-23 11:44:21'),
(33, 'AWS Cahaya Negeri Abung Barat', 'Lampung', '-4.848529', '104.664674', '-', '-', '2022-02-02', 'M.Sabarudin', '2022-05-23 11:45:11', 'M.Sabarudin', '2022-05-23 11:45:11'),
(34, 'AWS Selagai lingga', 'Lampung', '-5.101203', '104.680367', '-', '-', '2022-02-03', 'M.Sabarudin', '2022-05-23 11:45:50', 'M.Sabarudin', '2022-05-23 11:45:50'),
(36, 'AWS Way Tenong', 'Lampung', '-5.036911', '104.355984', '-', '-', '2022-02-05', 'M.Sabarudin', '2022-05-23 11:47:08', 'M.Sabarudin', '2022-05-23 11:47:08'),
(39, 'AWS Padang Cermin', 'Lampung', '-5.585918', '105.112953', '-', '-', '2022-02-08', 'M.Sabarudin', '2022-05-23 11:49:08', 'M.Sabarudin', '2022-05-23 11:49:08'),
(41, 'AWS Kampus ITERA', 'Lampung', '-5.36304', '105.311723', '-', '-', '2022-02-10', 'M.Sabarudin', '2022-05-23 11:50:37', 'M.Sabarudin', '2022-05-23 11:50:37'),
(42, 'AWS Labuan Ratu', 'Lampung', '-5.37241', '105.6921', '-', '-', '2022-02-12', 'M.Sabarudin', '2022-05-23 11:51:20', 'M.Sabarudin', '2022-05-23 11:51:20'),
(43, 'AWS Way Jepara', 'Lampung', '-5.175405', '105.699406', '-', '-', '2022-02-13', 'M.Sabarudin', '2022-05-23 11:52:05', 'M.Sabarudin', '2022-05-23 11:52:05'),
(79, 'AWS Kulon Progo', 'D.I. Yogyakarta', '-7.891767', '110.120217', '---', '----', '1111-11-11', 'Admin', '2022-06-01 21:36:30', 'Admin', '2022-06-01 21:36:30'),
(46, 'AWS Kelapa', 'Bangka Belitung', '-1.889633', '105.7009', '-', '-', '2022-01-17', 'M.Sabarudin', '2022-05-24 08:15:04', 'M.Sabarudin', '2022-05-24 08:15:04'),
(88, 'AWS Karanganyar', 'Jawa Tengah', '-7615', '111067', '----', '----', '1111-11-11', 'Admin', '2022-06-01 23:59:50', 'Admin', '2022-06-01 23:59:50'),
(48, 'AWS Kajen', 'Jawa Tengah', '-7.023602', '109591', '-', '-', '2022-05-02', 'M.Sabarudin', '2022-05-24 11:13:40', 'Admin', '2022-06-01 23:58:16'),
(86, 'AWS Jumantono', 'Jawa Tengah', '-7.6532', '110.9875', '---', '----', '1111-11-11', 'Admin', '2022-06-01 23:57:57', 'Admin', '2022-06-01 23:57:57'),
(87, 'AWS Juwana', 'Jawa Tengah', '-6721', '111146', '-------', '-----', '1111-11-11', 'Admin', '2022-06-01 23:58:52', 'Admin', '2022-06-01 23:58:52'),
(51, 'AWS SMPK Kandeman', 'Jawa Tengah', '-6.932312', '109.7611', '-', '-', '2022-02-05', 'M.Sabarudin', '2022-05-24 11:17:36', 'M.Sabarudin', '2022-05-24 11:17:36'),
(85, 'AWS Grobogan', 'Jawa Tengah', '-7.017', '110.803', '----', '----', '1111-11-11', 'Admin', '2022-06-01 23:54:42', 'Admin', '2022-06-01 23:55:05'),
(53, 'AWS Kutoarjo Purworejo', 'Jawa Tengah', '-7.713', '109.915', '-', '-', '2022-02-07', 'M.Sabarudin', '2022-05-24 11:19:12', 'M.Sabarudin', '2022-05-24 11:19:12'),
(54, 'AWS Patean Kendal', 'Jawa Tengah', '-7.091', '110.09', '-', '-', '2022-02-08', 'M.Sabarudin', '2022-05-24 11:20:05', 'M.Sabarudin', '2022-05-24 11:20:05'),
(55, 'AWS Borobudur', 'Jawa Tengah', '-7.614119', '110.213971', '-', '-', '2022-02-09', 'M.Sabarudin', '2022-05-24 11:21:30', 'M.Sabarudin', '2022-05-24 11:21:30'),
(56, 'AWS Ungaran', 'Jawa Tengah', '-7.1193 ', '110.4119', '-', '-', '2022-02-10', 'M.Sabarudin', '2022-05-24 11:22:58', 'M.Sabarudin', '2022-05-24 11:22:58'),
(89, 'AWS Pemalang', 'Jawa Tengah', '-7104', '109587', '---', '----', '1111-11-11', 'Admin', '2022-06-02 00:03:02', 'Admin', '2022-06-02 00:03:02'),
(58, 'AWS Universitas Diponegoro', 'Jawa Tengah', '-7.056383', '110.440556', '-', '-', '2022-02-12', 'M.Sabarudin', '2022-05-24 11:24:36', 'M.Sabarudin', '2022-05-24 11:24:36'),
(92, 'AWS Wonogiri', 'Jawa Tengah', '-7.9605', '111.0554', '----', '-----', '1111-11-11', 'Admin', '2022-06-02 00:05:47', 'Admin', '2022-06-02 00:05:47'),
(60, 'AWS Jagorawi Bogor', 'Jawa Barat', '-6.460556', '106.8695', '-', '-', '2022-05-02', 'M.Sabarudin', '2022-05-24 11:47:32', 'M.Sabarudin', '2022-05-24 11:47:32'),
(61, 'AWS Mekarsari Cibinong', 'Jawa Barat', '-6.41882', '106.9832', '-', '-', '2022-05-03', 'M.Sabarudin', '2022-05-24 11:48:39', 'M.Sabarudin', '2022-05-24 11:49:52'),
(90, 'AWS Selogiri', 'Jawa Tengah', '-7.781558', '110.8897', '---', '---', '1111-11-11', 'Admin', '2022-06-02 00:03:58', 'Admin', '2022-06-02 00:03:58'),
(94, 'AWS Cisolok', 'Jawa Barat', '-6.9595', '106.4763', '----', '-----', '1111-11-11', 'Admin', '2022-06-02 06:11:20', 'Admin', '2022-06-02 06:11:20'),
(91, 'AWS Sukodono', 'Jawa Tengah', '-7.3275', '110.9662', '----', '-----', '1111-11-11', 'Admin', '2022-06-02 00:04:50', 'Admin', '2022-06-02 00:04:50'),
(95, 'AWS Gunung Geulis', 'Jawa Barat', '-6.624487 ', '106862', '----', '-----', '1111-11-11', 'Admin', '2022-06-02 06:12:43', 'Admin', '2022-06-02 06:12:43'),
(96, 'AWL Sebesi', 'Lampung', '-5.954826733929924', '105.4900360107422', '-', '-', '2007-07-01', 'Admin', '2022-07-05 15:41:19', 'Admin', '2022-07-05 15:41:19'),
(67, 'AWS Cisurupan', 'Jawa Barat', '-7.30705', '107.79786', '-', '-', '2022-05-09', 'M.Sabarudin', '2022-05-24 11:57:26', 'M.Sabarudin', '2022-05-24 11:57:26'),
(68, 'AWS STT Cipasung', 'Jawa Barat', '-7.341388', '108.127222', '-', '-', '2022-05-10', 'M.Sabarudin', '2022-05-24 11:58:35', 'M.Sabarudin', '2022-05-24 11:58:35'),
(69, 'AWS Labuhan/ Labuan', 'Banten', '-6.37995', '105.8353', '-', '-', '2022-02-21', 'Admin', '2022-05-27 11:25:46', 'Admin', '2022-05-27 11:38:29'),
(70, 'AWS Puspiptek', 'Banten', '-6.359751', '106.673316', '-', '-', '2022-03-01', 'M. Agung Prabowo', '2022-05-31 14:29:32', 'M. Agung Prabowo', '2022-05-31 14:29:32'),
(71, 'AWS Golf Modern', 'Banten', '-6.1978', '106.6448', '-', '-', '2022-03-01', 'M. Agung Prabowo', '2022-05-31 14:30:40', 'Admin', '2022-06-01 21:12:56'),
(72, 'AWS BSD Serpong', 'Banten', '-6.2792', '106.6503', '-', '-', '2022-03-01', 'M. Agung Prabowo', '2022-05-31 14:31:16', 'M. Agung Prabowo', '2022-05-31 14:31:16'),
(73, 'AWS Leuwidamar', 'Banten', '-6.509814', '106.192172', '-', '-', '2022-03-09', 'M. Agung Prabowo', '2022-05-31 14:34:32', 'M. Agung Prabowo', '2022-05-31 14:34:32'),
(74, 'AWS Cikancung', 'Jawa Barat', '-6.99885', '107.81679', '-', '-', '2022-03-28', 'M. Agung Prabowo', '2022-06-01 08:31:52', 'M. Agung Prabowo', '2022-06-01 08:31:52'),
(75, 'AWS Cimalaka', 'Jawa Barat', ' -6.81535', '107.9475', '-', '-', '2022-03-28', 'M. Agung Prabowo', '2022-06-01 08:32:35', 'M. Agung Prabowo', '2022-06-01 08:32:35'),
(77, 'AWS Tais Seluma', 'Bengkulu', '-4.08383', '102.553466', '---', '----', '1111-11-11', 'Admin', '2022-06-01 16:07:25', 'Admin', '2022-06-01 16:07:25'),
(78, 'AWS Manna', 'Bengkulu', '-4.44611', '102.9294', '-------------', '------------', '1111-11-11', 'Admin', '2022-06-01 16:08:45', 'Admin', '2022-06-01 16:08:45'),
(80, 'AWS SMPK Kulon Progo', 'D.I. Yogyakarta', '-7.78333', '110.2166', '----', '-----', '1111-11-11', 'Admin', '2022-06-01 21:37:28', 'Admin', '2022-06-01 21:37:28'),
(81, 'AWS Pakem', 'D.I. Yogyakarta', '-7.66714', '110419', '---', '---', '1111-11-11', 'Admin', '2022-06-01 21:51:27', 'Admin', '2022-06-01 21:51:27'),
(82, 'AWS Prambanan', 'D.I. Yogyakarta', '-7.752012', '110.4914', '---', '----', '1111-11-11', 'Admin', '2022-06-01 21:52:18', 'Admin', '2022-06-01 21:53:54'),
(83, 'AWS UGM Yogayakarta', 'D.I. Yogyakarta', '-7.768469', '110.4914', '----', '-----', '1111-11-11', 'Admin', '2022-06-01 21:54:56', 'Admin', '2022-06-01 21:54:56'),
(84, 'AWS Tasikmalaya', 'Jawa Barat', '-7.368609', '108.113170', '--', '-', '2022-03-20', 'M. Agung Prabowo', '2022-06-01 22:03:26', 'Admin', '2022-06-02 07:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `data_inatews`
--

CREATE TABLE `data_inatews` (
  `id_inatews` bigint(20) UNSIGNED NOT NULL,
  `nama_inatews` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `lat_inatews` varchar(30) NOT NULL,
  `lon_inatews` varchar(30) NOT NULL,
  `nama_penjaga_inatews` varchar(100) NOT NULL,
  `kontak_inatews` varchar(50) NOT NULL,
  `terakhir_kalibrasi_inatews` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `petugas_kalibrasi_inatews` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_inatews`
--

INSERT INTO `data_inatews` (`id_inatews`, `nama_inatews`, `provinsi`, `lat_inatews`, `lon_inatews`, `nama_penjaga_inatews`, `kontak_inatews`, `terakhir_kalibrasi_inatews`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'UTSI', 'Lampung', '-5.31257', '104.55095', 'Feri ', '0822-8260-7582', '2009-05-20', 'Admin', '2022-05-23 12:44:33', 'Admin', '2022-05-23 12:44:33'),
(3, 'TSJM', 'Jawa Barat', '-6.73100', '107.8100', 'Pak Engkos', '082315030330', '2021-06-10', 'Admin', '2022-05-23 12:45:33', 'Admin', '2022-05-23 12:49:41'),
(4, 'TOJI', 'Jawa Barat', '-6.7621', '108.1344', 'Deni', '082312523649', '2020-06-08', 'Admin', '2022-05-23 12:46:31', 'Admin', '2022-05-23 12:49:01'),
(5, 'SPSJM', 'Jawa Barat', '-6.6669', '107.6136', 'Camat', '----', '2021-03-16', 'Admin', '2022-05-23 12:47:32', 'Admin', '2022-05-23 12:50:03'),
(6, 'SLSI', 'Jambi', '-2.3924 ', '102.5927', 'Camat', '----', '2021-08-26', 'Admin', '2022-05-23 12:52:08', 'Admin', '2022-05-23 12:52:08'),
(36, 'SKSM', 'Jambi', '-1.946', '101.3497', 'Ridho Efendi', '082180082015', '2021-11-18', 'Admin', '2022-05-25 07:05:02', 'Admin', '2022-05-25 07:05:02'),
(8, 'RMSM', 'Sumatera Selatan', '-2.62326', '102.7617', 'Basarudin', '082375555201', '2222-02-22', 'Admin', '2022-05-23 12:54:33', 'Admin', '2022-05-23 12:54:33'),
(9, 'PSSM', 'Lampung', '-5.86438', '104.69528', 'Hendri', '085383352187', '2222-02-22', 'Admin', '2022-05-23 12:55:37', 'Admin', '2022-05-23 12:55:37'),
(10, 'PSLI', 'Lampung', '-5.93732', '105.51004', 'Hayun', '081369923312', '3233-02-23', 'Admin', '2022-05-23 13:08:25', 'Admin', '2022-05-23 13:08:25'),
(11, 'PPSM', 'Lampung', '-5.3182', '104.0156', 'Tarmaji', '081379378555', '2020-11-07', 'Admin', '2022-05-23 13:10:18', 'Admin', '2022-05-23 13:10:18'),
(12, 'PPLI', 'Lampung', '-5.74103', '105.14486', 'ZikrI', '081369737070', '2020-08-22', 'Admin', '2022-05-23 13:12:35', 'Admin', '2022-05-23 13:12:35'),
(13, 'PKSI', 'Sumatera Selatan', '-4.0428', '103.2639', 'Hupis', '085215074404', '2020-11-13', 'Admin', '2022-05-23 13:14:03', 'Admin', '2022-05-23 13:14:03'),
(14, 'PBJI', 'Jawa Barat', '-7.087401', '107.476141', 'Berry', '082217783116', '2020-03-15', 'Admin', '2022-05-23 13:14:56', 'Admin', '2022-05-23 13:14:56'),
(15, 'MTSM', 'Sumatera Selatan', '-4.4793', '103.5062', 'Mukminin', '081278068658', '2021-03-31', 'Admin', '2022-05-23 13:23:14', 'Admin', '2022-05-23 13:23:14'),
(16, 'LLSM', 'Lampung', '-5.60039', '104.80943', 'Apriansyah', '082377727850', '2021-03-01', 'Admin', '2022-05-23 13:24:51', 'Admin', '2022-05-23 13:24:51'),
(17, 'LLSI', 'Sumatera Selatan', '-3.27843', '102.9139', 'Hendi', '0811718137', '2020-07-10', 'Admin', '2022-05-23 13:26:35', 'Admin', '2022-05-23 13:26:35'),
(18, 'LHSM', 'Sumatera Selatan', '-4.1779734', '103.5742079', 'Riduan', '085382322883', '2222-02-22', 'Admin', '2022-05-23 13:27:50', 'Admin', '2022-05-23 13:27:50'),
(19, 'KRJI', 'Jambi', '-2.0912', '101.4619', 'Stamet Kerinci', '---', '2021-08-24', 'Admin', '2022-05-23 13:30:47', 'Admin', '2022-05-23 13:30:47'),
(20, 'JWJM', 'Jawa Tengah', '-7.206245', '110.731458', 'Prapto', '082258217391', '2020-08-06', 'Admin', '2022-05-23 13:32:21', 'Admin', '2022-05-23 13:32:21'),
(21, 'JMSI', 'Jambi', '-2.63715', '101.88745', 'supriyadi', '085377335592', '2222-02-22', 'Admin', '2022-05-23 13:35:36', 'Admin', '2022-05-23 13:35:36'),
(22, 'EGSI', 'Bengkulu', '-5.3526 ', '102.2767', 'Anugerah', '085381714811', '2222-02-22', 'Admin', '2022-05-23 13:39:07', 'Admin', '2022-05-23 13:39:07'),
(23, 'CSJI', 'Jawa Barat', '-7.33017', '106.52107', 'Amil Basroh', '085724955034', '2020-03-05', 'Admin', '2022-05-23 13:41:05', 'Admin', '2022-05-23 13:41:05'),
(24, 'CIJM', 'Jawa Barat', '-6.4926', '108.1853', 'Sugiono', '087727555511', '2020-06-07', 'Admin', '2022-05-23 13:42:41', 'Admin', '2022-05-23 13:42:41'),
(25, 'CCJM', 'Jawa Barat', '-7.01664', '107.14004', 'Ecep Yudi Hermawan ', '083817461937', '2020-03-11', 'Admin', '2022-05-23 13:43:49', 'Admin', '2022-05-23 13:43:49'),
(26, 'CBJM', 'Jawa Barat', '-6.57 ', '107.2117', 'Dikdik', '083820707537', '2020-03-13', 'Admin', '2022-05-23 13:44:52', 'Admin', '2022-05-23 13:44:52'),
(27, 'BOSM', 'Sumatera Selatan', '-4.8592', '104.0207', 'Sahrizal', '085766884752', '2021-10-06', 'Admin', '2022-05-23 13:46:48', 'Admin', '2022-05-23 13:46:48'),
(28, 'BMSI', 'Jambi', '-2.06641', '102.31544', 'Eko samiharjo ', '085266467677', '2020-11-21', 'Admin', '2022-05-23 13:47:44', 'Admin', '2022-05-23 13:47:44'),
(29, 'BLSM', 'Sumatera Selatan', '-3.140218', '102.8072', 'Hamit ', '083896154913', '2020-11-02', 'Admin', '2022-05-23 13:49:23', 'Admin', '2022-05-23 13:49:23'),
(30, 'MNAI', 'Bengkulu', '-4.3604', '102.9557', 'Pak Budi ', '085316531234', '2021-08-20', 'Admin', '2022-05-23 13:52:14', 'Admin', '2022-05-23 13:52:14'),
(31, 'MKSM', 'Bengkulu', '-4.5288', '103.36', 'Zari Aziz', '081278628681', '2021-09-22', 'Admin', '2022-05-23 13:53:50', 'Admin', '2022-05-23 13:53:50'),
(32, 'MDSI', 'Sumatera Selatan', '-4.4861', '104.1783', 'Misnan ', '081273198446', '2021-10-05', 'Admin', '2022-05-23 13:54:41', 'Admin', '2022-05-23 13:54:41'),
(33, 'MBSM', 'Bengkulu', '-3.1451', '101.8374', 'Ihsan ', '082279491698', '2021-09-15', 'Admin', '2022-05-23 13:56:15', 'Admin', '2022-05-23 13:56:15'),
(34, 'MBBI', 'Jambi', '-1.5406 ', '102.0984', 'Yudha Maulana ', '082393993867', '2020-11-03', 'Admin', '2022-05-23 13:57:24', 'Admin', '2022-05-23 13:57:24'),
(35, 'MKBI', 'Bengkulu', '-2.4474', '101.2396', 'Litman Kepala Stasiun ', '081373789597', '2021-08-23', 'Admin', '2022-05-23 14:01:57', 'Admin', '2022-05-23 14:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `data_stasiun`
--

CREATE TABLE `data_stasiun` (
  `id_stasiun` bigint(20) UNSIGNED NOT NULL,
  `nama_stasiun` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_stasiun`
--

INSERT INTO `data_stasiun` (`id_stasiun`, `nama_stasiun`, `provinsi`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'Stasiun Meteorologi Maritim Lampung ', 'Lampung', 'Admin', '2022-05-30 10:38:58', 'Admin', '2022-05-30 10:38:58'),
(3, 'BBMKG Wilayah II', 'Banten', 'Admin', '2022-05-30 10:39:23', 'Admin', '2022-05-30 10:39:23'),
(4, 'Stasiun Meteorologi Citeko', 'Jawa Barat', 'Admin', '2022-05-30 10:39:36', 'Admin', '2022-05-30 10:39:36'),
(5, 'Stasiun Meteorologi Jatiwangi', 'Jawa Barat', 'Admin', '2022-05-30 10:39:50', 'Admin', '2022-05-30 10:39:50'),
(6, 'Pos Meteorologi Penggung', 'Jawa Barat', 'Admin', '2022-05-30 10:40:03', 'Admin', '2022-05-30 10:40:03'),
(7, 'Stasiun Meteorologi Tegal', 'Jawa Tengah', 'Admin', '2022-05-30 10:40:16', 'Admin', '2022-05-30 10:40:16'),
(8, 'Stasiun Meteorologi Tunggul Wulung', 'Jawa Tengah', 'Admin', '2022-05-30 10:40:31', 'Admin', '2022-05-30 10:40:31'),
(9, 'Stasiun Meteorologi Rahadi Oesman Ketapang', 'Kalimantan Barat', 'Admin', '2022-05-30 10:40:58', 'Admin', '2022-05-30 10:40:58'),
(10, 'Stasiun Meteorologi Maritim Pontianak', 'Kalimantan Barat', 'Admin', '2022-05-30 10:41:13', 'Admin', '2022-05-30 10:41:13'),
(11, 'Stasiun Meteorologi Paloh Sambas', 'Kalimantan Barat', 'Admin', '2022-05-30 10:41:29', 'Admin', '2022-05-30 10:41:29'),
(12, 'Stasiun Meteorologi Susilo', 'Kalimantan Barat', 'Admin', '2022-05-30 10:41:43', 'Admin', '2022-05-30 10:41:43'),
(13, 'Stasiun Meteorologi Nangapinoh', 'Kalimantan Barat', 'Admin', '2022-05-30 10:41:57', 'Admin', '2022-05-30 10:41:57'),
(14, 'Stasiun Meteorologi Pangsuma Putusibau', 'Kalimantan Barat', 'Admin', '2022-05-30 10:42:10', 'Admin', '2022-05-30 10:42:10');

-- --------------------------------------------------------
--
-- Table structure for table `data_provinsi`
--

CREATE TABLE `data_provinsi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `lat_inatews` varchar(30) NOT NULL,
  `lon_inatews` varchar(30) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_provinsi`
--

INSERT INTO `data_provinsi` (`id`, `provinsi`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(3, 'Sumatera Selatan', 'Admin', '2022-04-26 15:13:54', 'Admin', '2022-04-26 15:13:54'),
(5, 'Bengkulu', 'Admin', '2022-04-26 15:14:11', 'Admin', '2022-04-26 15:14:11'),
(8, 'Jambi', 'Admin', '2022-04-26 15:14:35', 'Admin', '2022-04-26 15:14:35'),
(9, 'Lampung', 'Admin', '2022-04-26 15:14:38', 'Admin', '2022-04-26 15:14:38'),
(10, 'Bangka Belitung', 'Admin', '2022-04-26 15:14:44', 'Admin', '2022-04-26 15:14:44'),
(11, 'Kalimantan Barat', 'Admin', '2022-04-26 15:14:57', 'Admin', '2022-04-26 15:14:57'),
(15, 'Kalimantan Utara', 'Admin', '2022-04-26 15:15:25', 'Admin', '2022-04-26 15:15:25'),
(16, 'Banten', 'Admin', '2022-04-26 15:15:36', 'David Yulidzar', '2022-06-01 10:27:02'),
(17, 'DKI Jakarta', 'Admin', '2022-04-26 15:15:40', 'Admin', '2022-04-26 15:15:40'),
(18, 'Jawa Barat', 'Admin', '2022-04-26 15:15:47', 'Admin', '2022-04-26 15:15:47'),
(19, 'Jawa Tengah', 'Admin', '2022-04-26 15:15:52', 'Admin', '2022-04-26 15:15:52'),
(35, 'D.I. Yogyakarta', 'Admin', '2022-05-30 14:50:06', 'Admin', '2022-05-30 14:50:06');

--
-- Table structure for table `data_target_kalibrasi`
--

CREATE TABLE `data_target_kalibrasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `target` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_target_kalibrasi`
--

INSERT INTO `data_target_kalibrasi` (`id`, `tahun`, `kategori`, `target`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 2022, 'aws', 72, 'Admin', '2022-04-28 07:12:08', 'Admin', '2022-06-02 09:56:41'),
(2, 2022, 'arg', 256, 'Admin', '2022-04-28 07:12:18', 'Admin', '2022-05-30 09:55:22'),
(3, 2022, 'inatews', 34, 'Admin', '2022-04-28 07:12:34', 'Admin', '2022-05-30 09:49:17'),
(4, 2022, 'awos', 14, 'Admin', '2022-04-28 07:12:44', 'Admin', '2022-05-30 09:50:03'),
(5, 2022, 'stasiun', 10, 'Admin', '2022-04-28 07:13:13', 'Admin', '2022-05-30 09:50:12'),
(6, 2022, 'aaws', 42, 'Admin', '2022-04-28 07:13:21', 'Admin', '2022-06-02 09:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_akses` bigint(20) UNSIGNED NOT NULL COMMENT 'fk',
  `kode` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `golongan` varchar(100) NOT NULL,
  `last_login` datetime NOT NULL,
  `last_activity` datetime NOT NULL,
  `ip_address` varchar(30) NOT NULL,
  `invalid_password` tinyint(4) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `change_password_by` varchar(100) NOT NULL,
  `change_password_at` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_user`
--

INSERT INTO `user` (`id_user`, `id_akses`, `kode`, `nama`, `username`, `password`, `email`, `telepon`, `foto`, `pangkat`, `golongan`, `last_login`, `last_activity`, `ip_address`, `invalid_password`, `is_active`, `change_password_by`, `change_password_at`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(7, 2, '196211091985031001', 'Dedi Ristianto', '196211091985031001', '$2y$09$0N4HKgrJRFj9Q53JNRnltuOkute4GkW5V9Il/kQnq6Ldyl.p3RF42', 'dedisris@gmail.com', '', '', 'IV-A', 'Pembina', '2023-06-07 14:02:03', '2023-06-07 14:34:14', '182.16.243.250', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 08:03:02', 'Naufal Ananda', '2022-05-17 08:03:02'),
(8, 2, '198509052007011007', 'Wibowo Yudha Laksana', '198509052007011007', '$2y$09$L/tPmK/CDs1iIDeWxTeW1e2ajD84BWzH7t9XYAiXEPl6CzhLA3kdW', 'wibowo@gmail.com', '', '', 'III-D', 'Penata TK.I', '2022-06-01 10:30:54', '2022-06-01 12:00:07', '36.69.178.201', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 08:04:01', 'Naufal Ananda', '2022-05-17 08:04:01'),
(6, 2, '197806012008121001', 'G.A.Monang Lumban Gaol', '197806012008121001', '$2y$09$NHUDDiWKAZH0keJUZC3RNOwtSer4YF0/g07Fs8NFpT/1bLTGULIDS', 'ga.monang@gmail.com', '', '', 'III-D', 'Penata TK.I', '2022-08-15 09:51:38', '2022-08-15 10:21:45', '182.16.249.1', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 08:02:00', 'Naufal Ananda', '2022-05-18 22:04:28'),
(5, 2, '199604032020011001', 'Naufal Ananda', '199604032020011001', '$2y$09$OwVjP85om8uqX54sKf1/SOMQJ0O4bWehj6fJgbY4kNg9UltmPorze', 'naufal.ananda17@gmail.com', '', '1127241af72fe247badbaf032309b62d.png', 'III-A', 'Penata Muda', '2022-09-11 20:59:45', '2022-09-11 21:29:44', '113.11.180.104', 1, 1, '', '0000-00-00 00:00:00', 'Admin', '2022-05-17 07:53:29', 'Naufal Ananda', '2022-05-18 22:08:26'),
(9, 2, '197701312000031001', 'Edy Kusnandar', '197701312000031001', '$2y$09$GPT15VMZW9W8FerFq1V6COn.hM3kwOZOy1g9ug4up.3vuotvgLyBG', 'edy@gmail.com', '', '', 'III-A', 'Panata Muda', '2022-09-20 08:04:13', '2022-09-20 09:44:03', '36.92.28.58', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 08:05:05', 'Naufal Ananda', '2022-05-17 08:05:05'),
(10, 2, '197510051996031001', 'Dadang Ariyanto', '197510051996031001', '$2y$09$wlK2d1YwMJ0o.A11he7npOlTIIzalB0GtmfAvlAADbMZs3wVoAyDu', 'dadang@gmail.com', '', '', 'III-B', 'Penata Muda TK.I', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 08:06:39', 'Naufal Ananda', '2022-05-17 08:06:39'),
(11, 2, '198508252008121002', 'Gema Akbar', '198508252008121002', '$2y$09$iQTk85gy1ML.YCam0vvT/e3NqeKblFc.gSPSsQX2ueFTyoDPQ4XUS', 'gema@gmail.com', '', '', 'III-C', 'Penata', '2022-05-31 14:22:17', '2022-05-31 14:54:16', '182.16.249.1', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 08:17:40', 'Naufal Ananda', '2022-05-17 08:17:40'),
(12, 2, '198506142008012004', 'Kustita Rhamadania', '198506142008012004', '$2y$09$wbHjGcfg9QEedy.I0tRl5uUraF8fr40fiEjd95F.K6l1AMl.hNOMC', 'kustita@gmail.com', '', '', 'III-C', 'Penata', '2022-06-07 10:45:27', '2022-06-07 10:47:15', '182.16.249.1', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 11:20:19', 'Naufal Ananda', '2022-05-17 11:20:19'),
(13, 2, '198502222008012005', 'Rumondang Simanullang', '198502222008012005', '$2y$09$PPehk3lZyLj2fdewG8NFJePx9wMTeau/TxqA9oBEiRYgu.MfPVFsK', 'rumondang@gmail.com', '', '', 'Penata', 'III-C', '2022-07-22 18:56:28', '2022-07-22 18:56:31', '36.92.28.58', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 11:21:23', 'Naufal Ananda', '2022-05-17 11:21:23'),
(14, 2, '199210172013122001', 'Say Marina Octavia', '199210172013122001', '$2y$09$ZPtWY69zCbCSlw2LxqwpbOtAU6c9WKdZbEHTwkRlDPfK6/.SAWFYG', 'say@gmail.com', '', '', 'Penata Muda', 'III-A', '2022-07-04 11:01:31', '2022-07-04 12:30:22', '36.92.28.58', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 11:22:27', 'Naufal Ananda', '2022-05-17 11:22:27'),
(15, 2, '199606062020011001', 'Rahma Juwita', '199606062020012001', '$2y$09$FvDYjVGZ4BKrn/8/FlNB8eiOLuLrxtrXLUtWN.3W6vhMLJ0RXt28.', 'raju@gmail.com', '', '', 'III-A', 'Penata Muda', '2022-06-29 13:29:18', '2022-06-29 13:47:10', '182.16.249.1', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 11:23:40', 'Admin', '2022-05-30 15:41:33'),
(16, 2, '199706022020012001', 'Eci Anggraini', '199706022020012001', '$2y$09$BKgseYMJpfXCiCmh1MePt.2y9Pku6k.19MwCQEgRnFIf1wZhO.SNK', 'eci@gmail.com', '', '', 'Penata Muda', 'III-A', '2022-05-30 15:36:51', '2022-05-30 15:53:06', '36.92.28.58', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 11:24:47', 'Naufal Ananda', '2022-05-17 11:24:47'),
(17, 2, '199602132016011001', 'M.Sabarudin', '199602132016011001', '$2y$09$Ha5b3UB4xPqM5EwQiUKnOexC9l5yFAcSLS3DrHrnu3S2REJz9XqDe', 'sabar@gmail.com', '', '', 'Penata Muda', 'III-A', '2022-06-06 14:00:15', '2022-06-06 14:00:41', '36.92.28.58', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 11:25:44', 'Naufal Ananda', '2022-05-17 11:25:44'),
(18, 2, '199511082016011001', 'M. Agung Prabowo', '199511082016011001', '$2y$09$slsip6fmSq4QJW59sAa.VOnCY1xO8VlEaPgNogsfVHPZ5bP5ZxHXO', 'Agung@gmail.com', '', '', 'III-A', 'Penata Muda', '2023-01-18 10:24:12', '2023-01-18 10:39:23', '182.16.249.4', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 11:26:31', 'Naufal Ananda', '2022-05-17 11:26:31'),
(19, 2, '199702132016012001', 'Sela Febriza', '199702132016012001', '$2y$09$2K9dv6IVru3EzfEAUOQDM.ymy3aZA.eN9bzauT3Ptzev8LqkwlaGK', 'sela@gmail.com', '', '', 'III-A', 'Penata Muda', '2022-09-21 12:39:38', '2022-09-21 12:43:13', '36.92.28.58', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 11:27:12', 'Naufal Ananda', '2022-05-17 11:27:12'),
(20, 2, '199307192013121001', 'David Yulidzar', '199307192013121001', '$2y$09$FP8B4rGPxMyQvPctqvulY.HbDfFPddbIvwyWno.fiW0a18Juc3mNy', 'david@gmail.com', '', '', 'III-B', 'Penata Muda', '2022-06-26 09:50:33', '2022-06-26 09:51:42', '182.16.249.1', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-17 11:27:47', 'Naufal Ananda', '2022-05-17 11:27:47'),
(21, 1, '1111', 'Admin', 'admin', '21232F297A57A5A743894A0E4A801FC3', 'Admin@gmail.com', '', '', 'Admin', 'Admin', '2022-11-28 06:41:20', '2022-11-28 06:44:14', '220.247.168.154', 0, 1, '', '0000-00-00 00:00:00', 'Naufal Ananda', '2022-05-18 22:08:12', 'Admin', '2022-06-01 08:54:36'),
(22, 2, '111', 'Tamu', 'tamu', '$2y$09$cV/XbxwF9uF3k/o1cnIb4ubcphZgMMGGXmx99l0kjfFy/8H.08xCq', 'tamu123@gmail.com', '00000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 1, '', '0000-00-00 00:00:00', 'Admin', '2022-05-23 13:04:13', 'Admin', '2022-05-23 13:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id_akses` int(13) NOT NULL,
  `nama_akses` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id_akses`, `nama_akses`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

-- CREATE TABLE `user` (
--   `id_user` int(13) NOT NULL,
--   `username` varchar(30) NOT NULL,
--   `password` varchar(32) NOT NULL,
--   `kd_akses` int(13) NOT NULL,
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --
-- -- Dumping data for table `user`
-- --

-- INSERT INTO `user` (`id_user`, `username`, `password`, `id_akses`) VALUES
-- (1, 'admin', '21232F297A57A5A743894A0E4A801FC3', 1),


-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_aaws`
--
ALTER TABLE `data_aaws`
  ADD PRIMARY KEY (`id_aaws`),
  ADD KEY `id_aaws` (`id_aaws`);

--
-- Indexes for table `data_arg`
--
ALTER TABLE `data_arg`
  ADD PRIMARY KEY (`id_arg`),
  ADD KEY `id_arg` (`id_arg`);

--
-- Indexes for table `data_awos`
--
ALTER TABLE `data_awos`
  ADD PRIMARY KEY (`id_awos`),
  ADD KEY `id_awos` (`id_awos`);

--
-- Indexes for table `data_aws`
--
ALTER TABLE `data_aws`
  ADD PRIMARY KEY (`id_aws`),
  ADD KEY `id_aws` (`id_aws`);

--
-- Indexes for table `data_inatews`
--
ALTER TABLE `data_inatews`
  ADD PRIMARY KEY (`id_inatews`),
  ADD KEY `id_inatews` (`id_inatews`);

--
-- Indexes for table `data_stamet`
--
ALTER TABLE `data_stasiun`
  ADD PRIMARY KEY (`id_stasiun`),
  ADD KEY `id_stasiun` (`id_stasiun`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_akses` (`id_akses`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_aaws`
--
ALTER TABLE `data_aaws`
  MODIFY `id_aaws` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `data_arg`
--
ALTER TABLE `data_arg`
  MODIFY `id_arg` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `data_awos`
--
ALTER TABLE `data_awos`
  MODIFY `id_awos` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `data_aws`
--
ALTER TABLE `data_aws`
  MODIFY `id_aws` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `data_inatews`
--
ALTER TABLE `data_inatews`
  MODIFY `id_inatews` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `data_stamet`
--
ALTER TABLE `data_stasiun`
  MODIFY `id_stasiun` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id_akses` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
