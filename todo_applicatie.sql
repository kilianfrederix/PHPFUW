-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 22, 2024 at 12:22 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_applicatie`
--

-- --------------------------------------------------------

--
-- Table structure for table `gastenboek`
--

CREATE TABLE `gastenboek` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `beschrijving` text NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `aangemaakt_op` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gastenboek`
--

INSERT INTO `gastenboek` (`id`, `naam`, `score`, `beschrijving`, `hotel_id`, `aangemaakt_op`) VALUES
(1, 'Bert Lempens', 4, 'Heel mooi gelegen en super service!', 2, '2024-01-10 14:40:40'),
(2, 'Danny Drijvers', 3, 'Mooi gebouw, lekker ontbijt, maar de room service was iets minder.', 1, '2024-01-10 14:40:40'),
(3, 'Stef Hermans', 1, 'Zeer slechte service. Niet aan te raden.', 1, '2024-01-10 14:40:40'),
(4, 'Bert Lempens', 2, 'Niet aan te raden. Room service was heel erg slecht.', 1, '2024-01-10 14:40:40'),
(5, 'Danny Drijvers', 4, 'Alles was tiptop in orde!', 3, '2024-01-10 14:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `naam`) VALUES
(1, 'Het Centrum'),
(2, 'In De Boogstraat'),
(3, 'Aan\'t Station');

-- --------------------------------------------------------

--
-- Table structure for table `todo_items`
--

CREATE TABLE `todo_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `omschrijving` varchar(255) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `afgewerkt` tinyint(1) NOT NULL DEFAULT '0',
  `prioriteit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `todo_items`
--

INSERT INTO `todo_items` (`id`, `omschrijving`, `datum`, `afgewerkt`, `prioriteit`) VALUES
(1, 'gras maaien', '2024-01-09 11:16:47', 0, 0),
(3, 'php opdracht afwerken', '2024-01-09 11:16:47', 0, 2),
(8, 'naar werk vertrekken', '2024-01-10 14:32:09', 0, 4),
(9, 'fsdfsdfsdfsd', '2024-01-16 10:15:39', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gastenboek`
--
ALTER TABLE `gastenboek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todo_items`
--
ALTER TABLE `todo_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gastenboek`
--
ALTER TABLE `gastenboek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `todo_items`
--
ALTER TABLE `todo_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
