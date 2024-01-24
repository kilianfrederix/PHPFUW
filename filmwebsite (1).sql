-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 22, 2024 at 12:21 PM
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
-- Database: `filmwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `voornaam` varchar(255) NOT NULL,
  `achternaam` varchar(255) NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `voornaam`, `achternaam`, `film_id`) VALUES
(1, 'Tom', 'Holland', 1),
(2, 'Michael', 'Keating', 1),
(3, 'Robert', 'Downey Jr.', 1),
(4, 'Marisa', 'Tomei', 1);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(10) UNSIGNED NOT NULL,
  `voornaam` varchar(255) NOT NULL,
  `achternaam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `voornaam`, `achternaam`) VALUES
(1, 'Jon', 'Watts'),
(2, 'Jonathan', 'Goldstein');

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(10) UNSIGNED NOT NULL,
  `Titel` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `beschrijving` text NOT NULL,
  `intro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `Titel`, `cover`, `beschrijving`, `intro`) VALUES
(1, 'Spiderman-Homecoming', 'images/poster.jpg', 'Peter Parker balances his life as an ordinary high school student in Queens with his superhero alter-ego Spider-Man, and finds himself on the trail of a new menace prowling the skies of New York City.', 'In the aftermath of Captain America: Civil War (2016), the fifteen-year-old sophomore and Tony Starks protégé, Peter Parker, finds himself back to his hometown of Queens, New York, trying to juggle high school and his super hero alter ego. On pins and needles, waiting for his mentor to give him a chance to prove his mettle and become an official Avenger, instead, Stark, intent on protecting him, keeps Peter on a short leash, fearful that, one of these days, the boy may bite off more than he can chew. And then, the Vulture, a winged super-criminal brandishing advanced Chitauri weaponry, emerges, and of course, Parker sees his arrival as a golden opportunity to demonstrate that he has what it takes to be part of the Earths mightiest team of super-heroes.\r\n\r\nIs Spider-Man ready to be more than the neighbourhoods friendly, web-slinging defender');

-- --------------------------------------------------------

--
-- Table structure for table `film_directors`
--

CREATE TABLE `film_directors` (
  `id` int(10) UNSIGNED NOT NULL,
  `director_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_directors`
--

INSERT INTO `film_directors` (`id`, `director_id`, `film_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `film_karakters`
--

CREATE TABLE `film_karakters` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_karakters`
--

INSERT INTO `film_karakters` (`id`, `film_id`, `actor_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `film_tags`
--

CREATE TABLE `film_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_tags`
--

INSERT INTO `film_tags` (`id`, `film_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fotos`
--

INSERT INTO `fotos` (`id`, `film_id`, `url`) VALUES
(1, 1, 'images/screenshot1.jpg'),
(2, 1, 'images/screenshot2.jpg'),
(3, 1, 'images/screenshot3.jpg'),
(4, 1, 'images/screenshot4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `karakters`
--

CREATE TABLE `karakters` (
  `id` int(10) UNSIGNED NOT NULL,
  `voornaam` varchar(255) NOT NULL,
  `achternaam` varchar(255) NOT NULL,
  `film_karakter_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `karakters`
--

INSERT INTO `karakters` (`id`, `voornaam`, `achternaam`, `film_karakter_id`) VALUES
(1, 'Peter', 'Parker', 1),
(2, 'Adrian', 'Toomes', 2),
(3, 'Tony', 'Stark', 3),
(4, 'May', 'Parker', 4);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ID` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `titel` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `datum` date NOT NULL,
  `score` int(11) NOT NULL,
  `inhout` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ID`, `film_id`, `titel`, `username`, `email`, `datum`, `score`, `inhout`) VALUES
(1, 1, 'Lorem, ipsum.', 'blempens', 'blempens@gmail.com', '2021-11-21', 6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, culpa cum. Et tempora facilis necessitatibus quaerat nobis iste sint vitae.'),
(2, 1, 'Lorem, ipsum.', 'blempens', 'blempens@gmail.com', '2021-11-21', 6, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus, culpa cum. Et tempora facilis necessitatibus quaerat nobis iste sint vitae.'),
(3, 1, 'Beste film', 'Kilian', 'kilianfrederix@gmail.com', '2024-01-09', 9, 'ik was helemaal weggeblazen van deze film geweldig.');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `naam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `film_id`, `naam`) VALUES
(1, 1, 'Marvel'),
(2, 1, 'Spider-man'),
(3, 1, 'comics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_directors`
--
ALTER TABLE `film_directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_karakters`
--
ALTER TABLE `film_karakters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_tags`
--
ALTER TABLE `film_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karakters`
--
ALTER TABLE `karakters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `film_directors`
--
ALTER TABLE `film_directors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `film_karakters`
--
ALTER TABLE `film_karakters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `film_tags`
--
ALTER TABLE `film_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `karakters`
--
ALTER TABLE `karakters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
