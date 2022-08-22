-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 11:52 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_psb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_costs`
--

CREATE TABLE `category_costs` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_default` int(11) DEFAULT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_costs`
--

INSERT INTO `category_costs` (`id`, `name`, `description`, `is_active`, `is_default`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Pendaftaran1', 'Biaya Pendaftaran', 1, 1, 0, '2021-11-30 18:12:36', '2021-11-30 18:12:36'),
(2, 'SPP 1', 'SPP Bulan 1', 1, 0, 0, '2021-11-30 12:17:05', '2021-11-30 12:17:07'),
(3, 'DSP Gel 1', 'DSP Gel 1', 1, 0, 0, '2021-11-30 12:17:51', '2021-11-30 12:17:53'),
(4, 'DSP Gel 2', 'DSP Gel 2', 0, 0, 0, '2021-11-30 12:18:11', '2021-11-30 12:19:07'),
(5, 'Tabsis', 'Tabsis', 1, 0, 0, '2021-11-30 12:19:02', '2021-11-30 12:19:04'),
(6, 'test', 'test', 1, 1, 1, '2021-11-30 18:10:36', '2021-11-30 18:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `class` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`id`, `school_id`, `name`, `class`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'TK-A', 0, 0, 1, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(2, 1, 'TK-B', 0, 0, 1, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(3, 2, 'SD', 1, 0, 1, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(4, 2, 'SD', 2, 0, 1, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(5, 2, 'SD', 3, 0, 1, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(6, 2, 'SD', 4, 0, 1, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(7, 2, 'SD', 5, 0, 1, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(8, 2, 'SD', 6, 0, 1, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(12, 3, 'SMP', 7, 1, 0, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(13, 3, 'SMP', 8, 1, 0, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(14, 3, 'SMP', 9, 1, 0, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(15, 4, 'SMA', 10, 1, 0, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(16, 4, 'SMA', 11, 1, 0, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(17, 4, 'SMA', 12, 1, 0, '2021-11-25 14:52:23', '2021-11-25 14:52:26'),
(18, 5, 'SMK', 10, 1, 0, '2021-11-27 03:56:04', '2021-11-27 03:55:59'),
(19, 5, 'SMK', 11, 1, 0, '2021-11-27 03:56:04', '2021-11-27 03:55:59'),
(20, 5, 'SMK', 12, 1, 0, '2021-11-27 03:56:04', '2021-11-27 03:55:59'),
(21, 4, 'testtt', 8, 1, 1, '2021-11-30 17:49:13', '2021-11-30 17:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `config_id` int(11) NOT NULL,
  `app_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `logo` varchar(225) NOT NULL,
  `icon` varchar(225) NOT NULL,
  `about` text NOT NULL,
  `privacy_police` text NOT NULL,
  `terms` text NOT NULL,
  `web` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `requirements_information` text DEFAULT NULL,
  `cost_information` text DEFAULT NULL,
  `agenda_information` text DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` int(11) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`config_id`, `app_name`, `email`, `phone`, `address`, `logo`, `icon`, `about`, `privacy_police`, `terms`, `web`, `fax`, `requirements_information`, `cost_information`, `agenda_information`, `bank_name`, `account_number`, `account_name`) VALUES
(1, 'SISTEM INFORMASI PENERIMAAN SISWA BARU', 'contact@indomart.co.id', '021-7656971', '<p>Jalan Rumah Sakit Fatmawati, Pondok Labu, Jakarta Selatan 12450</p>', '1200px-PSB_logo_original_english_png.png', '1200px-PSB_logo_original_english_png.png', '', '', '', 'https://indomaret.co.id/', '021-7656904', '<p>test</p>', '<p>test</p>', '<p>test</p>', 'BCA', 12319823, 'Pesat');

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE `costs` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `category_cost_id` int(11) NOT NULL,
  `school_years_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`id`, `school_id`, `category_cost_id`, `school_years_id`, `price`, `is_active`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 1, 1, 1, 50000, 1, '2021-11-27 03:22:19', '2021-11-27 03:22:21', 0),
(2, 2, 1, 1, 50000, 1, '2021-11-27 03:22:38', '2021-11-27 03:22:40', 0),
(3, 3, 1, 1, 50000, 1, '2021-11-27 03:22:51', '2021-11-27 03:22:53', 0),
(4, 4, 1, 1, 50000, 1, '2021-11-27 03:23:04', '2021-11-27 03:23:06', 0),
(5, 5, 1, 1, 50000, 1, '2021-11-27 03:23:19', '2021-11-27 03:23:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `document_names`
--

CREATE TABLE `document_names` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `initial` varchar(15) DEFAULT NULL,
  `format` varchar(5) DEFAULT NULL,
  `max_file_size` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `document_names`
--

INSERT INTO `document_names` (`id`, `name`, `initial`, `format`, `max_file_size`, `is_active`, `is_deleted`) VALUES
(1, 'Akte Kelahiran', 'akte_kelahiran', 'jpg', 1000, 1, 0),
(2, 'Kartu keluarga', 'kartu_keluarga', 'jpg', 1000, 1, 0),
(3, 'Raport SMP Kelas 7 Semester I', 'smp_7_1', 'jpg', 1000, 1, 1),
(4, 'Raport SMP Kelas 7 Semester II', 'smp_7_2', 'jpg', 1000, 1, 1),
(5, 'Raport SMP Kelas 8 Semester I', 'smp_8_1', 'jpg', 1000, 1, 1),
(6, 'Raport SMP Kelas 8 Semester II', 'smp_8_2', 'jpg', 1000, 1, 1),
(7, 'Raport SD Kelas 4 Semester I', 'sd_4_1', 'jpg', 1000, 1, 1),
(8, 'Raport SD Kelas 4 Semester II', 'sd_4_2', 'jpg', 1000, 1, 1),
(9, 'Raport SD Kelas 5 Semester I', 'sd_5_1', 'jpg', 1000, 1, 1),
(10, 'Raport SD Kelas 5 Semester II', 'sd_5_2', 'jpg', 1000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `document_privilages`
--

CREATE TABLE `document_privilages` (
  `id` int(11) NOT NULL,
  `documen_name_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `document_privilages`
--

INSERT INTO `document_privilages` (`id`, `documen_name_id`, `school_id`, `classroom_id`) VALUES
(1, 1, 4, 15),
(2, 2, 4, 15),
(3, 3, 4, 15),
(4, 4, 4, 15),
(5, 5, 4, 15),
(6, 6, 4, 15),
(7, 1, 5, 15),
(8, 2, 5, 15),
(9, 3, 5, 15),
(10, 4, 5, 15),
(11, 5, 5, 15),
(12, 6, 5, 15),
(13, 1, 3, 15),
(14, 2, 3, 15),
(15, 7, 3, 15),
(16, 8, 3, 15),
(17, 9, 3, 15),
(18, 10, 3, 15),
(19, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `function`
--

CREATE TABLE `function` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `function`
--

INSERT INTO `function` (`id`, `name`, `description`) VALUES
(1, 'Create', 'Create'),
(2, 'Read', 'Read'),
(3, 'Update', 'Update'),
(4, 'Delete', 'Delete'),
(5, 'Search', 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`id`, `school_id`, `name`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 4, 'IPA', 'Jurusan IPA', 1, 0, '2021-11-27 03:27:38', '2021-11-27 03:27:40'),
(2, 4, 'IPS', 'Jurusan IPS', 1, 0, '2021-11-27 03:27:53', '2021-11-27 03:27:55'),
(3, 5, 'RPL', 'Jurusan Rekayasa Perangkat Lunak', 1, 0, '2021-11-27 03:28:20', '2021-11-27 03:28:22'),
(4, 5, 'TKJ', 'Jurusan Teknik Komputer Jaringan', 1, 0, '2021-11-27 03:28:37', '2021-11-27 03:28:39'),
(5, 5, 'MM', 'Jurusan Multimedia', 1, 0, '2021-11-27 03:28:56', '2021-11-27 03:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `module_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `sequence` int(11) NOT NULL,
  `is_deleted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `module_id`, `name`, `url`, `parent_id`, `icon`, `sequence`, `is_deleted`) VALUES
(1, 1, 'root', '#', 0, '', 0, 0),
(2, 1, 'Dashboard', 'admin/dashboard', 1, 'fa fa-home', 1, 0),
(3, 1, 'Role Management', '#', 1, 'fa fa-users', 2, 1),
(4, 1, 'Roles', 'admin/role', 3, 'fa fa-circle-o', 1, 0),
(5, 1, 'Privileges', 'admin/privileges', 3, 'fa fa-circle-o', 2, 0),
(6, 1, 'Master Data', '#', 1, 'fa fa-list', 3, 1),
(7, 1, 'Data Menu', 'admin/menu', 6, 'fa fa-circle-o', 1, 0),
(8, 1, 'Data Karyawan', 'admin/user', 6, 'fa fa-circle-o', 5, 0),
(18, 1, 'Pengaturan', '#', 1, 'fa fa-wrench', 7, 0),
(19, 1, 'Konfigurasi Umum', 'admin/config', 18, 'fa fa-circle-o', 1, 0),
(20, 1, 'Data Pelanggan', 'admin/customers', 6, 'fa fa-circle-o', 6, 0),
(21, 1, 'Paket Harga', '#', 1, 'fa fa-cube', 4, 1),
(22, 1, 'Calon Siswa Baru', '#', 1, 'fa fa-user-md', 5, 0),
(23, 1, 'Data Tahun Ajaran', 'admin/school_years', 6, 'fa fa-circle-o', 3, 0),
(24, 1, 'Data Kelas', 'admin/classroom', 6, 'fa fa-circle-o', 4, 0),
(25, 1, 'Hasil Penilaian KNN', 'nilai/knn', 22, 'fa fa-circle-o', 2, 1),
(26, 1, 'Kategori Paket', 'admin/category_costs', 21, 'fa fa-circle-o', 1, 0),
(27, 1, 'Daftar Biaya', 'admin/costs', 21, 'fa fa-circle-o', 2, 0),
(28, 1, 'Data Sekolah', 'admin/schools', 6, 'fa fa-circle-o', 2, 0),
(29, 1, 'Tambah Biaya', 'admin/costs/create', 21, 'fa fa-circle-o', 3, 0),
(30, 1, 'Data Calon Siswa', 'admin/students', 22, 'fa fa-circle-o', 1, 0),
(31, 1, 'Pembelian', '#', 1, 'fa fa-shopping-cart', 6, 1),
(32, 1, 'Daftar Transaksi', 'admin/orders', 31, 'fa fa-circle-o', 1, 1),
(33, 1, 'Menunggu Konfirmasi', 'admin/orders/waiting', 31, 'fa fa-circle-o', 2, 0),
(34, 1, 'Data Siswa Baru', 'admin/students', 22, 'fa fa-circle-o', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_function`
--

CREATE TABLE `menu_function` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_function`
--

INSERT INTO `menu_function` (`id`, `menu_id`, `function_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 3, 1),
(7, 3, 2),
(8, 3, 3),
(9, 3, 4),
(10, 3, 5),
(11, 4, 1),
(12, 4, 2),
(13, 4, 3),
(14, 4, 4),
(15, 4, 5),
(16, 5, 1),
(17, 5, 2),
(18, 5, 3),
(19, 5, 4),
(20, 5, 5),
(21, 6, 1),
(22, 6, 2),
(23, 6, 3),
(24, 6, 4),
(25, 6, 5),
(26, 7, 1),
(27, 7, 2),
(28, 7, 3),
(29, 7, 4),
(30, 7, 5),
(31, 8, 1),
(32, 8, 2),
(33, 8, 3),
(34, 8, 4),
(35, 8, 5),
(36, 9, 1),
(37, 9, 2),
(38, 9, 3),
(39, 9, 4),
(40, 9, 5),
(41, 10, 1),
(42, 10, 2),
(43, 10, 3),
(44, 10, 4),
(45, 10, 5),
(46, 11, 1),
(47, 11, 2),
(48, 11, 3),
(49, 11, 4),
(50, 11, 5),
(51, 12, 1),
(52, 12, 2),
(53, 12, 3),
(54, 12, 4),
(55, 12, 5),
(56, 13, 1),
(57, 13, 2),
(58, 13, 3),
(59, 13, 4),
(60, 13, 5),
(61, 14, 1),
(62, 14, 2),
(63, 14, 3),
(64, 14, 4),
(65, 14, 5),
(66, 15, 1),
(67, 15, 2),
(68, 15, 3),
(69, 15, 4),
(70, 15, 5),
(71, 16, 1),
(72, 16, 2),
(73, 16, 3),
(74, 16, 4),
(75, 16, 5),
(76, 17, 1),
(77, 17, 2),
(78, 17, 3),
(79, 17, 4),
(80, 17, 5),
(81, 18, 1),
(82, 18, 2),
(83, 18, 3),
(84, 18, 4),
(85, 18, 5),
(86, 19, 1),
(87, 19, 2),
(88, 19, 3),
(89, 19, 4),
(90, 19, 5),
(91, 20, 1),
(92, 20, 2),
(93, 20, 3),
(94, 20, 4),
(95, 20, 5),
(96, 21, 1),
(97, 21, 2),
(98, 21, 3),
(99, 21, 4),
(100, 21, 5),
(101, 22, 1),
(102, 22, 2),
(103, 22, 3),
(104, 22, 4),
(105, 22, 5),
(106, 23, 1),
(107, 23, 2),
(108, 23, 3),
(109, 23, 4),
(110, 23, 5),
(111, 24, 1),
(112, 24, 2),
(113, 24, 3),
(114, 24, 4),
(115, 24, 5),
(116, 25, 1),
(117, 25, 2),
(118, 25, 3),
(119, 25, 4),
(120, 25, 5),
(121, 26, 1),
(122, 26, 2),
(123, 26, 3),
(124, 26, 4),
(125, 26, 5),
(126, 27, 1),
(127, 27, 2),
(128, 27, 3),
(129, 27, 4),
(130, 27, 5),
(131, 28, 1),
(132, 28, 2),
(133, 28, 3),
(134, 28, 4),
(135, 28, 5),
(136, 29, 1),
(137, 29, 2),
(138, 29, 3),
(139, 29, 4),
(140, 29, 5),
(141, 30, 1),
(142, 30, 2),
(143, 30, 3),
(144, 30, 4),
(145, 30, 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `notify_to` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `read_by` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `event` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `description`, `created_at`, `notify_to`, `to_user_id`, `read_by`, `event`, `order_id`, `deleted`) VALUES
(26, 3, '', '2021-11-29 14:10:05', '3', 1, '', 'order_submitted', 2, 0),
(27, 3, '', '2021-11-29 14:19:58', '3', 1, '', 'order_submitted', 3, 0),
(28, 0, '', '2021-12-02 04:19:08', '1', 2, '', 'order_submitted', 2, 0),
(29, 0, '', '2021-12-02 04:20:07', '1', 2, '', 'order_submitted', 3, 0),
(30, 0, '', '2021-12-02 04:43:16', '1', 2, '', 'order_submitted', 5, 0),
(31, 0, '', '2021-12-02 04:52:37', '1', 2, '', 'order_submitted', 1, 0),
(32, 0, '', '2021-12-02 05:22:26', '1', 2, '', 'order_submitted', 2, 0),
(33, 0, '', '2021-12-02 05:23:13', '1', 2, '', 'order_submitted', 3, 0),
(34, 0, '', '2021-12-02 05:49:11', '1', 2, '', 'order_submitted', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `invoice` varchar(225) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `gross_amount` int(11) NOT NULL,
  `real_amount` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice`, `user_id`, `student_id`, `gross_amount`, `real_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'INV-1638398951', 2, 1, 50000, 50000, 'Menunggu Pembayaran', '2021-12-02 05:49:11', '2021-12-02 05:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `orders_confirmation`
--

CREATE TABLE `orders_confirmation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `card_name` varchar(50) NOT NULL,
  `card_number` int(11) NOT NULL,
  `bank_ref` varchar(25) NOT NULL,
  `payment_bank` varchar(20) NOT NULL,
  `payment_method` varchar(25) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_proof` mediumtext NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `is_confirm` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `cost_id` int(11) NOT NULL,
  `gross_amount` int(11) NOT NULL,
  `real_amount` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `order_id`, `cost_id`, `gross_amount`, `real_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 50000, 50000, '2021-12-02 05:49:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `privilleges`
--

CREATE TABLE `privilleges` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `privilleges`
--

INSERT INTO `privilleges` (`id`, `role_id`, `menu_id`, `function_id`) VALUES
(1, 2, 2, 1),
(2, 2, 2, 2),
(3, 2, 2, 3),
(4, 2, 2, 4),
(5, 2, 2, 5),
(6, 2, 16, 1),
(7, 2, 16, 2),
(8, 2, 16, 3),
(9, 2, 16, 4),
(10, 2, 16, 5),
(11, 2, 1, 1),
(12, 2, 1, 1),
(13, 2, 13, 1),
(14, 3, 2, 1),
(15, 3, 2, 2),
(16, 3, 2, 3),
(17, 3, 2, 4),
(18, 3, 2, 5),
(19, 3, 15, 1),
(20, 3, 15, 2),
(21, 3, 15, 3),
(22, 3, 15, 4),
(23, 3, 15, 5),
(24, 3, 16, 1),
(25, 3, 16, 2),
(26, 3, 16, 3),
(27, 3, 16, 4),
(28, 3, 16, 5),
(29, 3, 17, 1),
(30, 3, 17, 2),
(31, 3, 17, 3),
(32, 3, 17, 4),
(33, 3, 17, 5),
(34, 3, 1, 1),
(35, 3, 1, 1),
(36, 3, 13, 1),
(37, 4, 2, 1),
(38, 4, 2, 2),
(39, 4, 2, 3),
(40, 4, 2, 4),
(41, 4, 2, 5),
(42, 4, 10, 1),
(43, 4, 10, 2),
(44, 4, 10, 3),
(45, 4, 10, 4),
(46, 4, 10, 5),
(47, 4, 11, 1),
(48, 4, 11, 2),
(49, 4, 11, 3),
(50, 4, 11, 4),
(51, 4, 11, 5),
(52, 4, 12, 1),
(53, 4, 12, 2),
(54, 4, 12, 3),
(55, 4, 12, 4),
(56, 4, 12, 5),
(57, 4, 14, 1),
(58, 4, 14, 2),
(59, 4, 14, 3),
(60, 4, 14, 4),
(61, 4, 14, 5),
(62, 4, 15, 1),
(63, 4, 15, 2),
(64, 4, 15, 3),
(65, 4, 15, 4),
(66, 4, 15, 5),
(67, 4, 16, 1),
(68, 4, 16, 2),
(69, 4, 16, 3),
(70, 4, 16, 4),
(71, 4, 16, 5),
(72, 4, 17, 1),
(73, 4, 17, 2),
(74, 4, 17, 3),
(75, 4, 17, 4),
(76, 4, 17, 5),
(77, 4, 1, 1),
(78, 4, 1, 1),
(79, 4, 9, 1),
(80, 4, 13, 1),
(173, 8, 2, 1),
(174, 8, 2, 2),
(175, 8, 2, 3),
(176, 8, 2, 4),
(177, 8, 2, 5),
(178, 8, 15, 2),
(179, 8, 15, 3),
(180, 8, 15, 4),
(181, 8, 15, 5),
(182, 8, 16, 1),
(183, 8, 16, 2),
(184, 8, 16, 3),
(185, 8, 16, 4),
(186, 8, 16, 5),
(187, 8, 17, 1),
(188, 8, 17, 2),
(189, 8, 17, 3),
(190, 8, 17, 4),
(191, 8, 17, 5),
(192, 8, 1, 1),
(193, 8, 1, 1),
(194, 8, 13, 1),
(195, 7, 2, 1),
(196, 7, 2, 2),
(197, 7, 2, 3),
(198, 7, 2, 4),
(199, 7, 2, 5),
(200, 7, 15, 2),
(201, 7, 15, 3),
(202, 7, 15, 4),
(203, 7, 15, 5),
(204, 7, 16, 1),
(205, 7, 16, 2),
(206, 7, 16, 3),
(207, 7, 16, 4),
(208, 7, 16, 5),
(209, 7, 17, 1),
(210, 7, 17, 2),
(211, 7, 17, 3),
(212, 7, 17, 4),
(213, 7, 17, 5),
(214, 7, 1, 1),
(215, 7, 1, 1),
(216, 7, 13, 1),
(217, 6, 2, 1),
(218, 6, 2, 2),
(219, 6, 2, 3),
(220, 6, 2, 4),
(221, 6, 2, 5),
(222, 6, 15, 2),
(223, 6, 15, 3),
(224, 6, 15, 4),
(225, 6, 15, 5),
(226, 6, 16, 1),
(227, 6, 16, 2),
(228, 6, 16, 3),
(229, 6, 16, 4),
(230, 6, 16, 5),
(231, 6, 17, 1),
(232, 6, 17, 2),
(233, 6, 17, 3),
(234, 6, 17, 4),
(235, 6, 17, 5),
(236, 6, 1, 1),
(237, 6, 1, 1),
(238, 6, 13, 1),
(239, 5, 2, 1),
(240, 5, 2, 2),
(241, 5, 2, 3),
(242, 5, 2, 4),
(243, 5, 2, 5),
(244, 5, 15, 2),
(245, 5, 15, 3),
(246, 5, 15, 4),
(247, 5, 15, 5),
(248, 5, 16, 1),
(249, 5, 16, 2),
(250, 5, 16, 3),
(251, 5, 16, 4),
(252, 5, 16, 5),
(253, 5, 17, 1),
(254, 5, 17, 2),
(255, 5, 17, 3),
(256, 5, 17, 4),
(257, 5, 17, 5),
(258, 5, 1, 1),
(259, 5, 1, 1),
(260, 5, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `is_deleted`) VALUES
(1, 'admin', 'administrator', 0),
(2, 'customers', 'customers', 0),
(3, 'Staff', 'Staff', 0);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `stage` varchar(50) NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `stage`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'TK', '', 0, 1, '2021-11-25 14:50:43', '2021-11-25 14:50:48'),
(2, 'SD', '', 0, 1, '2021-11-25 14:50:43', '2021-11-25 14:50:48'),
(3, 'SMP', '', 1, 0, '2021-11-25 14:50:43', '2021-11-25 14:50:48'),
(4, 'SMA', '', 1, 0, '2021-11-25 14:50:43', '2021-11-25 14:50:48'),
(5, 'SMK', '', 1, 0, '2021-11-27 03:21:50', '2021-11-27 03:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `school_years`
--

CREATE TABLE `school_years` (
  `id` int(11) NOT NULL,
  `years` varchar(225) NOT NULL,
  `is_active` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `school_years`
--

INSERT INTO `school_years` (`id`, `years`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '2021/2022', 1, 0, '2021-11-27 03:25:11', '2021-11-27 03:25:13'),
(2, '2022/2025', 1, 0, '2021-11-30 17:31:17', '2021-11-30 17:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL,
  `school_year_id` int(11) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `is_school` tinyint(1) DEFAULT NULL,
  `induk_number` int(11) DEFAULT NULL,
  `sumber_info` varchar(25) DEFAULT NULL,
  `is_pay` int(11) DEFAULT NULL,
  `is_done` int(11) DEFAULT NULL,
  `status` varchar(225) NOT NULL,
  `created_on` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `school_id`, `classroom_id`, `school_year_id`, `fullname`, `is_school`, `induk_number`, `sumber_info`, `is_pay`, `is_done`, `status`, `created_on`) VALUES
(1, 2, 4, 15, 1, 'dono', 0, 0, 'Guru', 0, 0, 'diterima', 1638398951);

-- --------------------------------------------------------

--
-- Table structure for table `students_address`
--

CREATE TABLE `students_address` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `alamat` mediumtext DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kodepos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `students_bio`
--

CREATE TABLE `students_bio` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `major` varchar(25) DEFAULT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nama_panggilan` varchar(25) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tmpt_lahir` varchar(25) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `nisn` int(11) DEFAULT NULL,
  `nomor_kk` varchar(25) DEFAULT NULL,
  `nomor_nik` varchar(25) DEFAULT NULL,
  `agama` varchar(15) DEFAULT NULL,
  `kewarganegaraan` varchar(25) DEFAULT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `jumlah_saudara` int(11) DEFAULT NULL,
  `nama_sekolah_asal` varchar(100) DEFAULT NULL,
  `npsn` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `students_document`
--

CREATE TABLE `students_document` (
  `id` int(11) NOT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `doc_name` mediumtext DEFAULT NULL,
  `files` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `students_parents`
--

CREATE TABLE `students_parents` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `tempat_lahir_ayah` varchar(25) DEFAULT NULL,
  `tanggal_lahir_ayah` date DEFAULT NULL,
  `agama_ayah` varchar(15) DEFAULT NULL,
  `pendidikan_ayah` varchar(25) DEFAULT NULL,
  `pekerjaan_ayah` varchar(25) DEFAULT NULL,
  `penghasilan_ayah` varchar(20) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `email_ayah` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `tempat_lahir_ibu` varchar(25) DEFAULT NULL,
  `tanggal_lahir_ibu` date DEFAULT NULL,
  `agama_ibu` varchar(15) DEFAULT NULL,
  `pendidikan_ibu` varchar(25) DEFAULT NULL,
  `pekerjaan_ibu` varchar(25) DEFAULT NULL,
  `penghasilan_ibu` varchar(20) DEFAULT NULL,
  `nohp_ibu` varchar(15) DEFAULT NULL,
  `email_ibu` varchar(50) DEFAULT NULL,
  `nama_wali` varchar(50) DEFAULT NULL,
  `tempat_lahir_wali` varchar(25) DEFAULT NULL,
  `tanggal_lahir_wali` date DEFAULT NULL,
  `agama_wali` varchar(15) DEFAULT NULL,
  `pendidikan_wali` varchar(25) DEFAULT NULL,
  `pekerjaan_wali` varchar(25) DEFAULT NULL,
  `penghasilan_wali` varchar(20) DEFAULT NULL,
  `nohp_wali` varchar(15) DEFAULT NULL,
  `email_wali` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `nip` varchar(25) DEFAULT NULL,
  `nik` varchar(25) DEFAULT NULL,
  `jabatan` varchar(25) DEFAULT NULL,
  `pangkat` varchar(25) DEFAULT NULL,
  `golongan` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `photo` tinytext DEFAULT NULL,
  `gender` varchar(25) NOT NULL,
  `date_of_birth` datetime NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `nip`, `nik`, `jabatan`, `pangkat`, `golongan`, `status`, `first_name`, `last_name`, `phone`, `address`, `photo`, `gender`, `date_of_birth`, `is_deleted`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$12$gDVHcuk8QikBc6LKnOsj2.SX3TsyoJ9Q58l18D2DZtbnUimz/XE7O', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1638396229, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Admin', 'istrator', '123456', '', '17f8874e9c7184f02c3930ff4f1fcd40.png', 'male', '2021-04-08 09:02:15', 0),
(2, '127.0.0.1', NULL, '$2y$08$80jHQcYsQU3xN6E/ZVSFbenBdBxmNX7xhkQlpZctCD/S/wxZmoL1e', NULL, 'indrkmna@gmail.com', '1df3d99d257c21ad92f452ef5884f084bee9a279', NULL, NULL, NULL, 1638398678, 1638398923, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'indra', 'aja', '12312312', NULL, NULL, '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `role_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 2),
(19, 19, 2),
(20, 20, 2),
(21, 21, 2),
(22, 22, 2),
(23, 23, 2),
(24, 24, 2),
(25, 25, 2),
(26, 26, 2),
(27, 27, 3),
(28, 28, 2),
(29, 29, 2),
(30, 30, 2),
(31, 31, 2),
(32, 32, 2),
(33, 33, 2),
(34, 34, 2),
(35, 35, 2),
(36, 36, 2),
(37, 37, 2),
(38, 38, 2),
(39, 39, 2),
(40, 40, 2),
(41, 41, 2),
(42, 42, 2),
(43, 43, 2),
(44, 44, 2),
(45, 45, 2),
(46, 46, 2),
(47, 47, 2),
(48, 48, 2),
(49, 49, 2),
(50, 2, 2),
(51, 3, 2),
(52, 4, 2),
(53, 5, 2),
(54, 6, 2),
(55, 7, 2),
(56, 8, 2),
(57, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_costs`
--
ALTER TABLE `category_costs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `costs`
--
ALTER TABLE `costs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `document_names`
--
ALTER TABLE `document_names`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `document_privilages`
--
ALTER TABLE `document_privilages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `menu_function`
--
ALTER TABLE `menu_function`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orders_confirmation`
--
ALTER TABLE `orders_confirmation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `privilleges`
--
ALTER TABLE `privilleges`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `school_years`
--
ALTER TABLE `school_years`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `students_address`
--
ALTER TABLE `students_address`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `students_bio`
--
ALTER TABLE `students_bio`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `students_document`
--
ALTER TABLE `students_document`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `students_parents`
--
ALTER TABLE `students_parents`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_costs`
--
ALTER TABLE `category_costs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `document_names`
--
ALTER TABLE `document_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `document_privilages`
--
ALTER TABLE `document_privilages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `menu_function`
--
ALTER TABLE `menu_function`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders_confirmation`
--
ALTER TABLE `orders_confirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `privilleges`
--
ALTER TABLE `privilleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `school_years`
--
ALTER TABLE `school_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students_address`
--
ALTER TABLE `students_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students_bio`
--
ALTER TABLE `students_bio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students_document`
--
ALTER TABLE `students_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students_parents`
--
ALTER TABLE `students_parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
