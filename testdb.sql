-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Sep 2023 pada 11.55
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
('la', 'lain lain', 'lain lailah pokoknya ceunah', '2023-09-19 09:03:13', '2023-09-19 09:03:13'),
('ma', 'makanan', 'makanan lezat', '2023-09-19 07:32:29', '2023-09-19 07:32:29'),
('mi', 'minuman', 'minuman segar', '2023-09-19 09:02:35', '2023-09-19 09:02:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(10) NOT NULL,
  `price` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `createdAt`, `updatedAt`) VALUES
(1, 'mi ayam', 'ma', 10000, '2023-09-19 03:58:15', '2023-09-19 06:26:28'),
(2, 'bakso', 'ma', 13000, '2023-09-19 01:25:32', '2023-09-19 01:25:32'),
(3, 'mi ayam bakso', 'ma', 15000, '2023-09-19 04:01:34', '2023-09-19 04:01:34'),
(4, 'ceker', 'ma', 5000, '2023-09-19 01:26:08', '2023-09-19 01:26:08'),
(5, 'es teh', 'mi', 5000, '2023-09-19 01:26:19', '2023-09-19 01:26:19'),
(6, 'jus jeruk', 'mi', 7000, '2023-09-19 01:26:33', '2023-09-19 01:26:33'),
(7, 'air putih', 'mi', 2000, '2023-09-19 01:26:49', '2023-09-19 01:26:49'),
(8, 'roko', 'la', 30000, '2023-09-19 01:27:05', '2023-09-19 01:27:05'),
(9, 'tes', 'ma', 20000, '2023-09-20 03:21:06', '2023-09-20 03:21:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ps`
--

CREATE TABLE `ps` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'Rico kurnia pujiantoro', 'cocomail@gmail.com', '2023-09-20 03:14:56', '2023-09-20 03:14:56'),
(2, 'bafir', 'bafit@gmail.com', '2023-09-20 03:19:11', '2023-09-20 03:19:11'),
(3, 'tes', 'cobamail', '2023-09-20 03:22:40', '2023-09-20 03:22:40'),
(4, 'tes', 'cobamail', '2023-09-20 03:30:19', '2023-09-20 03:30:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlistproducts`
--

CREATE TABLE `wishlistproducts` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wishlistproducts`
--

INSERT INTO `wishlistproducts` (`id`, `userId`, `productId`, `createdAt`, `updatedAt`) VALUES
(7, 1, 1, '2023-09-20 05:00:33', '2023-09-20 05:00:33'),
(8, 1, 1, '2023-09-20 05:47:14', '2023-09-20 05:47:14'),
(9, 1, 3, '2023-09-20 05:47:33', '2023-09-20 05:47:33'),
(10, 2, 3, '2023-09-20 05:48:01', '2023-09-20 05:48:01'),
(12, 1, 1, '2023-09-20 06:22:41', '2023-09-20 06:22:41'),
(13, 1, 5, '2023-09-20 06:22:52', '2023-09-20 06:22:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ps`
--
ALTER TABLE `ps`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wishlistproducts`
--
ALTER TABLE `wishlistproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `productId` (`productId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `ps`
--
ALTER TABLE `ps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `wishlistproducts`
--
ALTER TABLE `wishlistproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `wishlistproducts`
--
ALTER TABLE `wishlistproducts`
  ADD CONSTRAINT `wishlistproducts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wishlistproducts_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
