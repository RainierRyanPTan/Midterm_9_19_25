-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2025 at 07:29 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
CREATE TABLE IF NOT EXISTS `guests` (
  `guestID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `midinitial` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `mobile` int NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` int NOT NULL,
  PRIMARY KEY (`guestID`),
  UNIQUE KEY `email` (`email`,`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`guestID`, `name`, `midinitial`, `lastname`, `email`, `username`, `birthdate`, `mobile`, `address`, `password`) VALUES
(1, 'Rainier Ryan', 'P', 'Tan', 'rainierryantan@gmail.com', 'raininmnl', '2005-09-15', 912345678, 'San Joaquin', 1243),
(2, 'Nics', 'L', 'Botin', 'nicsbots11@gmail.com', 'mamiminger', '2000-03-27', 945353256, 'Lambunao', 1244);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guests`
--
ALTER TABLE `guests`
  ADD CONSTRAINT `guests_ibfk_1` FOREIGN KEY (`guestID`) REFERENCES `payments` (`guestID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
