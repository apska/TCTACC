-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 19 2015 г., 21:15
-- Версия сервера: 5.5.25a
-- Версия PHP: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u332101712_tct`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cards`
--

CREATE TABLE IF NOT EXISTS `cards` (
  `AutoKey` int(11) NOT NULL COMMENT 'AutoKey записи',
  `CardID` int(11) NOT NULL COMMENT 'Идентификатор карты',
  `CardName` varchar(100) NOT NULL COMMENT 'Название карты',
  `CardRarity` smallint(6) NOT NULL COMMENT 'Редкость карты',
  `IsLimited` tinyint(1) NOT NULL COMMENT 'Карта ограниченная (Да/Нет)',
  `IsUnique` tinyint(1) NOT NULL COMMENT 'Карта унакальна (Да/Нет)',
  `CardType` smallint(6) NOT NULL COMMENT 'Тип карты'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Справочник карт';

-- --------------------------------------------------------

--
-- Структура таблицы `card_rarity`
--

CREATE TABLE IF NOT EXISTS `card_rarity` (
  `RarityID` smallint(6) DEFAULT NULL COMMENT 'Идентификатор редкости карт',
  `RarityDescr` varchar(20) DEFAULT NULL COMMENT 'Описание редкости карт'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 ROW_FORMAT=COMPACT COMMENT='Справочник редкости карт';

--
-- Дамп данных таблицы `card_rarity`
--

INSERT INTO `card_rarity` (`RarityID`, `RarityDescr`) VALUES
(0, 'Бронза'),
(1, 'Серебро'),
(2, 'Золото'),
(3, 'SR');

-- --------------------------------------------------------

--
-- Структура таблицы `card_type`
--

CREATE TABLE IF NOT EXISTS `card_type` (
  `TypeID` smallint(6) DEFAULT NULL COMMENT 'Идентификатор типа карты',
  `TypeDescr` varchar(20) DEFAULT NULL COMMENT 'Описание типа карты'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Справочник типов карт';

--
-- Дамп данных таблицы `card_type`
--

INSERT INTO `card_type` (`TypeID`, `TypeDescr`) VALUES
(0, 'Рука'),
(1, 'Нога'),
(2, 'HP');

-- --------------------------------------------------------

--
-- Структура таблицы `fighters`
--

CREATE TABLE IF NOT EXISTS `fighters` (
  `FighterID` smallint(6) DEFAULT NULL COMMENT 'Идентификатор бойца',
  `FighterName` varchar(50) DEFAULT NULL COMMENT 'Имя бойца'
) ENGINE=InnoDB DEFAULT CHARSET=cp1251 COMMENT='Справочник бойцов';

--
-- Дамп данных таблицы `fighters`
--

INSERT INTO `fighters` (`FighterID`, `FighterName`) VALUES
(1, 'Kazuya'),
(2, 'Paul'),
(3, 'Law'),
(4, 'Panda'),
(5, 'Yoshimitsu'),
(6, 'Xiaoyu'),
(7, 'Nina'),
(8, 'Lili'),
(9, 'Heihachi'),
(10, 'Hwoarang'),
(11, 'Jin');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UID` int(11) NOT NULL COMMENT 'Уникальный Идентификатор пользователя',
  `Login` varchar(50) NOT NULL COMMENT 'Логин пользователя',
  `Password` varchar(64) NOT NULL COMMENT 'Пароль пользователя',
  `email` varchar(256) DEFAULT NULL COMMENT 'E-mail пользователя',
  `EnterCount` smallint(6) NOT NULL COMMENT 'Количество попыток входа',
  `LastEnter` datetime DEFAULT NULL COMMENT 'Дата последнего входа',
  `RegDateTime` datetime DEFAULT NULL COMMENT 'Дата регистрации',
  `IsActive` int(1) NOT NULL DEFAULT '0' COMMENT 'Признак активации пользователя.',
  `Salt` varchar(50) DEFAULT NULL COMMENT 'Соль для пароля',
  `SaltIteration` smallint(6) DEFAULT NULL COMMENT 'Количество итераций засолки пароля'
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`UID`, `Login`, `Password`, `email`, `EnterCount`, `LastEnter`, `RegDateTime`, `IsActive`, `Salt`, `SaltIteration`) VALUES
(34, '1', 'b6c916209aff8e19e560414b03fcd438', 'qwer@mail.ru', 0, '2015-03-15 19:30:39', '2015-03-15 19:30:39', 0, 'NzI5ZmExNGJlNTUxYTMyYjhlODMzZDg0ZjUxYmZjZjA', 7);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`AutoKey`), ADD UNIQUE KEY `CardID` (`CardID`);

--
-- Индексы таблицы `card_rarity`
--
ALTER TABLE `card_rarity`
  ADD UNIQUE KEY `ID` (`RarityID`);

--
-- Индексы таблицы `card_type`
--
ALTER TABLE `card_type`
  ADD UNIQUE KEY `ID` (`TypeID`);

--
-- Индексы таблицы `fighters`
--
ALTER TABLE `fighters`
  ADD UNIQUE KEY `ID` (`FighterID`) COMMENT 'Уникальный индекс по ID бойца';

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`), ADD UNIQUE KEY `Login` (`Login`) COMMENT 'Уникальный индекс по Логину', ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cards`
--
ALTER TABLE `cards`
  MODIFY `AutoKey` int(11) NOT NULL AUTO_INCREMENT COMMENT 'AutoKey записи';
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Уникальный Идентификатор пользователя',AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
