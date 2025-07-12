-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2025 at 07:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tokobukus`
--

CREATE TABLE `tokobukus` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_tokobuku` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokobukus`
--

INSERT INTO `tokobukus` (`id`, `nama_tokobuku`, `alamat`, `no_telepon`, `jenis`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Toko Maju Jaya', 'Jl. Diponegoro No.23, Belakang Tangsi, Kec. Padang Bar., Kota Padang, Sumatera Barat', '081268581661', 'Grosir', -0.9151083765401068, 100.3503786758905, '2025-07-12 03:57:54', '2025-07-12 03:57:54'),
(4, 'Tokyo Buku Al-Fahmu', 'Jalan Prof, Moh. Yunus, Lubuk Lintah, Kec. Kuranji, Kota Padang, Sumatera Barat 25175', '082268325985', 'Grosir', -0.9206662803596676, 100.38841277807208, '2025-07-12 04:55:02', '2025-07-12 04:55:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tokobukus`
--
ALTER TABLE `tokobukus`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tokobukus`
--
ALTER TABLE `tokobukus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
