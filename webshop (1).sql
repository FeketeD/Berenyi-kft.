-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Dec 06. 12:51
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
  `productdesc` varchar(350) COLLATE utf8_hungarian_ci NOT NULL,
  `productType` varchar(10) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`productid`, `productname`, `productsd`, `productprice`, `productimg`, `productdesc`, `productType`) VALUES
(1, 'Borsodi Dobozos', '0.5L 4.5%', 350, './image/beer/borsodid.png', 'Vonzereje a komlónak köszönhető kellemesen kesernyés íz és a csillogó aranysárga szín, melyet dús, finom pórusú hab koronáz. A Borsodi Sör egy minden tekintetben arányos, kiegyensúlyozozz ital azok számára, akik ragaszkodnak a megszokott magas színvonalhoz.', 'beer'),
(2, 'Borsodi Üveges', '0.5L 4.5%', 360, './image/beer/borsodiu.png', 'Vonzereje a komlónak köszönhető kellemesen kesernyés íz és a csillogó aranysárga szín, melyet dús, finom pórusú hab koronáz. A Borsodi Sör egy minden tekintetben arányos, kiegyensúlyozozz ital azok számára, akik ragaszkodnak a megszokott magas színvonalhoz.', 'beer'),
(3, 'Szent András Fekete', '0.5L 7%', 840, './image/beer/szentFekete.png', 'A tradicionális baksör ízét a malátajegyek határozzák meg: a pilzeni maláta mellett kidomborodnak a karamell-maláta édes, valamint a festőmaláta pörkölt karakterei. Mindezt megfelelően fűszerezi a hallertau perle komló, amely egy erős, testes, sört eredményez.', 'beer'),
(4, 'Szent András Ogre', '0.5L 5.6%', 790, './image/beer/szentOgre.png', 'A sör egy markáns megkomlózott csatornát vág az íz- és alkoholérzékelés, és a legbarátságosabb sörkóstolások világa közé. A heves sörkóstolók jó lesz azonban, ha vigyáznak, mert az Ogre behízelgi és itatja magát a legjobb helyeken is.', 'beer'),
(5, 'Szent András Napkincs', '0.33L 4.9%', 890, './image/beer/szentNap.png', 'A Napkincs egy igazán jó búzasörhöz méltón a világ egyik legjobb búzaélesztőjével, a WLP300-zal készült, búzamaláta, pilseni maláta, melanoidin maláta, valamint hallertau perle és magnum komlók felhasználásával.', 'beer'),
(6, 'Szent András Könnye', '0.33L 9%', 1120, './image/beer/szentKonnye.png', 'A Szent András Könnye egy kimondottan határozott sörélmény, amely egy hófödte téli éjszakán vagy egy forró nyári délutánon is ugyanolyan érzékletesen fejti ki az erejét.', 'beer'),
(7, 'Szent András Behemót', '0.33L 8.5%', 1420, './image/beer/szentBehemot.png', 'Hosszas kísérletezés végeredményeként legsötétebb vágyainkat zártuk palackba: a tökéletes, mégis közérthető balti portert. Egy robusztus barna sört aszalt gyümölcsökre emlékeztető illatokkal, pörkölt kávés, karamelles ízjegyekkel, ami a 19-ik század egyik legkülönlegesebb sörtípusa előtt tiszteleg. ', 'beer'),
(8, 'Somersby Alma', '0.33L 4.5%', 550, './image/beer/somersbyAlma.png', 'Könnyű almacider kellemes, mégis egyedi ízben. Finom, édes pezsgés és fanyar gyümölcsösség tökéletes egyensúlya. Markáns alma virágos fuvallattal. Tartós gyümölcsíz, kellemes savanyúság és hosszan tartó kényeztetés.', 'beer'),
(9, 'Somersby Körte', '0.33L 4.5%', 550, './image/beer/somersbyKorte.png', 'Könnyű körtecider kellemes, mégis egyedi ízben. Finom, édes pezsgés és fanyar gyümölcsösség tökéletes egyensúlya. Markáns körteíz egy csipetnyi virág- és friss gyümölcs-hangulattal. Hosszan tartó kellemesen savanykás, mégis kényeztetően édes íz.', 'beer'),
(10, 'Somersby Szeder', '0.33L 4.5%', 550, './image/beer/somersbySzeder.png', 'Intenzív, frissítő almacider gyümölcsös feketeszeder ízzel megbolodítva. Kellemesen könnyed, édes, és pont annyira savanykás, hogy felfrissítsen. Domináns bogyós íz virágszirom fuvallattal. Hosszan tartó kellemesen savanykás, mégis kényeztetően édes íz.', 'beer'),
(11, 'Somersby Görögdinnye', '0.33L 4.5%', 550, './image/beer/somersbyDinnye.png', 'Intenzív görögdinnye ízű gyümölcsös cider, egy kis alma fuvallattal. Kellemes, hosszantartó gyümölcsös középpont az édes és a savanykás íz között. Markáns görögdinnye, a piros alma adottságaival. Görögdinnye és alma gyümölcsös utóíze.', 'beer'),
(12, 'Corona Extra', '0.355L 4.5%', 650, './image/beer/corona.png', 'Mexikói világos sör', 'beer'),
(13, 'Soproni Dobozos', '0.5L 4.5%', 380, './image/beer/soproni.png', 'A márka elválaszthatatlan Sopron városától, melynek sörfőzési tradíciói évszázadosak. A Soproni ma a gyár legrégebbi saját fejlesztésű márkája', 'beer'),
(14, 'Wychwood Hobgoblin Ruby', '0.5L 5.2%', 1200, './image/beer/wychwoodRuby.png', 'Enyhe véríz, emellett kissé édes, óvatosan pörkölve és az ízében is ott van az illatában meglevő érdekes, egyáltalán nem bántó csirizes íz.', 'beer'),
(15, 'Wychwood Ginger Beard', '0.5L 4.2%', 1200, './image/beer/wychwoodBeard.png', 'Wychwood Ginger Beard a tüzes karakter. Világos, ale típusú sör valódi gyömbérrel, közepesen fűszeres ízvilággal. Benne van mindaz, amit az ősi vérpezsdítő gyömbértől kaphatunk – felpörget és egyben ütősen hat az ízlelőszerveinkre. Hidegen, vagy jégkockával szervírozva ajánljuk, hogy hűtse a lángokat!', 'beer'),
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
(47, 'St. Andrea Áldás', '0.75L 2020', 4650, './image/wine/andreaA.png', '', 'wine'),
(48, 'Bacardi Carta Blanca Superior', '1L 37.5%', 7500, './image/rum/bacardi.png', 'Az 1862-ben született Bacardi Superior rum az eredeti, mixelhető, könny rum, amelyet gondosan kiválasztott tölgyfahordóban érlelnek egy-lét évig.', 'rum'),
(49, 'Captain Morgan Spiced Gold', '1L 35%', 8200, './image/rum/morgan.png', 'A Captain Morgan Spiced Gold rum származási helye Jamaica.', 'rum'),
(50, 'Captain Morgan White', '0.7L 37.5%', 6100, './image/rum/morganW.png', 'Jamaicáról származik a Captain Morgan White Rum. Ez egy klasszikus fehér rum, nagyon közkedvelt ital.', 'rum'),
(51, 'Captain Morgan Dark', '0.7L 40%', 6100, './image/rum/morganD.png', 'A rumokról mindenkinek a kalózok jutnak eszükbe. A kalózokhoz pedig általában a fekete színt párosítjuk. A dark rum tehát tökéletes kalózrum lehet.', 'rum'),
(52, 'Quorhum 30 Anos Solera', '0.7L 40%', 28900, './image/rum/quorhum.png', 'A ron Quorhum 30 évig érlelt rumja a Dominikai Köztársaságból származik, lepárlását az Oliver&Oliver nevű cég végzi.', 'rum'),
(53, 'Presidente Marti 15 years', '0.7L 40%', 17900, './image/rum/marti.png', 'A Presidente Marti rumok a világszerte elismert Oliver y Oliver rum lepárló prémium minőségű tételei, melyet kubai stílusban a Dominikai köztársaság területén készítenek.', 'rum'),
(54, 'Karikás Kajszibarack', '1L 50%', 11900, './image/palinka/karikas.png', '', 'palinka'),
(55, 'Panyolai Elixír Szatmári Szilva', '0.5L 45%', 7250, './image/palinka/panyolai.png', 'A Tisza, a Szamos és a túr ártéri dzsungelgyümölcsöseiben páratlna, táj specifikus gyümölcsfajtákat találunk, melyek közül a leghíresebb a \"Nemtudom\" szilva. E félvad szilvafajtának neve is a gyümölcs különlegességére, ismeretlen eredetére utal.', 'palinka'),
(56, 'Árpád Dupla Cigánymeggy', '0.5L 40%', 9500, './image/palinka/ciganymeggy.png', 'Az Árpád Ágyas Meggy Pálinka mély rubintvörös színét a közel másfél évig tartó ágyas érlelésének köszönheti.', 'palinka'),
(57, 'Agárdi Miraculum Szilva', '0.5L 40%', 9100, './image/palinka/agardi.png', '', 'palinka'),
(58, 'Rézangyal Kajszibarack Mini', '0.04L 40%', 900, './image/palinka/rezangyal.png', 'Nagymamáink házi baracklekvárja lassan ugyanolyan hungaricumnak számít, akárcsak pálinkáink. A Rézangyal Kajszibarack intenzív gyümölcsillattal nyit, ezt friss házi baracklekvár követi, majd enyhe citrusosság zárja a sort.', 'palinka'),
(59, 'Pannonhalmi Málna', '0.5L 40%', 13500, './image/palinka/pannon.png', 'A Pannonhalmi Málna Párlat az érett málna nemes zamatát őrzi magában. A gondos főzési eljárásnak köszönhetően a Pannonhalmi Málna Párlat aromája és karaktere csodálatosan tükrözi a friss málna utánozhatatlan karakterét.', 'palinka'),
(60, 'Markházi Körte', '0.5L 40%', 7500, './image/palinka/markhazi.png', 'A Márkházi körte pálinka a hagyományok tisztelete mellett a legmodernebb technológia hordozta előnyök hatására erőteljes illat és íz világgal mégis lágy nedűként kényezteti ízlelőbimbóinkat.', 'palinka');

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
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
