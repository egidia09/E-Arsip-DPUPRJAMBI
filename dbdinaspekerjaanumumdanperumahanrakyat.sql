-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 07:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdinaspekerjaanumumdanperumahanrakyat`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE `dokumen` (
  `kddokumen` char(11) NOT NULL,
  `kdseksi` char(8) NOT NULL,
  `kdjenisdokumen` char(7) NOT NULL,
  `pihakketiga` varchar(50) NOT NULL,
  `keperluan` text NOT NULL,
  `nospm` varchar(50) NOT NULL,
  `nilaikontrak` int(10) NOT NULL,
  `jumlah` int(2) NOT NULL,
  `tingkatperkembangan` varchar(10) NOT NULL,
  `nobox` int(2) NOT NULL,
  `aksesarsip` varchar(15) NOT NULL,
  `map` varchar(10) NOT NULL,
  `tgldokumen` date NOT NULL,
  `tglkadarluarsa` date NOT NULL,
  `file` text NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`kddokumen`, `kdseksi`, `kdjenisdokumen`, `pihakketiga`, `keperluan`, `nospm`, `nilaikontrak`, `jumlah`, `tingkatperkembangan`, `nobox`, `aksesarsip`, `map`, `tgldokumen`, `tglkadarluarsa`, `file`, `status`) VALUES
('DK-PU-00001', 'SK-PU-01', 'D-PU-01', 'CV. Gunung Sago Perkasa', 'Pemby. Uang Muka sebesar 30 % Pek. Pembangunan Daya Rusak Air Sei. Lempur Kab. Kerinci , sesuai dengan SP No. 614.11/05/DPUPR-4.3/VII/2019, Tanggal 11 Juli 2019.', '0253/SPM-LS/DPUPR-SDA/VII/2019', 289672500, 1, 'Copy', 2, 'Tertutup', 'Hijau', '2024-05-02', '2024-05-15', 'dokumen/2.pdf', 'Pinjam'),
('DK-PU-00002', 'SK-PU-02', 'D-PU-02', 'CV. Lapan Lapan', 'Pembayaran Uang Muka sebesar 30 % Pek. Pembangunan Daya Rusak Air Desa Muara Kibul Kec. Tabir Barat Kab. Merangin, sesuai dengan Surat Perjanjian No. 614.11/10/DPUPR-4.3/VII/2019 Tgl. 16-07-2019.', '0263/SPM-LS/DPUPR-SDA/VII/2019', 171950400, 1, 'Copy', 3, 'Tertutup', 'Kuning', '2024-05-02', '2029-05-15', 'dokumen/7987-20080-1-PB.pdf', 'Tersimpan'),
('DK-PU-00003', 'SK-PU-04', 'D-PU-01', 'CV. Mangkarang', 'Pembayaran Uang Muka sebesar 30 % Pek. Pembangunan Sumur Air Dalam di Desa Bunga Antoi Tabir Selatan Kab. Merangin , sesuai dengan Surat Perjanjian No. 611.26/DPUPR-4.3/VII/2019 Tgl. 15-07-2019.', '0266/SPM-LS/DPUPR-SDA/VII/2019', 196052100, 1, 'Copy', 5, 'Terbuka', 'Kuning', '2024-05-14', '2030-05-15', 'dokumen/3.pdf', 'Tersimpan');

-- --------------------------------------------------------

--
-- Table structure for table `jenisdokumen`
--

CREATE TABLE `jenisdokumen` (
  `kdjenisdokumen` char(7) NOT NULL,
  `namajenisdokumen` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jenisdokumen`
--

INSERT INTO `jenisdokumen` (`kdjenisdokumen`, `namajenisdokumen`) VALUES
('D-PU-01', 'Penting'),
('D-PU-02', 'Rahasia'),
('D-PU-03', 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `kdpinjam` char(11) NOT NULL,
  `kddokumen` char(11) NOT NULL,
  `kdstaf` char(8) NOT NULL,
  `keterangan` text NOT NULL,
  `tglpinjam` date NOT NULL,
  `tglkembali` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`kdpinjam`, `kddokumen`, `kdstaf`, `keterangan`, `tglpinjam`, `tglkembali`) VALUES
('PJ-PU000001', 'DK-PU-00001', 'ST-PU-03', 'Buat Laporan Bulanan', '2024-05-13', '2024-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `seksi`
--

CREATE TABLE `seksi` (
  `kdseksi` char(8) NOT NULL,
  `bidang` varchar(15) NOT NULL,
  `namaseksi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `seksi`
--

INSERT INTO `seksi` (`kdseksi`, `bidang`, `namaseksi`) VALUES
('SK-PU-01', 'Sumber Daya Air', 'Operasi dan Pemeliharaan'),
('SK-PU-02', 'Sumber Daya Air', 'Irigasi dan Rawa'),
('SK-PU-03', 'Sumber Daya Air', 'Sungai, Danau, Pantai dan Air Baku'),
('SK-PU-04', 'Bina Marga', 'Penyelenggaraan Jalan Wilayah I'),
('SK-PU-05', 'Bina Marga', 'Penyelenggaraan Jalan Wilayah II'),
('SK-PU-06', 'Bina Marga', 'Penyelenggaraan Jalan Wilayah III');

-- --------------------------------------------------------

--
-- Table structure for table `staf`
--

CREATE TABLE `staf` (
  `kdstaf` char(8) NOT NULL,
  `namastaf` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `bagian` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staf`
--

INSERT INTO `staf` (`kdstaf`, `namastaf`, `password`, `alamat`, `telp`, `email`, `jabatan`, `bagian`) VALUES
('ST-PU-01', 'Egidia', '1234', 'Jambi', '081278672818', 'egidia@gmail.com', 'Tata Usaha', 'Admin'),
('ST-PU-02', 'Muhammad Fauzi', '2222', 'Jambi', '081287978789', 'muhammad.fauzi@gmail.com', 'Kepala Dinas', 'Kepala Dinas'),
('ST-PU-03', 'Rizki Novian', 'Rizki Novian', 'The Hok', '081289228399', 'rizki.novian@gmail.com', 'Staf Umum dan Kepegawaian', 'Staf'),
('ST-PU-04', 'Novi Yuliana', 'Novi Yuliana', 'Jelutung', '085290128971', 'novi.yuliana@gmail.com', 'Staf Keuangan', 'Staf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`kddokumen`);

--
-- Indexes for table `jenisdokumen`
--
ALTER TABLE `jenisdokumen`
  ADD PRIMARY KEY (`kdjenisdokumen`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`kdpinjam`);

--
-- Indexes for table `seksi`
--
ALTER TABLE `seksi`
  ADD PRIMARY KEY (`kdseksi`);

--
-- Indexes for table `staf`
--
ALTER TABLE `staf`
  ADD PRIMARY KEY (`kdstaf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
