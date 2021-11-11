-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Nov 2021 pada 09.30
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `pengarang` varchar(225) NOT NULL,
  `penerbit` varchar(225) NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `gambar`, `created_at`, `update_at`) VALUES
(18, 'Behind The Story', 'Zefmon', 'Romancius', '258147106-352-k8857051.jpg', '2021-11-09 15:42:09', '2021-11-10 10:43:57'),
(19, 'Alaia', 'Raden Chedid', 'Asoka Aksara X Loveable', '57322213__SY475_1.jpg', '2021-11-09 15:42:52', NULL),
(20, 'Dikta Dan Hukum', 'Dhia\'an Farah', 'Asoka Aksara X Loveable', 'dikta_dan_hukum1.jpg', '2021-11-09 15:43:40', NULL),
(21, 'Mariposa', 'LulukHF', 'Coconuts Books', '5849eed9e99dc4215430c18076d5f2741.jpg', '2021-11-09 15:44:09', NULL),
(22, 'Rahasia Kita', 'FiraKr', 'Romancius', 'unnamed1.jpg', '2021-11-09 15:44:56', NULL),
(23, 'Theory Dika Vs Sasa', 'FiraKr', 'Romancius', 'unnamed_(1).jpg', '2021-11-09 15:45:32', NULL),
(24, 'Geez And Ann', 'Rintik Sendu', 'GagasMedia', '150878964-288-k2443891.jpg', '2021-11-09 15:46:42', '2021-11-09 15:47:28'),
(25, 'Geez And Ann 2', 'Rintik Sendu', 'GagasMedia', '104131_f1.jpg', '2021-11-09 15:47:11', NULL),
(26, 'Kata', 'Rintik Sendu', 'GagasMedia', 'kata.jpeg', '2021-11-09 15:48:07', NULL),
(27, 'Einstein', 'Yourkidle', 'GagasMedia', '110197_f1.jpg', '2021-11-09 15:48:52', NULL),
(28, 'Cantik Itu Luka', ' Eka Kurniawan', 'Gramedia', '220px-CiL_(sampul)1.jpg', '2021-11-09 16:12:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `judul`) VALUES
(1, 'lablabstore');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`) VALUES
(1, 'labibah salwa', 'salwarenov@gmail.com', 'salwa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
