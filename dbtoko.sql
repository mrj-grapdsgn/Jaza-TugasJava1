-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Apr 2020 pada 07.49
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dbbarang`
--

CREATE TABLE `dbbarang` (
  `kdbarang` varchar(10) NOT NULL,
  `nmbarang` varchar(100) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `satuan` varchar(10) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dbbarang`
--

INSERT INTO `dbbarang` (`kdbarang`, `nmbarang`, `kategori`, `satuan`, `harga`, `jumlah`) VALUES
('KD001', 'SHOCK', 'MOTOR', 'pcs', 300000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dbpenjualan`
--

CREATE TABLE `dbpenjualan` (
  `kdbarang` int(4) NOT NULL,
  `nmbarang` varchar(20) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `harga` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dbpenjualan`
--

INSERT INTO `dbpenjualan` (`kdbarang`, `nmbarang`, `jumlah`, `harga`) VALUES
(1, 'TISU', 4, 2000),
(24, 'KERTAS', 4, 800),
(5, 'LAKBAN', 4, 12300),
(7, 'TALI', 7, 7000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dbbarang`
--
ALTER TABLE `dbbarang`
  ADD PRIMARY KEY (`kdbarang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
