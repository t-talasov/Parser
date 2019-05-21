-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2019 at 10:42 AM
-- Server version: 10.1.38-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cg_23_restaurants`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `price_min` int(11) NOT NULL,
  `price_max` int(11) NOT NULL,
  `worktime` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `link`, `price_min`, `price_max`, `worktime`, `address`) VALUES
(1, 'Arcobaleno', '/restaurant/87982-arcobaleno', 5000, 15000, '<span class=\"workhours-group\">11:00–01:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Дулати, 7, 4 км. от кольца вверх по ул. Навои'),
(2, 'Sancak', '/restaurant/1894-sancak', 2000, 5000, '<span class=\"workhours-group\">09:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'пр. Жибек жолы, 15, уг. ул. Барибаева'),
(3, 'Башня', '/restaurant/90252-bashnya', 2000, 3500, '<span class=\"workhours-group\">10:00–02:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">12:00–03:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'ул. Байзакова, 280 БЦ Almaty Towers'),
(4, 'Qaimaq', '/restaurant/91092-qaimaq', 4500, 7000, '<span class=\"workhours-group\">12:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'пр. Абая, 46 А'),
(5, 'Honey Honey', '/restaurant/88948-honey-honey', 7000, 10000, '<span class=\"workhours-group\">08:00–00:00 <span class=\"workhours-group-days\">(будние)</span></span>; <span class=\"workhours-group\">09:00–00:00 <span class=\"workhours-group-days\">(сб, вс)</span></span>', 'пр. Аль-Фараби 77/1, в здании ЖК Еsentai Apartments, 1 этаж'),
(6, 'Алаша', '/restaurant/1933-alasha', 8000, 15000, '<span class=\"workhours-group\">12:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Оспанова, 20, уг. пр. Достык'),
(7, 'Тануки', '/restaurant/90500-tanuki', 5000, 7000, '<span class=\"workhours-group\">11:00–23:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">11:00–02:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'пр. Достык, 232'),
(8, 'Манана', '/restaurant/1977-manana', 10000, 15000, '<span class=\"workhours-group\">12:00–01:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">12:00–03:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'пр. Достык, 535, уг. ул. Оспанова'),
(9, 'Del Mar', '/restaurant/90282-del-mar', 20000, 25000, '<span class=\"workhours-group\">12:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'пр. Аль-Фараби, 140 А'),
(10, 'SYDYK / СЫДЫК', '/restaurant/86564-sydyk-sydyk', 4000, 6000, '<span class=\"workhours-group\">08:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Желтоксан, 55, уг. ул. Курмангазы, в здании ЖК «Алем»'),
(11, 'Munchen', '/restaurant/1265-munchen', 5000, 8000, '<span class=\"workhours-group\">11:00–02:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'пр. Сейфуллина, 526'),
(12, 'Якорь', '/restaurant/1586-yakor', 5000, 10000, '<span class=\"workhours-group\">09:30–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Толе би, 72, уг. пр. Желтоксан'),
(13, 'River Hall', '/restaurant/85441-river-hall', 5000, 5000, '<span class=\"workhours-group\">11:00–01:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Коктем 2, 11/3'),
(14, 'Арбуз ', '/restaurant/90268-arbuz', 5000, 7000, '<span class=\"workhours-group\">11:00–00:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">11:00–02:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'мкр. Самал 3, 1'),
(15, 'Cosmo', '/restaurant/1710-cosmo', 5000, 10000, '<span class=\"workhours-group\">09:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Розыбакиева, 287, уг. пр. Аль-Фараби'),
(16, 'Ziyafet Steak House', '/restaurant/30470-ziyafet-steak-house', 5000, 10000, '<span class=\"workhours-group\">10:30–01:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">10:30–02:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'пр. Желтоксан, 172, уг. ул. Сатпаева '),
(17, 'Бейбарыс', '/restaurant/26922-beybarys', 9000, 15000, '<span class=\"workhours-group\">10:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Хан-Тенгри, 183'),
(18, 'Barstol &amp; Kok', '/restaurant/30449-barstol-kok', 4000, 6000, '<span class=\"workhours-group\">12:00–00:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">12:00–02:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'пр. Желтоксан, 126 (бывш. ул. Мира)'),
(19, 'Dolcetto ', '/restaurant/90614-dolcetto', 5000, 7500, '<span class=\"workhours-group\">10:00–04:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Кунаева, 114'),
(20, 'ЖанерД', '/restaurant/7152-zhanerd', 6000, 10000, '<span class=\"workhours-group\">09:00–01:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Толе би, 100, уг. ул. Байтурсынова'),
(21, 'Erbil', '/restaurant/91165-erbil', 5000, 7000, '<span class=\"workhours-group\">круглосуточно, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Сауранбаева, 5'),
(22, 'Славянка', '/restaurant/11143-slavyanka', 5000, 7000, '<span class=\"workhours-group\">10:00–01:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">10:00–03:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'ул. Жарокова, 187/1, уг. ул. Жандосова'),
(23, 'Мұз Тау', '/restaurant/90822-m-z-tau', 5000, 7000, '<span class=\"workhours-group\">10:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Таужолы, ул Досмухамедова 2, уг. ул. Жандосова'),
(24, 'J. Z. Peking Duck ', '/restaurant/86885-j-z-peking-duck', 1500, 10000, '<span class=\"workhours-group\">10:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Шашкина, 1, уг. ул. Тимирязева'),
(25, 'Veranda', '/restaurant/91203-veranda', 5000, 11000, '<span class=\"workhours-group\">11:00–02:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Акан серi, 75'),
(26, 'Versailles | Версаль', '/restaurant/3291-versailles-versal', 4000, 6000, '<span class=\"workhours-group\">10:00–02:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Тимирязева, 32 В'),
(27, 'Пугасов', '/restaurant/628-pugasov', 5000, 10000, '<span class=\"workhours-group\">круглосуточно, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Абдуллиных, 70'),
(28, 'Mangal House', '/restaurant/17081-mangal-house', 6000, 15000, '<span class=\"workhours-group\">с 10:00 до последнего клиента, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Мустафина, 88, уг. ул. А. Аскарова'),
(29, 'Heaven Hill', '/restaurant/87939-heaven-hill', 4000, 6000, '<span class=\"workhours-group\">10:00–02:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Хан Тенгри, ул. Дулати, 207'),
(30, 'Persona Grata', '/restaurant/8182-persona-grata', 5000, 5000, '<span class=\"workhours-group\">10:00–00:00 <span class=\"workhours-group-days\">(пн–чт)</span></span>; <span class=\"workhours-group\">10:00–01:00 <span class=\"workhours-group-days\">(пт–вс)</span></span>', 'пр. Назарбаева, 145'),
(31, 'Country Club', '/restaurant/1153-country-club', 17000, 20000, '<span class=\"workhours-group\">10:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Мирас, ул. Мираса, 188'),
(32, 'Brother’s Burger, ресторан быстрого питания', '/restaurant/91396-brother-s-burger', 1200, 2000, '<span class=\"workhours-group\">10:00–02:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Шолохова 6, уг. ул. Акан Серы'),
(33, 'GATO Kitchen &amp; Wine', '/restaurant/87399-gato-kitchen-wine', 10000, 15000, '<span class=\"workhours-group\">12:00–01:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">12:00–03:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'пр. Назарбаева, 226 (бывш. ул. Фурманова)'),
(34, 'Белый Слон', '/restaurant/1179-belyy-slon', 6000, 8000, '<span class=\"workhours-group\">12:00–23:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'пр. Назарбаева, 226'),
(35, 'Аул Resort', '/restaurant/91796-aul-resort', 2500, 5000, '<span class=\"workhours-group\">с 09:00 до последнего клиента, <span class=\"workhours-group-novac\">без выходных</span></span>', '36 км Верхней Каскеленской трассы'),
(36, 'Принцесса на Тулебаева', '/restaurant/5590-printsessa-na-tulebaeva', 2500, 5000, '<span class=\"workhours-group\">12:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Тулебаева, 53, уг. ул. Гоголя'),
(37, 'The Float — бывш. Park House', '/restaurant/7160-the-float-byvsh-park-house', 5000, 8000, '<span class=\"workhours-group\">12:00–00:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">12:00–01:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'Центральный парк отдыха (бывш. им. Горького)'),
(38, 'Tito Avantgarde', '/restaurant/87303-tito-avantgarde', 7000, 12000, '<span class=\"workhours-group\">11:00–23:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'пр. Аль-Фараби, 75 В/1'),
(39, 'Шам-Сия', '/restaurant/31836-sham-siya', 5000, 10000, '<span class=\"workhours-group\">с 12:00 до последнего клиента, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Диваева, 1 (ул. Яблочная, 19)'),
(40, 'Асель', '/restaurant/29927-asel', 3000, 5000, '<span class=\"workhours-group\">10:00–01:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Жандосова, 4, уг. ул. Вахтангова'),
(41, 'Borgo Antico ', '/restaurant/1417-borgo-antico', 7000, 15000, '<span class=\"workhours-group\">12:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Горный Гигант, ул. Искендирова, 11/6'),
(42, 'Алтын Адам', '/restaurant/20-altyn-adam', 3000, 8000, '<span class=\"workhours-group\">10:00–02:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Шашкина, 5 А, уг. ул. Попова'),
(43, 'Fortune', '/restaurant/59-fortune', 5500, 8000, '<span class=\"workhours-group\">10:00–02:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Жетысу 3, 25'),
(44, 'Думан', '/restaurant/1388-duman', 4000, 5000, '<span class=\"workhours-group\">10:00–01:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Жетысу 2, 9 А '),
(45, 'Ағайын', '/restaurant/1625-a-ayyn', 3000, 5000, '<span class=\"workhours-group\">11:00–01:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Айнабулак 4, ул. Жумабаева, 172 Г'),
(46, 'Roma Caffe', '/restaurant/11710-roma-caffe', 7000, 10000, '<span class=\"workhours-group\">12:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'мкр. Самал 2, 111, ТРЦ «Dostyk Plaza»'),
(47, 'Lotus', '/restaurant/1108-lotus', 5000, 8000, '<span class=\"workhours-group\">12:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'ул. Гоголя, 8, уг. ул. Барибаева'),
(48, 'Entrecote ', '/restaurant/5580-entrecote', 7000, 10000, '<span class=\"workhours-group\">11:00–00:00 <span class=\"workhours-group-days\">(пн–чт, вс)</span></span>; <span class=\"workhours-group\">11:00–01:00 <span class=\"workhours-group-days\">(пт, сб)</span></span>', 'ул. Богенбай батыра, 132, уг. ул. Назарбаева'),
(49, 'QAZAQ Restaurant', '/restaurant/84478-qazaq-restaurant', 7000, 10000, '<span class=\"workhours-group\">11:00–00:00, <span class=\"workhours-group-novac\">без выходных</span></span>', 'пр. Достык, 210 Б, БЦ «Коктем Гранд»');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants_cuisines`
--

CREATE TABLE `restaurants_cuisines` (
  `id` int(11) NOT NULL,
  `id_restaurant` int(11) NOT NULL,
  `id_cuisine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants_cuisines`
--
ALTER TABLE `restaurants_cuisines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_restaurant` (`id_restaurant`,`id_cuisine`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `restaurants_cuisines`
--
ALTER TABLE `restaurants_cuisines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
