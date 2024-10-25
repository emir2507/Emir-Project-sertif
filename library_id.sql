-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 09:54 AM
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
-- Database: `library.id`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT '0',
  `buku` varchar(255) NOT NULL DEFAULT '0',
  `judul` varchar(255) NOT NULL DEFAULT '0',
  `pengarang` varchar(255) NOT NULL DEFAULT '0',
  `preview` text NOT NULL,
  `total_peminjam` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_antropologi`
--

CREATE TABLE `ktgr_antropologi` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_biografi`
--

CREATE TABLE `ktgr_biografi` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_bisnis`
--

CREATE TABLE `ktgr_bisnis` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_fiksi`
--

CREATE TABLE `ktgr_fiksi` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_filsafat`
--

CREATE TABLE `ktgr_filsafat` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_komputer`
--

CREATE TABLE `ktgr_komputer` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_musik`
--

CREATE TABLE `ktgr_musik` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_religi`
--

CREATE TABLE `ktgr_religi` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_sains`
--

CREATE TABLE `ktgr_sains` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `ktgr_sejarah`
--

CREATE TABLE `ktgr_sejarah` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `buku_id` int(11) DEFAULT 0,
  `tanggal_peminjaman` date DEFAULT NULL,
  `tanggal_selesai_peminjaman` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '0',
  `no_ktp` varchar(255) NOT NULL DEFAULT '0',
  `no_telp` varchar(255) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `username`, `no_ktp`, `no_telp`, `password`) VALUES
(3, 'duilipaa', 'rzkydwii12@gmail.com', 'rizkydwiin', '1234567890', '082219738295', 'kikidwi123'),
(4, 'toni', 'makan@gmail.com', 'jon', '123456', '1234556', 'malang123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ktgr_antropologi`
--
ALTER TABLE `ktgr_antropologi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_biografi`
--
ALTER TABLE `ktgr_biografi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_bisnis`
--
ALTER TABLE `ktgr_bisnis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_fiksi`
--
ALTER TABLE `ktgr_fiksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_filsafat`
--
ALTER TABLE `ktgr_filsafat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_religi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_komputer`
--
ALTER TABLE `ktgr_komputer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_musik`
--
ALTER TABLE `ktgr_musik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_religi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_religi`
--
ALTER TABLE `ktgr_religi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_religi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_sains`
--
ALTER TABLE `ktgr_sains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_religi_buku` (`id_buku`);

--
-- Indexes for table `ktgr_sejarah`
--
ALTER TABLE `ktgr_sejarah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ktgr_fiksi_buku` (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `ktgr_antropologi`
--
ALTER TABLE `ktgr_antropologi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ktgr_biografi`
--
ALTER TABLE `ktgr_biografi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ktgr_bisnis`
--
ALTER TABLE `ktgr_bisnis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ktgr_fiksi`
--
ALTER TABLE `ktgr_fiksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ktgr_filsafat`
--
ALTER TABLE `ktgr_filsafat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ktgr_komputer`
--
ALTER TABLE `ktgr_komputer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ktgr_musik`
--
ALTER TABLE `ktgr_musik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ktgr_religi`
--
ALTER TABLE `ktgr_religi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ktgr_sains`
--
ALTER TABLE `ktgr_sains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ktgr_sejarah`
--
ALTER TABLE `ktgr_sejarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ktgr_antropologi`
--
ALTER TABLE `ktgr_antropologi`
  ADD CONSTRAINT `ktgr_antropologi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_biografi`
--
ALTER TABLE `ktgr_biografi`
  ADD CONSTRAINT `ktgr_biografi_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_bisnis`
--
ALTER TABLE `ktgr_bisnis`
  ADD CONSTRAINT `ktgr_bisnis_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_fiksi`
--
ALTER TABLE `ktgr_fiksi`
  ADD CONSTRAINT `FK_ktgr_fiksi_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_filsafat`
--
ALTER TABLE `ktgr_filsafat`
  ADD CONSTRAINT `ktgr_filsafat_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_komputer`
--
ALTER TABLE `ktgr_komputer`
  ADD CONSTRAINT `ktgr_komputer_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_musik`
--
ALTER TABLE `ktgr_musik`
  ADD CONSTRAINT `ktgr_musik_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_religi`
--
ALTER TABLE `ktgr_religi`
  ADD CONSTRAINT `FK_ktgr_religi_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_sains`
--
ALTER TABLE `ktgr_sains`
  ADD CONSTRAINT `ktgr_sains_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `ktgr_sejarah`
--
ALTER TABLE `ktgr_sejarah`
  ADD CONSTRAINT `ktgr_sejarah_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
