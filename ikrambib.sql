-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2022 at 12:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikrambib`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `num` int(50) NOT NULL,
  `nom` varchar(1000) NOT NULL,
  `prenom` varchar(1000) NOT NULL,
  `date_naissance` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`num`, `nom`, `prenom`, `date_naissance`) VALUES
(1, 'McGovern', 'Robert ', '24/01/1928'),
(2, 'Mariëlle ', 'Hoefnagels', '12/11/1946'),
(3, 'Pierre \r\n', 'Mayé', '10/25/1988');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `issn` int(50) NOT NULL,
  `titre` varchar(1000) NOT NULL,
  `resume` varchar(1000) NOT NULL,
  `nbpages` varchar(1000) NOT NULL,
  `domaine` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`issn`, `titre`, `resume`, `nbpages`, `domaine`) VALUES
(812991907, 'CodeNotes for J2EE: EJB, JDBC, JSP, and Servlets ', 'CodeNotes provides the most succinct, accurate, and speedy way for a developer to ramp up on a new technology or language. Unlike other programming books, CodeNotes drills down to the core aspects of a technology, focusing on the key elements needed in order to understand it quickly and implement it immediately. It is a unique resource for developers, filling the gap between comprehensive manuals and pocket reference.', '240', 'informatique'),
(1260259048, 'Biology - Concepts and Investigations ', 'Concepts and Investigations, an introductory biology textbook written to explain the general concepts of biology at a level of detail that allows students to understand concepts rather than memorize details.\r\n\r\n\r\n', '200', 'Biologie'),
(1264388950, 'Loose Leaf for Biology: The Essentials', 'Mariëlle Hoefnagels is an associate professor in the Department of Biology and the Department of Microbiology and Plant Biology at the University of Oklahoma, where she teaches courses in introductory biology, mycology, and science writing. She has received the University of Oklahoma General Education Teaching Award and the Longmire Prize (the Teaching Scholars Award from the College of Arts and Sciences)', '400', 'biologie'),
(1414896523, 'Aide-mÃ©moire Composants Ã©lectroniques', 'Cet aide-memoire dÃcrit de maniÃ¨re simple et pratique les principales caractÃristiques des composants de base, analogiques ou logiques, de lâÃlectronique :  leurs propriÃtÃs physiques et leurs principes de fonctionnement .', '177', 'electronique');

-- --------------------------------------------------------

--
-- Table structure for table `ecrit`
--

CREATE TABLE `ecrit` (
  `issn` int(50) NOT NULL,
  `num` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ecrit`
--

INSERT INTO `ecrit` (`issn`, `num`) VALUES
(812991907, 1),
(1260259048, 2),
(1264388950, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`issn`);

--
-- Indexes for table `ecrit`
--
ALTER TABLE `ecrit`
  ADD PRIMARY KEY (`issn`,`num`),
  ADD KEY `FK_num` (`num`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ecrit`
--
ALTER TABLE `ecrit`
  ADD CONSTRAINT `FK_issn` FOREIGN KEY (`issn`) REFERENCES `books` (`issn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_num` FOREIGN KEY (`num`) REFERENCES `authors` (`num`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
