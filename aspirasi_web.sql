-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2026 at 09:56 PM
-- Server version: 8.4.3
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aspirasi_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Fasilitas'),
(2, 'Kebersihan'),
(3, 'Keamanan'),
(4, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `pelaporan`
--

CREATE TABLE `pelaporan` (
  `id_pelaporan` int NOT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `ket` text,
  `tanggal` date DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status_baca` int DEFAULT '0',
  `status` varchar(20) DEFAULT 'menunggu',
  `feedback` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelaporan`
--

INSERT INTO `pelaporan` (`id_pelaporan`, `nis`, `kategori`, `lokasi`, `ket`, `tanggal`, `foto`, `status_baca`, `status`, `feedback`) VALUES
(3, '11111', 'jb', 'al taufiq', 'gfbvc', '2026-04-09', 'login.webp', 0, 'menunggu', ''),
(4, '11111', 'jb', 'al taufiq', 'gfbvc', '2026-04-09', 'login.webp', 0, 'menunggu', ''),
(5, '11111', 'jb', 'al taufiq', 'gfbvc', '2026-04-09', 'login.webp', 0, 'menunggu', ''),
(6, '11111', 'jb', 'al taufiq', 'gfbvc', '2026-04-09', 'login.webp', 0, 'menunggu', '');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `password`) VALUES
('00000', 'Repan', NULL),
('11111', 'Indra', '$2y$10$l9ipFRthWu38nc3nVwhMlOVzoGph26BdqCMzi9ESKrd50iHjOkgPe'),
('12345', 'Farhan', NULL),
('22222', 'Dzikri', NULL),
('33333', 'Agus', NULL),
('44444', 'Isan', NULL),
('55555', 'Akbar', NULL),
('66666', 'Yopi', NULL),
('77777', 'Hergi', NULL),
('88888', 'Yusuf', NULL),
('99999', 'Febri', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pelaporan`
--
ALTER TABLE `pelaporan`
  ADD PRIMARY KEY (`id_pelaporan`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelaporan`
--
ALTER TABLE `pelaporan`
  MODIFY `id_pelaporan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
