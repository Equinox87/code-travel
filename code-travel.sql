-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2020 at 07:08 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code-travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `level` varchar(3) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `nama`, `username`, `password`, `level`, `photo`) VALUES
(2, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '3795a34d6d06820e71f75d5603eabfc9.png');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `idalbum` int(11) NOT NULL,
  `jdl_album` varchar(200) DEFAULT NULL,
  `cover` varchar(40) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`idalbum`, `jdl_album`, `cover`, `jml`) VALUES
(10, 'Pura Ulun Danu', 'd35c9b6447b2d24c3bec1358610bc26f.jpg', 5),
(11, 'Garuda Wisnu Kencana', '940d0d40a3e7ac602ca9fd9d7fb82d1a.jpg', 1),
(12, 'Tirta Empul', '995aa70ccad2008cd9f17bbd9a2e40c0.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text,
  `tglpost` datetime DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  `tgl_last_update` datetime DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `views` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `jdl_galeri` varchar(200) DEFAULT NULL,
  `gbr_galeri` varchar(40) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `jdl_galeri`, `gbr_galeri`, `albumid`) VALUES
(5, 'Pura Ulun Danu', 'a9cff9c17f9d0731fe7db47bddf8bced.jpg', 10),
(6, 'Pura Ulun Danu 1', '6b7dcccb6feb60267ff8cd2ce6c9b08c.jpg', 10),
(7, 'Pura Ulun Danu Sunset', 'ea8a703f9f4adcfe42fecf54bd515af5.jpg', 10),
(8, 'Pura Ulun Danu Full Color', '56a22ec98f4594bb2c989e55980bd068.jpg', 10),
(9, 'Garuda Wisnu Kencana', '6ad370deaebd5aafd7f4a082da0a5e12.jpg', 11),
(10, 'Garuda Wisnu Kencana Sunset', 'b49a31e367fd91946c59106e8cf19d99.jpg', 11),
(11, 'Tirta Empul 1', '062162594451975c4299285c3cfbb9b8.jpg', 12),
(12, 'Tirta Empul 2', 'ecbe501b750f1595fc328dbb10eaac8d.jpg', 12),
(13, 'Tirta Empul 3', '789e8641ac60fe5d95f873e189844a0a.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_paket`
--

CREATE TABLE `kategori_paket` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_paket`
--

INSERT INTO `kategori_paket` (`id_kategori`, `kategori`) VALUES
(1, 'Reguler'),
(2, 'Paket Khusus');

-- --------------------------------------------------------

--
-- Table structure for table `metode_bayar`
--

CREATE TABLE `metode_bayar` (
  `id_metode` int(11) NOT NULL,
  `metode` varchar(80) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `norek` varchar(50) DEFAULT NULL,
  `atasnama` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metode_bayar`
--

INSERT INTO `metode_bayar` (`id_metode`, `metode`, `bank`, `norek`, `atasnama`) VALUES
(2, 'Transfer Bank', 'Mandiri', '5485-01-007458-53-6', 'Code Travel'),
(3, 'Transfer Bank', 'BNI', '5485-01-007458-53-6', 'Code Travel'),
(4, 'Transfer Bank', 'BCA', '5485-01-007458-53-6', 'Code Travel');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` varchar(15) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `jenkel` varchar(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `berangkat` date DEFAULT NULL,
  `kembali` date DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `metode_id` int(11) DEFAULT NULL,
  `paket_id_order` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status_bayar` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_order`, `nama`, `jenkel`, `alamat`, `notelp`, `email`, `berangkat`, `kembali`, `adult`, `kids`, `metode_id`, `paket_id_order`, `keterangan`, `tanggal`, `status_bayar`) VALUES
('INV300120000002', 'I Made Suardika', 'L', 'JL Cempaka', '081558422956', 'imade.suardika99@yahoo.com', '2020-01-31', '2020-02-04', 3, 2, 2, 6, 'Hotel sudah saya pesan ok...', '2020-01-31', 'LUNAS');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `idpaket` int(11) NOT NULL,
  `nama_paket` varchar(100) DEFAULT NULL,
  `hrg_dewasa` double DEFAULT NULL,
  `hrg_anak` double DEFAULT NULL,
  `deskripsi` longtext,
  `kategori_id` int(11) DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`idpaket`, `nama_paket`, `hrg_dewasa`, `hrg_anak`, `deskripsi`, `kategori_id`, `gambar`) VALUES
(2, 'Paket Tour Bali 2 Hari 1 Malam', 500000, 250000, '<p><strong>Paket Tour Bali 2 Hari 1 Malam</strong>&nbsp; merupakan paket tour Bali&nbsp; yang sangat padat sangat cocok bagi anda mempunyai waktu liburan singkat. Paket tour bali 2 hari 1 malam ini sangat praktis dan pastinya ter jangkau dengan budget anda. mari kita lihat itinerary program paket tour bali 2 hari 1 malam yang sudah kami kemas dengan pilihan hotel dan restoran terkenal</p>\r\n\r\n<p><strong>Program Paket Tour Bali 2 Hari 1 Malam</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hari KE &ndash; 1 (Uluwatu Tour)</strong></p>\r\n\r\n<ol>\r\n	<li>Dijemput di Bandara Ngurah Rai</li>\r\n	<li>Dilanjutkan dengan Mengunjungi&nbsp; Objek Wisata Bahari Tanjung Benoa Nusa Dua Bali. ini merupakan satu-satunya pantai yang menawarkan Ragam aktivitas water sport seperti: Diving, Glassbotton boat, Parasailing, Banana Boat, Snorkeling dll.</li>\r\n	<li>Makan siang di sajikan di (&nbsp; Mak jo/ Brandas Restaurant/ Nasi ayam ibu Oky )</li>\r\n	<li>Mengunjungi Garuda Wisnu Kencana (<strong>GWK</strong>) yang merupakan Patung tertinggi No 3 di dunia</li>\r\n	<li>Dilanjutkan dengan mengunjungi Pura Uluwatu</li>\r\n	<li>Dilanjutkan dengan makan malam romantis di Cafe Jimbaran dengan set menu ikan bakar (seafood)</li>\r\n	<li>Cek In Hotel</li>\r\n</ol>\r\n\r\n<p><strong>Hari Ke&ndash; 2 (Kintamani Tour)</strong></p>\r\n\r\n<ol>\r\n	<li>Di jemput di Hotel dan di ajak menikmati Pementasan Tari Barong</li>\r\n	<li>Kemudian Mengunjungi aneka kerajinan Bali&nbsp; seperti : Ukiran, Lukisan, Batik, Perak ( bicarakan dgn driver)</li>\r\n	<li>Dilanjutkan Mengunjungi Objek wisata Goa Gajah</li>\r\n	<li>Mengunjungi Pura Tirta Empul adalah Sebuah pura yang ada mata air alami yang menyembur dari bawah tanah .yang mana tempa ini biasanya di pakai tempat menyucikan diri dari aura negatif ( sangat indah)</li>\r\n	<li>Mengunjungi Objek Wisata Kintamani yang merupakan pemandangan yang sangat indah kombinasi dari danau Batur, gunung berapi Batur&nbsp; dataran tinggi yang udaranya sangat sejuk, pemandangannya sangat indah jika cuaca lagi bersahabat</li>\r\n	<li>Makan siang di&nbsp; Restoran kintamani sambil menikmati view Gunung Batur dan Danau Batur.</li>\r\n	<li>Mengunjungi Agrowisata Kebun Kopi Luwak / Obyek Wisata tegalalang bali / Obyek wisata Ubud center or Market</li>\r\n	<li>Makan Malam di Lokal Restourant</li>\r\n	<li>Cek Out menuju Bandara</li>\r\n</ol>\r\n\r\n<p><strong>PAKET SUDAH TERMASUK:</strong></p>\r\n\r\n<ol>\r\n	<li>Kamar Hotel Sesuai Request</li>\r\n	<li>Private car AC + Sopir + BBM</li>\r\n	<li>2 x Makan Siang</li>\r\n	<li>2 x Makan Malam</li>\r\n	<li>Tiket masuk objek wisata sesuai rute</li>\r\n	<li>Parkir</li>\r\n	<li>Retribusi</li>\r\n</ol>\r\n\r\n<p><strong>PAKET TIDAK TERMASUK :</strong></p>\r\n\r\n<ol>\r\n	<li>Tiket Pesawat</li>\r\n	<li>Tiket Tarian</li>\r\n	<li>Kebutuhan Pribadi</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 'd3cfc0a07e61d447129a103714374a83.jpg'),
(6, 'Paket Bali Tour 3 Hari Tanpa Hotel', 300000, 150000, '<p>Paket Bali Tour 3 Hari Tanpa Hotel kami susun untuk anda yang sudah booking hotel untuk liburan. disini kami berikan pilihan <em>Paket Bali Tour 3 Hari Tanpa Hotel, </em>tapi paket ini tidak begitu lengkap.</p>\r\n\r\n<p>Berikut Rencana Perjalanan <strong>Paket Bali Wisata 3 Hari Tanpa Hotel</strong></p>\r\n\r\n<p><strong>PROGRAM / ACARA :</strong></p>\r\n\r\n<p><strong>HARI KE &ndash; 1 Penjemput di Airpor</strong>t</p>\r\n\r\n<ol>\r\n	<li>Dijemput di Airport</li>\r\n	<li>Diantar menuju hotel untuk melakukan check in.</li>\r\n	<li>Acara bebas dan istirahat.</li>\r\n</ol>\r\n\r\n<p><strong>HARI KE &ndash; 2 Silahkan pilih 2 opsi di bwah ini</strong></p>\r\n\r\n<p><strong>Opsi A (Kintamani Tour)</strong></p>\r\n\r\n<ol>\r\n	<li>Makan pagi di Hotel tempat menginap</li>\r\n	<li>Menonton Pementasan Tari Barong(not include)</li>\r\n	<li>Mengunjungi Desa Tohpati yang&nbsp; merupakan Pusat Kerajinan Batik Bali,nanti akan di urakan cara pembuatan nya di lokasi</li>\r\n	<li>Mengunjungi Desa Celuk&nbsp; yang merupakan Pusat Kerajinan Perak, Nanti akan di uraikan proses pembuatan kerajinan perak di lokasi</li>\r\n	<li>Mengunjungi Pura Tirta Empul adalah Sebuah pura yang ada mata air alami yang menyembur dari bawah tanah ( sangat indah)</li>\r\n	<li>Mengunjungi Objek Wisata Kintamani yang merupakan pemandangan yang sangat indah kombinasi dari danau ,gunung brapi dataran tinggi yang sangat sejuk pemandangan nya sangat indah jika cuaca lagi bersahabat</li>\r\n	<li>Makan siang di&nbsp; Restoran Tepi Danau sambil menikmati view Gunung Batur dan Danau Batur dengan udara yang sangat sejuk.</li>\r\n	<li>Mengunjungi Agrowisata Kebun Kopi Luwak</li>\r\n	<li>Makan Malam di Local Resto</li>\r\n	<li>Balik Ke Hotel</li>\r\n</ol>\r\n\r\n<p><strong>Opsi B (Bedugul Tour)</strong></p>\r\n\r\n<ol>\r\n	<li>Makan pagi di hotel tempat menginap</li>\r\n	<li>Mengunjungi Pura Taman Ayun Mengwi</li>\r\n	<li>Mengunjungi Pura Ulundanu Bedugul</li>\r\n	<li>Makan siang di labaga pacung restourant</li>\r\n	<li>Mengunjungi Pura Tanah Lot untuk melihat matahari terbenam (sunset).</li>\r\n	<li>Makan Malam di local Resto</li>\r\n	<li>Balik Ke Hotel</li>\r\n</ol>\r\n\r\n<p><strong>HARI KE &ndash; 3 ( krisna + air port )</strong></p>\r\n\r\n<ol>\r\n	<li>Di Jemput di hotel menuju Khrisna Oleh-oleh Khas Bali</li>\r\n	<li>Agung Bali Oleh oleh bali</li>\r\n	<li>Cek Out menuju Bandara</li>\r\n</ol>\r\n\r\n<p><strong>Paket Tour Ini Sudah Termasuk</strong>:</p>\r\n\r\n<ol>\r\n	<li>Private car AC( Tidak di gabung dengan peserta lain) Mobil di sesuaikan dgn jumlah Peserta + Driver + BBM</li>\r\n	<li>1 x Makan Siang</li>\r\n	<li>1 x Makan Malam</li>\r\n	<li>Tiket masuk objek wisata sesuai rute</li>\r\n	<li>Biaya Parkir</li>\r\n	<li>Retribusi</li>\r\n</ol>\r\n\r\n<p>NOTE :</p>\r\n\r\n<ol>\r\n	<li>Harga Tour belum termasuk belanja keperluan pribadi</li>\r\n</ol>\r\n', 2, '3afcbd767585478a3e0cabec5921e1be.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `metode_id_bayar` int(11) DEFAULT NULL,
  `order_id` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `pengirim` varchar(70) DEFAULT NULL,
  `bukti_transfer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `tgl_bayar`, `metode_id_bayar`, `order_id`, `jumlah`, `pengirim`, `bukti_transfer`) VALUES
(4, '2020-01-31', 2, 'INV300120000002', 1200000, 'I Made Suardika', 'file_1580406677.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1, '2016-08-11 16:52:20', '127.0.0.1', 'Firefox'),
(2, '2016-08-12 10:14:20', '127.0.0.1', 'Firefox'),
(3, '2016-08-12 22:23:19', '127.0.0.1', 'Firefox'),
(4, '2016-08-12 22:27:05', '127.0.0.1', 'Firefox'),
(5, '2016-08-12 22:27:37', '127.0.0.1', 'Firefox'),
(6, '2016-08-12 23:54:58', '127.0.0.1', 'Firefox'),
(7, '2016-08-12 23:55:59', '127.0.0.1', 'Firefox'),
(8, '2016-08-13 00:00:06', '127.0.0.1', 'Firefox'),
(9, '2016-08-13 00:00:34', '127.0.0.1', 'Firefox'),
(10, '2016-09-18 13:24:39', '127.0.0.1', 'Firefox'),
(11, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(12, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(13, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(14, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(15, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(16, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(17, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(18, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(19, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(20, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(21, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(22, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(23, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(24, '2017-02-04 11:06:52', '::1', 'Chrome'),
(25, '2017-02-04 11:07:16', '127.0.0.1', 'Firefox'),
(26, '2017-02-04 11:08:31', '::1', 'Chrome'),
(27, '2017-02-05 12:33:14', '::1', 'Chrome'),
(28, '2017-02-05 13:20:59', '127.0.0.1', 'Firefox'),
(29, '2017-02-06 11:21:08', '::1', 'Chrome'),
(30, '2017-02-08 18:07:51', '::1', 'Chrome'),
(31, '2017-02-10 13:12:05', '::1', 'Chrome'),
(32, '2017-02-20 13:46:21', '::1', 'Chrome'),
(33, '2017-02-21 21:04:16', '::1', 'Chrome'),
(34, '2017-02-27 11:47:25', '::1', 'Chrome'),
(35, '2017-03-01 23:09:25', '::1', 'Chrome'),
(36, '2017-03-04 01:18:51', '::1', 'Chrome'),
(37, '2017-03-12 13:40:32', '::1', 'Chrome'),
(38, '2017-03-13 13:34:32', '::1', 'Chrome'),
(39, '2017-03-22 21:08:15', '::1', 'Firefox'),
(40, '2017-03-25 02:39:02', '::1', 'Firefox'),
(41, '2017-03-25 03:16:45', '::1', 'Firefox'),
(42, '2017-03-28 07:11:23', '::1', 'Firefox'),
(43, '2017-03-29 15:39:17', '::1', 'Firefox'),
(44, '2017-03-30 03:52:11', '::1', 'Firefox'),
(45, '2017-03-31 15:48:46', '::1', 'Firefox'),
(46, '2017-04-06 15:33:58', '::1', 'Firefox'),
(47, '2017-04-07 17:25:37', '::1', 'Firefox'),
(48, '2017-04-08 03:00:14', '::1', 'Firefox'),
(49, '2017-04-09 03:06:03', '::1', 'Firefox'),
(50, '2017-04-10 05:20:50', '::1', 'Firefox'),
(51, '2017-04-11 04:46:50', '117.102.64.98', 'Chrome'),
(52, '2017-04-11 04:46:57', '125.165.129.35', 'Firefox'),
(53, '2017-04-11 05:52:18', '69.171.225.46', 'Other'),
(54, '2017-04-11 05:54:33', '69.171.225.12', 'Other'),
(55, '2017-04-11 05:55:04', '69.171.225.21', 'Other'),
(56, '2017-04-11 05:55:18', '69.171.225.18', 'Other'),
(57, '2017-04-11 06:03:44', '36.83.246.250', 'Chrome'),
(58, '2017-04-11 06:05:55', '202.62.17.121', 'Chrome'),
(59, '2017-04-11 06:06:45', '106.187.46.205', 'Chrome'),
(60, '2017-04-11 06:06:47', '173.252.98.28', 'Other'),
(61, '2017-04-11 06:10:36', '107.167.103.241', 'Opera'),
(62, '2017-04-11 06:16:14', '202.67.41.244', 'Chrome'),
(63, '2017-04-11 06:18:24', '36.72.192.194', 'Chrome'),
(64, '2017-04-11 06:19:40', '112.215.175.62', 'Chrome'),
(65, '2017-04-11 06:20:09', '173.252.102.112', 'Other'),
(66, '2017-04-11 06:20:17', '112.215.154.56', 'Firefox'),
(67, '2017-04-11 06:20:26', '158.140.170.23', 'Chrome'),
(68, '2017-04-11 06:22:33', '36.81.37.52', 'Chrome'),
(69, '2017-04-11 06:23:14', '120.188.65.243', 'Chrome'),
(70, '2017-04-11 06:26:16', '124.153.33.11', 'Chrome'),
(71, '2017-04-11 06:26:21', '112.215.172.240', 'Chrome'),
(72, '2017-04-11 06:27:34', '132.255.240.27', 'Chrome'),
(73, '2017-04-11 06:28:22', '103.213.131.147', 'Chrome'),
(74, '2017-04-11 06:29:38', '36.84.225.114', 'Chrome'),
(75, '2017-04-11 06:29:45', '180.253.158.87', 'Chrome'),
(76, '2017-04-11 06:33:35', '173.252.84.52', 'Other'),
(77, '2017-04-11 06:34:51', '202.67.35.20', 'Chrome'),
(78, '2017-04-11 06:37:02', '202.67.40.210', 'Chrome'),
(79, '2017-04-11 06:39:43', '120.188.76.26', 'Chrome'),
(80, '2017-04-11 06:41:05', '173.252.123.186', 'Other'),
(81, '2017-04-11 06:45:29', '110.139.8.41', 'Mozilla'),
(82, '2017-04-11 06:53:12', '202.80.216.219', 'Chrome'),
(83, '2017-04-11 06:55:16', '223.255.230.13', 'Safari'),
(84, '2017-04-11 06:55:38', '36.78.69.101', 'Chrome'),
(85, '2017-04-11 07:02:53', '180.251.173.137', 'Chrome'),
(86, '2017-04-11 07:03:05', '125.161.185.216', 'Chrome'),
(87, '2017-04-11 07:16:22', '139.192.226.49', 'Chrome'),
(88, '2017-04-11 07:18:10', '107.167.112.88', 'Opera'),
(89, '2017-04-11 07:18:13', '180.247.26.15', 'Chrome'),
(90, '2017-04-11 07:20:04', '204.44.65.210', 'Internet Explorer'),
(91, '2017-04-11 07:22:58', '36.78.96.198', 'Chrome'),
(92, '2017-04-11 07:23:40', '138.197.192.28', 'Chrome'),
(93, '2017-04-11 07:24:07', '112.215.151.61', 'Chrome'),
(94, '2017-04-11 07:25:46', '202.51.104.154', 'Chrome'),
(95, '2017-04-11 07:32:42', '202.67.44.7', 'Firefox'),
(96, '2017-04-11 07:36:53', '118.136.122.84', 'Chrome'),
(97, '2017-04-11 07:39:25', '61.247.21.51', 'Chrome'),
(98, '2017-04-11 07:41:38', '114.124.180.250', 'Chrome'),
(99, '2017-04-11 07:41:55', '120.188.64.226', 'Chrome'),
(100, '2017-04-11 07:43:14', '180.247.204.243', 'Chrome'),
(101, '2017-04-11 07:44:48', '125.161.179.203', 'Chrome'),
(102, '2017-04-11 07:46:06', '114.125.55.58', 'Chrome'),
(103, '2017-04-11 07:50:14', '158.140.182.11', 'Chrome'),
(104, '2017-04-11 07:54:09', '202.67.33.22', 'Chrome'),
(105, '2017-04-11 07:58:44', '120.188.65.30', 'Chrome'),
(106, '2017-04-11 07:59:55', '120.188.77.153', 'Chrome'),
(107, '2017-04-11 08:02:32', '125.167.185.147', 'Mozilla'),
(108, '2017-04-11 08:04:23', '118.136.84.45', 'Chrome'),
(109, '2017-04-11 08:04:41', '110.136.129.138', 'Chrome'),
(110, '2017-04-11 08:04:52', '36.75.108.223', 'Chrome'),
(111, '2017-04-11 08:05:46', '36.72.38.146', 'Chrome'),
(112, '2017-04-11 08:06:31', '120.188.5.85', 'Chrome'),
(113, '2017-04-11 08:09:53', '180.253.90.210', 'Chrome'),
(114, '2017-04-11 08:12:18', '107.167.99.179', 'Opera'),
(115, '2017-04-11 08:12:49', '112.215.171.165', 'Chrome'),
(116, '2017-04-11 08:14:55', '203.166.201.206', 'Chrome'),
(117, '2017-04-11 08:15:21', '107.167.99.208', 'Opera'),
(118, '2017-04-11 08:15:25', '36.73.194.145', 'Mozilla'),
(119, '2017-04-11 08:16:25', '107.167.113.164', 'Opera'),
(120, '2017-04-11 08:16:42', '120.92.32.177', 'Chrome'),
(121, '2017-04-11 08:17:23', '180.245.132.122', 'Chrome'),
(122, '2017-04-11 08:17:56', '120.188.80.236', 'Chrome'),
(123, '2017-04-11 08:17:57', '114.125.89.57', 'Chrome'),
(124, '2017-04-11 08:18:01', '139.0.186.187', 'Chrome'),
(125, '2017-04-11 08:18:25', '125.166.215.131', 'Chrome'),
(126, '2017-04-11 08:18:29', '120.188.6.216', 'Mozilla'),
(127, '2017-04-11 08:19:06', '125.161.98.148', 'Chrome'),
(128, '2017-04-11 08:20:10', '36.73.9.148', 'Chrome'),
(129, '2017-04-11 08:20:15', '114.125.182.65', 'Chrome'),
(130, '2017-04-11 08:21:07', '114.125.40.100', 'Chrome'),
(131, '2017-04-11 08:21:45', '120.188.86.219', 'Chrome'),
(132, '2017-04-11 08:22:35', '118.136.103.194', 'Mozilla'),
(133, '2017-04-11 08:23:47', '36.81.10.230', 'Chrome'),
(134, '2017-04-11 08:23:47', '114.125.164.4', 'Chrome'),
(135, '2017-04-11 08:24:28', '107.167.112.218', 'Chrome'),
(136, '2017-04-11 08:24:50', '107.167.98.132', 'Opera'),
(137, '2017-04-11 08:25:44', '180.246.19.210', 'Chrome'),
(138, '2017-04-11 08:26:12', '120.188.1.85', 'Chrome'),
(139, '2017-04-11 08:27:50', '139.195.66.235', 'Chrome'),
(140, '2017-04-11 08:28:06', '115.178.198.211', 'Chrome'),
(141, '2017-04-11 08:28:17', '115.178.235.88', 'Chrome'),
(142, '2017-04-11 08:28:49', '36.84.87.138', 'Mozilla'),
(143, '2017-04-11 08:29:05', '114.121.232.136', 'Chrome'),
(144, '2017-04-11 08:29:23', '118.96.227.216', 'Chrome'),
(145, '2017-04-11 08:29:45', '36.68.184.231', 'Mozilla'),
(146, '2017-04-11 08:30:18', '120.188.3.198', 'Chrome'),
(147, '2017-04-11 08:32:44', '61.94.133.70', 'Chrome'),
(148, '2017-04-11 08:32:44', '8.37.235.44', 'Safari'),
(149, '2017-04-11 08:33:19', '110.136.254.232', 'Chrome'),
(150, '2017-04-11 08:34:17', '36.83.28.90', 'Chrome'),
(151, '2017-04-11 08:34:25', '120.188.80.239', 'Chrome'),
(152, '2017-04-11 08:34:50', '114.125.72.8', 'Chrome'),
(153, '2017-04-11 08:34:59', '180.247.33.166', 'Safari'),
(154, '2017-04-11 08:35:10', '180.214.232.22', 'Chrome'),
(155, '2017-04-11 08:35:47', '61.5.92.125', 'Chrome'),
(156, '2017-04-11 08:36:22', '36.69.222.51', 'Chrome'),
(157, '2017-04-11 08:36:24', '182.253.139.130', 'Chrome'),
(158, '2017-04-11 08:36:36', '120.188.86.170', 'Chrome'),
(159, '2017-04-11 08:36:56', '139.228.97.115', 'Chrome'),
(160, '2017-04-11 08:37:18', '36.67.61.15', 'Chrome'),
(161, '2017-04-11 08:37:20', '114.4.78.184', 'Chrome'),
(162, '2017-04-11 08:38:09', '202.67.40.221', 'Chrome'),
(163, '2017-04-11 08:39:03', '112.215.172.66', 'Chrome'),
(164, '2017-04-11 08:39:11', '36.74.207.97', 'Chrome'),
(165, '2017-04-11 08:39:36', '64.233.173.4', 'Chrome'),
(166, '2017-04-11 08:40:07', '36.84.136.234', 'Chrome'),
(167, '2017-04-11 08:41:24', '202.62.16.49', 'Chrome'),
(168, '2017-04-11 08:41:28', '125.167.120.95', 'Chrome'),
(169, '2017-04-11 08:41:46', '168.235.207.168', 'Firefox'),
(170, '2017-04-11 08:41:52', '120.188.64.235', 'Chrome'),
(171, '2017-04-11 08:42:10', '120.188.81.204', 'Chrome'),
(172, '2017-04-11 08:42:26', '125.162.245.169', 'Chrome'),
(173, '2017-04-11 08:43:20', '180.242.10.170', 'Chrome'),
(174, '2017-04-11 08:44:03', '64.233.173.6', 'Chrome'),
(175, '2017-04-11 08:44:11', '112.215.174.87', 'Chrome'),
(176, '2017-04-11 08:44:37', '36.71.46.157', 'Chrome'),
(177, '2017-04-11 08:45:07', '103.56.235.74', 'Chrome'),
(178, '2017-04-11 08:45:18', '120.188.66.124', 'Chrome'),
(179, '2017-04-11 08:45:25', '69.171.225.33', 'Other'),
(180, '2017-04-11 08:46:14', '114.125.202.40', 'Chrome'),
(181, '2017-04-11 08:46:45', '120.188.87.93', 'Chrome'),
(182, '2017-04-11 08:46:46', '118.136.85.176', 'Chrome'),
(183, '2017-04-11 08:46:51', '64.233.173.8', 'Chrome'),
(184, '2017-04-11 08:47:32', '36.79.200.132', 'Chrome'),
(185, '2017-04-11 08:48:01', '120.188.35.53', 'Chrome'),
(186, '2017-04-11 08:49:39', '110.138.153.190', 'Chrome'),
(187, '2017-04-11 08:49:44', '114.125.73.228', 'Chrome'),
(188, '2017-04-11 08:49:52', '36.81.119.196', 'Chrome'),
(189, '2017-04-11 08:50:22', '120.188.65.140', 'Chrome'),
(190, '2017-04-11 08:51:05', '125.161.188.27', 'Chrome'),
(191, '2017-04-11 08:51:23', '124.40.251.74', 'Firefox'),
(192, '2017-04-11 08:51:31', '139.228.108.66', 'Chrome'),
(193, '2017-04-11 08:51:33', '180.254.57.164', 'Chrome'),
(194, '2017-04-11 08:53:07', '180.247.95.40', 'Chrome'),
(195, '2017-04-11 08:53:20', '103.205.56.66', 'Chrome'),
(196, '2017-04-11 08:53:20', '103.56.232.196', 'Chrome'),
(197, '2017-04-11 08:53:52', '180.241.167.242', 'Chrome'),
(198, '2017-04-11 08:53:54', '112.215.171.106', 'Chrome'),
(199, '2017-04-11 08:55:12', '114.125.214.65', 'Chrome'),
(200, '2017-04-11 08:55:40', '36.71.48.50', 'Firefox'),
(201, '2017-04-11 08:57:12', '103.9.227.1', 'Chrome'),
(202, '2017-04-11 08:57:16', '202.62.17.134', 'Chrome'),
(203, '2017-04-11 08:57:40', '36.74.110.84', 'Chrome'),
(204, '2017-04-11 08:57:54', '112.215.173.135', 'Chrome'),
(205, '2017-04-11 08:58:17', '36.80.43.86', 'Chrome'),
(206, '2017-04-11 08:59:04', '45.76.207.98', 'Chrome'),
(207, '2017-04-11 08:59:23', '180.214.233.30', 'Chrome'),
(208, '2017-04-11 08:59:28', '36.78.97.242', 'Mozilla'),
(209, '2017-04-11 08:59:58', '61.94.220.130', 'Chrome'),
(210, '2017-04-11 09:00:03', '8.37.230.63', 'Safari'),
(211, '2017-04-11 09:00:20', '125.162.99.169', 'Chrome'),
(212, '2017-04-11 09:00:31', '223.255.227.25', 'Chrome'),
(213, '2017-04-11 09:01:07', '114.121.244.144', 'Chrome'),
(214, '2017-04-11 09:01:24', '114.125.214.143', 'Chrome'),
(215, '2017-04-11 09:01:43', '8.37.235.230', 'Safari'),
(216, '2017-04-11 09:01:49', '120.188.86.129', 'Chrome'),
(217, '2017-04-11 09:02:10', '120.188.74.41', 'Chrome'),
(218, '2017-04-11 09:02:25', '115.178.239.193', 'Chrome'),
(219, '2017-04-11 09:02:49', '202.67.46.8', 'Chrome'),
(220, '2017-04-11 09:02:56', '36.80.211.28', 'Chrome'),
(221, '2017-04-11 09:03:54', '139.195.162.58', 'Chrome'),
(222, '2017-04-11 09:04:16', '202.154.180.10', 'Chrome'),
(223, '2017-04-11 09:04:34', '114.125.184.7', 'Chrome'),
(224, '2017-04-11 09:05:01', '120.188.85.253', 'Chrome'),
(225, '2017-04-11 09:05:32', '139.195.209.21', 'Chrome'),
(226, '2017-04-11 09:05:57', '120.188.33.114', 'Chrome'),
(227, '2017-04-11 09:06:03', '8.37.233.52', 'Safari'),
(228, '2017-04-11 09:06:09', '36.79.130.99', 'Chrome'),
(229, '2017-04-11 09:06:21', '36.74.24.2', 'Chrome'),
(230, '2017-04-11 09:06:43', '114.125.186.131', 'Chrome'),
(231, '2017-04-11 09:06:45', '202.62.17.197', 'Chrome'),
(232, '2017-04-11 09:07:31', '118.96.232.253', 'Chrome'),
(233, '2017-04-11 09:08:05', '36.79.188.51', 'Chrome'),
(234, '2017-04-11 09:08:13', '36.74.122.45', 'Chrome'),
(235, '2017-04-11 09:08:23', '36.84.110.69', 'Chrome'),
(236, '2017-04-11 09:08:23', '112.215.172.153', 'Chrome'),
(237, '2017-04-11 09:08:37', '36.82.30.206', 'Chrome'),
(238, '2017-04-11 09:09:03', '180.214.232.2', 'Chrome'),
(239, '2017-04-11 09:09:38', '107.167.112.128', 'Opera'),
(240, '2017-04-11 09:09:40', '36.70.178.105', 'Chrome'),
(241, '2017-04-11 09:09:55', '139.195.130.19', 'Chrome'),
(242, '2017-04-11 09:10:31', '114.125.57.214', 'Chrome'),
(243, '2017-04-11 09:10:41', '120.188.85.184', 'Chrome'),
(244, '2017-04-11 09:10:52', '125.163.107.41', 'Firefox'),
(245, '2017-04-11 09:11:15', '114.125.41.144', 'Chrome'),
(246, '2017-04-11 09:11:21', '61.94.103.59', 'Chrome'),
(247, '2017-04-11 09:12:08', '36.76.30.210', 'Chrome'),
(248, '2017-04-11 09:12:26', '36.73.134.193', 'Chrome'),
(249, '2017-04-11 09:12:31', '112.215.173.16', 'Chrome'),
(250, '2017-04-11 09:13:18', '120.188.92.195', 'Chrome'),
(251, '2017-04-11 09:13:20', '125.163.92.209', 'Chrome'),
(252, '2017-04-11 09:14:19', '182.253.142.24', 'Chrome'),
(253, '2017-04-11 09:14:28', '120.188.86.148', 'Chrome'),
(254, '2017-04-11 09:14:56', '182.253.163.61', 'Chrome'),
(255, '2017-04-11 09:16:02', '36.74.148.31', 'Chrome'),
(256, '2017-04-11 09:16:57', '8.37.233.156', 'Safari'),
(257, '2017-04-11 09:17:04', '114.125.56.121', 'Firefox'),
(258, '2017-04-11 09:17:12', '158.140.165.20', 'Chrome'),
(259, '2017-04-11 09:17:17', '125.164.97.226', 'Chrome'),
(260, '2017-04-11 09:17:18', '120.188.92.249', 'Chrome'),
(261, '2017-04-11 09:17:26', '118.137.208.31', 'Chrome'),
(262, '2017-04-11 09:17:30', '180.244.71.107', 'Chrome'),
(263, '2017-04-11 09:17:37', '120.188.87.220', 'Chrome'),
(264, '2017-04-11 09:17:57', '112.215.172.199', 'Safari'),
(265, '2017-04-11 09:18:23', '110.138.44.236', 'Chrome'),
(266, '2017-04-11 09:18:35', '168.235.195.254', 'Safari'),
(267, '2017-04-11 09:18:40', '180.245.98.188', 'Chrome'),
(268, '2017-04-11 09:18:58', '114.125.183.102', 'Chrome'),
(269, '2017-04-11 09:19:18', '125.164.38.13', 'Chrome'),
(270, '2017-04-11 09:19:27', '114.121.239.102', 'Chrome'),
(271, '2017-04-11 09:20:03', '168.235.206.137', 'Safari'),
(272, '2017-04-11 09:20:32', '202.80.213.87', 'Chrome'),
(273, '2017-04-11 09:21:18', '180.246.73.3', 'Chrome'),
(274, '2017-04-11 09:22:02', '36.75.32.145', 'Mozilla'),
(275, '2017-04-11 09:22:04', '112.215.154.115', 'Chrome'),
(276, '2017-04-11 09:22:09', '36.73.96.185', 'Mozilla'),
(277, '2017-04-11 09:22:38', '8.37.232.215', 'Safari'),
(278, '2017-04-11 09:22:53', '36.68.233.0', 'Chrome'),
(279, '2017-04-11 09:23:08', '36.84.224.73', 'Chrome'),
(280, '2017-04-11 09:23:29', '66.220.151.86', 'Other'),
(281, '2017-04-11 09:24:01', '120.188.75.121', 'Chrome'),
(282, '2017-04-11 09:24:19', '207.241.226.233', 'Mozilla'),
(283, '2017-04-11 09:24:35', '36.73.181.116', 'Chrome'),
(284, '2017-04-11 09:25:38', '198.186.192.44', 'Other'),
(285, '2017-04-11 09:25:56', '114.4.78.117', 'Chrome'),
(286, '2017-04-11 09:26:38', '36.72.95.85', 'Firefox'),
(287, '2017-04-11 09:27:26', '120.188.81.107', 'Chrome'),
(288, '2017-04-11 09:28:19', '114.124.149.112', 'Chrome'),
(289, '2017-04-11 09:28:29', '114.125.205.41', 'Chrome'),
(290, '2017-04-11 09:28:54', '125.163.78.202', 'Chrome'),
(291, '2017-04-11 09:29:17', '114.125.52.130', 'Firefox'),
(292, '2017-04-11 09:29:45', '114.4.78.150', 'Chrome'),
(293, '2017-04-11 09:29:47', '114.121.156.129', 'Chrome'),
(294, '2017-04-11 09:29:51', '112.215.172.8', 'Chrome'),
(295, '2017-04-11 09:30:30', '114.125.166.163', 'Chrome'),
(296, '2017-04-11 09:30:35', '139.195.187.141', 'Chrome'),
(297, '2017-04-11 09:30:53', '36.72.21.12', 'Chrome'),
(298, '2017-04-11 09:32:34', '8.37.225.108', 'Firefox'),
(299, '2017-04-11 09:32:39', '180.248.6.118', 'Chrome'),
(300, '2017-04-11 09:33:44', '8.37.233.95', 'Safari'),
(301, '2017-04-11 09:34:16', '120.188.80.6', 'Safari'),
(302, '2017-04-11 09:34:52', '211.227.156.112', 'Chrome'),
(303, '2017-04-11 09:34:54', '125.167.187.126', 'Chrome'),
(304, '2017-04-11 09:35:32', '107.167.112.72', 'Chrome'),
(305, '2017-04-11 09:35:57', '112.215.152.98', 'Mozilla'),
(306, '2017-04-11 09:36:06', '180.251.167.150', 'Chrome'),
(307, '2017-04-11 09:36:27', '36.82.76.215', 'Chrome'),
(308, '2017-04-11 09:37:45', '168.235.206.238', 'Safari'),
(309, '2017-04-11 09:38:09', '124.153.33.39', 'Chrome'),
(310, '2017-04-11 09:38:39', '168.235.197.19', 'Firefox'),
(311, '2017-04-11 09:38:44', '36.73.87.46', 'Chrome'),
(312, '2017-04-11 09:38:45', '188.166.218.174', 'Firefox'),
(313, '2017-04-11 09:39:03', '36.78.54.201', 'Firefox'),
(314, '2017-04-11 09:39:24', '139.228.95.10', 'Chrome'),
(315, '2017-04-11 09:39:24', '120.188.80.114', 'Chrome'),
(316, '2017-04-11 09:39:35', '182.253.203.58', 'Chrome'),
(317, '2017-04-11 09:39:54', '36.78.66.34', 'Chrome'),
(318, '2017-04-11 09:40:56', '120.188.79.185', 'Mozilla'),
(319, '2017-04-11 09:41:35', '118.96.235.203', 'Chrome'),
(320, '2017-04-11 09:41:44', '180.253.236.103', 'Chrome'),
(321, '2017-04-11 09:43:18', '125.161.188.207', 'Chrome'),
(322, '2017-04-11 09:44:08', '36.66.72.178', 'Chrome'),
(323, '2017-04-11 09:44:16', '36.84.13.131', 'Chrome'),
(324, '2017-04-11 09:44:46', '112.215.45.240', 'Firefox'),
(325, '2017-04-11 09:45:01', '49.182.76.246', 'Chrome'),
(326, '2017-04-11 09:45:09', '180.247.77.200', 'Chrome'),
(327, '2017-04-11 09:45:19', '36.88.158.84', 'Chrome'),
(328, '2017-04-11 09:45:38', '202.62.17.12', 'Chrome'),
(329, '2017-04-11 09:46:05', '182.253.163.51', 'Firefox'),
(330, '2017-04-11 09:46:11', '139.195.94.117', 'Chrome'),
(331, '2017-04-11 09:46:41', '114.4.83.68', 'Chrome'),
(332, '2017-04-11 09:47:30', '114.125.37.46', 'Safari'),
(333, '2017-04-11 09:47:32', '173.252.74.105', 'Other'),
(334, '2017-04-11 09:49:04', '112.215.200.30', 'Chrome'),
(335, '2017-04-11 09:50:22', '120.188.81.20', 'Chrome'),
(336, '2017-04-11 09:50:32', '120.188.33.140', 'Chrome'),
(337, '2017-04-11 09:51:06', '114.4.79.120', 'Chrome'),
(338, '2017-04-11 09:51:27', '139.194.221.74', 'Chrome'),
(339, '2017-04-11 09:51:29', '120.188.87.99', 'Firefox'),
(340, '2017-04-11 09:51:48', '36.73.62.30', 'Chrome'),
(341, '2017-04-11 09:51:53', '112.215.45.120', 'Firefox'),
(342, '2017-04-11 09:51:54', '112.215.153.184', 'Safari'),
(343, '2017-04-11 09:51:59', '36.78.67.111', 'Chrome'),
(344, '2017-04-11 09:52:31', '120.188.80.165', 'Chrome'),
(345, '2017-04-11 09:52:37', '61.94.100.166', 'Chrome'),
(346, '2017-04-11 09:52:48', '180.252.168.2', 'Chrome'),
(347, '2017-04-11 09:52:50', '36.84.64.22', 'Chrome'),
(348, '2017-04-11 09:52:56', '198.144.107.187', 'Chrome'),
(349, '2017-04-11 09:53:42', '120.188.80.158', 'Chrome'),
(350, '2017-04-11 09:54:47', '180.244.55.126', 'Chrome'),
(351, '2017-04-11 09:55:18', '107.167.112.118', 'Opera'),
(352, '2017-04-11 09:55:43', '36.73.63.156', 'Chrome'),
(353, '2017-04-11 09:56:44', '125.167.92.123', 'Safari'),
(354, '2017-04-11 09:58:15', '180.247.136.78', 'Chrome'),
(355, '2017-04-11 09:59:23', '114.124.148.228', 'Chrome'),
(356, '2017-04-11 09:59:44', '120.188.80.220', 'Chrome'),
(357, '2017-04-11 09:59:50', '180.248.179.126', 'Chrome'),
(358, '2017-04-11 10:00:03', '36.78.194.86', 'Chrome'),
(359, '2017-04-11 10:00:12', '202.67.46.46', 'Chrome'),
(360, '2017-04-11 10:00:34', '113.210.202.42', 'Chrome'),
(361, '2017-04-11 10:01:47', '114.120.233.30', 'Chrome'),
(362, '2017-04-11 10:02:34', '202.182.55.230', 'Chrome'),
(363, '2017-04-11 10:02:44', '180.244.73.72', 'Chrome'),
(364, '2017-04-11 10:03:16', '49.213.16.227', 'Chrome'),
(365, '2017-04-11 10:04:03', '36.73.177.201', 'Chrome'),
(366, '2017-04-11 10:04:12', '112.215.152.124', 'Chrome'),
(367, '2017-04-11 10:08:38', '120.188.0.47', 'Chrome'),
(368, '2017-04-11 10:09:43', '36.84.58.187', 'Chrome'),
(369, '2017-04-11 10:12:18', '111.94.229.133', 'Chrome'),
(370, '2017-04-11 10:12:31', '118.136.18.255', 'Chrome'),
(371, '2017-04-11 10:13:11', '36.74.212.125', 'Chrome'),
(372, '2017-04-11 10:13:20', '103.206.245.142', 'Chrome'),
(373, '2017-04-11 10:14:21', '36.71.129.27', 'Chrome'),
(374, '2017-04-11 10:18:44', '180.252.123.165', 'Chrome'),
(375, '2017-04-11 10:19:01', '180.253.138.223', 'Chrome'),
(376, '2017-04-11 10:19:11', '66.249.79.83', 'Googlebot'),
(377, '2017-04-11 10:19:27', '36.80.242.230', 'Chrome'),
(378, '2017-04-11 10:19:54', '223.255.231.154', 'Chrome'),
(379, '2017-04-11 10:19:55', '114.125.200.74', 'Chrome'),
(380, '2017-04-11 10:21:24', '66.249.79.78', 'Googlebot'),
(381, '2017-04-11 10:21:45', '114.4.83.180', 'Mozilla'),
(382, '2017-04-11 10:23:55', '139.192.11.235', 'Chrome'),
(383, '2017-04-11 10:24:10', '125.160.66.244', 'Firefox'),
(384, '2017-04-11 10:24:17', '112.215.170.139', 'Chrome'),
(385, '2017-04-11 10:25:01', '112.215.153.158', 'Safari'),
(386, '2017-04-11 10:25:29', '110.139.187.176', 'Chrome'),
(387, '2017-04-11 10:25:38', '111.94.122.151', 'Chrome'),
(388, '2017-04-11 10:25:46', '112.215.153.252', 'Chrome'),
(389, '2017-04-11 10:27:24', '112.215.170.48', 'Chrome'),
(390, '2017-04-11 10:28:36', '125.160.51.241', 'Chrome'),
(391, '2017-04-11 10:29:53', '66.249.79.85', 'Googlebot'),
(392, '2017-04-11 10:30:04', '120.188.83.178', 'Chrome'),
(393, '2017-04-11 10:30:26', '112.215.170.170', 'Chrome'),
(394, '2017-04-11 10:30:27', '139.228.17.159', 'Chrome'),
(395, '2017-04-11 10:30:32', '107.167.112.5', 'Opera'),
(396, '2017-04-11 10:31:33', '180.249.17.245', 'Chrome'),
(397, '2017-04-11 10:31:38', '182.253.163.14', 'Chrome'),
(398, '2017-04-11 10:32:08', '202.80.215.217', 'Chrome'),
(399, '2017-04-11 10:32:45', '120.188.95.126', 'Chrome'),
(400, '2017-04-11 10:32:55', '118.136.247.154', 'Firefox'),
(401, '2017-04-11 10:33:04', '66.102.6.211', 'Chrome'),
(402, '2017-04-11 10:33:04', '66.102.6.207', 'Chrome'),
(403, '2017-04-11 10:33:05', '66.102.6.209', 'Chrome'),
(404, '2017-04-11 10:34:10', '36.84.9.122', 'Firefox'),
(405, '2017-04-11 10:34:34', '120.188.94.195', 'Chrome'),
(406, '2017-04-11 10:34:55', '36.84.2.91', 'Chrome'),
(407, '2017-04-11 10:35:12', '125.164.16.170', 'Chrome'),
(408, '2017-04-11 10:35:35', '125.164.15.224', 'Chrome'),
(409, '2017-04-11 10:36:04', '114.125.70.243', 'Chrome'),
(410, '2017-04-11 10:36:29', '180.241.222.250', 'Chrome'),
(411, '2017-04-11 10:36:55', '112.215.44.57', 'Safari'),
(412, '2017-04-11 10:39:53', '114.4.82.125', 'Chrome'),
(413, '2017-04-11 10:39:58', '120.188.5.175', 'Chrome'),
(414, '2017-04-11 10:40:27', '103.233.157.202', 'Chrome'),
(415, '2017-04-11 10:44:13', '37.34.62.205', 'Other'),
(416, '2017-04-11 10:45:37', '120.188.32.191', 'Chrome'),
(417, '2017-04-11 10:46:53', '168.235.198.107', 'Safari'),
(418, '2017-04-11 10:47:00', '36.84.0.75', 'Chrome'),
(419, '2017-04-11 10:47:43', '182.253.163.7', 'Chrome'),
(420, '2017-04-11 10:47:49', '36.68.52.209', 'Safari'),
(421, '2017-04-11 10:48:03', '103.47.132.52', 'Chrome'),
(422, '2017-04-11 10:49:58', '36.66.211.11', 'Chrome'),
(423, '2017-04-11 10:50:12', '112.215.171.166', 'Chrome'),
(424, '2017-04-11 10:51:49', '103.4.167.243', 'Chrome'),
(425, '2017-04-11 10:51:51', '120.188.85.6', 'Chrome'),
(426, '2017-04-11 10:52:02', '120.188.81.83', 'Chrome'),
(427, '2017-04-11 10:52:52', '120.188.83.233', 'Chrome'),
(428, '2017-04-11 10:53:37', '125.165.48.195', 'Firefox'),
(429, '2017-04-11 10:54:20', '203.130.236.249', 'Chrome'),
(430, '2017-04-11 10:54:28', '115.178.238.196', 'Mozilla'),
(431, '2017-04-11 10:54:49', '202.179.189.74', 'Mozilla'),
(432, '2017-04-11 10:56:50', '182.253.62.114', 'Chrome'),
(433, '2017-04-11 10:57:37', '112.215.154.28', 'Chrome'),
(434, '2017-04-11 10:57:53', '110.137.169.204', 'Chrome'),
(435, '2017-04-11 10:57:56', '223.255.227.26', 'Chrome'),
(436, '2017-04-11 10:58:01', '112.215.63.20', 'Chrome'),
(437, '2017-04-11 10:58:46', '139.194.53.216', 'Chrome'),
(438, '2017-04-11 10:59:15', '27.50.17.11', 'Chrome'),
(439, '2017-04-11 10:59:34', '182.253.163.50', 'Firefox'),
(440, '2017-04-11 10:59:47', '36.76.123.254', 'Chrome'),
(441, '2017-04-11 11:00:20', '103.47.132.22', 'Chrome'),
(442, '2017-04-11 11:00:30', '8.37.233.83', 'Safari'),
(443, '2017-04-11 11:00:46', '114.125.180.165', 'Chrome'),
(444, '2017-04-11 11:01:39', '180.252.143.230', 'Chrome'),
(445, '2017-04-11 11:01:45', '163.53.185.146', 'Chrome'),
(446, '2017-04-11 11:02:33', '114.125.207.121', 'Chrome'),
(447, '2017-04-11 11:02:40', '36.72.9.120', 'Chrome'),
(448, '2017-04-11 11:04:44', '61.5.60.185', 'Chrome'),
(449, '2017-04-11 11:04:46', '36.80.153.97', 'Chrome'),
(450, '2017-04-11 11:05:41', '180.252.239.223', 'Chrome'),
(451, '2017-04-11 11:07:10', '120.188.33.120', 'Chrome'),
(452, '2017-04-11 11:07:10', '118.97.50.22', 'Chrome'),
(453, '2017-04-11 11:08:05', '118.97.50.23', 'Chrome'),
(454, '2017-04-11 11:09:09', '36.84.229.118', 'Chrome'),
(455, '2017-04-11 11:09:12', '114.125.11.225', 'Chrome'),
(456, '2017-04-11 11:09:49', '182.23.59.66', 'Firefox'),
(457, '2017-04-11 11:10:16', '118.97.50.24', 'Chrome'),
(458, '2017-04-11 11:10:59', '175.111.91.19', 'Firefox'),
(459, '2017-04-11 11:11:01', '121.101.131.66', 'Chrome'),
(460, '2017-04-11 11:11:16', '2.235.170.197', 'Chrome'),
(461, '2017-04-11 11:11:43', '180.247.185.142', 'Chrome'),
(462, '2017-04-11 11:12:38', '36.80.179.43', 'Firefox'),
(463, '2017-04-11 11:12:53', '36.75.240.166', 'Chrome'),
(464, '2017-04-11 11:13:31', '118.97.241.130', 'Chrome'),
(465, '2017-04-11 11:13:31', '101.128.85.22', 'Chrome'),
(466, '2017-04-11 11:13:48', '182.253.122.110', 'Chrome'),
(467, '2017-04-11 11:14:31', '120.188.65.57', 'Chrome'),
(468, '2017-04-11 11:14:38', '115.164.60.248', 'Chrome'),
(469, '2017-04-11 11:14:42', '180.250.206.226', 'Chrome'),
(470, '2017-04-11 11:15:06', '125.165.103.49', 'Chrome'),
(471, '2017-04-11 11:15:25', '104.237.243.90', 'Firefox'),
(472, '2017-04-11 11:15:30', '180.254.241.158', 'Chrome'),
(473, '2017-04-11 11:15:50', '36.85.5.162', 'Chrome'),
(474, '2017-04-11 11:15:56', '120.188.67.11', 'Chrome'),
(475, '2017-04-11 11:15:58', '38.80.23.2', 'Firefox'),
(476, '2017-04-11 11:16:01', '61.94.194.3', 'Chrome'),
(477, '2017-04-11 11:16:02', '222.124.22.228', 'Chrome'),
(478, '2017-04-11 11:16:07', '180.178.93.249', 'Chrome'),
(479, '2017-04-11 11:16:32', '36.80.213.229', 'Chrome'),
(480, '2017-04-11 11:17:27', '175.184.250.82', 'Chrome'),
(481, '2017-04-11 11:17:56', '103.31.109.2', 'Chrome'),
(482, '2017-04-11 11:18:11', '168.235.202.213', 'Safari'),
(483, '2017-04-11 11:18:43', '120.188.85.102', 'Chrome'),
(484, '2017-04-11 11:18:49', '61.5.84.239', 'Chrome'),
(485, '2017-04-11 11:18:51', '36.73.220.140', 'Chrome'),
(486, '2017-04-11 11:18:57', '180.247.181.120', 'Chrome'),
(487, '2017-04-11 11:19:50', '36.73.22.116', 'Chrome'),
(488, '2017-04-11 11:21:09', '36.84.229.80', 'Chrome'),
(489, '2017-04-11 11:21:23', '120.188.67.170', 'Chrome'),
(490, '2017-04-11 11:21:24', '36.85.13.189', 'Chrome'),
(491, '2017-04-11 11:22:18', '66.96.246.66', 'Chrome'),
(492, '2017-04-11 11:22:48', '111.68.27.251', 'Chrome'),
(493, '2017-04-11 11:23:31', '202.80.212.117', 'Chrome'),
(494, '2017-04-11 11:23:59', '112.215.171.69', 'Mozilla'),
(495, '2017-04-11 11:24:35', '222.124.214.250', 'Chrome'),
(496, '2017-04-11 11:24:53', '140.0.203.15', 'Chrome'),
(497, '2017-04-11 11:24:58', '116.254.126.142', 'Chrome'),
(498, '2017-04-11 11:25:13', '120.188.66.255', 'Chrome'),
(499, '2017-04-11 11:25:33', '168.235.194.213', 'Safari'),
(500, '2017-04-11 11:25:48', '114.125.9.160', 'Safari'),
(501, '2017-04-11 11:25:54', '112.215.201.184', 'Safari'),
(502, '2017-04-11 11:25:57', '125.163.255.80', 'Chrome'),
(503, '2017-04-11 11:26:09', '168.235.200.204', 'Safari'),
(504, '2017-04-11 11:26:37', '128.199.233.142', 'Safari'),
(505, '2017-04-11 11:28:11', '112.215.154.169', 'Firefox'),
(506, '2017-04-11 11:28:25', '168.235.195.242', 'Safari'),
(507, '2017-04-11 11:29:06', '223.25.97.210', 'Chrome'),
(508, '2017-04-11 11:30:24', '203.176.183.20', 'Chrome'),
(509, '2017-04-11 11:30:50', '180.253.126.127', 'Chrome'),
(510, '2017-04-11 11:31:06', '36.78.129.171', 'Chrome'),
(511, '2017-04-11 11:33:51', '14.102.152.234', 'Chrome'),
(512, '2017-04-11 11:34:09', '8.37.230.53', 'Safari'),
(513, '2017-04-11 11:34:27', '112.215.172.183', 'Chrome'),
(514, '2017-04-11 11:35:45', '112.215.65.96', 'Safari'),
(515, '2017-04-11 11:36:42', '110.5.102.56', 'Chrome'),
(516, '2017-04-11 11:37:05', '114.121.246.246', 'Chrome'),
(517, '2017-04-11 11:37:17', '110.139.27.171', 'Chrome'),
(518, '2017-04-11 11:39:05', '120.188.65.207', 'Chrome'),
(519, '2017-04-11 11:39:31', '180.254.64.231', 'Chrome'),
(520, '2017-04-11 11:39:34', '202.133.6.54', 'Chrome'),
(521, '2017-04-11 11:40:40', '36.68.41.249', 'Chrome'),
(522, '2017-04-11 11:43:08', '125.163.57.73', 'Chrome'),
(523, '2017-04-11 11:44:21', '114.121.157.148', 'Chrome'),
(524, '2017-04-11 11:44:46', '140.0.229.214', 'Chrome'),
(525, '2017-04-11 11:46:15', '103.55.216.76', 'Firefox'),
(526, '2017-04-11 11:47:25', '120.188.4.116', 'Chrome'),
(527, '2017-04-11 11:48:03', '202.124.205.203', 'Mozilla'),
(528, '2017-04-11 11:48:11', '202.80.212.84', 'Chrome'),
(529, '2017-04-11 11:48:52', '36.74.26.7', 'Chrome'),
(530, '2017-04-11 11:48:52', '210.57.215.142', 'Chrome'),
(531, '2017-04-11 11:48:56', '202.43.183.130', 'Chrome'),
(532, '2017-04-11 11:49:16', '61.94.50.125', 'Chrome'),
(533, '2017-04-11 11:50:14', '139.192.185.41', 'Chrome'),
(534, '2017-04-11 11:50:46', '36.72.118.174', 'Chrome'),
(535, '2017-04-11 11:51:16', '118.136.225.170', 'Chrome'),
(536, '2017-04-11 11:51:48', '202.67.46.40', 'Chrome'),
(537, '2017-04-11 11:52:04', '182.253.33.51', 'Firefox'),
(538, '2017-04-11 11:52:06', '180.254.26.52', 'Chrome'),
(539, '2017-04-11 11:52:07', '36.66.168.63', 'Chrome'),
(540, '2017-04-11 11:52:24', '112.215.45.116', 'Firefox'),
(541, '2017-04-11 11:52:52', '112.215.172.67', 'Chrome'),
(542, '2017-04-11 11:54:21', '180.245.67.128', 'Chrome'),
(543, '2017-04-11 11:55:01', '36.83.178.178', 'Chrome'),
(544, '2017-04-11 11:55:10', '118.96.213.178', 'Firefox'),
(545, '2017-04-11 11:56:30', '114.125.170.252', 'Chrome'),
(546, '2017-04-11 11:56:43', '124.153.32.100', 'Chrome'),
(547, '2017-04-11 11:57:11', '120.188.74.139', 'Mozilla'),
(548, '2017-04-11 11:57:47', '124.153.33.42', 'Mozilla'),
(549, '2017-04-11 11:58:44', '36.78.128.112', 'Firefox'),
(550, '2017-04-11 11:59:10', '103.228.26.4', 'Chrome'),
(551, '2017-04-11 12:00:17', '36.82.101.17', 'Chrome'),
(552, '2017-04-11 12:01:21', '139.0.54.49', 'Chrome'),
(553, '2017-04-11 12:01:23', '180.252.103.36', 'Mozilla'),
(554, '2017-04-11 12:01:33', '117.102.64.82', 'Firefox'),
(555, '2017-04-11 12:03:59', '202.67.44.8', 'Chrome'),
(556, '2017-04-11 12:04:16', '114.125.26.15', 'Chrome'),
(557, '2017-04-11 12:04:23', '180.246.224.105', 'Chrome'),
(558, '2017-04-11 12:05:05', '112.215.170.35', 'Mozilla'),
(559, '2017-04-11 12:05:33', '180.251.217.107', 'Chrome'),
(560, '2017-04-11 12:06:35', '36.84.39.119', 'Chrome'),
(561, '2017-04-11 12:07:10', '103.241.206.74', 'Chrome'),
(562, '2017-04-11 12:08:18', '203.160.128.8', 'Chrome'),
(563, '2017-04-11 12:09:24', '36.71.230.230', 'Chrome'),
(564, '2017-04-11 12:09:33', '118.136.40.213', 'Chrome'),
(565, '2017-04-11 12:10:26', '8.37.225.146', 'Firefox'),
(566, '2017-04-11 12:10:27', '180.251.6.162', 'Chrome'),
(567, '2017-04-11 12:10:34', '112.215.201.35', 'Chrome'),
(568, '2017-04-11 12:10:40', '120.188.64.132', 'Chrome'),
(569, '2017-04-11 12:11:13', '112.215.151.179', 'Chrome'),
(570, '2017-04-11 12:11:34', '107.167.99.205', 'Opera'),
(571, '2017-04-11 12:11:48', '210.211.18.82', 'Chrome'),
(572, '2017-04-11 12:11:51', '112.215.174.151', 'Chrome'),
(573, '2017-04-11 12:12:02', '120.188.73.159', 'Chrome'),
(574, '2017-04-11 12:13:39', '36.81.46.228', 'Chrome'),
(575, '2017-04-11 12:15:31', '36.77.89.224', 'Chrome'),
(576, '2017-04-11 12:16:10', '107.167.112.144', 'Chrome'),
(577, '2017-04-11 12:16:23', '125.165.178.198', 'Firefox'),
(578, '2017-04-11 12:16:50', '139.192.58.131', 'Chrome'),
(579, '2017-04-11 12:16:54', '36.69.12.48', 'Chrome'),
(580, '2017-04-11 12:17:14', '202.179.190.162', 'Chrome'),
(581, '2017-04-11 12:17:26', '36.78.33.42', 'Chrome'),
(582, '2017-04-11 12:17:48', '103.213.131.160', 'Chrome'),
(583, '2017-04-11 12:17:55', '36.85.24.1', 'Mozilla'),
(584, '2017-04-11 12:18:13', '202.158.89.154', 'Chrome'),
(585, '2017-04-11 12:19:02', '36.70.91.134', 'Firefox'),
(586, '2017-04-11 12:19:15', '114.125.30.235', 'Chrome'),
(587, '2017-04-11 12:19:52', '125.163.174.117', 'Chrome'),
(588, '2017-04-11 12:20:01', '103.17.246.48', 'Firefox'),
(589, '2017-04-11 12:21:22', '36.88.134.156', 'Chrome'),
(590, '2017-04-11 12:22:53', '120.188.5.152', 'Mozilla'),
(591, '2017-04-11 12:23:28', '114.124.33.225', 'Chrome'),
(592, '2017-04-11 12:23:44', '112.215.200.147', 'Chrome'),
(593, '2017-04-11 12:24:23', '180.253.125.143', 'Chrome'),
(594, '2017-04-11 12:24:30', '36.69.83.3', 'Chrome'),
(595, '2017-04-11 12:25:24', '36.68.118.78', 'Firefox'),
(596, '2017-04-11 12:25:36', '180.245.99.108', 'Chrome'),
(597, '2017-04-11 12:26:15', '8.37.225.106', 'Firefox'),
(598, '2017-04-11 12:26:16', '58.10.55.252', 'Chrome'),
(599, '2017-04-11 12:27:07', '36.73.65.61', 'Firefox'),
(600, '2017-04-11 12:27:18', '202.62.18.53', 'Chrome'),
(601, '2017-04-11 12:27:39', '180.243.101.157', 'Chrome'),
(602, '2017-04-11 12:29:40', '180.249.209.233', 'Chrome'),
(603, '2017-04-11 12:31:13', '120.188.7.226', 'Chrome'),
(604, '2017-04-11 12:31:29', '36.85.139.235', 'Firefox'),
(605, '2017-04-11 12:32:43', '203.142.64.87', 'Chrome'),
(606, '2017-04-11 12:33:19', '107.167.112.181', 'Opera'),
(607, '2017-04-11 12:34:05', '182.253.73.4', 'Firefox'),
(608, '2017-04-11 12:34:16', '110.136.57.170', 'Chrome'),
(609, '2017-04-11 12:38:24', '112.215.200.152', 'Mozilla'),
(610, '2017-04-11 12:38:37', '168.235.205.184', 'Safari'),
(611, '2017-04-11 12:39:48', '125.164.109.171', 'Chrome'),
(612, '2017-04-11 12:39:50', '36.73.58.152', 'Chrome'),
(613, '2017-04-11 12:40:16', '202.62.16.15', 'Chrome'),
(614, '2017-04-11 12:41:57', '36.73.54.54', 'Chrome'),
(615, '2017-04-11 12:42:26', '36.80.151.109', 'Firefox'),
(616, '2017-04-11 12:43:14', '202.67.40.199', 'Chrome'),
(617, '2017-04-11 12:43:29', '114.4.83.133', 'Chrome'),
(618, '2017-04-11 12:43:31', '173.193.202.116', 'Firefox'),
(619, '2017-04-11 12:44:18', '202.62.16.181', 'Chrome'),
(620, '2017-04-11 12:45:13', '167.114.233.118', 'Firefox'),
(621, '2017-04-11 12:45:30', '180.241.24.74', 'Chrome'),
(622, '2017-04-11 12:47:01', '125.166.212.190', 'Chrome'),
(623, '2017-04-11 12:47:21', '180.241.179.220', 'Chrome'),
(624, '2017-04-11 12:47:27', '125.167.75.246', 'Chrome'),
(625, '2017-04-11 12:47:48', '168.235.194.226', 'Safari'),
(626, '2017-04-11 12:52:01', '118.97.137.170', 'Chrome'),
(627, '2017-04-11 12:52:53', '180.247.208.196', 'Chrome'),
(628, '2017-04-11 12:54:25', '103.9.124.211', 'Chrome'),
(629, '2017-04-11 12:56:29', '120.188.94.118', 'Chrome'),
(630, '2017-04-11 12:56:33', '36.73.12.186', 'Firefox'),
(631, '2017-04-11 12:56:44', '36.66.254.39', 'Firefox'),
(632, '2017-04-11 12:57:28', '120.188.81.56', 'Chrome'),
(633, '2017-04-11 12:59:02', '36.82.7.245', 'Chrome'),
(634, '2017-04-11 12:59:36', '103.212.43.138', 'Chrome'),
(635, '2017-04-11 13:00:38', '139.193.114.21', 'Chrome'),
(636, '2017-04-11 13:00:50', '112.215.175.249', 'Firefox'),
(637, '2017-04-11 13:01:24', '120.188.33.237', 'Chrome'),
(638, '2017-04-11 13:01:53', '36.80.106.53', 'Chrome'),
(639, '2017-04-11 13:02:10', '36.84.0.88', 'Firefox'),
(640, '2017-04-11 13:03:00', '103.57.192.122', 'Chrome'),
(641, '2017-04-11 13:04:55', '36.72.190.47', 'Firefox'),
(642, '2017-04-11 13:06:41', '125.163.105.25', 'Chrome'),
(643, '2017-04-11 13:07:06', '115.178.234.139', 'Mozilla'),
(644, '2017-04-11 13:07:31', '114.120.234.114', 'Mozilla'),
(645, '2017-04-11 13:08:50', '202.67.46.227', 'Chrome'),
(646, '2017-04-11 13:09:22', '36.77.160.216', 'Chrome'),
(647, '2017-04-11 13:10:14', '139.193.15.145', 'Chrome'),
(648, '2017-04-11 13:10:47', '112.215.172.245', 'Chrome'),
(649, '2017-04-11 13:10:50', '207.241.226.232', 'Mozilla'),
(650, '2017-04-11 13:11:07', '120.188.0.239', 'Chrome'),
(651, '2017-04-11 13:11:09', '180.251.99.141', 'Chrome'),
(652, '2017-04-11 13:11:13', '125.162.56.58', 'Chrome'),
(653, '2017-04-11 13:11:39', '36.72.50.199', 'Chrome'),
(654, '2017-04-11 13:12:20', '139.194.66.128', 'Chrome'),
(655, '2017-04-11 13:12:55', '36.78.127.45', 'Firefox'),
(656, '2017-04-11 13:13:00', '36.74.170.244', 'Chrome'),
(657, '2017-04-11 13:13:59', '36.83.123.80', 'Chrome'),
(658, '2017-04-11 13:14:36', '36.84.13.207', 'Chrome'),
(659, '2017-04-11 13:14:50', '112.198.68.78', 'Chrome'),
(660, '2017-04-11 13:15:20', '180.251.88.168', 'Firefox'),
(661, '2017-04-11 13:15:32', '119.110.69.226', 'Chrome'),
(662, '2017-04-11 13:16:00', '36.85.65.250', 'Chrome'),
(663, '2017-04-11 13:16:43', '112.78.141.82', 'Firefox'),
(664, '2017-04-11 13:16:57', '125.163.59.51', 'Chrome'),
(665, '2017-04-11 13:17:19', '116.197.132.78', 'Firefox'),
(666, '2017-04-11 13:17:39', '120.188.67.180', 'Chrome'),
(667, '2017-04-11 13:18:27', '114.4.83.35', 'Chrome'),
(668, '2017-04-11 13:18:28', '125.162.19.20', 'Firefox'),
(669, '2017-04-11 13:18:29', '182.253.3.140', 'Chrome'),
(670, '2017-04-11 13:21:45', '36.78.130.219', 'Firefox'),
(671, '2017-04-11 13:24:05', '180.246.25.27', 'Firefox'),
(672, '2017-04-11 13:25:03', '202.150.146.82', 'Chrome'),
(673, '2017-04-11 13:25:05', '125.162.222.87', 'Mozilla'),
(674, '2017-04-11 13:25:34', '120.188.86.20', 'Chrome'),
(675, '2017-04-11 13:25:43', '125.163.109.106', 'Chrome'),
(676, '2017-04-11 13:26:12', '120.188.81.160', 'Chrome'),
(677, '2017-04-11 13:29:23', '175.111.89.10', 'Chrome'),
(678, '2017-04-11 13:30:27', '114.121.245.17', 'Mozilla'),
(679, '2017-04-11 13:32:54', '110.139.200.11', 'Chrome'),
(680, '2017-04-11 13:33:00', '114.125.52.89', 'Chrome'),
(681, '2017-04-11 13:33:25', '36.74.177.233', 'Chrome'),
(682, '2017-04-11 13:33:44', '180.254.162.29', 'Firefox'),
(683, '2017-04-11 13:33:53', '125.160.100.4', 'Chrome'),
(684, '2017-04-11 13:34:59', '202.77.111.104', 'Chrome'),
(685, '2017-04-11 13:35:16', '36.69.153.83', 'Chrome'),
(686, '2017-04-11 13:35:19', '180.254.13.225', 'Chrome'),
(687, '2017-04-11 13:35:24', '180.251.214.117', 'Chrome'),
(688, '2017-04-11 13:35:27', '36.74.134.188', 'Chrome'),
(689, '2017-04-11 13:35:41', '107.167.103.167', 'Opera'),
(690, '2017-04-11 13:36:56', '139.193.222.23', 'Chrome'),
(691, '2017-04-11 13:36:59', '182.253.72.87', 'Chrome'),
(692, '2017-04-11 13:37:10', '101.255.64.210', 'Chrome'),
(693, '2017-04-11 13:38:20', '36.69.60.79', 'Chrome'),
(694, '2017-04-11 13:38:34', '36.84.229.27', 'Firefox'),
(695, '2017-04-11 13:41:28', '202.62.16.239', 'Firefox'),
(696, '2017-04-11 13:41:42', '36.81.58.185', 'Chrome'),
(697, '2017-04-11 13:41:44', '112.215.152.52', 'Chrome'),
(698, '2017-04-11 13:42:08', '36.74.224.172', 'Chrome'),
(699, '2017-04-11 13:42:11', '112.215.200.247', 'Mozilla'),
(700, '2017-04-11 13:42:34', '112.215.153.115', 'Chrome'),
(701, '2017-04-11 13:42:58', '223.164.0.178', 'Chrome'),
(702, '2017-04-11 13:42:58', '36.72.62.17', 'Chrome'),
(703, '2017-04-11 13:43:38', '103.209.131.44', 'Firefox'),
(704, '2017-04-11 13:43:43', '139.195.33.29', 'Chrome'),
(705, '2017-04-11 13:44:51', '103.61.248.82', 'Chrome'),
(706, '2017-04-11 13:46:50', '175.103.43.86', 'Chrome'),
(707, '2017-04-11 13:47:49', '120.188.94.79', 'Chrome'),
(708, '2017-04-11 13:47:53', '202.169.46.130', 'Chrome'),
(709, '2017-04-11 13:48:37', '158.140.170.38', 'Chrome'),
(710, '2017-04-11 13:49:55', '180.245.193.140', 'Chrome'),
(711, '2017-04-11 13:50:24', '180.246.157.179', 'Chrome'),
(712, '2017-04-11 13:51:51', '36.76.23.139', 'Chrome'),
(713, '2017-04-11 13:52:06', '202.67.41.213', 'Chrome'),
(714, '2017-04-11 13:52:34', '36.78.163.149', 'Chrome'),
(715, '2017-04-11 13:53:12', '158.140.166.0', 'Chrome'),
(716, '2017-04-11 13:55:36', '207.244.86.209', 'Chrome'),
(717, '2017-04-11 13:56:35', '120.188.79.122', 'Chrome'),
(718, '2017-04-11 13:58:11', '36.73.104.74', 'Chrome'),
(719, '2017-04-11 13:58:21', '222.124.22.251', 'Firefox'),
(720, '2017-04-11 13:58:32', '120.188.93.249', 'Chrome'),
(721, '2017-04-11 14:02:03', '120.188.33.199', 'Chrome'),
(722, '2017-04-11 14:02:06', '125.161.64.96', 'Chrome'),
(723, '2017-04-11 14:03:41', '182.253.122.125', 'Chrome'),
(724, '2017-04-11 14:04:06', '36.68.234.47', 'Chrome'),
(725, '2017-04-11 14:04:33', '36.72.94.211', 'Chrome'),
(726, '2017-04-11 14:04:48', '125.163.125.211', 'Chrome'),
(727, '2017-04-11 14:04:52', '180.248.243.155', 'Chrome'),
(728, '2017-04-11 14:04:58', '182.253.34.175', 'Mozilla'),
(729, '2017-04-11 14:05:28', '103.24.49.225', 'Chrome'),
(730, '2017-04-11 14:06:42', '180.248.250.226', 'Chrome'),
(731, '2017-04-11 14:09:06', '36.84.157.255', 'Chrome'),
(732, '2017-04-11 14:09:09', '202.152.156.210', 'Firefox'),
(733, '2017-04-11 14:09:41', '114.125.53.87', 'Chrome'),
(734, '2017-04-11 14:09:43', '120.188.7.170', 'Chrome'),
(735, '2017-04-11 14:11:29', '152.118.148.226', 'Internet Explorer'),
(736, '2017-04-11 14:11:43', '182.253.188.125', 'Chrome'),
(737, '2017-04-11 14:12:47', '5.254.97.108', 'Chrome'),
(738, '2017-04-11 14:13:23', '120.188.3.109', 'Chrome'),
(739, '2017-04-11 14:14:38', '180.246.199.52', 'Chrome'),
(740, '2017-04-11 14:15:05', '210.211.17.14', 'Chrome'),
(741, '2017-04-11 14:15:59', '36.82.201.211', 'Chrome'),
(742, '2017-04-11 14:16:14', '103.23.102.111', 'Chrome'),
(743, '2017-04-11 14:17:19', '36.81.75.68', 'Chrome'),
(744, '2017-04-11 14:18:59', '114.125.39.153', 'Chrome'),
(745, '2017-04-11 14:20:34', '222.124.52.127', 'Chrome'),
(746, '2017-04-11 14:21:13', '180.248.199.49', 'Chrome'),
(747, '2017-04-11 14:22:00', '125.163.114.139', 'Chrome'),
(748, '2017-04-11 14:25:37', '107.167.99.151', 'Opera'),
(749, '2017-04-11 14:26:05', '114.125.116.95', 'Chrome'),
(750, '2017-04-11 14:26:49', '202.62.18.115', 'Chrome'),
(751, '2017-04-11 14:26:50', '61.8.69.82', 'Chrome'),
(752, '2017-04-11 14:28:31', '113.161.224.83', 'Chrome'),
(753, '2017-04-11 14:28:45', '103.47.132.24', 'Chrome'),
(754, '2017-04-11 14:29:03', '120.188.64.12', 'Chrome'),
(755, '2017-04-11 14:30:03', '103.47.134.26', 'Chrome'),
(756, '2017-04-11 14:30:29', '202.9.85.34', 'Chrome'),
(757, '2017-04-11 14:31:59', '182.253.62.142', 'Chrome'),
(758, '2017-04-11 14:32:07', '36.88.45.251', 'Chrome'),
(759, '2017-04-11 14:32:24', '114.121.133.17', 'Mozilla'),
(760, '2017-04-11 14:33:18', '190.233.193.231', 'Chrome'),
(761, '2017-04-11 14:33:41', '202.80.215.57', 'Chrome'),
(762, '2017-04-11 14:34:18', '115.178.216.124', 'Chrome'),
(763, '2017-04-11 14:37:01', '222.165.226.122', 'Firefox'),
(764, '2017-04-11 14:38:07', '36.82.13.155', 'Chrome'),
(765, '2017-04-11 14:38:30', '202.182.59.185', 'Firefox'),
(766, '2017-04-11 14:38:42', '103.21.206.66', 'Chrome'),
(767, '2017-04-11 14:39:14', '36.69.87.71', 'Chrome'),
(768, '2017-04-11 14:39:42', '43.247.13.202', 'Chrome'),
(769, '2017-04-11 14:40:08', '66.102.7.143', 'Chrome'),
(770, '2017-04-11 14:43:21', '168.235.195.74', 'Safari'),
(771, '2017-04-11 14:44:11', '103.8.12.99', 'Chrome'),
(772, '2017-04-11 14:44:14', '180.252.137.203', 'Chrome'),
(773, '2017-04-11 14:44:27', '36.87.53.20', 'Safari'),
(774, '2017-04-11 14:45:06', '114.125.87.178', 'Chrome'),
(775, '2017-04-11 14:46:04', '158.140.172.34', 'Chrome'),
(776, '2017-04-11 14:46:12', '61.94.132.66', 'Chrome'),
(777, '2017-04-11 14:47:36', '101.255.60.254', 'Chrome'),
(778, '2017-04-11 14:49:09', '36.74.102.19', 'Chrome'),
(779, '2017-04-11 14:49:42', '180.246.244.93', 'Chrome'),
(780, '2017-04-11 14:49:52', '118.97.151.193', 'Firefox'),
(781, '2017-04-11 14:50:01', '117.102.122.242', 'Chrome'),
(782, '2017-04-11 14:50:51', '36.71.249.134', 'Chrome'),
(783, '2017-04-11 14:51:54', '112.215.171.45', 'Chrome'),
(784, '2017-04-11 14:52:18', '103.241.5.116', 'Chrome'),
(785, '2017-04-11 14:52:31', '36.78.103.212', 'Chrome'),
(786, '2017-04-11 14:53:09', '36.72.80.127', 'Chrome'),
(787, '2017-04-11 14:54:12', '36.78.123.228', 'Chrome'),
(788, '2017-04-11 14:54:16', '36.68.235.225', 'Chrome'),
(789, '2017-04-11 14:54:37', '125.161.181.154', 'Firefox'),
(790, '2017-04-11 14:55:13', '36.80.164.131', 'Chrome'),
(791, '2017-04-11 14:56:15', '180.245.211.69', 'Chrome'),
(792, '2017-04-11 14:56:16', '125.167.186.204', 'Chrome'),
(793, '2017-04-11 14:57:34', '114.125.119.153', 'Chrome'),
(794, '2017-04-11 14:59:59', '114.121.234.35', 'Chrome'),
(795, '2017-04-11 15:02:26', '107.167.103.67', 'Opera'),
(796, '2017-04-11 15:02:47', '36.80.9.250', 'Chrome'),
(797, '2017-04-11 15:02:50', '36.88.62.43', 'Chrome'),
(798, '2017-04-11 15:02:57', '114.125.184.105', 'Chrome'),
(799, '2017-04-11 15:03:07', '185.182.81.53', 'Chrome'),
(800, '2017-04-11 15:04:44', '66.102.7.141', 'Chrome'),
(801, '2017-04-11 15:04:57', '36.88.158.219', 'Chrome'),
(802, '2017-04-11 15:06:25', '36.73.34.208', 'Chrome'),
(803, '2017-04-11 15:07:58', '36.74.20.46', 'Chrome'),
(804, '2017-04-11 15:08:28', '36.82.100.128', 'Chrome'),
(805, '2017-04-11 15:09:30', '112.215.65.245', 'Chrome'),
(806, '2017-04-11 15:09:42', '114.4.78.119', 'Chrome'),
(807, '2017-04-11 15:09:46', '110.137.171.177', 'Chrome'),
(808, '2017-04-11 15:09:47', '140.0.198.87', 'Mozilla'),
(809, '2017-04-11 15:10:20', '103.47.134.18', 'Chrome'),
(810, '2017-04-11 15:10:43', '36.66.46.34', 'Chrome'),
(811, '2017-04-11 15:11:32', '180.246.96.230', 'Chrome'),
(812, '2017-04-11 15:13:26', '146.185.31.213', 'Firefox'),
(813, '2017-04-11 15:18:49', '163.53.186.186', 'Firefox'),
(814, '2017-04-11 15:19:24', '202.62.16.98', 'Chrome'),
(815, '2017-04-11 15:21:09', '36.70.200.11', 'Chrome'),
(816, '2017-04-11 15:24:10', '112.215.45.58', 'Chrome'),
(817, '2017-04-11 15:25:14', '66.96.234.91', 'Chrome'),
(818, '2017-04-11 15:25:55', '103.66.199.34', 'Chrome'),
(819, '2017-04-11 15:26:53', '182.253.163.82', 'Chrome'),
(820, '2017-04-11 15:28:37', '103.3.44.1', 'Chrome'),
(821, '2017-04-11 15:29:22', '36.88.90.200', 'Chrome'),
(822, '2017-04-11 15:30:19', '180.254.255.166', 'Chrome'),
(823, '2017-04-11 15:30:24', '115.178.200.226', 'Chrome'),
(824, '2017-04-11 15:30:45', '120.188.1.120', 'Chrome'),
(825, '2017-04-11 15:32:14', '103.195.142.26', 'Chrome'),
(826, '2017-04-11 15:33:33', '120.188.0.9', 'Firefox'),
(827, '2017-04-11 15:35:18', '120.188.81.213', 'Chrome'),
(828, '2017-04-11 15:36:20', '182.253.131.41', 'Mozilla'),
(829, '2017-04-11 15:36:24', '8.37.234.123', 'Chrome'),
(830, '2017-04-11 15:36:27', '36.72.34.63', 'Chrome'),
(831, '2017-04-11 15:36:36', '115.178.239.80', 'Chrome'),
(832, '2017-04-11 15:36:54', '103.58.111.34', 'Chrome'),
(833, '2017-04-11 15:38:16', '8.37.225.224', 'Firefox'),
(834, '2017-04-11 15:38:19', '112.215.200.93', 'Chrome'),
(835, '2017-04-11 15:39:20', '120.188.92.156', 'Chrome'),
(836, '2017-04-11 15:39:27', '114.125.103.119', 'Chrome'),
(837, '2017-04-11 15:40:08', '107.167.112.73', 'Chrome'),
(838, '2017-04-11 15:42:02', '120.188.66.2', 'Chrome'),
(839, '2017-04-11 15:42:44', '36.72.134.144', 'Chrome'),
(840, '2017-04-11 15:43:13', '36.66.215.5', 'Firefox'),
(841, '2017-04-11 15:44:26', '114.125.101.241', 'Chrome'),
(842, '2017-04-11 15:45:36', '182.253.37.186', 'Firefox'),
(843, '2017-04-11 15:46:05', '114.125.117.183', 'Chrome'),
(844, '2017-04-11 15:46:05', '114.125.101.71', 'Chrome'),
(845, '2017-04-11 15:46:05', '114.125.101.255', 'Chrome'),
(846, '2017-04-11 15:47:28', '114.124.34.31', 'Mozilla'),
(847, '2017-04-11 15:48:28', '202.62.17.122', 'Chrome'),
(848, '2017-04-11 15:48:41', '139.192.131.90', 'Chrome'),
(849, '2017-04-11 15:52:52', '120.188.3.158', 'Chrome'),
(850, '2017-04-11 15:53:10', '200.77.128.224', 'Mozilla'),
(851, '2017-04-11 15:54:26', '112.215.151.215', 'Chrome'),
(852, '2017-04-11 15:55:40', '114.4.82.59', 'Chrome'),
(853, '2017-04-11 15:55:50', '36.79.229.121', 'Chrome'),
(854, '2017-04-11 15:57:41', '118.136.224.179', 'Chrome'),
(855, '2017-04-11 16:00:38', '202.67.41.242', 'Chrome'),
(856, '2017-04-11 16:01:11', '36.77.191.150', 'Mozilla'),
(857, '2017-04-11 16:01:26', '125.166.214.129', 'Chrome'),
(858, '2017-04-11 16:03:25', '202.93.231.81', 'Chrome'),
(859, '2017-04-11 16:03:40', '36.68.69.52', 'Chrome'),
(860, '2017-04-11 16:03:59', '112.215.152.222', 'Chrome'),
(861, '2017-04-11 16:04:55', '36.79.42.167', 'Chrome'),
(862, '2017-04-11 16:05:30', '103.47.134.3', 'Chrome'),
(863, '2017-04-11 16:10:29', '139.59.96.104', 'Chrome'),
(864, '2017-04-11 16:11:56', '36.73.101.192', 'Firefox'),
(865, '2017-04-11 16:12:39', '180.252.110.204', 'Chrome'),
(866, '2017-04-11 16:14:25', '36.84.224.105', 'Firefox'),
(867, '2017-04-11 16:15:20', '112.215.172.91', 'Chrome'),
(868, '2017-04-11 16:15:29', '43.252.159.29', 'Chrome'),
(869, '2017-04-11 16:16:19', '114.124.2.201', 'Chrome'),
(870, '2017-04-11 16:16:52', '103.77.50.21', 'Chrome'),
(871, '2017-04-11 16:18:18', '114.125.215.48', 'Mozilla'),
(872, '2017-04-11 16:19:02', '202.62.17.10', 'Chrome'),
(873, '2017-04-11 16:20:03', '202.93.231.70', 'Firefox'),
(874, '2017-04-11 16:20:33', '103.47.134.15', 'Firefox'),
(875, '2017-04-11 16:22:24', '120.188.77.49', 'Firefox'),
(876, '2017-04-11 16:22:51', '120.188.3.239', 'Chrome'),
(877, '2017-04-11 16:24:00', '180.189.162.131', 'Chrome'),
(878, '2017-04-11 16:24:20', '36.83.36.137', 'Chrome'),
(879, '2017-04-11 16:26:02', '175.111.89.42', 'Chrome'),
(880, '2017-04-11 16:26:56', '213.171.207.70', 'Chrome'),
(881, '2017-04-11 16:27:42', '180.252.173.112', 'Chrome'),
(882, '2017-04-11 16:28:22', '115.178.234.185', 'Chrome'),
(883, '2017-04-11 16:28:28', '36.77.83.38', 'Chrome'),
(884, '2017-04-11 16:29:16', '103.248.248.86', 'Chrome'),
(885, '2017-04-11 16:29:32', '180.254.74.221', 'Chrome'),
(886, '2017-04-11 16:29:39', '36.78.55.37', 'Firefox'),
(887, '2017-04-11 16:29:48', '112.78.191.34', 'Chrome'),
(888, '2017-04-11 16:30:04', '120.188.81.161', 'Chrome'),
(889, '2017-04-11 16:30:08', '115.178.201.60', 'Chrome'),
(890, '2017-04-11 16:31:14', '36.72.202.102', 'Chrome'),
(891, '2017-04-11 16:31:58', '120.188.79.93', 'Chrome'),
(892, '2017-04-11 16:33:26', '36.80.202.16', 'Firefox'),
(893, '2017-04-11 16:35:32', '139.194.22.183', 'Chrome'),
(894, '2017-04-11 16:38:11', '120.188.87.248', 'Chrome'),
(895, '2017-04-11 16:38:30', '182.253.163.75', 'Chrome'),
(896, '2017-04-11 16:39:26', '103.213.128.19', 'Chrome'),
(897, '2017-04-11 16:40:11', '202.169.53.3', 'Firefox'),
(898, '2017-04-11 16:41:53', '202.67.40.1', 'Chrome'),
(899, '2017-04-11 16:43:22', '120.188.66.119', 'Chrome'),
(900, '2017-04-11 16:43:42', '36.74.115.169', 'Chrome'),
(901, '2017-04-11 16:46:07', '103.47.132.27', 'Chrome'),
(902, '2017-04-11 16:46:19', '180.241.75.46', 'Mozilla'),
(903, '2017-04-11 16:46:19', '36.84.228.213', 'Chrome'),
(904, '2017-04-11 16:46:44', '118.136.88.249', 'Chrome'),
(905, '2017-04-11 16:49:50', '120.188.83.242', 'Chrome'),
(906, '2017-04-11 16:49:52', '36.77.137.120', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(907, '2017-07-10 02:07:19', '::1', 'Firefox'),
(908, '2020-01-15 12:33:36', '::1', 'Firefox'),
(909, '2020-01-17 13:25:28', '::1', 'Firefox'),
(910, '2020-01-18 07:38:56', '::1', 'Firefox'),
(911, '2020-01-24 11:05:04', '::1', 'Chrome'),
(912, '2020-01-25 12:07:07', '::1', 'Firefox'),
(913, '2020-01-26 05:52:46', '::1', 'Firefox'),
(914, '2020-01-27 14:37:37', '::1', 'Firefox'),
(915, '2020-01-30 05:34:30', '::1', 'Firefox'),
(916, '2020-01-30 16:07:29', '::1', 'Firefox');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `idtestimoni` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `pesan` text,
  `status` varchar(2) DEFAULT NULL,
  `tgl_post` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `idwisata` int(11) NOT NULL,
  `nama_wisata` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`idwisata`, `nama_wisata`, `deskripsi`, `gambar`) VALUES
(2, 'Tirta Empul', '<p>Tirta Empul adalah nama sebuah pura yang terletak di kecamatan&nbsp;Tampak Siring. Pura Tirta Empul banyak dikunjungi para wisatawan, baik dari mancanegara maupun wisatawan domestik. Objek wisata Tirta Empul, merupakan salah satu, tempat liburan di Bali yang wajib dikunjungi. Di pura&nbsp;Tirta Empul, terdapat mata air dan juga digunakan oleh masyarakat pemeluk agama Hindu, untuk permandian dan memohon tirta suci.</p>\r\n', '2e15620e66215936b6dd1ea64b574d4b.jpg'),
(3, 'Garuda Wisnu Kencana', '<p><strong>Taman Budaya Garuda Wisnu Kencana</strong> (bahasa Inggris: <em><strong>Garuda Wisnu Kencana Cultural Park</strong></em>), disingkat <strong>GWK</strong>, adalah sebuah taman wisata di bagian selatan pulau Bali. Taman wisata ini terletak di Desa Ungasan, Kecamatan Kuta Selatan, Kabupaten Badung, kira-kira 40 kilometer di sebelah selatan Denpasar, ibu kota provinsi Bali.Di areal taman budaya ini, direncanakan akan didirikan sebuah <em>landmark</em> atau maskot Bali, yakni patung berukuran raksasa Dewa Wisnu yang sedang menunggangi tunggangannya, Garuda, setinggi 120 meter.</p>\r\n\r\n<p>Area Taman Budaya Garuda Wisnu Kencana berada di ketinggian 146 meter di atas permukaan tanah atau 263 meter di atas permukaan laut.</p>\r\n\r\n<p>Di kawasan itu terdapat juga Patung Garuda yang tepat di belakang Plaza Wisnu adalah Garuda Plaza di mana patung setinggi 18 meter Garuda ditempatkan sementara. Pada saat ini, Garuda Plaza menjadi titik fokus dari sebuah lorong besar pilar berukir batu kapur yang mencakup lebih dari 4000 meter persegi luas ruang terbuka yaitu <em>Lotus Pond</em>. Pilar-pilar batu kapur kolosal dan monumental patung Lotus Pond Garuda membuat ruang yang sangat eksotis. Dengan kapasitas ruangan yang mampu menampung hingga 7000 orang, <em>Lotus Pond</em> telah mendapatkan reputasi yang baik sebagai tempat sempurna untuk mengadakan acara besar dan internasional.</p>\r\n\r\n<p>Terdapat juga patung tangan Wisnu yang merupakan bagian dari patung Dewa Wisnu. Ini merupakan salah satu langkah lebih dekat untuk menyelesaikan patung Garuda Wisnu Kencana lengkap. Karya ini ditempatkan sementara di daerah Tirta Agung.</p>\r\n\r\n<p>Pada tanggal 22 September 2018 Presiden Joko Widodo beserta Ibu Negara Iriana Joko Widodo menghadiri peresmian patung Garuda Wisnu Kencana (GWK).</p>\r\n\r\n<p>&nbsp;</p>\r\n', '7f225925446733f3ac1bd38bee5aac5c.jpg'),
(4, 'Pura Ulun Danu Beratan', '<p><strong>Pura Ulun Danu Batur</strong> (juga dikenal sebagai &quot;Pura Batur&quot; atau &quot;Pura Ulun Danu&quot;) adalah Pura yang terletak di pulau Bali, Indonesia . Sebagai salah satu Pura Kahyangan Jagat, Pura Ulun Danu Batur adalah salah satu dari pura terpenting di Bali yang bertindak sebagai pemelihara harmoni dan stabilitas seluruh pulau. Pura Ulun Danu Batur mewakili arah Utara dan didedikasikan untuk dewa Wisnu dan dewi lokal Dewi Danu, dewi Danau Batur, danau terbesar di Bali. Setelah hancurnya kompleks pura yang asli, pura tersebut dipindahkan dan dibangun kembali pada tahun 1926.</p>\r\n', 'b4f0dc3fae821229f40873014f99c176.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idalbum`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`),
  ADD KEY `adminid` (`user`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `albumid` (`albumid`);

--
-- Indexes for table `kategori_paket`
--
ALTER TABLE `kategori_paket`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `paket_id_order` (`paket_id_order`),
  ADD KEY `metode_id` (`metode_id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`idpaket`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `metode_id_bayar` (`metode_id_bayar`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`idtestimoni`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`idwisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `idalbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori_paket`
--
ALTER TABLE `kategori_paket`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `idpaket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=917;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `idtestimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `idwisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`idalbum`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`paket_id_order`) REFERENCES `paket` (`idpaket`) ON UPDATE CASCADE;

--
-- Constraints for table `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_paket` (`id_kategori`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
