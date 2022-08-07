-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 12:30 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Jenis` varchar(20) NOT NULL,
  `Ukuran` varchar(5) NOT NULL,
  `HargaBeli` decimal(10,0) NOT NULL,
  `HargaJual` decimal(10,0) NOT NULL,
  `Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_Barang`, `Nama_Barang`, `Jenis`, `Ukuran`, `HargaBeli`, `HargaJual`, `Stok`) VALUES
('BR001', 'Diadora', 'Baju', 'M', '100000', '250000', 30),
('BR002', 'Diadora', 'Baju', 'S', '100000', '250000', 20),
('BR003', 'Diadora', 'Baju', 'L', '100000', '250000', 25);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `NoFaktur` varchar(20) NOT NULL,
  `Tanggal` varchar(20) NOT NULL,
  `ID_Custumer` varchar(10) NOT NULL,
  `TotalBelanja` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`NoFaktur`, `Tanggal`, `ID_Custumer`, `TotalBelanja`) VALUES
('TR0001', '06-08-2022', 'CS001', '2800000'),
('TR0002', '06-08-2022', '', '1250000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualanrinci`
--

CREATE TABLE `penjualanrinci` (
  `NoFaktur` varchar(20) NOT NULL,
  `ID_Barang` varchar(10) NOT NULL,
  `Nama_Barang` varchar(50) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Harga` decimal(10,0) NOT NULL,
  `Total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualanrinci`
--

INSERT INTO `penjualanrinci` (`NoFaktur`, `ID_Barang`, `Nama_Barang`, `Jumlah`, `Harga`, `Total`) VALUES
('TR0001', '001', 'Sepatu', 20, '100000', '2000000'),
('TR0001', '002', 'Kaus Kaki', 40, '20000', '800000'),
('TR0002', 'BR001', 'Diadora', 5, '250000', '1250000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_Barang`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
