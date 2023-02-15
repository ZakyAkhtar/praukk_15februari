-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2023 pada 08.36
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praukk_zakya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyewa`
--

CREATE TABLE `tb_penyewa` (
  `id_penyewa` int(11) NOT NULL,
  `nama_penyewa` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_dvd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_penyewa`
--

INSERT INTO `tb_penyewa` (`id_penyewa`, `nama_penyewa`, `alamat`, `id_dvd`) VALUES
(1, 'nana', 'lol', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb__dvd`
--

CREATE TABLE `tb__dvd` (
  `id_dvd` int(11) NOT NULL,
  `genre_film` varchar(30) NOT NULL,
  `judul_film` varchar(60) NOT NULL,
  `tahun_film` int(4) NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb__dvd`
--

INSERT INTO `tb__dvd` (`id_dvd`, `genre_film`, `judul_film`, `tahun_film`, `tanggal_sewa`, `tanggal_kembali`, `harga`) VALUES
(1, 'ml', 'la', 2020, '2023-01-28', '2023-02-25', 21000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD PRIMARY KEY (`id_penyewa`),
  ADD KEY `penyewa_dvd` (`id_dvd`);

--
-- Indeks untuk tabel `tb__dvd`
--
ALTER TABLE `tb__dvd`
  ADD PRIMARY KEY (`id_dvd`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  MODIFY `id_penyewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb__dvd`
--
ALTER TABLE `tb__dvd`
  MODIFY `id_dvd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD CONSTRAINT `penyewa_dvd` FOREIGN KEY (`id_dvd`) REFERENCES `tb__dvd` (`id_dvd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
