-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 06:50 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas10`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `berat` decimal(11,5) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_user`, `nama`, `foto`, `harga`, `berat`, `stok`, `deskripsi`, `created_at`, `updated_at`) VALUES
(45, 1, 'code', 'app/images/produk/45-1640541670-G448T.png', 1, '1.00000', NULL, '<p>1</p>', '2021-12-26 11:01:09', '2021-12-26 11:02:26'),
(46, 1, '2', 'app/images/produk/46-1640541857-l6ZVH.png', 2, '2.00000', 2, '<p>2</p>', '2021-12-26 11:04:17', '2021-12-26 11:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` int(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `jenis_kelamin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kaloa meme', 'codewrite@gmail.com', 'jall', 1, '$2y$10$nQ49ZcCNArFJ.YZDvAqPbeufxIBIjMKK68lccicLJNVYfdKv4C.Oe', NULL, '2021-10-21 09:43:44', '2021-12-27 05:48:51'),
(10, 'indahhhhh', 'code@gmail.com', 'jalal', 2, '$2y$10$CwDJF35gazIvIyVVEd77W.hX2tg.MzZC0tetjxnnBTdBP65YLUlJq', NULL, '2021-11-21 09:26:54', '2021-12-27 05:46:43'),
(11, 'aria agus', 'steve@gmail.com', 'aria', 1, '$2y$10$7mCcNY7bhH2saTUyJdBDcebEB3govNpybOBWuaJ1sY3w25pQTiGjG', NULL, '2021-11-21 09:27:16', '2021-11-21 09:27:16'),
(12, 'novi indah', 'noviindah@gmail.com', 'novi', 2, '$2y$10$hhgbwSTbnvS8Pc/1T5UJuehwt5jGkPgs9pS4zthRBPm9nfYsGRj6e', NULL, '2021-11-21 09:34:19', '2021-11-21 09:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `no_handphone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `id_user`, `no_handphone`, `created_at`, `updated_at`) VALUES
(1, 4, '089689203086', '2021-10-29 08:41:22', '2021-10-29 08:41:22'),
(2, 5, '089689203086', '2021-11-21 08:51:05', '2021-11-21 08:51:05'),
(3, 6, '089689203086', '2021-11-21 08:52:40', '2021-11-21 08:52:40'),
(4, 7, '089689203086', '2021-11-21 08:58:21', '2021-11-21 08:58:21'),
(5, 8, '089689203086', '2021-11-21 08:58:47', '2021-11-21 08:58:47'),
(6, 9, '089689203086', '2021-11-21 09:05:00', '2021-11-21 09:05:00'),
(7, 10, '089689203086', '2021-11-21 09:26:54', '2021-11-21 09:26:54'),
(8, 11, '089689203086', '2021-11-21 09:27:16', '2021-11-21 09:27:16'),
(9, 12, '089689203086', '2021-11-21 09:34:19', '2021-11-21 09:34:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
