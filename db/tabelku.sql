-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 10:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabelku`
--

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `warna_button` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `logo`, `deskripsi`, `warna_button`, `created_at`, `updated_at`) VALUES
(1, 'app/tabelku.png', 'Website Tabelku adalah Website pencatatan pembelian yang ada di UD Bawang Merah Indofood.\r\nUntuk mencatat data pembelian klik fitur Pencatatan, jika ingin melihat data yang sudah tercatat, maka klik fitur Data Pembelian yang berada di sebelah kiri, dan jika ingin melihat laporan maka klik fitur Laporan di sebelah kiri.', 'btn-primary', '2023-07-28 17:11:32', '2023-07-28 17:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE `avatar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avatar`
--

INSERT INTO `avatar` (`id`, `name`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Man', 'avatar/man.png', '2023-07-18 16:20:59', '2023-07-18 16:20:59'),
(2, 'Black Man', 'avatar/black-man.png', '2023-07-18 16:20:59', '2023-07-18 16:20:59'),
(3, 'Hat Man', 'avatar/hat-man.png', '2023-07-18 16:20:59', '2023-07-18 16:20:59'),
(4, 'Jilbab Woman', 'avatar/jilbab-woman.png', '2023-07-18 16:20:59', '2023-07-18 16:20:59'),
(5, 'Europe Man', 'avatar/europe-man.png', '2023-07-18 16:20:59', '2023-07-18 16:20:59'),
(6, 'Woman', 'avatar/woman.png', '2023-07-18 16:20:59', '2023-07-18 16:20:59'),
(7, 'Young Black Man', 'avatar/young-black-man.png', '2023-07-18 16:20:59', '2023-07-18 16:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `font_family`
--

CREATE TABLE `font_family` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `font_family` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `font_family`
--

INSERT INTO `font_family` (`id`, `font_family`, `created_at`, `updated_at`) VALUES
(1, '\"Roboto\"', '2023-07-28 19:52:15', '2023-07-28 19:52:15'),
(2, '\"Helvetica Neue\"', '2023-07-28 19:52:15', '2023-07-28 19:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_penjual` varchar(255) DEFAULT NULL,
  `harga_beli` float(16,2) DEFAULT NULL,
  `bobot` varchar(255) DEFAULT NULL,
  `kualitas` varchar(255) DEFAULT NULL,
  `tanggal_pembelian` date DEFAULT NULL,
  `total_bayar` float(16,2) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `nama_penjual`, `harga_beli`, `bobot`, `kualitas`, `tanggal_pembelian`, `total_bayar`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Dadang', 6000.00, '10 kg', 'Besar', '2023-03-10', 60000.00, 'Administrator', '2023-07-24 15:13:12', 'Administrator', '2023-07-24 15:13:12'),
(2, 'Dadang', 9000.00, '10 kg', 'Besar', '2023-07-20', 90000.00, 'Administrator', '2023-07-24 19:53:49', 'Administrator', '2023-07-24 19:53:49'),
(3, 'Dadang', 11000.00, '20 kg', 'Besar', '2023-07-22', 220000.00, 'Administrator', '2023-07-24 20:06:28', NULL, '2023-07-24 20:06:28'),
(4, 'Dadang', 1000.00, '10 kg', 'Besar', '2023-01-27', 10000.00, 'Administrator', '2023-07-24 20:07:02', NULL, '2023-07-24 20:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `tampilan`
--

CREATE TABLE `tampilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warna_skema` varchar(255) DEFAULT NULL,
  `warna_soft` varchar(255) DEFAULT NULL,
  `warna_latar` varchar(255) DEFAULT NULL,
  `warna_sidebar` varchar(255) DEFAULT NULL,
  `warna_topbar` varchar(255) DEFAULT NULL,
  `jenis_font` varchar(255) DEFAULT NULL,
  `ukuran_font` varchar(255) DEFAULT NULL,
  `warna_font` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tampilan`
--

INSERT INTO `tampilan` (`id`, `warna_skema`, `warna_soft`, `warna_latar`, `warna_sidebar`, `warna_topbar`, `jenis_font`, `ukuran_font`, `warna_font`, `created_at`, `updated_at`) VALUES
(1, 'primary', 'soft-primary', 'bg-white', 'bg-primary', 'bg-soft-primary', '\"Roboto\"', 'fs-6', 'text-primary', '2023-07-28 17:25:39', '2023-07-29 00:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `gender` varchar(128) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone_number` varchar(128) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `gender`, `birthday`, `phone_number`, `address`, `image`, `avatar_id`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(0, 'undefined', 'Undefined', 'undefined@gmail.com', NULL, NULL, NULL, NULL, 'profile/default.png', NULL, '$2y$10$54Ajl0R.ArBF45hyXCsJZOnTdLzoegtv9nJbBRs3ICk1QBv1kS5yW', 0, 0, 1614472317),
(1, 'administrator', 'Administrator', 'administrator@gmail.com', 'Perempuan', '1999-02-18', '081214222446', 'Jl. Bandung ', 'profile/default.png', NULL, '$2y$10$54Ajl0R.ArBF45hyXCsJZOnTdLzoegtv9nJbBRs3ICk1QBv1kS5yW', 1, 1, 1614472317),
(2, 'pegawai', 'Pegawai', 'pegawai@gmail.com', 'Perempuan', '2002-06-12', '0128938123', 'Bandung', 'avatar/woman.png', NULL, '$2y$10$DxPCcEsqmMMp6IRz5dKD6us/DT6dNye0rZN/j884Xgcbi/3KY2Pqm', 2, 1, 1614472317),
(3, 'pemilik', 'Pemilik', 'pemilik@gmail.com', 'Perempuan', '2002-06-12', '0821148321', 'Bandung', 'profile/default.png', NULL, '$2y$10$54Ajl0R.ArBF45hyXCsJZOnTdLzoegtv9nJbBRs3ICk1QBv1kS5yW', 3, 1, 1614472317);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(0, 0, 0),
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 2),
(6, 3, 2),
(7, 3, 5),
(8, 1, 5),
(9, 1, 6),
(10, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu` varchar(128) DEFAULT NULL,
  `active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`, `active`) VALUES
(0, 'Undefined', 0),
(1, 'Admin', 1),
(2, 'User', 1),
(3, 'Menu', 0),
(4, 'DataMaster', 0),
(5, 'Tabelku', 1),
(6, 'App', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(0, 'undefined'),
(1, 'administrator'),
(2, 'pegawai'),
(3, 'pemilik');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(128) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(0, 0, 'Undefined', NULL, NULL, 0),
(1, 1, 'Dashboard', 'admin/', 'box', 0),
(2, 5, 'Dashboard', 'user/', 'box', 1),
(3, 2, 'Edit Profile', 'user/edit', 'user', 1),
(4, 3, 'Menu Management', 'menu/', 'list', 1),
(5, 3, 'Submenu Management', 'menu/subMenu', 'list', 1),
(6, 1, 'Role Management', 'admin/role', 'users', 1),
(7, 2, 'Change Password', 'user/changePassword', 'key', 1),
(8, 1, 'Data User', 'admin/dataUser/', 'users', 1),
(9, 4, 'Master Data', 'DataMaster/', 'list', 0),
(10, 5, 'Pencatatan', 'Tabelku/index', 'file', 1),
(11, 5, 'Data Pembelian', 'Tabelku/pembelian', 'file', 1),
(12, 5, 'Laporan', 'Tabelku/laporan', 'file', 1),
(13, 6, 'Avatar', 'App/avatar', 'user', 1),
(14, 6, 'Kelola Tema', 'App/tampilan', 'aperture', 1),
(15, 6, 'Kelola Web', 'App/app', 'chrome', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warna`
--

CREATE TABLE `warna` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warna` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warna`
--

INSERT INTO `warna` (`id`, `warna`, `kode`, `created_at`, `updated_at`) VALUES
(1, 'primary', '#3475ba', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(2, 'success', '#05a34a', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(3, 'info', '#66d1d1', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(4, 'warning', '#fbbc06', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(5, 'danger', '#ff3366', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(6, 'secondary', '#7987a1', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(7, 'light', '#e9ecef', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(8, 'dark', '#060c17', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(9, 'blue', '#0d6efd', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(10, 'indigo', '#6610f2', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(11, 'purple', '#6f42c1', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(12, 'pink', '#d63384', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(13, 'red', '#dc3545', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(14, 'orange', '#fd7e14', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(15, 'yellow', '#ffc107', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(16, 'green', '#198754', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(17, 'teal', '#20c997', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(18, 'cyan', '#0dcaf0', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(19, 'soft-primary', '#61A6F0', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(20, 'soft-success', '#6ecb8e', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(21, 'soft-info', '#a0e4e4', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(22, 'soft-warning', '#fbd994', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(23, 'soft-danger', '#ff8bb4', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(24, 'soft-secondary', '#7987a1', '2023-07-28 18:26:52', '2023-07-28 18:26:52'),
(25, 'soft-light', '#f3f6f8', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(26, 'soft-dark', '#3f4e66', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(27, 'soft-blue', '#7fa7f9', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(28, 'soft-indigo', '#a68df7', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(29, 'soft-purple', '#a687c6', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(30, 'soft-pink', '#e978ad', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(31, 'soft-red', '#e09ca4', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(32, 'soft-orange', '#fda16e', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(33, 'soft-yellow', '#ffe0a4', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(34, 'soft-green', '#9edb9f', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(35, 'soft-teal', '#80d4bd', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(36, 'soft-cyan', '#7ddef7', '2023-07-28 18:29:25', '2023-07-28 18:29:25'),
(37, 'white', '#fff', '2023-07-28 18:45:52', '2023-07-28 18:45:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `font_family`
--
ALTER TABLE `font_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tampilan`
--
ALTER TABLE `tampilan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `avatar_id` (`avatar_id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warna`
--
ALTER TABLE `warna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `font_family`
--
ALTER TABLE `font_family`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tampilan`
--
ALTER TABLE `tampilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warna`
--
ALTER TABLE `warna`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`avatar_id`) REFERENCES `avatar` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_access_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
