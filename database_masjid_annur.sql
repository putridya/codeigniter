-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2020 at 08:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_masjid_annur`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `ID_ACARA` int(11) NOT NULL,
  `ID_ADMIN` int(11) DEFAULT NULL,
  `ID_PENCERAMAH` int(11) DEFAULT NULL,
  `ID_BILAL` int(11) DEFAULT NULL,
  `JENIS_ACARA` varchar(100) DEFAULT NULL,
  `NAMA_ACARA` varchar(100) DEFAULT NULL,
  `TEMA_ACARA` varchar(255) DEFAULT NULL,
  `TGL_ACARA` date DEFAULT NULL,
  `PAMFLET_ACARA` varchar(1000) DEFAULT NULL,
  `VIDEO_ACARA` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`ID_ACARA`, `ID_ADMIN`, `ID_PENCERAMAH`, `ID_BILAL`, `JENIS_ACARA`, `NAMA_ACARA`, `TEMA_ACARA`, `TGL_ACARA`, `PAMFLET_ACARA`, `VIDEO_ACARA`) VALUES
(2, NULL, NULL, NULL, 'Hari Besar Islam', 'Maulid Nabi', 'membangun insan', '2020-01-20', 'mamah-sum.jpg', 'mamah-sum.jpg'),
(3, NULL, NULL, NULL, 'Kajian', 'Maulid Nabi Muhammad SAW', '', '2020-04-21', NULL, NULL),
(4, NULL, NULL, NULL, 'Kajian', 'Coba', '', '2020-04-13', NULL, NULL),
(5, NULL, 5, NULL, 'Kajian', 'Putri', '', '2020-04-13', NULL, NULL),
(8, NULL, 6, 3, 'jumatan', 'Minggu 1', 'aaaaaaaaaa', '2020-04-13', NULL, NULL),
(9, NULL, 6, NULL, 'Hari Besar Islam', 'Minggu 1', 'aaaaaaaaaa', '2020-04-16', NULL, NULL),
(10, NULL, 6, NULL, 'Hari Besar Islam', 'idul fitri', 'fitri', '2020-04-19', NULL, NULL),
(12, NULL, 5, NULL, 'Jumatan', 'Minggu 2', 'aaaaaaaaaa', '2020-04-20', NULL, NULL),
(14, NULL, 6, NULL, 'Kajian', 'kajian 3', 'aaaaaaaaaa', '2020-04-29', 'icon_pc.jpg', 'icon_pc.jpg'),
(15, NULL, 5, NULL, 'Jumatan', 'Minggu 5', 'aku', '2020-04-29', NULL, NULL),
(16, NULL, 6, 4, 'Jumatan', 'Minggu5', 'aaaaaaaaaa', '2020-04-30', NULL, NULL),
(17, NULL, 11, NULL, 'Kajian', 'kajian 1', 'fitri', '2020-04-30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` int(11) NOT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `NAMA_ADMIN` varchar(100) DEFAULT NULL,
  `NO_TELP_ADMIN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `USERNAME`, `PASSWORD`, `NAMA_ADMIN`, `NO_TELP_ADMIN`) VALUES
(11, 'ardi', '$2y$10$kCRyaHBm7WRUkVoWApBOzecpFuOMQkY1DBBFyQ4oBQH', 'Hilnanda Ardiansyah', '08994882244'),
(12, 'ardi1', '1234', 'irvand', '08994882221'),
(13, 'admin', '$2y$10$FuLuaSDGU/XT0U/X9R56Q.wkSNIVf2U60ZoPYG4e.gA', 'dyah putri', '08994882241'),
(14, 'dyah', '$2y$10$par92umPwzVHpygJft5Jle5xhRVueLRTvRv08kc.ei6', 'dyah putri', '08994882244');

-- --------------------------------------------------------

--
-- Table structure for table `bilal`
--

CREATE TABLE `bilal` (
  `ID_BILAL` int(11) NOT NULL,
  `NAMA_BILAL` varchar(100) DEFAULT NULL,
  `NO_TELP_BILAL` varchar(100) DEFAULT NULL,
  `ALAMAT_BILAL` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bilal`
--

INSERT INTO `bilal` (`ID_BILAL`, `NAMA_BILAL`, `NO_TELP_BILAL`, `ALAMAT_BILAL`) VALUES
(2, 'Irvand', '08781707076', 'Soehat Malang'),
(3, 'Hilnanda', '087817060676', 'Kalpataru V'),
(4, 'Khrishna', '087817060671', 'Kalpataru X');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `ID_FOTO` int(11) NOT NULL,
  `ID_ACARA` int(11) DEFAULT NULL,
  `FOTO` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`ID_FOTO`, `ID_ACARA`, `FOTO`) VALUES
(4, 8, 'an-nur.jpg'),
(5, 10, 'bri.png'),
(6, 14, 'boba.jpg'),
(7, 2, 'mamah-sum.jpg'),
(8, 14, 'icon_pc.jpg');
-- --------------------------------------------------------
-----------------------------------------------------------

--
-- Table structure for table `penceramah`
--

CREATE TABLE `penceramah` (
  `ID_PENCERAMAH` int(11) NOT NULL,
  `NAMA_PENCERAMAH` varchar(50) DEFAULT NULL,
  `NO_TELP` varchar(50) DEFAULT NULL,
  `ALAMAT_PENCERAMAH` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penceramah`
--

INSERT INTO `penceramah` (`ID_PENCERAMAH`, `NAMA_PENCERAMAH`, `NO_TELP`, `ALAMAT_PENCERAMAH`) VALUES
(5, 'Ustd. Ahmad Baha\'udin', '085101288099', 'Perum Pond Mutiara Bonagung Blok E 3 No. 08.'),
(6, 'H. Zainal Arifin Mafa', '082132851742', 'Jl. Jombang Gg. I No. 10-D Malang\r\n'),
(11, 'Drs. H. Fadloli, M.Pd.I.', '081945720283', 'Griya Shanta C-205 Malang');

-- --------------------------------------------------------

--
-- Table structure for table `template_pesan`
--

CREATE TABLE `template_pesan` (
  `ID_TEMPLATE` int(11) NOT NULL,
  `ID_ACARA` int(11) NOT NULL,
  `ISI_PESAN` varchar(500) DEFAULT NULL,
  `STATUS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_pesan`
--

INSERT INTO `template_pesan` (`ID_TEMPLATE`, `ID_ACARA`, `ISI_PESAN`, `STATUS`) VALUES
(1, 0, 'tolong datang', ''),
(2, 0, 'ass', ''),
(3, 0, 'assalamualaikum', ''),
(4, 0, 'ajfnjanf\r\n                        ', ''),
(5, 0, '\r\n                        asdasd', ''),
(6, 15, '\r\n                        ardikeren', ''),
(7, 0, '\r\n                        asdasd', ''),
(8, 9, 'wkowkowkwokw\r\n                        ', ''),
(9, 14, 'assalamualaikum                 ', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`ID_ACARA`),
  ADD KEY `FK_ACARA_MEMPUNYAI_BILAL` (`ID_BILAL`),
  ADD KEY `FK_ACARA_MENGINGAT_PENCERAM` (`ID_PENCERAMAH`),
  ADD KEY `FK_ACARA_MENGINPUT_ADMIN` (`ID_ADMIN`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`);

--
-- Indexes for table `bilal`
--
ALTER TABLE `bilal`
  ADD PRIMARY KEY (`ID_BILAL`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`ID_FOTO`),
  ADD KEY `FK_FOTO_MEMILIKI_ACARA` (`ID_ACARA`);

--
-- Indexes for table `penceramah`
--
ALTER TABLE `penceramah`
  ADD PRIMARY KEY (`ID_PENCERAMAH`);

--
-- Indexes for table `template_pesan`
--
ALTER TABLE `template_pesan`
  ADD PRIMARY KEY (`ID_TEMPLATE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `ID_ACARA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_ADMIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bilal`
--
ALTER TABLE `bilal`
  MODIFY `ID_BILAL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `ID_FOTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `penceramah`
--
ALTER TABLE `penceramah`
  MODIFY `ID_PENCERAMAH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `template_pesan`
--
ALTER TABLE `template_pesan`
  MODIFY `ID_TEMPLATE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acara`
--
ALTER TABLE `acara`
  ADD CONSTRAINT `FK_ACARA_MEMPUNYAI_BILAL` FOREIGN KEY (`ID_BILAL`) REFERENCES `bilal` (`ID_BILAL`),
  ADD CONSTRAINT `FK_ACARA_MENGINGAT_PENCERAM` FOREIGN KEY (`ID_PENCERAMAH`) REFERENCES `penceramah` (`ID_PENCERAMAH`),
  ADD CONSTRAINT `FK_ACARA_MENGINPUT_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `FK_FOTO_MEMILIKI_ACARA` FOREIGN KEY (`ID_ACARA`) REFERENCES `acara` (`ID_ACARA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
