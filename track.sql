-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Дек 23 2020 г., 03:49
-- Версия сервера: 5.7.24
-- Версия PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_klika`
--

-- --------------------------------------------------------

--
-- Структура таблицы `track`
--

CREATE TABLE `track` (
  `id` int(11) NOT NULL,
  `singer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `song` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `track`
--

INSERT INTO `track` (`id`, `singer`, `song`, `genre`, `year`) VALUES
(1, 'Queen', 'I Want to Break Free', 'Rock', 1984),
(6, 'Marvin Gaye', 'What’s Going On', 'Soul', 1971),
(7, 'A. Franklin', 'Respect', 'Jazz', 1967),
(8, 'The Beach Boys', 'Good Vibrations', 'Rock', 1966),
(9, 'Chuck Berry', 'Johnny B. Goode', 'Rock', 1959),
(10, 'The Beatles', 'Hey Jude', 'Rock', 1968),
(15, 'The Beatles', 'Yesterday', 'Rock', 1965),
(25, 'The Beatles', 'In My Life', 'Rock', 1965),
(27, 'The Beach Boys', 'God Only Knows', 'Rock', 1966),
(30, 'The Beatles', 'A Day in the Life', 'Rock', 1967),
(31, 'The Beatles', 'Help!', 'Rock', 1965),
(33, 'Led Zeppelin', 'Stairway to Heaven', 'Rock', 1971),
(34, 'The Rolling Stones', 'Sympathy for the Devil', 'Rock', 1968),
(40, 'The Rolling Stones', 'Gimme Shelter', 'Rock', 1969),
(46, 'Рэй Чарльз', 'Georgia on My Mind', 'Soul', 1960),
(47, 'Elvis Presley', 'Heartbreak Hotel', 'Rock', 1973),
(57, 'Литл Ричард', 'Long Tall Sally', 'Bluse', 1973),
(62, 'Эл Грин', 'Let’s Stay Together', 'Soul', 1971),
(73, 'Джеймс Браун', 'Papa’s Got a Brand New Bag', 'Bluse', 1966),
(74, 'The Beach Boys', 'California Girls', 'Rock', 1965),
(77, 'Led Zeppelin', 'Whole Lotta Love', 'Rock', 1969),
(78, 'The Beatles', 'Strawberry Fields Forever', 'Rock', 1967),
(80, 'Джеймс Браун', 'I Got You (I Feel Good)', 'Bluse', 1965),
(82, 'The Kinks', 'You Really Got Me', 'Rock', 1962),
(83, 'Marvin Gaye', 'I Heard It Through the Grapevine', 'Soul', 1968),
(85, 'The Beatles', 'Norwegian Wood (This Bird Has Flown)', 'Rock', 1965),
(88, 'Брюс Спрингстин', 'Thunder Road', 'Rock', 1975),
(93, 'Elvis Presley', 'Suspicious Minds', 'Rock', 1969),
(96, 'Литл Ричард', 'Good Golly Miss Molly', 'Bluse', 1958),
(103, 'The Rolling Stones', 'You Can’t Always Get What You Want', 'Rock', 1969),
(104, 'Jimi Hendrix', 'Voodoo Child (Slight Return)', 'Rock', 1968),
(118, 'The Rolling Stones', 'Honky Tonk Women', 'Rock', 1969),
(126, 'Джеймс Браун', 'It’s a Man’s Man’s Man’s World', 'Bluse', 1966),
(127, 'The Rolling Stones', 'Jumpin’ Jack Flash', 'Rock', 1968),
(136, 'The Who', 'Won’t Get Fooled Again', 'Rock', 1971),
(138, 'The Beatles', 'While My Guitar Gently Weeps', 'Rock', 1968),
(140, 'The Beatles', 'Eleanor Rigby', 'Rock', 1966),
(141, 'Sly&Family Stone', 'Family Affair', 'Soul', 1971),
(142, 'The Beatles', 'I Saw Her Standing There', 'Rock', 1962),
(143, 'Led Zeppelin', 'Kashmir', 'Rock', 1975),
(148, 'Sly&Family Stone', 'Everyday People', 'Soul', 1968),
(155, 'Jimi Hendrix', 'Foxey Lady', 'Rock', 1965),
(156, 'The Beatles', 'A Hard Day’s Night', 'Rock', 1962),
(166, 'Рэй Чарльз', 'I Can’t Stop Loving You', 'Soul', 1962),
(170, 'Marvin Gaye', 'Let’s Get It On', 'Soul', 1973),
(178, 'The Rolling Stones', 'Paint It Black', 'Rock', 1966),
(180, 'The Beach Boys', 'Don’t Worry Baby', 'Rock', 1962),
(188, 'The Beatles', 'Please Please Me', 'Rock', 1962),
(191, 'A. Franklin', 'I Never Loved a Man', 'Jazz', 1967),
(202, 'Elvis Presley', 'Don’t Be Cruel', 'Rock', 1973),
(203, 'Jimi Hendrix', 'Hey Joe', 'Rock', 1966),
(207, 'The Beatles', 'Come Together', 'Rock', 1969),
(216, 'The Beach Boys', 'Caroline, No', 'Rock', 1966),
(226, 'Sly&Family Stone', 'Dance to the Music', 'Soul', 1968),
(245, 'Sly&Family Stone', 'Stand!', 'Soul', 1969),
(251, 'Sly&Family Stone', 'Hot Fun in the Summertime', 'Soul', 1969),
(253, 'A. Franklin', 'Chain of Fools', 'Jazz', 1967),
(263, 'The Who', 'I Can See for Miles', 'Rock', 1967),
(266, 'Стиви Уандер', 'Higher Ground', 'Jazz', 1973),
(277, 'The Beach Boys', 'Sloop John B', 'Rock', 1966),
(278, 'Chuck Berry', 'Sweet Little Sixteen', 'Bluse', 1958),
(279, 'The Beatles', 'Something', 'Rock', 1969),
(281, 'Брюс Спрингстин', 'Born in the U.S.A.', 'Rock', 1984),
(295, 'The Beatles', 'Can’t Buy Me Love', 'Rock', 1962),
(299, 'Эл Грин', 'Tired of Being Alone (англ.)', 'Soul', 1971),
(300, 'Led Zeppelin', 'Black Dog', 'Rock', 1971),
(301, 'The Rolling Stones', 'Street Fighting Man', 'Rock', 1968),
(310, 'The Rolling Stones', 'Ruby Tuesday', 'Rock', 1967),
(311, 'The Beatles', 'With a Little Help from My Friends', 'Rock', 1967),
(312, 'Джеймс Браун', 'Say It Loud – I’m Black and I’m Proud', 'Bluse', 1968),
(328, 'Queen', 'Bohemian Rhapsody', 'Rock', 1984),
(329, 'Queen', 'Love Of My Life', 'Rock', 1984),
(330, 'Queen', 'Don\'t Stop Me Now', 'Rock', 1984),
(332, 'Queen', 'Good Vibrations', 'Rock', 1973),
(335, 'Queen', 'We Will Rock You', 'Rock', 1984),
(336, 'Queen', 'Who Wants To Live Forever', 'Rock', 1984),
(338, 'Queen', 'You Don\'t Fool Me', 'Rock', 1984),
(339, 'Queen', 'Living On My Own', 'Rock', 1984),
(340, 'Queen', 'A Kind Of Magic', 'Rock', 1984),
(354, 'Led Zeppelin', 'Immigrant Song', 'Rock', 1975),
(355, 'Led Zeppelin', 'Prison Blues', 'Rock', 1975),
(356, 'Led Zeppelin', 'Don\'t Stop Me Now', 'Rock', 1975),
(357, 'Led Zeppelin', 'Heartbreaker', 'Rock', 1975),
(358, 'Led Zeppelin', 'Ten Years Gone', 'Rock', 1975),
(359, 'Led Zeppelin', 'Ramble On', 'Rock', 1971),
(360, 'Led Zeppelin', 'Achilles Last Stand', 'Rock', 1971),
(361, 'Led Zeppelin', 'Communication Breakdown', 'Rock', 1971),
(362, 'Led Zeppelin', 'Good Times Bad Times', 'Rock', 1969),
(363, 'Led Zeppelin', 'Going To California', 'Rock', 1969),
(364, 'Led Zeppelin', 'Fool In The Rain', 'Rock', 1969),
(365, 'Led Zeppelin', 'When The Levee Breaks', 'Rock', 1969),
(366, 'Led Zeppelin', 'The Rain Song', 'Rock', 1969),
(367, 'Marvin Gaye', 'I Want You', 'Soul', 1975),
(368, 'Marvin Gaye', 'Easy Living', 'Soul', 1975),
(369, 'Marvin Gaye', 'Lucky Lucky Me', 'Soul', 1975),
(370, 'Marvin Gaye', 'Once Upon A Time', 'Soul', 1975),
(371, 'Marvin Gaye', 'After The Dance', 'Soul', 1975),
(372, 'Marvin Gaye', 'Got To Give It Up', 'Soul', 1973),
(373, 'Chuck Berry', 'Berry Pickin', 'Bluse', 1958),
(374, 'Chuck Berry', 'Ingo', 'Bluse', 1958),
(375, 'Chuck Berry', 'Carol', 'Rock', 1959),
(376, 'Chuck Berry', 'Come On', 'Bluse', 1958),
(377, 'Chuck Berry', 'Mad Lad', 'Bluse', 1958),
(378, 'Chuck Berry', 'Route 66', 'Bluse', 1958),
(379, 'Chuck Berry', 'Roly Poly', 'Bluse', 1958),
(380, 'Chuck Berry', 'Betty Jean', 'Bluse', 1960),
(381, 'Chuck Berry', 'Let It Rock', 'Rock', 1960),
(382, 'Chuck Berry', 'Jo Jo Gunne', 'Rock', 1960),
(383, 'Chuck Berry', 'Anthony Boy', 'Bluse', 1960),
(384, 'Chuck Berry', 'Havana Moon', 'Bluse', 1960),
(385, 'Chuck Berry', 'Low Feeling', 'Bluse', 1960),
(386, 'Chuck Berry', 'Oh Baby Doll', 'Bluse', 1962),
(387, 'Chuck Berry', 'I’ve Changed', 'Rock', 1959),
(388, 'Chuck Berry', 'Almost Grown', 'Rock', 1959),
(389, 'Chuck Berry', 'Broken Arrow', 'Bluse', 1962),
(390, 'Chuck Berry', 'Blue Feeling', 'Bluse', 1962);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `track`
--
ALTER TABLE `track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
