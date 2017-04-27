-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2017 at 06:57 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `messmanagement`
--
CREATE DATABASE IF NOT EXISTS `messmanagement` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `messmanagement`;

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE IF NOT EXISTS `meal` (
  `MealID` int(11) NOT NULL,
  `MealCost` float NOT NULL,
  PRIMARY KEY (`MealID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`MealID`, `MealCost`) VALUES
(1, 350),
(2, 400),
(3, 500);

-- --------------------------------------------------------

--
-- Table structure for table `mess`
--

CREATE TABLE IF NOT EXISTS `mess` (
  `TIME` datetime NOT NULL,
  `ExtraCharge` float NOT NULL,
  `Meal` int(11) NOT NULL,
  `Utensil` int(11) NOT NULL,
  PRIMARY KEY (`TIME`),
  KEY `fk_Route` (`Meal`),
  KEY `fk_Route1` (`Utensil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mess`
--

INSERT INTO `mess` (`TIME`, `ExtraCharge`, `Meal`, `Utensil`) VALUES
('2017-04-19 03:00:00', 300, 2, 2),
('2017-04-19 08:00:00', 100, 3, 1),
('2017-04-19 10:00:00', 300, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `RNo` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `RoomNo` int(11) NOT NULL,
  `AmountDamage` float DEFAULT NULL,
  `AmountFood` float DEFAULT NULL,
  PRIMARY KEY (`RNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`RNo`, `Name`, `RoomNo`, `AmountDamage`, `AmountFood`) VALUES
(1, 'Dhruv Prakash', 269, 100, 100),
(2, 'Anvesh', 111, 200, 300),
(3, 'Gaurav ', 32, 0, 0),
(4, 'Panshul', 4, 23, 567);

-- --------------------------------------------------------

--
-- Table structure for table `utensil`
--

CREATE TABLE IF NOT EXISTS `utensil` (
  `UtensilId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UtensilCost` float NOT NULL,
  PRIMARY KEY (`UtensilId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utensil`
--

INSERT INTO `utensil` (`UtensilId`, `Quantity`, `UtensilCost`) VALUES
(1, 10, 300),
(2, 40, 100),
(3, 20, 300);

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE IF NOT EXISTS `visitor` (
  `Id` int(11) NOT NULL,
  `VisitorName` varchar(32) NOT NULL,
  `FoodCharge` float DEFAULT NULL,
  `DamageCharge` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`Id`, `VisitorName`, `FoodCharge`, `DamageCharge`) VALUES
(1, 'Mr A', 20, 0),
(2, 'Mr B', 300, 0),
(3, 'Mr C', 300, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mess`
--
ALTER TABLE `mess`
  ADD CONSTRAINT `fk_Route` FOREIGN KEY (`Meal`) REFERENCES `meal` (`MealID`),
  ADD CONSTRAINT `fk_Route1` FOREIGN KEY (`Utensil`) REFERENCES `utensil` (`UtensilId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
