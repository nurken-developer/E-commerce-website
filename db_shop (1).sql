-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 28 2021 г., 20:22
-- Версия сервера: 10.4.18-MariaDB
-- Версия PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `lavel` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `lavel`) VALUES
(1, 'Delwar J Imran', 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Miriken'),
(2, 'Miriken'),
(3, 'Stradivarius'),
(4, 'Miriken'),
(5, 'Miriken');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(6, 'v7reidsdl0qugvgn7dm09bnvmg', 27, 'Co-ord set in cream waffle', 12.6, 1, 'upload/Co-ord set in cream waffle.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Toys, Kids &amp; Babies'),
(15, 'Beauty &amp; Healthcare'),
(16, 'Co-ord\r\n'),
(17, 'Clothing'),
(18, 'Jewellery'),
(19, 'Jeans'),
(20, 'Designer Clothing'),
(21, 'Jumpers & Cardigans\r\n'),
(22, 'Jackets'),
(23, 'Hoodies & Sweatshirts'),
(24, 'Shirts'),
(25, 'Dress');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Delwar J Imran', 'Malibagh, Dhaka', 'Dhaka', 'Bangladesh', '1219', '01974353555', 'monirdhk.it@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'tom', 'Manhattan', 'New York', 'Kz', '12000', '(777) 456-8970', 'tomirisaltaj@gmail.com', '1d51cd4fc605dd5324f91ea1bafb05bb'),
(3, 'Amina Mustafina', 'Stepnoy', 'Karaganda', '?????????', '20001', '87003093903', 'mustafinaa550@gmail.com', 'e41715404ab3516f366166c6ce4deee3'),
(4, 'Nurken', 'Zhumabaeva 11', 'Nur-Sultan', 'KZ', '01000', '+7(705)748-94-59', '2002nurken2002@gmail.com', '13ff21386579292e496b0b36b69a5a1e'),
(5, 'MIke', 'Stepnogorsk', 'Nur-Sultan', 'KZ', '010000', '+7(778)888-00-01', '201243@astanait.edu.kz', '13ff21386579292e496b0b36b69a5a1e');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(12, 1, 9, 'Monitor', 1, 5000, 'upload/ae748749b8.jpg', '2018-03-02 12:29:03', 2),
(13, 1, 10, 'Camera', 3, 1650, 'upload/c769967566.jpg', '2018-03-02 12:29:03', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(4, '90s oversized brushed flannel check shirt in large scale tartan', 24, 1, '<p>COLOUR: Black</p>\r\n\r\n<p>PRODUCT CODE - 1742759</p>\r\n\r\n<p>Main: 50% Cotton, 50% Polyester</p>', 60.39, 'upload/shirt2.jpeg', 0),
(5, 'Wool harrington jacket in blue check', 22, 1, '<p>COLOUR: Blue</p>\r\n\r\n<p>PRODUCT CODE - 1583725</p>\r\n\r\n<p>Main: 100% Cotton</p>', 110.99, 'upload/men7.jpeg', 1),
(6, 'Actual co-ord oversized with printed logo and colourblocking', 16, 1, '<p>COLOUR: Beige</p>\r\n\r\n<p>PRODUCT CODE - 09378428</p>\r\n\r\n<p>Main: 100% Polyester</p>', 66.59, 'upload/men47.jpeg', 0),
(7, 'Stradivarius 90s dad jean with rips in light wash', 19, 4, '<p>COLOUR: Blue</p>\r\n\r\n<p>PRODUCT CODE - 275547</p>\r\n\r\n<p>Main: 100% Cotton</p>', 25, 'upload/Stradivarius.jpg', 0),
(8, 'Gramicci shell field parka', 22, 1, '<p>COLOUR: Creme brulee</p>\r\n\r\n<p>PRODUCT CODE - 2746425</p>\r\n\r\n<p>Main: 100% Polyester</p>', 55.99, 'upload/jacket2.jpeg', 0),
(9, 'COLLUSION x014 90s baggy jeans in butter yellow', 19, 5, '<p>COLOUR: Orange</p>\r\n\r\n<p>PRODUCT CODE - 1975902</p>\r\n\r\n<p>Main: 100% Cotton.</p>', 20, 'upload/call.jpg', 1),
(10, 'The North Face 100 Glacier 1/4 zip fleece in black', 20, 4, '<p>COLOUR: Tnf black</p>\r\n\r\n<p>PRODUCT CODE - 1834677</p>\r\n\r\n<p>Main: 100% Polyester</p>', 45, 'upload/The North Face.jpg', 0),
(19, 'Sheru jacket in light pink Exclusive', 22, 4, '<p>COLOUR: Pink</p>\r\n\r\n<p>PRODUCT CODE - 1971536</p>\r\n\r\n<p>Main: 100% Polyester</p>', 63, 'upload/Sheru jacket in light pink Exclusive.jpg', 0),
(20, 'ASOS DESIGN zip thru hoodie in oversized boxy fit in buttermilk', 23, 4, '<p>COLOUR: Yellow</p>\r\n\r\n<p>PRODUCT CODE - 1924339</p>\r\n\r\n<p>Main: 100% Cotton, Trim: 94% Cotton, 6% Elastane.</p>', 15.5, 'upload/asos.jpg', 0),
(21, 'Jumper with open shoulder in beige', 21, 4, '<p>COLOUR: Beige</p>\r\n\r\n<p>PRODUCT CODE - 102034426</p>\r\n\r\n<p>Main: 86% Acrylic, 9% Polyester, 5% Nylon.</p>', 19, 'upload/Jumper with open shoulder in beige.jpg', 0),
(25, 'Flounce London cropped long sleeve satin shirt and wrap mini skirt co-ord in cha', 24, 5, '<p>COLOUR: Champagne</p>\r\n\r\n<p>PRODUCT CODE - 340285</p>\r\n\r\n<p>Main: 100% Polyester</p>', 22.4, 'upload/london.jpg', 0),
(27, 'Co-ord set in cream waffle', 16, 5, '<p>COLOUR: Creme brulee</p>\r\n\r\n<p>PRODUCT CODE - 298536</p>\r\n\r\n<p>Main: 100% Cotton</p>', 12.6, 'upload/Co-ord set in cream waffle.jpg', 0),
(28, 'Mini shirt dress in pink textured check', 25, 5, '<p>COLOUR:  Multi</p>\r\n\r\n<p>PRODUCT CODE - 1958611</p>\r\n\r\n<p>Lining: 92% Polyester, 8% Elastane, Main: 72% Polyester, 28% Viscose.</p>', 60, 'upload/Mini shirt dress in pink textured check.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(6, 1, 7, 'Fan', 880.00, 'upload/8f9f7b4ade.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Индексы таблицы `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Индексы таблицы `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Индексы таблицы `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Индексы таблицы `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Индексы таблицы `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
