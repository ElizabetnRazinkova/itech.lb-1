-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 03 2020 г., 14:25
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lb1v7`
--

-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

CREATE TABLE `game` (
  `ID_GAME` int(11) NOT NULL,
  `DATE` date DEFAULT NULL,
  `PLACE` char(30) DEFAULT NULL,
  `SCORE` char(30) DEFAULT NULL,
  `FID_TEAM1` int(11) DEFAULT NULL,
  `FID_TEAM2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `game`
--

INSERT INTO `game` (`ID_GAME`, `DATE`, `PLACE`, `SCORE`, `FID_TEAM1`, `FID_TEAM2`) VALUES
(1, '2020-04-20', 'place1', 'score10', 1, 2),
(2, '2020-04-20', 'place1', 'score10', 2, 3),
(3, '2020-04-22', 'place1', 'score25', 4, 5),
(4, '2020-04-25', 'place1', 'score45', 5, 4),
(5, '2020-04-28', 'place1', 'score12', 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `player`
--

CREATE TABLE `player` (
  `ID_PLAYER` int(11) NOT NULL,
  `NAME` char(30) DEFAULT NULL,
  `FID_TEAM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `player`
--

INSERT INTO `player` (`ID_PLAYER`, `NAME`, `FID_TEAM`) VALUES
(1, 'pname1', 1),
(2, 'pname2', 2),
(3, 'pname3', 3),
(4, 'pname4', 4),
(5, 'pname5', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `ID_TEAM` int(11) NOT NULL,
  `NAME` char(30) DEFAULT NULL,
  `LEAGUE` char(30) DEFAULT NULL,
  `COACH` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`ID_TEAM`, `NAME`, `LEAGUE`, `COACH`) VALUES
(1, 'name1', 'league1', 'coach1'),
(2, 'name2', 'league1', 'coach2'),
(3, 'name3', 'league1', 'coach3'),
(4, 'name4', 'league2', 'coach4'),
(5, 'name5', 'league2', 'coach5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`ID_GAME`),
  ADD KEY `A2` (`FID_TEAM1`),
  ADD KEY `A3` (`FID_TEAM2`);

--
-- Индексы таблицы `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`ID_PLAYER`),
  ADD KEY `A1` (`FID_TEAM`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`ID_TEAM`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `A2` FOREIGN KEY (`FID_TEAM1`) REFERENCES `team` (`ID_TEAM`),
  ADD CONSTRAINT `A3` FOREIGN KEY (`FID_TEAM2`) REFERENCES `team` (`ID_TEAM`);

--
-- Ограничения внешнего ключа таблицы `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `A1` FOREIGN KEY (`FID_TEAM`) REFERENCES `team` (`ID_TEAM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
