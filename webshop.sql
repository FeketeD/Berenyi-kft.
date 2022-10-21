-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 10:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `beer`
--

CREATE TABLE `beer` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` int(10) NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `beer`
--

INSERT INTO `beer` (`productid`, `productname`, `productdesc`, `productprice`, `productimg`) VALUES
(1, 'Borsodi Dobozos', '0.5L 4.5%', 350, './image/beer/borsodid.png'),
(2, 'Borsodi Üveges', '0.5L 4.5%', 360, './image/beer/borsodiu.png'),
(3, 'Szent András Fekete', '0.5L 7%', 840, './image/beer/szentFekete.png'),
(4, 'Szent András Ogre', '0.5L 5.6%', 790, './image/beer/szentOgre.png'),
(5, 'Szent András Napkincs', '0.33L 4.9%', 890, './image/beer/szentNap.png'),
(6, 'Szent András Könnye', '0.33L 9%', 1120, './image/beer/szentKonnye.png'),
(7, 'Szent András Behemót', '0.33L 8.5%', 1420, './image/beer/szentBehemot.png'),
(8, 'Somersby Alma', '0.33L 4.5%', 550, './image/beer/somersbyAlma.png'),
(9, 'Somersby Körte', '0.33L 4.5%', 550, './image/beer/somersbyKorte.png'),
(10, 'Somersby Szeder', '0.33L 4.5%', 550, './image/beer/somersbySzeder.png'),
(11, 'Somersby Görögdinnye', '0.33L 4.5%', 550, './image/beer/somersbyDinnye.png'),
(12, 'Corona Extra', '0.355L 4.5%', 650, './image/beer/corona.png'),
(13, 'Soproni Dobozos', '0.5L 4.5%', 380, './image/beer/soproni.png'),
(14, 'Wychwood Hobgoblin Ruby', '0.5L 5.2%', 1200, './image/beer/wychwoodRuby.png'),
(15, 'Wychwood Ginger Beard', '0.5L 4.2%', 1200, './image/beer/wychwoodBeard.png');

-- --------------------------------------------------------

--
-- Table structure for table `vodka`
--

CREATE TABLE `vodka` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` float NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `vodka`
--

INSERT INTO `vodka` (`productid`, `productname`, `productdesc`, `productprice`, `productimg`) VALUES
(1, 'Absolut Vodka', '0.7L 40%', 5500, './image/vodka/absolut.png'),
(2, 'Ciroc Vodka', '0.7L 40%', 11000, './image/vodka/ciroc.png'),
(3, 'Finlandia Vodka', '0.7L 40%', 5300, './image/vodka/finlandia.png'),
(4, 'Royal Vodka', '0.7L 37.5%', 4400, './image/vodka/royal.png'),
(5, 'Fallen Angel Vodka', '0.7L 44.7%', 102000, './image/vodka/fallen.png');

-- --------------------------------------------------------

--
-- Table structure for table `whisky`
--

CREATE TABLE `whisky` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` float(10,0) NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `whisky`
--

INSERT INTO `whisky` (`productid`, `productname`, `productdesc`, `productprice`, `productimg`) VALUES
(1, 'Jim Beam Bourbon', '0,7L 40%', 6500, './image/whisky/jimbeam.png'),
(2, 'Jack Daniel\'s Tennessee', '0,7L 40%', 7800, './image/whisky/jackdaniels.png'),
(3, 'Jameson Ír Whiskey', '0,7L 40%', 7700, './image/whisky/jameson.png'),
(4, 'Ballantines Whisky', '0,7L 40%', 5800, './image/whisky/ballantines.png'),
(5, 'Chivas Regal Whisky', '1L 40%', 14000, './image/whisky/chivas.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beer`
--
ALTER TABLE `beer`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `vodka`
--
ALTER TABLE `vodka`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `whisky`
--
ALTER TABLE `whisky`
  ADD PRIMARY KEY (`productid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beer`
--
ALTER TABLE `beer`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vodka`
--
ALTER TABLE `vodka`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `whisky`
--
ALTER TABLE `whisky`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
