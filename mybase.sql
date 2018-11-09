-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 09 2018 г., 16:18
-- Версия сервера: 10.1.36-MariaDB
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mybase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date_created` date NOT NULL,
  `name_autor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`article_id`, `title`, `content`, `date_created`, `name_autor`) VALUES
(1, 'Рукоделие', 'Из куска цветной бумаги, \r\nВзявши ножницы и клей, \r\nЕсли хватит вам отваги, \r\nМожно сделать сто рублей. \r\n', '2018-10-10', 'Непризнанный'),
(2, 'Минутка кулинарии', 'А из нашего окна\r\nБрайтон бич сама видна!\r\nА из нашего окошка\r\nМак-меню и фри картошка! \r\n', '2018-10-10', 'МакДональдс'),
(3, 'Лицом к лицу', 'Всё утро в зеркало Яйцо\r\nГлядит и думает уныло:\r\n«Так где кончается лицо\r\nИ начинается затылок?»', '2018-10-10', 'Рената Муха');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL DEFAULT '',
  `e_mail` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`message_id`, `user_name`, `e_mail`, `text`, `date_created`) VALUES
(1, '', '', '', '0000-00-00 00:00:00'),
(2, '06.08.2018_14.08.2018', '', '', '0000-00-00 00:00:00'),
(3, '06.08.2018_14.08.2018', '', '', '0000-00-00 00:00:00'),
(4, 'Наталья', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `date_created` date NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `name`, `login`, `pass`, `date_created`, `img`) VALUES
(1, 'Наталья', 'sdefjlsfj@mail.ru', '14559', '2018-10-10', ''),
(2, 'Иван', 'vanyaIvan', '7857', '2018-10-10', ''),
(3, 'Петя', 'petushok', '2354', '2018-10-10', ''),
(4, 'Катя', 'carrycat', '895t', '2018-10-10', ''),
(5, 'Леся', 'pushLess', 'u5634', '2018-10-10', ''),
(10, 'Administrator', 'Admin', 'Admin', '2018-10-10', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
