-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Vært: localhost:8889
-- Genereringstid: 11. 10 2022 kl. 10:56:25
-- Serverversion: 5.7.34
-- PHP-version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Film`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `Film`
--

CREATE TABLE `Film` (
  `FilmId` int(10) UNSIGNED NOT NULL,
  `FilmNavn` varchar(100) DEFAULT NULL,
  `FilmDato` decimal(9,0) DEFAULT NULL,
  `FilmBas` text,
  `FilmRate` decimal(9,1) DEFAULT NULL,
  `FilmGenre` varchar(100) DEFAULT NULL,
  `FilmMedvirkende` varchar(200) DEFAULT NULL,
  `FilmTid` int(11) DEFAULT NULL,
  `FilmSprog` varchar(100) DEFAULT NULL,
  `FilmAlder` decimal(9,0) DEFAULT NULL,
  `FilmOprindelsesland` varchar(100) DEFAULT NULL,
  `FilmImg` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for tabellen `Film`
--

INSERT INTO `Film` (`FilmId`, `FilmNavn`, `FilmDato`, `FilmBas`, `FilmRate`, `FilmGenre`, `FilmMedvirkende`, `FilmTid`, `FilmSprog`, `FilmAlder`, `FilmOprindelsesland`, `FilmImg`) VALUES
(27, 'SER DU MÅNEN, DANIEL', '2019', '<p>Den unge danske freelancefotograf Daniel Rye er taget som gidsel af terrororganisationen Islamisk Stat i Syrien sammen med flere andre udl&aelig;ndinge, bl.a. den amerikanske journalist James Foley. Daniel k&aelig;mper for overlevelse i fangenskab sammen med James, mens hans familie hjemme i Danmark k&aelig;mper for at h&aring;ndtere frygten for, at deres s&oslash;n aldrig kommer hjem. Midt i krisen st&aring;r den danske gidselforhandler Arthur, der f&aring;r en afg&oslash;rende rolle i befrielsen af Daniel.</p>', '5.0', 'Drama', 'Esben Smed, Anders W. Berthelsen, Toby Kebbell, Sofie Torp', 139, 'Dansk', '15', 'Danmark', 'SER DU MÅNEN, DANIEL .jpeg'),
(28, 'The Shawshank Redemption', '1994', '<p>Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.</p>', '9.0', 'Drama', 'Tim Robbins, Morgan Freeman', 142, 'Engelsk', '15', 'USA', 'En verden udenfor (1994).jpeg'),
(29, 'The Dark Knight', '2008', '<p>When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.</p>', '9.0', 'Action', 'Christian Bale,  Heath Ledger', 152, 'Engelsk', '15', 'USA', 'The Dark Knight.jpeg'),
(30, 'The Matrix', '1999', '<p>When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.</p>', '9.0', 'Sci-Fi', 'Keanu Reeves,  Laurence Fishburne', 136, 'Engelsk', '15', 'USA', 'The Matrix.jpeg'),
(31, 'Interstellar', '2014', '<p>A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.</p>', '8.0', 'Sci-Fi, Drama', ' Matthew McConaughey, Anne Hathaway', 170, 'Engelsk', '11', 'USA', 'Interstellar.jpeg'),
(32, 'Løvernes konge', '1994', '<p>Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.</p>', '8.0', 'Drama, Animation ', 'Matthew Broderick, Jeremy Irons', 88, 'Engelsk', '7', 'USA', 'Løvernes konge.jpeg'),
(33, 'Top Gun: Maverick', '2022', '<p>After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN\'s elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.</p>', '8.0', 'Action', 'Tom Cruise, Jennifer Connelly', 130, 'Engelsk', '11', 'USA', 'Top Gun- Maverick.jpeg'),
(34, 'Joker', '2019', '<p>A mentally troubled stand-up comedian embarks on a downward spiral that leads to the creation of an iconic villain.</p>', '8.0', 'Crime', 'Joaquin Phoenix, Robert De Niro', 122, 'Engelsk', '15', 'USA', 'Joker.jpeg'),
(35, 'Braveheart', '1995', '<p>Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.</p>', '8.0', 'Biography', 'Mel Gibson, Sophie Marceau', 180, 'Engelsk', '15', 'USA', 'Braveheart@.jpeg'),
(36, 'Coco', '2017', '<p>Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.</p>', '9.0', 'Animation', 'Anthony Gonzalez, Gael García Bernal', 105, 'Engelsk', '7', 'USA', 'Coco.jpeg'),
(37, 'Toy Story', '1995', '<p>A cowboy doll is profoundly threatened and jealous when a new spaceman action figure supplants him as top toy in a boy\'s bedroom.</p>', '8.0', 'Animation', 'Tom Hanks,  Tim Allen', 81, 'Engelsk', '7', 'USA', 'Toy Story.jpeg'),
(38, 'Toy Story 3', '2010', '<p>The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it\'s up to Woody to convince the other toys that they weren\'t abandoned and to return home.</p>', '8.0', 'Animation', 'Tom Hanks', 103, 'Engelsk', '7', 'USA', 'Toy Story 3 .jpeg'),
(39, 'كازابلانكا', '2019', '<p class=\"p1\" dir=\"rtl\"><strong>كازابلانكا</strong> فيلم<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D9%81%D9%8A%D9%84%D9%85_%D8%A3%D9%83%D8%B4%D9%86\"><span class=\"s2\">أكشن</span></a> <a href=\"https://ar.m.wikipedia.org/wiki/%D9%85%D8%B5%D8%B1\"><span class=\"s2\">مصري</span></a> </span>من إنتاج سنة<span class=\"s1\"> 2019. </span>الفيلم من إخراج<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D8%A8%D9%8A%D8%AA%D8%B1_%D9%85%D9%8A%D9%85%D9%8A\"><span class=\"s2\">بيتر</span> <span class=\"s2\">ميمي</span></a></span>، وتأليف هشام هلال، وإنتاج وليد منصور، ومن بطولة<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D8%A3%D9%85%D9%8A%D8%B1_%D9%83%D8%B1%D8%A7%D8%B1%D8%A9\"><span class=\"s2\">أمير</span> <span class=\"s2\">كرارة</span></a></span>،<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D8%BA%D8%A7%D8%AF%D8%A9_%D8%B9%D8%A7%D8%AF%D9%84\"><span class=\"s2\">وغادة</span> <span class=\"s2\">عادل</span></a></span>،<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D8%A5%D9%8A%D8%A7%D8%AF_%D9%86%D8%B5%D8%A7%D8%B1\"><span class=\"s2\">وإياد</span> <span class=\"s2\">نصار</span></a></span>،<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D8%AE%D8%A7%D9%84%D8%AF_%D8%A7%D8%B1%D8%BA%D9%86%D8%B4\"><span class=\"s2\">وخالد</span> <span class=\"s2\">ارغنش</span></a></span>،<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D8%B9%D9%85%D8%B1%D9%88_%D8%B9%D8%A8%D8%AF_%D8%A7%D9%84%D8%AC%D9%84%D9%8A%D9%84\"><span class=\"s2\">وعمرو</span> <span class=\"s2\">عبد</span> <span class=\"s2\">الجليل</span></a></span>،<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D9%84%D8%A8%D9%84%D8%A8%D8%A9\"><span class=\"s2\">ولبلبة</span></a></span>،<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D8%A3%D8%AD%D9%85%D8%AF_%D8%AF%D8%A7%D8%B4\"><span class=\"s2\">وأحمد</span> <span class=\"s2\">داش</span></a></span>،<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D9%85%D8%AD%D9%85%D9%88%D8%AF_%D8%A7%D9%84%D8%A8%D8%B2%D8%A7%D9%88%D9%8A\"><span class=\"s2\">ومحمود</span> <span class=\"s2\">البزاوي</span></a>. </span>حقق الفيلم أعلى الإيرادات في موسم<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D8%B9%D9%8A%D8%AF_%D8%A7%D9%84%D9%81%D8%B7%D8%B1\"><span class=\"s2\">عيد</span> <span class=\"s2\">الفطر</span></a> 2019</span>، وهو في المركز الثالث في<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D9%82%D8%A7%D8%A6%D9%85%D8%A9_%D8%A3%D8%B9%D9%84%D9%89_%D8%A7%D9%84%D8%A3%D9%81%D9%84%D8%A7%D9%85_%D8%AF%D8%AE%D9%84%D8%A7_%D9%81%D9%8A_%D8%A7%D9%84%D8%B3%D9%8A%D9%86%D9%85%D8%A7_%D8%A7%D9%84%D9%85%D8%B5%D8%B1%D9%8A%D8%A9\"><span class=\"s2\">قائمة</span> <span class=\"s2\">أعلى</span> <span class=\"s2\">الأفلام</span> <span class=\"s2\">دخلا</span> <span class=\"s2\">في</span> <span class=\"s2\">السينما</span> <span class=\"s2\">المصرية</span></a></span>، ويليه في الترتيب فيلم<span class=\"s1\"> <a href=\"https://ar.m.wikipedia.org/wiki/%D8%A7%D9%84%D9%85%D9%85%D8%B1_(%D9%81%D9%8A%D9%84%D9%85)\"><span class=\"s2\">الممر</span></a>.</span></p>', '5.0', 'أكشن مصري', ' أمير كرارة، وغادة عادل، وإياد نصار', 150, ' مصري', '15', 'مصر', 'kk.jpeg'),
(40, 'Op', '2009', '<p>78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.</p>', '8.0', 'Animation', ' Edward Asner, Jordan Nagai', 96, 'Engelsk', '1', 'USA', 'Op.jpeg'),
(41, 'The Wolf of Wall Street', '2013', '<p>Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.</p>', '8.0', 'Biography', 'Leonardo DiCaprio, Jonah Hill', 180, 'Engelsk', '15', 'USA', 'The Wolf of Wall Street.jpeg');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`FilmId`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `Film`
--
ALTER TABLE `Film`
  MODIFY `FilmId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
