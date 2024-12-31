-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-11-20 01:35:25
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `joumal`
--

-- --------------------------------------------------------

--
-- 資料表結構 `routine`
--

CREATE TABLE `routine` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` int(10) UNSIGNED NOT NULL,
  `classifly` varchar(16) NOT NULL,
  `item` varchar(32) NOT NULL,
  `remine` text NOT NULL,
  `payment` varchar(16) NOT NULL,
  `location` varchar(64) NOT NULL,
  `consumer` varchar(32) NOT NULL DEFAULT 'mack',
  `type` varchar(10) NOT NULL,
  `sub_classifly` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `routine`
--

INSERT INTO `routine` (`id`, `date`, `amount`, `classifly`, `item`, `remine`, `payment`, `location`, `consumer`, `type`, `sub_classifly`) VALUES
(1, '2024-11-01 08:13:49', 70, '食', '早餐店', '', '現金', '泰山', 'ray', '支出', '早餐'),
(2, '2024-11-01 08:15:33', 100, '食', '便當', '', '現金', '泰山', 'ray', '支出', '午餐'),
(3, '2024-11-01 08:16:15', 100, '行', '油錢', '', '現金', '泰山', 'ray', '支出', '行'),
(4, '2024-11-01 08:16:55', 1000, '衣', '衣服', '', '信用卡', '泰山', 'ray', '支出', '衣'),
(5, '2024-11-01 08:17:45', 100, '食', '便當', '', '現金', '泰山', 'ray', '支出', '晚餐'),
(6, '2024-11-01 08:18:53', 250, '娛樂', '電影', '', '信用卡', '泰山', 'ray', '支出', '娛樂'),
(7, '2024-11-01 08:19:44', 500, '衣', '牛仔褲', '', '信用卡', '桃園', 'ray', '支出', '衣'),
(8, '2024-11-01 08:20:41', 100, '食', '飲料', '', '現金', '泰山', 'ray', '支出', '食'),
(9, '2024-11-01 08:21:19', 250, '衣', '帽子', '', '信用卡', '台北', 'ray', '支出', '衣'),
(10, '2024-11-01 08:22:12', 200, '食', '麥當勞', '', '信用卡', '泰山', 'ray', '支出', '午餐');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
