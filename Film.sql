-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Vært: localhost:8889
-- Genereringstid: 15. 09 2022 kl. 09:27:52
-- Serverversion: 5.7.34
-- PHP-version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Film`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `Film`
--

CREATE TABLE `Film` (
  `FilmId` int(10) UNSIGNED NOT NULL,
  `FilmNavn` varchar(100) DEFAULT NULL,
  `FilmDato` decimal(9,0) DEFAULT NULL,
  `FilmBas` text,
  `FilmRate` decimal(9,1) DEFAULT NULL,
  `FilmGenre` varchar(100) DEFAULT NULL,
  `FilmMedvirkende` varchar(200) DEFAULT NULL,
  `FilmTid` decimal(9,2) DEFAULT NULL,
  `FilmSprog` varchar(100) DEFAULT NULL,
  `FilmAlder` decimal(9,0) DEFAULT NULL,
  `FilmOprindelsesland` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `Film`
--

INSERT INTO `Film` (`FilmId`, `FilmNavn`, `FilmDato`, `FilmBas`, `FilmRate`, `FilmGenre`, `FilmMedvirkende`, `FilmTid`, `FilmSprog`, `FilmAlder`, `FilmOprindelsesland`) VALUES
(1, 'hej', '4', '<p>bsfdbnsfn</p>', '4.0', 'srg', 'ana', '6.00', 'dansk', '5', 'danmark'),
(2, 'ksjdgf', '485', '<p>adfkbn&oslash;ldfkhn</p>', '2.0', 'ljsfh', 'adslkgfh', '284.00', 'kldfbn', '2930', 'ds,bjn'),
(3, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(4, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(5, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(6, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(7, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(8, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(9, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(10, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(11, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(12, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(13, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(14, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(15, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(16, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(17, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(18, 'hej', '5', '<p>ewferg</p>', '4.0', 'ljsfh', 'ana', '4.00', 'hfjk', '3', 'danmark'),
(19, 'ksjdgf', '4', '', '3.0', 'srg', 'adslkgfh', '4.00', 'dansk', '3', 'danmark'),
(20, 'ksjdgf', '4', '', '3.0', 'srg', 'adslkgfh', '4.00', 'dansk', '3', 'danmark'),
(21, 'ksjdgf', '4', '', '3.0', 'srg', 'adslkgfh', '4.00', 'dansk', '3', 'danmark'),
(22, 'ksjdgf', '4', '', '3.0', 'srg', 'adslkgfh', '4.00', 'dansk', '3', 'danmark'),
(23, 'ksjdgf', '4', '', '3.0', 'srg', 'adslkgfh', '4.00', 'dansk', '3', 'danmark'),
(24, 'ksjdgf', '4', '', '3.0', 'srg', 'adslkgfh', '4.00', 'dansk', '3', 'danmark');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`FilmId`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `Film`
--
ALTER TABLE `Film`
  MODIFY `FilmId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
