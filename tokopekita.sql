-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Des 2022 pada 13.47
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokopekita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(3, 'MOCHAMAD RIZKY MUHAJIR SHALABY', 'mrizukii@gmail.com', '$2y$10$JCYQOstrvEdZjWaTPZxx5OKNaloA9atcuQSWUckpfBosspRHu7emW', '081314645032', 'kp.gandasoli RT.14/05 Des.Babakan Kec.Wanayasa PURWAKARTA', '2022-12-14 12:09:38', 'Admin', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `idcart` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `tglorder` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Cart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`idcart`, `orderid`, `userid`, `tglorder`, `status`) VALUES
(10, '15wKVT0nej25Y', 2, '2020-03-16 12:10:42', 'Selesai'),
(11, '15Swf8Ye0Fm.M', 2, '2020-03-16 12:17:34', 'Cart'),
(12, '15PzF03ejd8W2', 1, '2020-05-13 02:40:48', 'Selesai'),
(13, '16MWnb03hHeq6', 3, '2022-12-14 12:10:02', 'Selesai'),
(14, '168a7BgOLkYRg', 4, '2022-12-15 01:03:53', 'Selesai'),
(15, '16KHsu6OrrJ76', 3, '2022-12-15 02:47:55', 'Selesai'),
(16, '164GSD/28EeFI', 1, '2022-12-15 02:52:58', 'Selesai'),
(17, '16LU6xTY1pUFA', 1, '2022-12-15 03:04:37', 'Selesai'),
(18, '16d1JVYz8K1sI', 1, '2022-12-15 04:50:17', 'Selesai'),
(19, '16Fqdn94b3oXE', 3, '2022-12-15 07:13:04', 'Selesai'),
(20, '16FEgDDDYt0s2', 3, '2022-12-15 07:27:00', 'Selesai'),
(21, '16lj7yVvhsBPg', 5, '2022-12-15 08:44:57', 'Selesai'),
(22, '16.v7XTZ972Ds', 5, '2022-12-15 08:45:26', 'Selesai'),
(23, '16iJymbMmDZkY', 3, '2022-12-15 08:50:02', 'Selesai'),
(24, '16XLam8PFKAPI', 3, '2022-12-15 11:45:03', 'Selesai'),
(25, '16icLVOHKsyDo', 8, '2022-12-15 12:43:21', 'Selesai'),
(26, '16dzjQ8pxCwhU', 10, '2022-12-15 13:39:47', 'Selesai'),
(27, '16/GGVueS2IvU', 11, '2022-12-19 01:19:02', 'Selesai'),
(28, '16qTHayLtQlzg', 1, '2022-12-19 02:08:39', 'Selesai'),
(29, '16Ql90O1ipHbI', 1, '2022-12-19 02:10:40', 'Selesai'),
(30, '16irlkRZeN/zo', 12, '2022-12-20 02:15:45', 'Confirmed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailorder`
--

CREATE TABLE `detailorder` (
  `detailid` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detailorder`
--

INSERT INTO `detailorder` (`detailid`, `orderid`, `idproduk`, `qty`) VALUES
(23, '16KHsu6OrrJ76', 7, 1),
(24, '16KHsu6OrrJ76', 8, 1),
(25, '16KHsu6OrrJ76', 9, 1),
(26, '16KHsu6OrrJ76', 10, 1),
(27, '16Fqdn94b3oXE', 7, 2),
(28, '16FEgDDDYt0s2', 8, 1),
(29, '16lj7yVvhsBPg', 7, 1),
(30, '16.v7XTZ972Ds', 8, 3),
(31, '16iJymbMmDZkY', 7, 1),
(33, '16XLam8PFKAPI', 7, 5),
(34, '16icLVOHKsyDo', 7, 2),
(35, '16dzjQ8pxCwhU', 7, 4),
(36, '16dzjQ8pxCwhU', 8, 2),
(37, '16dzjQ8pxCwhU', 9, 2),
(39, '16dzjQ8pxCwhU', 10, 2),
(40, '16d1JVYz8K1sI', 7, 1),
(41, '16/GGVueS2IvU', 7, 2),
(42, '16/GGVueS2IvU', 8, 4),
(43, '16qTHayLtQlzg', 8, 100),
(44, '16Ql90O1ipHbI', 7, 1),
(45, '16irlkRZeN/zo', 8, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkategori` int(11) NOT NULL,
  `namakategori` varchar(20) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp(),
  `xx` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkategori`, `namakategori`, `tgldibuat`, `xx`) VALUES
(1, 'Mie', '2022-12-15 05:07:47', ''),
(2, 'Toping', '2022-12-15 05:08:58', ''),
(10, 'kerupuk', '2022-12-15 13:47:03', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `idkonfirmasi` int(11) NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `namarekening` varchar(25) NOT NULL,
  `tglbayar` date NOT NULL,
  `tglsubmit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`idkonfirmasi`, `orderid`, `userid`, `payment`, `namarekening`, `tglbayar`, `tglsubmit`) VALUES
(16, '16irlkRZeN/zo', 12, 'Bank BCA', 'admin', '2022-12-20', '2022-12-20 02:16:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `userid` int(11) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgljoin` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(7) NOT NULL DEFAULT 'Member',
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`userid`, `namalengkap`, `email`, `password`, `notelp`, `alamat`, `tgljoin`, `role`, `lastlogin`) VALUES
(1, 'Admin', 'admin', '$2y$10$GJVGd4ji3QE8ikTBzNyA0uLQhiGd6MirZeSJV1O6nUpjSVp1eaKzS', '01234567890', 'Indonesia', '2020-03-16 11:31:17', 'Member', NULL),
(2, 'Guest', 'guest', '$2y$10$xXEMgj5pMT9EE0QAx3QW8uEn155Je.FHH5SuIATxVheOt0Z4rhK6K', '01234567890', 'Indonesia', '2020-03-16 11:30:40', 'Member', NULL),
(3, 'MOCHAMAD RIZKY MUHAJIR SHALABY', 'mrizukii@gmail.com', '$2y$10$JCYQOstrvEdZjWaTPZxx5OKNaloA9atcuQSWUckpfBosspRHu7emW', '081314645032', 'kp.gandasoli RT.14/05 Des.Babakan Kec.Wanayasa PURWAKARTA', '2022-12-14 12:09:38', 'Member', NULL),
(4, 'Feri Ananda Ginting', 'ferianandaginting7@gmail.com', '$2y$10$RX13osfta6lrgFhKE.pQDOphPLhkkUHG.Z9fPJHbkm8IWunozCrbG', '085714248440', 'jl. Mayjend sutoyo RT009/RW007 kel. kebon pala kec. Makasar Jakarta Timur', '2022-12-15 01:03:10', 'Member', NULL),
(5, 'agus', 'agus@gmail.com', '$2y$10$fsxecW7s7sAORoMMmdQhM.8o9CeNFODIQAcAN1ffzCHVF2uAoLdte', '123456', 'jakarta', '2022-12-15 08:44:34', 'Member', NULL),
(6, 'Rizky', 'mrizukii@gmail.com', '$2y$10$SkfmxlEsJqBEY6GA.oTIX.NRAmfHbl1lKzFZ/J6lPO9ffn/TDlawm', '123456', 'jakarta', '2022-12-15 10:12:41', 'Member', NULL),
(7, 'asep', 'asep@gmail.com', '$2y$10$JHgA7SH/gn3BHoN0j.CL7ekDV15k4vp/ZtHyLd7MOZ8KHJXBHiity', '123456', 'jakarta', '2022-12-15 10:17:28', 'Member', NULL),
(8, 'asep', 'kenwil@gmail.com', '$2y$10$.rISDUuIhUIpAEsZf4qHGe7kyHqD0Sv4VT3sE8V8VblXzA9RdSDk6', '31231234124', 'dasdasdasdfasdf', '2022-12-15 12:04:19', 'Member', NULL),
(9, 'agus', 'agus@gmail.com', '$2y$10$WOCzXdz3qEpEGb5MSwSJqOu4wiFWx55vXznTBjTFPFLLPWczZFdOG', '123456', 'jakarta', '2022-12-15 13:35:58', 'Member', NULL),
(10, 'ajis', 'ajis@gmail.com', '$2y$10$Bm4DegNCUnv8S8RrzW6kEOHzrQFQd1yWsgl.pB9SlOD4lzBN9.QFW', '123456', 'bandung', '2022-12-15 13:38:09', 'Member', NULL),
(11, 'maulana', 'maulana@gmail.com', '$2y$10$F/Au9ivfLyv2Z3AKnYJtweXJbhMcwHA0pdijuOnCjK/JyA8OsvEdy', '123456789', 'bekasi', '2022-12-19 01:18:28', 'Member', NULL),
(12, 'bu dewi', 'budewi@gmail.com', '$2y$10$dCstXuuTOT8QgqAqhzkcIehqjJ.BHz8eBPEAu3noW7L24ij0kc8nW', '1234567', 'cikarang', '2022-12-20 02:06:34', 'Member', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no` int(11) NOT NULL,
  `metode` varchar(25) NOT NULL,
  `norek` varchar(25) NOT NULL,
  `logo` text DEFAULT NULL,
  `an` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`no`, `metode`, `norek`, `logo`, `an`) VALUES
(1, 'Bank BCA', '13131231231', 'images/bca.jpg', 'Tokopekita'),
(2, 'Bank Mandiri', '943248844843', 'images/mandiri.jpg', 'Tokopekita'),
(3, 'DANA', '0882313132123', 'images/dana.png', 'Tokopekita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `namaproduk` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `rate` int(11) NOT NULL,
  `hargabefore` int(11) NOT NULL,
  `hargaafter` int(11) NOT NULL,
  `tgldibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `idkategori`, `namaproduk`, `gambar`, `deskripsi`, `rate`, `hargabefore`, `hargaafter`, `tgldibuat`) VALUES
(7, 1, 'Mie Meleyot', 'produk/16ACQtsDxtyOU.jpg', 'Me Meleyot adalah Mie kekinian dengan berbagai macam level dan toping', 5, 20000, 18000, '2022-12-15 05:12:23'),
(8, 2, 'Toping Udang', 'produk/162sBctmZC7Gk.jpg', 'Udang Goreng pilihan, isi 3', 5, 5000, 3000, '2022-12-15 05:14:39'),
(9, 2, 'Mozzarella', 'produk/16dmc6zyOAwtU.jpg', 'lelehan keju mozzarela yg kental dan gurih', 5, 5000, 3000, '2022-12-15 05:17:20'),
(10, 2, 'Ekstra Sambal', 'produk/16er2jn.HOOyQ.jpg', 'Ekstra sambal adalah tambahan sambal super pedas', 5, 5000, 3000, '2022-12-15 05:20:11'),
(12, 10, 'kerupuk udang', 'produk/16VuO95.sdPHw.jpg', 'kerupuk udang gurih', 5, 0, 2000, '2022-12-15 13:50:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idcart`),
  ADD UNIQUE KEY `orderid` (`orderid`),
  ADD KEY `orderid_2` (`orderid`);

--
-- Indeks untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD PRIMARY KEY (`detailid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`idkonfirmasi`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`),
  ADD KEY `idkategori` (`idkategori`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `idcart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  MODIFY `detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `idkonfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detailorder`
--
ALTER TABLE `detailorder`
  ADD CONSTRAINT `idproduk` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `cart` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `login` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `idkategori` FOREIGN KEY (`idkategori`) REFERENCES `kategori` (`idkategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
