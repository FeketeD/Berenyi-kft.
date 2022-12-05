-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Dec 05. 10:39
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `webshop`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productsd` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` int(10) NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `productType` varchar(10) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`productid`, `productname`, `productsd`, `productprice`, `productimg`, `productdesc`, `productType`) VALUES
(1, 'Borsodi Dobozos', '0.5L 4.5%', 350, './image/beer/borsodid.png', '', 'beer'),
(2, 'Borsodi Üveges', '0.5L 4.5%', 360, './image/beer/borsodiu.png', '', 'beer'),
(3, 'Szent András Fekete', '0.5L 7%', 840, './image/beer/szentFekete.png', '', 'beer'),
(4, 'Szent András Ogre', '0.5L 5.6%', 790, './image/beer/szentOgre.png', '', 'beer'),
(5, 'Szent András Napkincs', '0.33L 4.9%', 890, './image/beer/szentNap.png', '', 'beer'),
(6, 'Szent András Könnye', '0.33L 9%', 1120, './image/beer/szentKonnye.png', '', 'beer'),
(7, 'Szent András Behemót', '0.33L 8.5%', 1420, './image/beer/szentBehemot.png', '', 'beer'),
(8, 'Somersby Alma', '0.33L 4.5%', 550, './image/beer/somersbyAlma.png', '', 'beer'),
(9, 'Somersby Körte', '0.33L 4.5%', 550, './image/beer/somersbyKorte.png', '', 'beer'),
(10, 'Somersby Szeder', '0.33L 4.5%', 550, './image/beer/somersbySzeder.png', '', 'beer'),
(11, 'Somersby Görögdinnye', '0.33L 4.5%', 550, './image/beer/somersbyDinnye.png', '', 'beer'),
(12, 'Corona Extra', '0.355L 4.5%', 650, './image/beer/corona.png', '', 'beer'),
(13, 'Soproni Dobozos', '0.5L 4.5%', 380, './image/beer/soproni.png', '', 'beer'),
(14, 'Wychwood Hobgoblin Ruby', '0.5L 5.2%', 1200, './image/beer/wychwoodRuby.png', '', 'beer'),
(15, 'Wychwood Ginger Beard', '0.5L 4.2%', 1200, './image/beer/wychwoodBeard.png', '', 'beer'),
(16, 'Jägermeister', '1L 35%', 8250, './image/liquor/jager.png', '', 'liquor'),
(17, 'Baileys', '0.7L 17%', 6000, './image/liquor/baileysO.png', '', 'liquor'),
(18, 'Baileys Espresso Creme', '0.7L 17%', 8550, './image/liquor/baileysE.png', '', 'liquor'),
(19, 'Baileys Tiramisu', '0.7L 17%', 11900, './image/liquor/baileysT.png', '', 'liquor'),
(20, 'Baileys Colada', '0.7L 17%', 11790, './image/liquor/baileysC.png', '', 'liquor'),
(21, 'Baileys Chocolat Luxe Gold', '0.7L 17%', 6000, './image/liquor/baileysG.png', '', 'liquor'),
(22, 'Tátratea Őszibarack-Fehér', '0.7L 52%', 9500, './image/liquor/tatraB.png', '', 'liquor'),
(23, 'Tátratea', '0.7L 52%', 9500, './image/liquor/tatraO.png', '', 'liquor'),
(24, 'Tátratea Erdei Gyümölcsös', '0.7L 62%', 9950, './image/liquor/tatraE.png', '', 'liquor'),
(25, 'Tátratea Betyáros', '0.7L 72%', 10550, './image/liquor/tatraBetyaros.png', '', 'liquor'),
(26, 'Unicum', '1L 40%', 8400, './image/liquor/unicum.png', '', 'liquor'),
(27, 'Absolut Vodka', '0.7L 40%', 5500, './image/vodka/absolut.png', '', 'vodka'),
(28, 'Ciroc Vodka', '0.7L 40%', 11000, './image/vodka/ciroc.png', '', 'vodka'),
(29, 'Finlandia Vodka', '0.7L 40%', 5300, './image/vodka/finlandia.png', '', 'vodka'),
(30, 'Royal Vodka', '0.7L 37.5%', 4400, './image/vodka/royal.png', '', 'vodka'),
(31, 'Fallen Angel Vodka', '0.7L 44.7%', 102000, './image/vodka/fallen.png', '', 'vodka'),
(32, 'Jim Beam Bourbon', '0.7L 40%', 6500, './image/whisky/jimbeam.png', '', 'whisky'),
(33, 'Jack Daniels Tennessee', '0.7L 40%', 7800, './image/whisky/jackdaniels.png', '', 'whisky'),
(34, 'Jameson Ír Whiskey', '0.7L 40%', 7700, './image/whisky/jameson.png', '', 'whisky'),
(35, 'Ballantines Whisky', '0.7L 40%', 5800, './image/whisky/ballantines.png', '', 'whisky'),
(36, 'Chivas Regal Whisky', '1L 40%', 14000, './image/whisky/chivas.png', '', 'whisky'),
(37, 'Törley Gála Sec Száraz', '0.75L', 1400, './image/wine/torleyG.png', '', 'wine'),
(38, 'Törley Charmant Doux Édes', '0.75L', 1400, './image/wine/torleyC.png', '', 'wine'),
(39, 'Martini Asti Spumante', '0.75L 4.5%', 2500, './image/wine/martiniA.png', '', 'wine'),
(40, 'Martini Bianco', '1L 15%', 3550, './image/wine/martiniB.png', '', 'wine'),
(41, 'Martini Exrta Dry', '0.75L 18%', 2850, './image/wine/martiniE.png', '', 'wine'),
(42, 'Chandon Garden Spritz', '0.75L 11.5%', 7890, './image/wine/chandon.png', '', 'wine'),
(43, 'Juhász Rosé', '0.75L 2021', 1190, './image/wine/juhaszR.png', '', 'wine'),
(44, 'Nyakas Rosé', '0.75L 2021', 1650, './image/wine/nyakasR.png', '', 'wine'),
(45, 'Frittmann Irsai Olivér', '0.75L 2022', 1290, './image/wine/oliverF.png', '', 'wine'),
(46, 'Nyakas Irsai Olivér', '0.75L 2021', 2390, './image/wine/oliverNy.png', '', 'wine'),
(47, 'St. Andrea Áldás', '0.75L 2020', 4650, './image/wine/andreaA.png', '', 'wine');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`productid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
