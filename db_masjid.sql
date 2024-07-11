-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table masjid.kas_masjid
CREATE TABLE IF NOT EXISTS `kas_masjid` (
  `id_km` int NOT NULL AUTO_INCREMENT,
  `tgl_km` date NOT NULL,
  `uraian_km` varchar(200) NOT NULL,
  `masuk` int NOT NULL,
  `keluar` int NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL,
  PRIMARY KEY (`id_km`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table masjid.kas_masjid: ~14 rows (approximately)
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

-- Dumping structure for table masjid.kas_sosial
CREATE TABLE IF NOT EXISTS `kas_sosial` (
  `id_ks` int NOT NULL AUTO_INCREMENT,
  `tgl_ks` date NOT NULL,
  `uraian_ks` varchar(200) NOT NULL,
  `masuk` int NOT NULL,
  `keluar` int NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL,
  PRIMARY KEY (`id_ks`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table masjid.kas_sosial: ~7 rows (approximately)
INSERT INTO `kas_sosial` (`id_ks`, `tgl_ks`, `uraian_ks`, `masuk`, `keluar`, `jenis`) VALUES
	(3, '2020-03-24', 'bantu banjir', 0, 150000, 'Keluar'),
	(5, '2020-03-20', 'Hamba Alloh', 1000000, 0, 'Masuk'),
	(6, '2020-03-01', 'tes tanpa internet', 200000, 0, 'Masuk'),
	(7, '2020-03-27', 'tes 123', 0, 10000, 'Keluar'),
	(8, '2020-03-23', 'regek sos', 120000, 0, 'Masuk'),
	(9, '2020-03-02', 'metu rg', 0, 15000, 'Keluar'),
	(10, '2020-03-15', 'tes lg', 230000, 0, 'Masuk');

-- Dumping structure for table masjid.tb_pengguna
CREATE TABLE IF NOT EXISTS `tb_pengguna` (
  `id_pengguna` int NOT NULL AUTO_INCREMENT,
  `nama_pengguna` char(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` enum('Administrator','Bendahara','Jemaah') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table masjid.tb_pengguna: ~5 rows (approximately)
INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
	(1, 'Zainal Arifin', 'admin', '1', 'Administrator'),
	(2, 'Romi Andrian', 'bendahara', '1', 'Bendahara'),
	(6, 'Jumanto', 'abc', '123', 'Bendahara'),
	(7, 'jemaah', 'jemaah', 'jemaah', 'Jemaah'),
	(9, 'test', 'test', '1', 'Jemaah');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
