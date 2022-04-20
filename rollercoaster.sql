-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 08 apr 2022 om 10:09
-- Serverversie: 8.0.27
-- PHP-versie: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvcframework`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rollercoaster`
--

DROP TABLE IF EXISTS `rollercoaster`;
CREATE TABLE IF NOT EXISTS `rollercoaster` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nameRollerCoaster` varchar(200) NOT NULL,
  `nameAmusementPark` varchar(200) NOT NULL,
  `country` varchar(100) NOT NULL,
  `topspeed` tinyint NOT NULL,
  `height` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `rollercoaster`
--

INSERT INTO `rollercoaster` (`id`, `nameRollerCoaster`, `nameAmusementPark`, `country`, `topspeed`, `height`) VALUES
(1, 'Red Force ', 'Ferrari land', 'Spanje', 127, 112),
(2, 'Ring Racer', 'Race circuit nürnberg', 'Duitsland', 120, 110),
(3, 'Hyperion', 'EnergyLandia', 'Polen', 100, 77),
(4, 'Furios Baco', 'PortAventura', 'Spanje', 99, 23),
(5, 'Shambala', 'PortAventura', 'Spanje', 90, 102);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
