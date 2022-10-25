-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Okt 25. 11:18
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
-- Tábla szerkezet ehhez a táblához `beer`
--

CREATE TABLE `beer` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` int(10) NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `beer`
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
-- Tábla szerkezet ehhez a táblához `liquor`
--

CREATE TABLE `liquor` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` int(10) NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `liquor`
--

INSERT INTO `liquor` (`productid`, `productname`, `productdesc`, `productprice`, `productimg`) VALUES
(1, 'Jägermeister', '1L 35%', 8250, './image/liquor/jager.png'),
(2, 'Baileys', '0.7L 17%', 6000, './image/liquor/baileysO.png'),
(3, 'Baileys Espresso Creme', '0.7L 17%', 8550, './image/liquor/baileysE.png'),
(4, 'Baileys Tiramisu', '0.7L 17%', 11900, './image/liquor/baileysT.png'),
(5, 'Baileys Colada', '0.7L 17%', 11790, './image/liquor/baileysC.png'),
(6, 'Baileys Chocolat Luxe Gold', '0.7L 17%', 6000, './image/liquor/baileysG.png'),
(7, 'Tátratea Őszibarack-Fehér', '0.7L 52%', 9500, './image/liquor/tatraB.png'),
(8, 'Tátratea', '0.7L 52%', 9500, './image/liquor/tatraO.png'),
(9, 'Tátratea Erdei Gyümölcsös', '0.7L 62%', 9950, './image/liquor/tatraE.png'),
(10, 'Tátratea Betyáros', '0.7L 72%', 10550, './image/liquor/tatraBetyaros.png'),
(11, 'Unicum', '1L 40%', 8400, './image/liquor/unicum.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vodka`
--

CREATE TABLE `vodka` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` float NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vodka`
--

INSERT INTO `vodka` (`productid`, `productname`, `productdesc`, `productprice`, `productimg`) VALUES
(1, 'Absolut Vodka', '0.7L 40%', 5500, './image/vodka/absolut.png'),
(2, 'Ciroc Vodka', '0.7L 40%', 11000, './image/vodka/ciroc.png'),
(3, 'Finlandia Vodka', '0.7L 40%', 5300, './image/vodka/finlandia.png'),
(4, 'Royal Vodka', '0.7L 37.5%', 4400, './image/vodka/royal.png'),
(5, 'Fallen Angel Vodka', '0.7L 44.7%', 102000, './image/vodka/fallen.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `whisky`
--

CREATE TABLE `whisky` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` float(10,0) NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `whisky`
--

INSERT INTO `whisky` (`productid`, `productname`, `productdesc`, `productprice`, `productimg`) VALUES
(1, 'Jim Beam Bourbon', '0.7L 40%', 6500, './image/whisky/jimbeam.png'),
(2, 'Jack Daniel\'s Tennessee', '0.7L 40%', 7800, './image/whisky/jackdaniels.png'),
(3, 'Jameson Ír Whiskey', '0.7L 40%', 7700, './image/whisky/jameson.png'),
(4, 'Ballantines Whisky', '0.7L 40%', 5800, './image/whisky/ballantines.png'),
(5, 'Chivas Regal Whisky', '1L 40%', 14000, './image/whisky/chivas.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `wine`
--

CREATE TABLE `wine` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` int(10) NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `wine`
--

INSERT INTO `wine` (`productid`, `productname`, `productdesc`, `productprice`, `productimg`) VALUES
(1, 'Törley Gála Sec Száraz', '0.75L', 1400, './image/wine/torleyG.png'),
(2, 'Törley Charmant Doux Édes', '0.75L', 1400, './image/wine/torleyC.png'),
(3, 'Martini Asti Spumante', '0.75L 4.5%', 2500, './image/wine/martiniA.png'),
(4, 'Martini Bianco', '1L 15%', 3550, './image/wine/martiniB.png'),
(5, 'Martini Exrta Dry', '0.75L 18%', 2850, './image/wine/martiniE.png'),
(6, 'Chandon Garden Spritz', '0.75L 11.5%', 7890, './image/wine/chandon.png'),
(7, 'Juhász Rosé', '0.75L 2021', 1190, './image/wine/juhaszR.png'),
(8, 'Nyakas Rosé', '0.75L 2021', 1650, './image/wine/nyakasR.png'),
(9, 'Frittmann Irsai Olivér', '0.75L 2022', 1290, './image/wine/oliverF.png'),
(10, 'Nyakas Irsai Olivér', '0.75L 2021', 2390, './image/wine/oliverNy.png'),
(11, 'St. Andrea Áldás', '0.75L 2020', 4650, './image/wine/andreaA.png');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `beer`
--
ALTER TABLE `beer`
  ADD PRIMARY KEY (`productid`);

--
-- A tábla indexei `liquor`
--
ALTER TABLE `liquor`
  ADD PRIMARY KEY (`productid`);

--
-- A tábla indexei `vodka`
--
ALTER TABLE `vodka`
  ADD PRIMARY KEY (`productid`);

--
-- A tábla indexei `whisky`
--
ALTER TABLE `whisky`
  ADD PRIMARY KEY (`productid`);

--
-- A tábla indexei `wine`
--
ALTER TABLE `wine`
  ADD PRIMARY KEY (`productid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `beer`
--
ALTER TABLE `beer`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `liquor`
--
ALTER TABLE `liquor`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `vodka`
--
ALTER TABLE `vodka`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `whisky`
--
ALTER TABLE `whisky`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `wine`
--
ALTER TABLE `wine`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
