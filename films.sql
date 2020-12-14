-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Гру 13 2020 р., 23:14
-- Версія сервера: 10.4.14-MariaDB
-- Версія PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `films`
--

-- --------------------------------------------------------

--
-- Структура таблиці `actors`
--

CREATE TABLE `actors` (
  `№  contracts` int(11) NOT NULL,
  `PIB` varchar(45) DEFAULT NULL,
  `Studio` varchar(45) DEFAULT NULL,
  `Nomber phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `actors`
--

INSERT INTO `actors` (`№  contracts`, `PIB`, `Studio`, `Nomber phone`) VALUES
(10001, 'Том Холланд', 'Buena Vista', '1-798-352-2321'),
(11323, 'Бен Фостер', ' Universal Pictures', '1-676-789-5678'),
(12324, 'Том Холланд', 'Columbia Pictures', '1-798-352-2321'),
(114343, 'Джеймс Юджі́н Ке́ррі', 'Columbia Pictures', '1-666-353-2421');

-- --------------------------------------------------------

--
-- Структура таблиці `contacts_actors`
--

CREATE TABLE `contacts_actors` (
  `Namber phone` varchar(20) NOT NULL,
  `PIB` varchar(45) DEFAULT NULL,
  `Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `contacts_actors`
--

INSERT INTO `contacts_actors` (`Namber phone`, `PIB`, `Address`) VALUES
('1-666-353-2421', 'Джеймс Юджі́н Ке́ррі', 'Ньюмаркет '),
('1-676-789-5678', 'Бен Фостер', 'Бостон'),
('1-798-352-2321', 'Том Холланд', 'Лондон');

-- --------------------------------------------------------

--
-- Структура таблиці `contacts_rez`
--

CREATE TABLE `contacts_rez` (
  `Namber phone` varchar(20) NOT NULL,
  `PIB` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `contacts_rez`
--

INSERT INTO `contacts_rez` (`Namber phone`, `PIB`, `Address`) VALUES
('1-343-545-7675', 'Джефф Фаулер', 'Іллінойс'),
('1-400-222-3211', ' Джон Воттс', 'Нью-Йорк'),
('1-653-567-6546', ' Рафе Рубен Флейшер', 'Вашингтон'),
('1-656-343-4343', 'Данкан Джонс', 'Beckenham');

-- --------------------------------------------------------

--
-- Структура таблиці `contacts_scenar`
--

CREATE TABLE `contacts_scenar` (
  `Namber phone` varchar(20) NOT NULL,
  `PIB` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `contacts_scenar`
--

INSERT INTO `contacts_scenar` (`Namber phone`, `PIB`, `Address`) VALUES
('1-333-121-3466', 'Чарльз Лівітт', 'Лос Анджелес'),
('1-443-556-4313', ' Джон Френсіс Делі', 'Мексика'),
('1-555-343-234-4340', 'Рубен Флейшер', 'Техас'),
('1-876-434-8888', 'Ван Робішо', 'Кентукі');

-- --------------------------------------------------------

--
-- Структура таблиці `films`
--

CREATE TABLE `films` (
  `Name` varchar(45) NOT NULL,
  `Operator` varchar(45) NOT NULL,
  `code_films` varchar(3) NOT NULL,
  `Actors` varchar(45) NOT NULL,
  `Rezisers` varchar(45) NOT NULL,
  `Studio` varchar(45) NOT NULL,
  `Scenarist` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `films`
--

INSERT INTO `films` (`Name`, `Operator`, `code_films`, `Actors`, `Rezisers`, `Studio`, `Scenarist`) VALUES
('Warcraft: Початок ', 'Родріго Моріс ', 'WAR', 'Бен Фостер', 'Дункан Джон', 'Universal Studio', 'Чарльз Лівітт'),
('Людина-павук: Повернення додому ', 'Сальсаторе Мафіас ', 'PHS', 'Холланд Том ', 'Вотс Джон ', 'Vista ', 'Джон Френсіс Д'),
('Незвідане: Удача Дрейка ', 'Родріго Моріс ', 'DRK', 'Холланд Том ', 'Рубен Флейшер ', 'Сolumbia Pictures ', 'Рафе Джадкінс');

-- --------------------------------------------------------

--
-- Структура таблиці `finans_film`
--

CREATE TABLE `finans_film` (
  `code_films` varchar(3) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Budzet` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `finans_film`
--

INSERT INTO `finans_film` (`code_films`, `Name`, `Date`, `Budzet`) VALUES
('DRK', 'Незвідане: Удача Дрейка ', '2019-12-23', '160000'),
('SPH', 'Людина-павук: Повернення додому ', '2019-08-13', '1750000'),
('WAR', 'Warcraft: Початок ', '2020-12-14', '1504538');

-- --------------------------------------------------------

--
-- Структура таблиці `rezisers`
--

CREATE TABLE `rezisers` (
  `№  contracts` int(11) NOT NULL,
  `PIB` varchar(45) NOT NULL,
  `Studio` varchar(45) DEFAULT NULL,
  `Nomber phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `rezisers`
--

INSERT INTO `rezisers` (`№  contracts`, `PIB`, `Studio`, `Nomber phone`) VALUES
(11323, 'Джефф Фаулер', 'Columbia Pictures', '1-343-545-7675'),
(111334, ' Рафе Рубен Флейшер', 'Columbia Pictures', '1-653-567-6546'),
(1113343, 'Данкан Джонс', ' Universal Pictures', '1-656-343-4343'),
(1200111, 'Джон Воттс', 'Buena Vista', '1-400-222-3211');

-- --------------------------------------------------------

--
-- Структура таблиці `scenarists`
--

CREATE TABLE `scenarists` (
  `№  contracts` int(11) NOT NULL,
  `PIB` varchar(45) NOT NULL,
  `Studio` varchar(45) DEFAULT NULL,
  `Nomber phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `scenarists`
--

INSERT INTO `scenarists` (`№  contracts`, `PIB`, `Studio`, `Nomber phone`) VALUES
(43423, 'Рубен Флейшер', 'Columbia Pictures', '1-555-343-234-4340'),
(55566, 'Чарльз Лівітт', ' Universal Pictures', '1-333-121-3466'),
(65654, 'Ван Робішо', 'Columbia Pictures', '1-876-434-8888'),
(123234, 'Джон Френсіс Делі', 'Buena Vista', '1-443-556-4313');

-- --------------------------------------------------------

--
-- Структура таблиці `studio`
--

CREATE TABLE `studio` (
  `Name` varchar(45) NOT NULL,
  `Addres` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `studio`
--

INSERT INTO `studio` (`Name`, `Addres`) VALUES
(' Universal Pictures', 'Універсал Сіті'),
('Buena Vista', 'Калифорния'),
('Columbia Pictures', 'Калвер-Сіті'),
('Warner Bros', 'Лос Анджелес');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`№  contracts`),
  ADD KEY `phone` (`Nomber phone`),
  ADD KEY `Studio` (`Studio`),
  ADD KEY `PIB` (`PIB`);

--
-- Індекси таблиці `contacts_actors`
--
ALTER TABLE `contacts_actors`
  ADD PRIMARY KEY (`Namber phone`);

--
-- Індекси таблиці `contacts_rez`
--
ALTER TABLE `contacts_rez`
  ADD PRIMARY KEY (`Namber phone`);

--
-- Індекси таблиці `contacts_scenar`
--
ALTER TABLE `contacts_scenar`
  ADD PRIMARY KEY (`Namber phone`);

--
-- Індекси таблиці `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`Name`);

--
-- Індекси таблиці `finans_film`
--
ALTER TABLE `finans_film`
  ADD PRIMARY KEY (`code_films`),
  ADD KEY `Name` (`Name`);

--
-- Індекси таблиці `rezisers`
--
ALTER TABLE `rezisers`
  ADD PRIMARY KEY (`№  contracts`),
  ADD KEY `phone` (`Nomber phone`),
  ADD KEY `studio` (`Studio`);

--
-- Індекси таблиці `scenarists`
--
ALTER TABLE `scenarists`
  ADD PRIMARY KEY (`№  contracts`) USING BTREE,
  ADD KEY `phone` (`Nomber phone`),
  ADD KEY `Studio` (`Studio`);

--
-- Індекси таблиці `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`Name`);

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `actors`
--
ALTER TABLE `actors`
  ADD CONSTRAINT `actors_ibfk_1` FOREIGN KEY (`Studio`) REFERENCES `studio` (`Name`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `actors_ibfk_2` FOREIGN KEY (`Nomber phone`) REFERENCES `contacts_actors` (`Namber phone`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Обмеження зовнішнього ключа таблиці `finans_film`
--
ALTER TABLE `finans_film`
  ADD CONSTRAINT `finans_film_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `films` (`Name`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Обмеження зовнішнього ключа таблиці `rezisers`
--
ALTER TABLE `rezisers`
  ADD CONSTRAINT `rezisers_ibfk_1` FOREIGN KEY (`Studio`) REFERENCES `studio` (`Name`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `rezisers_ibfk_2` FOREIGN KEY (`Nomber phone`) REFERENCES `contacts_rez` (`Namber phone`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Обмеження зовнішнього ключа таблиці `scenarists`
--
ALTER TABLE `scenarists`
  ADD CONSTRAINT `scenarists_ibfk_2` FOREIGN KEY (`Studio`) REFERENCES `studio` (`Name`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `scenarists_ibfk_3` FOREIGN KEY (`Nomber phone`) REFERENCES `contacts_scenar` (`Namber phone`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
