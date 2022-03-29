-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Mar 2022 pada 23.12
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel_mirans12`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `phoneno`, `email`, `cdate`, `approval`) VALUES
(1, 'mira', 123456, 'miranovitasari59@gmail.com', '2022-03-23', 'Allowed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `usname` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `usname`, `pass`) VALUES
(1, 'miranovitasari59@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `newsletterlog`
--

CREATE TABLE `newsletterlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(52) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `news` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `newsletterlog`
--

INSERT INTO `newsletterlog` (`id`, `title`, `subject`, `news`) VALUES
(1, 'asd', 'Send me an Email', 'asd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`) VALUES
(7, 'Dr.', 'komang', 'komeng', 'Deluxe Room', 'Triple', 4, '2022-03-24', '2022-03-26', 1760.00, 1826.00, 52.80, 'Full Board', 13.20, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `cusid`) VALUES
(1, 'Superior Room', 'Single', 'NotFree', 3),
(2, 'Superior Room', 'Double', 'Free', NULL),
(3, 'Superior Room', 'Triple', 'Free', NULL),
(4, 'Single Room', 'Quad', 'Free', NULL),
(5, 'Superior Room', 'Quad', 'Free', NULL),
(6, 'Deluxe Room', 'Single', 'Free', NULL),
(7, 'Deluxe Room', 'Double', 'Free', 0),
(8, 'Deluxe Room', 'Triple', 'Free', 0),
(9, 'Deluxe Room', 'Quad', 'Free', NULL),
(10, 'Guest House', 'Single', 'Free', NULL),
(11, 'Guest House', 'Double', 'Free', NULL),
(12, 'Guest House', 'Quad', 'Free', NULL),
(13, 'Single Room', 'Single', 'Free', NULL),
(14, 'Single Room', 'Double', 'Free', NULL),
(15, 'Single Room', 'Triple', 'Free', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text DEFAULT NULL,
  `LName` text DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text DEFAULT NULL,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roombook`
--

INSERT INTO `roombook` (`id`, `Title`, `FName`, `LName`, `Email`, `National`, `Country`, `Phone`, `TRoom`, `Bed`, `NRoom`, `Meal`, `cin`, `cout`, `stat`, `nodays`) VALUES
(3, 'Dr.', 'JONI', 'DEEP', 'mshsh@gmail.com', 'Sri Lankan', 'Algeria', '0890898797', 'Superior Room', 'Single', '1', 'Room only', '2022-03-24', '2022-03-25', 'Conform', 1),
(5, 'Miss.', 'zidan', 'joni', 'mjksjah@gmail.com', 'Sri Lankan', 'Indonesia', '08478738623', 'Superior Room', 'Single', '3', 'Half Board', '2022-03-23', '2022-03-31', 'Not Conform', 8),
(6, 'Mr.', 'juna', 'edah', 'sada@gmail.com', 'Non Sri Lankan ', 'Bangladesh', '0898347834', 'Superior Room', 'Double', '3', 'Full Board', '2022-03-24', '2022-03-30', 'Not Conform', 6),
(8, 'Miss.', 'mira', 'nopitasari', 'miranovitasari59@gmail.com', 'Sri Lankan', 'Indonesia', '089877887904', 'Superior Room', 'Double', '2', 'Room only', '2022-03-28', '2022-03-29', 'Not Conform', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `newsletterlog`
--
ALTER TABLE `newsletterlog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `newsletterlog`
--
ALTER TABLE `newsletterlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
