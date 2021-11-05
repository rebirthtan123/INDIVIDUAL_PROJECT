-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2021-11-05 08:30:27
-- 服务器版本： 10.4.8-MariaDB
-- PHP 版本： 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `inventory`
--

-- --------------------------------------------------------

--
-- 表的结构 `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1= stockin , 2 = stockout',
  `stock_from` varchar(100) NOT NULL COMMENT 'sales/receiving',
  `form_id` int(30) NOT NULL,
  `other_details` text NOT NULL,
  `remarks` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `qty`, `type`, `stock_from`, `form_id`, `other_details`, `remarks`, `date_updated`) VALUES
(25, 6, 100, 1, 'receiving', 4, '{\"price\":\"3\",\"qty\":\"100\"}', 'Stock from Receiving-00000000\n', '2021-10-19 17:12:31'),
(26, 7, 100, 1, 'receiving', 4, '{\"price\":\"3\",\"qty\":\"100\"}', 'Stock from Receiving-00000000\n', '2021-10-19 17:12:32'),
(27, 8, 100, 1, 'receiving', 4, '{\"price\":\"3\",\"qty\":\"100\"}', 'Stock from Receiving-00000000\n', '2021-10-19 17:12:32'),
(28, 9, 100, 1, 'receiving', 4, '{\"price\":\"3\",\"qty\":\"100\"}', 'Stock from Receiving-00000000\n', '2021-10-19 17:12:32'),
(29, 15, 150, 1, 'receiving', 5, '{\"price\":\"3\",\"qty\":\"150\"}', 'Stock from Receiving-63240453\n', '2021-10-19 17:13:13'),
(30, 11, 150, 1, 'receiving', 5, '{\"price\":\"3\",\"qty\":\"150\"}', 'Stock from Receiving-63240453\n', '2021-10-19 17:13:13'),
(31, 12, 150, 1, 'receiving', 5, '{\"price\":\"3\",\"qty\":\"150\"}', 'Stock from Receiving-63240453\n', '2021-10-19 17:13:13'),
(32, 14, 150, 1, 'receiving', 5, '{\"price\":\"3\",\"qty\":\"150\"}', 'Stock from Receiving-63240453\n', '2021-10-19 17:13:13'),
(33, 10, 200, 1, 'receiving', 6, '{\"price\":\"3\",\"qty\":\"200\"}', 'Stock from Receiving-73646517\n', '2021-10-19 17:13:29'),
(34, 6, 100, 1, 'receiving', 7, '{\"price\":\"3\",\"qty\":\"100\"}', 'Stock from Receiving-83511801\n', '2021-10-19 17:14:14'),
(35, 7, 100, 1, 'receiving', 7, '{\"price\":\"3\",\"qty\":\"100\"}', 'Stock from Receiving-83511801\n', '2021-10-19 17:14:14'),
(36, 8, 100, 1, 'receiving', 7, '{\"price\":\"3\",\"qty\":\"100\"}', 'Stock from Receiving-83511801\n', '2021-10-19 17:14:14'),
(37, 9, 100, 1, 'receiving', 7, '{\"price\":\"3\",\"qty\":\"100\"}', 'Stock from Receiving-83511801\n', '2021-10-19 17:14:14'),
(38, 6, 10, 2, 'Sales', 7, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-00000000\n', '2021-10-19 17:15:13'),
(39, 7, 10, 2, 'Sales', 7, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-00000000\n', '2021-10-19 17:15:13'),
(40, 9, 10, 2, 'Sales', 7, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-00000000\n', '2021-10-19 17:15:13'),
(41, 15, 5, 2, 'Sales', 8, '{\"price\":\"5\",\"qty\":\"5\"}', 'Stock out from Sales-84722787\n', '2021-10-19 17:15:57'),
(42, 14, 5, 2, 'Sales', 8, '{\"price\":\"5\",\"qty\":\"5\"}', 'Stock out from Sales-84722787\n', '2021-10-19 17:15:57'),
(43, 12, 5, 2, 'Sales', 8, '{\"price\":\"10\",\"qty\":\"5\"}', 'Stock out from Sales-84722787\n', '2021-10-19 17:15:57'),
(44, 8, 10, 2, 'Sales', 9, '{\"price\":\"6\",\"qty\":\"10\"}', 'Stock out from Sales-01058550\n', '2021-10-19 17:16:39'),
(45, 10, 10, 2, 'Sales', 9, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-01058550\n', '2021-10-19 17:16:39'),
(46, 11, 10, 2, 'Sales', 10, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-86427682\n', '2021-10-19 17:17:44'),
(47, 10, 10, 2, 'Sales', 10, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-86427682\n', '2021-10-19 17:17:44'),
(48, 12, 10, 2, 'Sales', 10, '{\"price\":\"10\",\"qty\":\"10\"}', 'Stock out from Sales-86427682\n', '2021-10-19 17:17:44'),
(49, 15, 15, 2, 'Sales', 11, '{\"price\":\"5\",\"qty\":\"15\"}', 'Stock out from Sales-09275695\n', '2021-10-19 17:19:27'),
(50, 14, 15, 2, 'Sales', 11, '{\"price\":\"5\",\"qty\":\"15\"}', 'Stock out from Sales-09275695\n', '2021-10-19 17:19:27'),
(51, 6, 10, 2, 'Sales', 12, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-24253775\n', '2021-10-19 17:20:35'),
(52, 7, 10, 2, 'Sales', 12, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-24253775\n', '2021-10-19 17:20:35'),
(53, 12, 15, 2, 'Sales', 12, '{\"price\":\"10\",\"qty\":\"15\"}', 'Stock out from Sales-24253775\n', '2021-10-19 17:20:35'),
(54, 9, 10, 2, 'Sales', 12, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-24253775\n', '2021-10-19 17:20:35'),
(55, 6, 15, 2, 'Sales', 13, '{\"price\":\"5\",\"qty\":\"15\"}', 'Stock out from Sales-79129948\n', '2021-10-19 17:21:48'),
(56, 6, 15, 2, 'Sales', 14, '{\"price\":\"5\",\"qty\":\"15\"}', 'Stock out from Sales-94743552\n', '2021-10-19 17:22:15'),
(57, 7, 20, 2, 'Sales', 14, '{\"price\":\"5\",\"qty\":\"20\"}', 'Stock out from Sales-94743552\n', '2021-10-19 17:22:15'),
(58, 7, 10, 2, 'Sales', 15, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-12507414\n', '2021-10-19 17:22:52'),
(59, 8, 15, 2, 'Sales', 15, '{\"price\":\"6\",\"qty\":\"15\"}', 'Stock out from Sales-12507414\n', '2021-10-19 17:22:52'),
(60, 9, 10, 2, 'Sales', 15, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-12507414\n', '2021-10-19 17:22:52'),
(61, 10, 20, 2, 'Sales', 16, '{\"price\":\"5\",\"qty\":\"20\"}', 'Stock out from Sales-69747439\n', '2021-10-19 17:23:39'),
(62, 8, 15, 2, 'Sales', 16, '{\"price\":\"6\",\"qty\":\"15\"}', 'Stock out from Sales-69747439\n', '2021-10-19 17:23:39'),
(63, 12, 10, 2, 'Sales', 16, '{\"price\":\"10\",\"qty\":\"10\"}', 'Stock out from Sales-69747439\n', '2021-10-19 17:23:39'),
(64, 9, 20, 2, 'Sales', 17, '{\"price\":\"5\",\"qty\":\"20\"}', 'Stock out from Sales-91561701\n', '2021-10-19 17:25:00'),
(65, 10, 10, 2, 'Sales', 17, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-91561701\n', '2021-10-19 17:25:00'),
(66, 8, 10, 2, 'Sales', 17, '{\"price\":\"6\",\"qty\":\"10\"}', 'Stock out from Sales-91561701\n', '2021-10-19 17:25:00'),
(67, 6, 10, 2, 'Sales', 18, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-39597315\n', '2021-10-19 17:25:30'),
(68, 7, 10, 2, 'Sales', 19, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-80642584\n', '2021-11-04 00:08:58'),
(69, 10, 10, 2, 'Sales', 20, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-25108782\n', '2021-11-05 12:07:27'),
(70, 8, 10, 2, 'Sales', 20, '{\"price\":\"6\",\"qty\":\"10\"}', 'Stock out from Sales-25108782\n', '2021-11-05 12:07:27'),
(71, 9, 10, 2, 'Sales', 20, '{\"price\":\"5\",\"qty\":\"10\"}', 'Stock out from Sales-25108782\n', '2021-11-05 12:07:27');

-- --------------------------------------------------------

--
-- 表的结构 `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `sku`, `price`, `name`, `description`) VALUES
(6, 0, '60206865', 5, '100Plus', 'Can 350ml'),
(7, 0, '35358184', 5, 'Coca Cola', 'Can 350ml'),
(8, 0, '25511737', 6, 'Lemon Iced Tea', 'Bottled 500ml'),
(9, 0, '17780573', 5, 'Pepsi', '350ml'),
(10, 0, '59552256', 5, 'Gardenia White Bread Original Classic', '400g'),
(11, 0, '06357591', 5, 'Chips More! Original Chocolate Chip Cookies', 'small pack (s)'),
(12, 0, '20784286', 10, 'Mister Potato Crisps Original', '150g'),
(14, 0, '60792195', 5, 'Twisties Cheeky Cheddar Cheese', 'Medium pack'),
(15, 0, '09962627', 5, 'Cheezels Cheezy Cheese', 'Medium size');

-- --------------------------------------------------------

--
-- 表的结构 `receiving_list`
--

CREATE TABLE `receiving_list` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `supplier_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `receiving_list`
--

INSERT INTO `receiving_list` (`id`, `ref_no`, `supplier_id`, `total_amount`, `date_added`) VALUES
(4, '00000000\n', 8, 1200, '2021-10-19 17:12:31'),
(5, '63240453\n', 7, 1800, '2021-10-19 17:13:12'),
(6, '73646517\n', 6, 600, '2021-10-19 17:13:29'),
(7, '83511801\n', 4, 1200, '2021-10-19 17:14:14');

-- --------------------------------------------------------

--
-- 表的结构 `sales_list`
--

CREATE TABLE `sales_list` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `amount_tendered` double NOT NULL,
  `amount_change` double NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `sales_list`
--

INSERT INTO `sales_list` (`id`, `ref_no`, `customer_id`, `total_amount`, `amount_tendered`, `amount_change`, `date_updated`) VALUES
(7, '00000000\n', 0, 150, 0, 0, '2021-01-19 17:15:13'),
(8, '84722787\n', 0, 100, 0, 0, '2021-02-19 17:15:57'),
(9, '01058550\n', 0, 110, 0, 0, '2021-03-19 17:16:39'),
(10, '86427682\n', 0, 200, 0, 0, '2021-04-19 17:17:44'),
(11, '09275695\n', 0, 150, 0, 0, '2021-05-19 17:19:27'),
(12, '24253775\n', 0, 300, 0, 0, '2021-06-19 17:20:35'),
(13, '79129948\n', 0, 75, 0, 0, '2021-07-19 17:21:48'),
(14, '94743552\n', 0, 175, 0, 0, '2021-08-19 17:22:15'),
(15, '12507414\n', 0, 190, 0, 0, '2021-09-19 17:22:52'),
(16, '69747439\n', 0, 290, 0, 0, '2021-10-19 17:23:39'),
(17, '91561701\n', 0, 210, 0, 0, '2021-11-19 17:25:00'),
(18, '39597315\n', 0, 50, 0, 0, '2021-12-19 17:25:30'),
(19, '80642584\n', 0, 50, 0, 0, '2021-11-04 00:08:58'),
(20, '25108782\n', 0, 160, 0, 0, '2021-11-05 12:07:26');

-- --------------------------------------------------------

--
-- 表的结构 `supplier_list`
--

CREATE TABLE `supplier_list` (
  `id` int(30) NOT NULL,
  `supplier_name` text NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `supplier_list`
--

INSERT INTO `supplier_list` (`id`, `supplier_name`, `contact`, `address`) VALUES
(4, 'Tan', '123456789', 'Jalan Tan'),
(5, 'You', '234567891', 'Jalan You'),
(6, 'Lim ', '345678912', 'Jalan Lim'),
(7, 'Ali', '456789123', 'Jalan Ali'),
(8, 'Abu', '567891234', 'Jalan Abu');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = cashier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Tan', 'admin', '123', 1),
(3, 'aaa', 'aaa', '123', 2);

--
-- 转储表的索引
--

--
-- 表的索引 `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `receiving_list`
--
ALTER TABLE `receiving_list`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `sales_list`
--
ALTER TABLE `sales_list`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `supplier_list`
--
ALTER TABLE `supplier_list`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- 使用表AUTO_INCREMENT `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- 使用表AUTO_INCREMENT `receiving_list`
--
ALTER TABLE `receiving_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `sales_list`
--
ALTER TABLE `sales_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `supplier_list`
--
ALTER TABLE `supplier_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
