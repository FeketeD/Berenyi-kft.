-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 11:22 PM
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
-- Table structure for table `termekek`
--

CREATE TABLE `termekek` (
  `productid` int(11) NOT NULL,
  `productname` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productsd` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `productprice` int(10) NOT NULL,
  `productimg` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `productdesc` varchar(350) COLLATE utf8_hungarian_ci NOT NULL,
  `productType` varchar(11) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `termekek`
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
(16, 'Jägermeister', '1L 35%', 8250, './image/liquor/jager.png', '56 különböző gyógynövényekből készült német gyártmányú gyomorkeserű, amelyet az alsó-szászországi Wolfenbüttel városában állítanak elő és palackoznak. A Jägermeistert általában vagy jéghidegen tisztán, vagy más komponensekkel keverve fogyasztják.', 'liquor'),
(17, 'Baileys', '0.7L 17%', 6000, './image/liquor/baileysO.png', 'A legkiválóbb ír alapanyagok, a whisky és a tejszín házasításával korszakalkotó ital született az ír fővárosban, amely rengeteg új krémlikőr megszületését hozta a későbbiekben. A Bailey\'s krémes, világos mogyorószínű, lágy, dús krémlikőr, illatát az édes tejszín és a vanília dominálja, íze telt, sima.', 'liquor'),
(18, 'Baileys Espresso Creme', '0.7L 17%', 8550, './image/liquor/baileysE.png', 'Friss és habos espresso élmény, Írország kedvenc krémlikőrével? Ez a Baileys Espresso Creme Likőr, amelyben még egy csipetnyi kolumbiai kávé is felbukkan, hogy egy valódi WOW-élménnyel gyarapítsa a likőrtapasztalatainkat!', 'liquor'),
(19, 'Baileys Tiramisu', '0.7L 17%', 11900, './image/liquor/baileysT.png', 'Ha ír krémlikőrről beszélünk, akkor sokunknak először az ikonikus Baileys jut eszébe, mely az ír whiskey lágyságával és a friss tejszín krémességével csábít. A gyártó likőrjei nélkül lassan meg elképzelhetetlen egy kellemes étkezés utáni italozás vagy desszertezés.', 'liquor'),
(20, 'Baileys Colada', '0.7L 17%', 11790, './image/liquor/baileysC.png', 'Az új - 2022-ben debütáló - Baileys Colada tökéletes csemege minden nyári alkalomra. Az ellenállhatatlan ír krémlikőrt házasították a krémes kókusz és az édes, lédús ananász ízével, hogy egy sima és krémes italt hozzanak létre.', 'liquor'),
(21, 'Baileys Chocolat Luxe Gold', '0.7L 17%', 6000, './image/liquor/baileysG.png', 'A jól ismert és kiváló ír krémlikőrgyártó, a Bailey\'s ismételten egy új, kiváló likőrkülönlegességgel kedveskedik. A Bailey\'s Chocolat Luxe-t első osztályú madagaszkári vanília és belga csokoládé fergeteges ötvözete alkotja.', 'liquor'),
(22, 'Tátratea Őszibarack-Fehér', '0.7L 52%', 9500, './image/liquor/tatraB.png', 'Eredeti tea alapú gyógynövény likőr harmonikus összetétele az alkohollal gyógynövény kivonatokkal, fekete teával, kiegészítve gyümölcskivonatokkal és párlatokkal, valamint cukorral és vízzel.', 'liquor'),
(23, 'Tátratea', '0.7L 52%', 9500, './image/liquor/tatraO.png', 'Ez a Tatratea család energikus zamatoktól lüktető szívcsakrája, amelyből évente félmillió palackkal adnak el. Meglehetősen magas, 52%-os alkoholtartalommal varázsolja el a tartalmas szlovák párlatok szerelmeseit világszerte.', 'liquor'),
(24, 'Tátratea Erdei Gyümölcsös', '0.7L 62%', 9950, './image/liquor/tatraE.png', 'Eredeti tea alapú gyógynövény likőr harmonikus összetétele az alkohollal gyógynövény kivonatokkal, fekete teával, kiegészítve gyümölcskivonatokkal és párlatokkal, valamint cukorral és vízzel.', 'liquor'),
(25, 'Tátratea Betyáros', '0.7L 72%', 10550, './image/liquor/tatraBetyaros.png', 'Eredeti tea alapú gyógynövény likőr harmonikus összetétele az alkohollal gyógynövény kivonatokkal, fekete teával, kiegészítve gyümölcskivonatokkal és párlatokkal, valamint cukorral és vízzel.', 'liquor'),
(26, 'Unicum', '1L 40%', 8400, './image/liquor/unicum.png', 'Bár az Unicum receptje titkos, annyi bizonyos, hogy több mint 40 féle gondosan válogatott gyógy- és fűszernövény keverékéből készül. Sajátságos, keserédes ízét, különleges harmóniáját a 6 hónapos tölgyfahordós érlelési periódus teljesíti ki.', 'liquor'),
(27, 'Absolut Vodka', '0.7L 40%', 5500, './image/vodka/absolut.png', 'Az 1800-as évek végén a svéd vállalkozó és iparos, Lars Olsson Smith új technológiát mutatott be a vodka készítésére. Bár a svéd vodkagyártás ekkor már 400 éves hagyománnyal bírt, ez a folyamatos lepárlási technológia forradalmasította a svéd vodkagyártást.', 'vodka'),
(28, 'Ciroc Vodka', '0.7L 40%', 11000, './image/vodka/ciroc.png', 'A Ciroc a világ első olyan vodkája, amelynek alapanyaga nem valamilyen gabonafajta, vagy burgonya, hanem szőlő. Egyedi ízvilágát a Cognac régióból származó Ugni Blanc típusú szőlők és a Ciroc lelkét adó Mauzac Blanc szőlőfajta 5-ször desztillálása adja.', 'vodka'),
(29, 'Finlandia Vodka', '0.7L 40%', 5300, './image/vodka/finlandia.png', 'A Finlandia Vodka Finnország egyik legkeresetebb terméke. Ez a méltán világhírű ital egyike a legtisztább vodkáknak, melynek ízében egyszerre élvezhetjük a nemes egyszerűséget és a tökéletes harmóniát. Az ital az exkluzív megjelenését Tapio Wirkkala finn designer-szobrásznak köszönheti.', 'vodka'),
(30, 'Royal Vodka', '0.7L 37.5%', 4400, './image/vodka/royal.png', 'A Royal Vodkanál megismert tiszta (37,5%-os), lágy vodka, gabonára emlékeztető kellemes aromával és kevés gyógynövényes jelleggel.Kellemes ízű, mellékíz nélküli, gabonából készült vodka, melyet háromszoros lepárlással álltanak elő és gyógynövény kivonnattal dúsítják.', 'vodka'),
(31, 'Fallen Angel Vodka', '0.7L 44.7%', 102000, './image/vodka/fallen.png', 'A hétszeres lepárlás valami egészen csodás metamorfózist tud művelni a gabonával! Így születik a kristálytiszta Fallen Angel British Vodka.', 'vodka'),
(32, 'Jim Beam Bourbon', '0.7L 40%', 6500, './image/whisky/jimbeam.png', 'Az eredeti „Kentucky Straight Bourbon Whiskey”-t több, mint 200 éve ugyanaz a család készíti. A világ legkedveltebb bourbonjét, amely legalább 51% kukoricából és friss, vasmentes forrásvízből áll, frissen kiégetett tölgyfahordókba töltik.', 'whisky'),
(33, 'Jack Daniels Tennessee', '0.7L 40%', 7800, './image/whisky/jackdaniels.png', 'Az igazi Jack Daniel\'s Whisky az aktívszenes szűrési eljárás, ami oly sima, bársonyos ízt eredményez. A mára már az USA nemzeti örökség részeként kezelt Lynchburg városkában található Jack Daniel\'s üzem, mely 1866 óta gyártja a márkát, az USA legrégebben bejegyzett lepárlója.', 'whisky'),
(34, 'Jameson Ír Whiskey', '0.7L 40%', 7700, './image/whisky/jameson.png', 'A Jameson a világ legnépszerűbb ír whiskeyje, és régóta bérelt helye van a top 100-as whiskyk listáján (ahol a Jameson az egyetlen ír whiskey). Ha egy kvintesszenciális ír blendre szomjazunk, akkor a klasszikus Jameson a legjobb választás.', 'whisky'),
(35, 'Ballantines Whisky', '0.7L 40%', 5800, './image/whisky/ballantines.png', 'Finoman összetett és elegáns kevert skót whisky. Ennek köszönhetően megfelel a modern, fiatalos stílus kedvelőinek is.', 'whisky'),
(36, 'Chivas Regal Whisky', '1L 40%', 14000, './image/whisky/chivas.png', 'A Chivas Brothers legnépszerűbb whiskyfajtája. A 12 éves érlelési folyamat, valamint a több mint 30 fajta alapwhiskyből összeállított keveréknek köszönhetően méltán számít a világ legkedveltebb prémium whiskyjének.', 'whisky'),
(37, 'Törley Gála Sec Száraz', '0.75L', 1400, './image/wine/torleyG.png', 'A Törley Gála sec megnyerő, friss, üde, kimondottan gyümölcsös száraz pezsgő. Ízben az elegancia és a frissesség együttesen jelentkezik. Ahogyan a többi Törley pezsgő, úgy a Gála Sec is magas minőséget képvisel. Fontos ünnepeink, jeles eseményeink kiváló megkoronázója.', 'wine'),
(38, 'Törley Charmant Doux Édes', '0.75L', 1400, './image/wine/torleyC.png', 'A Törley legismertebb, legkedveltebb, egyben piacvezető márkája. Szép, jellegzetes pezsgőszín, intenzív pezsgés. Illatában és ízében egyaránt a cukrozott gyümölcsök viszik a prímet. Szájban nem túl agresszíven feltűnik még egy muskotályos jegy is.', 'wine'),
(39, 'Martini Asti Spumante', '0.75L 4.5%', 2500, './image/wine/martiniA.png', 'gazi különlegesség mindazoknak, akik szeretnének megismerkedni egy egyedi, édes minőségi pezsgővel. A pezsgők kedvelőinek ismerős lehet az Asti név, mely fehérborból készült édes pezsgőre utal, melyet a Piemontban honos Muscat szőlőfajtából nyernek.', 'wine'),
(40, 'Martini Bianco', '1L 15%', 3550, './image/wine/martiniB.png', 'Harmónikus fűszerezésű, lágy édes, enyhén vaníliás ízű, könnyed frissítő hatású. A Világ egyik legkedveltebb itala, klasszikus aperitif. Sikerének titka a kiváló, egyedülálló minőség, melyre a szakszerűen válogatott borok, a legfinomabb aroma koncentrátum, az évszázados tapasztalat a garancia.', 'wine'),
(41, 'Martini Exrta Dry', '0.75L 18%', 2850, './image/wine/martiniE.png', 'Különlegesen száraz, fehér, fűszerezett bor. A Világ egyik legkedveltebb itala, klasszikus aperitív. Sikerének titka a kiváló, egyedülálló minőség, melyre a szakszerűen válogatott borok, a legfinomabb aroma koncentrátum, az évszázados tapasztalat a garancia.', 'wine'),
(42, 'Chandon Garden Spritz', '0.75L 11.5%', 7890, './image/wine/chandon.png', 'Argentína ad otthont a világ egyik legizgalmasabb terroirjának! A Chandon Garden Spritzet az az izzó vágy hozta létre, hogy megünnepeljék ezt a frenetikus szőlőbirodalmat, amelyből egy fenséges argentin italt varázsolnak a Chandon Garden Spritz gurui.', 'wine'),
(43, 'Juhász Rosé', '0.75L 2021', 1190, './image/wine/juhaszR.png', 'A hazai rozé kínálat állócsillaga, a megbízhatóság szinonimája, amely évről-évre növeli rajongóinak számát. Ezúttal is frissítő, részletgazdag, minden porcikájában csupa gyümölcs gyöngyöző rozé málnás illat- és ízvilággal. Baráti borozások, szabadtéri programok, kerti partik, piknikek nélkülözhetetlen kelléke.', 'wine'),
(44, 'Nyakas Rosé', '0.75L 2021', 1650, './image/wine/nyakasR.png', 'Cseresznyés gyümölcsösség, a fajtára emlékeztető fűszeres zamatvilág, erőteljes savgerinc, halvány hagymahéj színvilág, intenzív lecsengés jellemzi. Tenger gyümölcseihez vagy akár önmagában nyári frissítőként kiválóan szolgál.', 'wine'),
(45, 'Frittmann Irsai Olivér', '0.75L 2022', 1290, './image/wine/oliverF.png', 'A szalmasárga színű bor intenzív illatát a virágok mellett citrusok, zöldalma és barack töltik meg. Kóstoláskor a ropogós savak adta lendület nyújtja az első benyomást, amelyet könnyed test és alacsony alkoholtartalom kísér. Az ízvilág tisztán követi az illatot meghatározó aromatikát, a lecsengés zöldfűszeres, lime-os asszociációkkal búcsúzik.', 'wine'),
(46, 'Nyakas Irsai Olivér', '0.75L 2021', 2390, './image/wine/oliverNy.png', 'Három dűlő termése: Öreg-templom-völgy és Körte-völgy, Budajenő; Körtvélyes, Tök. Élénk zöldfehér szín, muskotályos, virágos rétre emlékeztető intenzív illat jellemzi. Zamataiban élénk savak és a frissen szedett szőlő jegyei mutatkoznak.', 'wine'),
(47, 'St. Andrea Áldás', '0.75L 2020', 4650, './image/wine/andreaA.png', 'Gyümölcshangsúlyú, lendületes, kellően széles, modern vörösbor. Illatában az érett fekete bogyósok jellemzik pici kakaóporos háttérrel. Ízben feszes, ám mégis szelíd bor, szép érlelési potenciállal.', 'wine'),
(48, 'Bacardi Carta Blanca Superior', '1L 37.5%', 7500, './image/rum/bacardi.png', 'Az 1862-ben született Bacardi Superior rum az eredeti, mixelhető, könny rum, amelyet gondosan kiválasztott tölgyfahordóban érlelnek egy-lét évig.', 'rum'),
(49, 'Captain Morgan Spiced Gold', '1L 35%', 8200, './image/rum/morgan.png', 'A Captain Morgan Spiced Gold rum származási helye Jamaica.', 'rum'),
(50, 'Captain Morgan White', '0.7L 37.5%', 6100, './image/rum/morganW.png', 'Jamaicáról származik a Captain Morgan White Rum. Ez egy klasszikus fehér rum, nagyon közkedvelt ital.', 'rum'),
(51, 'Captain Morgan Dark', '0.7L 40%', 6100, './image/rum/morganD.png', 'A rumokról mindenkinek a kalózok jutnak eszükbe. A kalózokhoz pedig általában a fekete színt párosítjuk. A dark rum tehát tökéletes kalózrum lehet.', 'rum'),
(52, 'Quorhum 30 Anos Solera', '0.7L 40%', 28900, './image/rum/quorhum.png', 'A ron Quorhum 30 évig érlelt rumja a Dominikai Köztársaságból származik, lepárlását az Oliver&Oliver nevű cég végzi.', 'rum'),
(53, 'Presidente Marti 15 years', '0.7L 40%', 17900, './image/rum/marti.png', 'A Presidente Marti rumok a világszerte elismert Oliver y Oliver rum lepárló prémium minőségű tételei, melyet kubai stílusban a Dominikai köztársaság területén készítenek.', 'rum'),
(55, 'Panyolai Elixír Szatmári Szilva', '0.5L 45%', 7250, './image/palinka/panyolai.png', 'A Tisza, a Szamos és a túr ártéri dzsungelgyümölcsöseiben páratlna, táj specifikus gyümölcsfajtákat találunk, melyek közül a leghíresebb a \"Nemtudom\" szilva. E félvad szilvafajtának neve is a gyümölcs különlegességére, ismeretlen eredetére utal.', 'palinka'),
(56, 'Árpád Dupla Cigánymeggy', '0.5L 40%', 9500, './image/palinka/ciganymeggy.png', 'Az Árpád Ágyas Meggy Pálinka mély rubintvörös színét a közel másfél évig tartó ágyas érlelésének köszönheti.', 'palinka'),
(57, 'Agárdi Miraculum Szilva', '0.5L 40%', 9100, './image/palinka/agardi.png', 'Lédús és zamatos gyümölcsök köszönnek vissza az Agárdi Miraculum pálinkák ízében. A \"miraculum\" szó csodát, varázslatot jelent, és valóban: a magyar gyümölcsök tiszta, mesés illatú és zamatú pálinkává válása maga a csoda.', 'palinka'),
(58, 'Rézangyal Kajszibarack Mini', '0.04L 40%', 900, './image/palinka/rezangyal.png', 'Nagymamáink házi baracklekvárja lassan ugyanolyan hungaricumnak számít, akárcsak pálinkáink. A Rézangyal Kajszibarack intenzív gyümölcsillattal nyit, ezt friss házi baracklekvár követi, majd enyhe citrusosság zárja a sort.', 'palinka'),
(59, 'Pannonhalmi Málna', '0.5L 40%', 13500, './image/palinka/pannon.png', 'A Pannonhalmi Málna Párlat az érett málna nemes zamatát őrzi magában. A gondos főzési eljárásnak köszönhetően a Pannonhalmi Málna Párlat aromája és karaktere csodálatosan tükrözi a friss málna utánozhatatlan karakterét.', 'palinka'),
(60, 'Markházi Körte', '0.5L 40%', 7500, './image/palinka/markhazi.png', 'A Márkházi körte pálinka a hagyományok tisztelete mellett a legmodernebb technológia hordozta előnyök hatására erőteljes illat és íz világgal mégis lágy nedűként kényezteti ízlelőbimbóinkat.', 'palinka'),
(61, 'Coca-Cola', '0.25L', 300, './image/alcoholfree/cola.png', 'Coca-Cola. Az igazi. Naponta több milliárdan, a világ minden részén oltják szomjukat Coca-Cola-val. És ilyenkor jóval többről van szó, mint egyszerű szomjoltásról. Ezekben a pillanatokban együtt vagyunk a családunkkal, barátainkkal, vagy egyszerűen olyan dolgokra gondolunk, amik életünket élvezetessé teszik.', 'alcoholfree'),
(62, 'Sprite', '0.5L', 450, './image/alcoholfree/sprite.png', 'A Sprite azonnal felismerhető íze felfrissíti a testet és a szellemet egyaránt.', 'alcoholfree'),
(63, 'Fanta', '0.5L', 450, './image/alcoholfree/fanta.png', 'A leginkább a tizenévesek által kedvelt ital 189 országban kapható, több mint 70 különböző frissítő, valódi gyümölcsízben. A The Coca-Cola Company leányvállalatai gyakran az adott országban honos gyümölcsökből fejlesztik ki saját Fanta termékeiket.', 'alcoholfree'),
(64, 'Cappy Alma', '0.25L', 300, './image/alcoholfree/cappyA.png', 'Almalé. Sűrítményből készült. Gyümölcstartalom: 100%', 'alcoholfree'),
(65, 'Cappy Narancs', '0.25L', 300, './image/alcoholfree/cappyN.png', 'Narancslé gyümölcshússal. Sűrítményből készült. Gyümölcstartalom: 100%', 'alcoholfree'),
(66, 'Cappy Körte', '0.25L', 300, './image/alcoholfree/cappyK.png', 'Körteital. Hozzáadott C-vitaminnal. Gyümölcstartalom min. 33%. Sűrítményből készült.', 'alcoholfree'),
(67, 'Red-Bull', '0.25L', 600, './image/alcoholfree/redbull.png', 'A Red Bull száááááárnyakat ad. Kóstolja meg Ön is a tutti frutti ízű eredeti kiadást.', 'alcoholfree'),
(68, 'Mountain Dew', '2L', 900, './image/alcoholfree/mountaindew.png', 'A Mountain Dew egy citrusízű amerikai szénsavas üdítőital, amit a PepsiCo gyárt. Egy citrus-ízesített szóda, amelyet az 1940-es években fejlesztettek ki Barney és Ally Hartman, a Tennessee-i italkészítők számára.', 'alcoholfree'),
(69, 'Dr Pepper', '0.33L', 240, './image/alcoholfree/drpepper.png', 'A Dr Pepper egy az Amerikai Egyesült Államokból származó szénsavas – eredetileg mandula ízű – üdítőital-márka, amelyet a Cadbury-Schweppes cégcsoport forgalmaz. ', 'alcoholfree');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`productid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `termekek`
--
ALTER TABLE `termekek`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
