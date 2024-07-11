-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Bulan Mei 2020 pada 05.57
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_masjid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_masjid`
--

CREATE TABLE `kas_masjid` (
  `id_km` int(11) NOT NULL,
  `tgl_km` date NOT NULL,
  `uraian_km` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kas_masjid`
--

INSERT INTO `kas_masjid` (`id_km`, `tgl_km`, `uraian_km`, `masuk`, `keluar`, `jenis`) VALUES
(2, '2020-03-20', 'Kotak Amal Bulan Maret 3', 200000, 0, 'Masuk'),
(3, '2020-03-24', 'Amal hamba Alloh', 100000, 0, 'Masuk'),
(4, '2020-03-21', 'Beli Kran', 0, 20000, 'Keluar'),
(6, '2020-03-03', 'Bisaroh Gus Nasih', 0, 80000, 'Keluar'),
(7, '2020-03-01', 'tes js', 200000, 0, 'Masuk'),
(8, '2020-03-03', 'tes 2 js', 10000, 0, 'Masuk'),
(9, '2020-03-30', 'regek', 70000, 0, 'Masuk'),
(10, '2020-03-30', 'iso regek', 100000, 0, 'Masuk'),
(11, '2020-03-30', 'cara yusuf', 50000, 0, 'Masuk'),
(13, '2020-03-02', 'rg keluar', 0, 25000, 'Keluar'),
(14, '2020-03-01', 'plk', 20000, 0, 'Masuk'),
(15, '2020-03-31', 'tes rupiah', 1500000, 0, 'Masuk'),
(16, '2020-05-19', 'Kotak Amal Bulan mei', 500000, 0, 'Masuk'),
(17, '2020-05-19', 'contoh', 0, 750000, 'Keluar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_sosial`
--

CREATE TABLE `kas_sosial` (
  `id_ks` int(11) NOT NULL,
  `tgl_ks` date NOT NULL,
  `uraian_ks` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kas_sosial`
--

INSERT INTO `kas_sosial` (`id_ks`, `tgl_ks`, `uraian_ks`, `masuk`, `keluar`, `jenis`) VALUES
(3, '2020-03-24', 'bantu banjir', 0, 150000, 'Keluar'),
(5, '2020-03-20', 'Hamba Alloh', 1000000, 0, 'Masuk'),
(6, '2020-03-01', 'tes tanpa internet', 200000, 0, 'Masuk'),
(7, '2020-03-27', 'tes 123', 0, 10000, 'Keluar'),
(8, '2020-03-23', 'regek sos', 120000, 0, 'Masuk'),
(9, '2020-03-02', 'metu rg', 0, 15000, 'Keluar'),
(10, '2020-03-15', 'tes lg', 230000, 0, 'Masuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` char(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` enum('Administrator','Bendahara') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Zainal Arifin', 'admin', '1', 'Administrator'),
(2, 'Romi Andrian', 'bendahara', '1', 'Bendahara'),
(6, 'Jumanto', 'abc', '123', 'Bendahara');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kas_masjid`
--
ALTER TABLE `kas_masjid`
  ADD PRIMARY KEY (`id_km`);

--
-- Indeks untuk tabel `kas_sosial`
--
ALTER TABLE `kas_sosial`
  ADD PRIMARY KEY (`id_ks`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kas_masjid`
--
ALTER TABLE `kas_masjid`
  MODIFY `id_km` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `kas_sosial`
--
ALTER TABLE `kas_sosial`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
