-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2024 at 11:38 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_aulia`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_peserta`
--

CREATE TABLE `tb_peserta` (
  `id` int NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `sekolah_asal` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `photo_profil` varchar(50) NOT NULL,
  `ijazah` varchar(50) NOT NULL,
  `status_peserta_id` int DEFAULT NULL,
  `prodi_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_peserta`
--

INSERT INTO `tb_peserta` (`id`, `nama`, `email`, `password`, `alamat`, `sekolah_asal`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `photo_profil`, `ijazah`, `status_peserta_id`, `prodi_id`) VALUES
(1, 'Aulia Nur Ratri', 'aulianurratri06@gmail', '112233', 'Kp sawah lega', 'SMAN 1 Cicalengka', 'Bandung', '2004-04-06', 'Perempuan', 'img/IMG_7530.JPG', 'ijazah.jpg', 1, 0),
(2, 'aul', 'titi@gmail.com', '$2y$10$TE4pk1O7iDYajs5HaBJ3sOaXHEGAkVT3b8a/y1leryYQTb7M3Dlhq', 'gfhjfg', 'dsjkgfnksdj', 'bandung', '2024-11-05', 'Laki-laki', 'assets/img/p6.png', 'assets/img/pendaftaran mahasiswa.png', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `id` int NOT NULL,
  `nama_prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`id`, `nama_prodi`) VALUES
(4, 'Teknik Informatika'),
(5, 'sistem informasi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id` int NOT NULL,
  `jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id`, `jabatan`) VALUES
(1, 'kaprodi'),
(2, 'petugas PMB'),
(3, 'pimpinan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status_akun`
--

CREATE TABLE `tb_status_akun` (
  `id` int NOT NULL,
  `status_akun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_status_peserta`
--

CREATE TABLE `tb_status_peserta` (
  `id` int NOT NULL,
  `status_peserta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_status_peserta`
--

INSERT INTO `tb_status_peserta` (`id`, `status_peserta`) VALUES
(1, 'Registrasi'),
(2, 'Sudah melengkapi biodata'),
(3, 'Sudah upload kelengkapan ijazah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `nama`, `password`, `role`, `status`) VALUES
(1, 'aulia', 'Aulia Nur Ratri', '3acd0be86de7dcccdbf91b20f94a68cea535922d', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status` (`status_peserta_id`),
  ADD UNIQUE KEY `id_status_peserta` (`status_peserta_id`),
  ADD UNIQUE KEY `status_2` (`status_peserta_id`),
  ADD UNIQUE KEY `status_peserta_id` (`status_peserta_id`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_status_akun`
--
ALTER TABLE `tb_status_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_status_peserta`
--
ALTER TABLE `tb_status_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`),
  ADD UNIQUE KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_status_akun`
--
ALTER TABLE `tb_status_akun`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_status_peserta`
--
ALTER TABLE `tb_status_peserta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
