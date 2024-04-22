-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2024 年 04 月 22 日 04:24
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
-- 資料庫： `testdb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Course`
--

CREATE TABLE `Course` (
  `ID` int(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Credit` int(1) NOT NULL,
  `Required` tinyint(1) NOT NULL,
  `Quota` int(3) NOT NULL,
  `Dept` varchar(4) NOT NULL,
  `Year` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Course_Info';

--
-- 傾印資料表的資料 `Course`
--

INSERT INTO `Course` (`ID`, `Name`, `Credit`, `Required`, `Quota`, `Dept`, `Year`) VALUES
(1, 'Programme', 2, 1, 80, 'IECS', 1),
(2, 'Computer_Theroerm', 2, 1, 80, 'IECS', 1),
(3, '0_quota', 3, 0, 0, 'IECS', 1),
(4, 'English_advanced', 3, 1, 25, 'LANG', 2),
(5, 'Assembly', 3, 1, 80, 'IECS', 2),
(8, 'Linear Algebra', 3, 1, 100, 'IECS', 1),
(9, 'Calcus(I)', 3, 1, 110, 'IECS', 1),
(10, 'Wireless Network', 3, 0, 50, 'IECS', 4),
(11, 'Software Testing', 3, 0, 70, 'IECS', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `Student`
--

CREATE TABLE `Student` (
  `ID` int(8) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Year` int(1) NOT NULL,
  `Dept` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Student Info';

--
-- 傾印資料表的資料 `Student`
--

INSERT INTO `Student` (`ID`, `First_Name`, `Last_Name`, `Year`, `Dept`) VALUES
(12345678, 'Peter', 'Chan', 1, 'IECS');

-- --------------------------------------------------------

--
-- 資料表結構 `Subscription`
--

CREATE TABLE `Subscription` (
  `s_id` int(8) NOT NULL,
  `c_id` int(8) NOT NULL,
  `type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `Subscription`
--

INSERT INTO `Subscription` (`s_id`, `c_id`, `type`) VALUES
(12345678, 1, 1),
(12345678, 2, 1),
(12345678, 5, 1),
(12345678, 9, 1),
(12345678, 10, 1),
(12345678, 11, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `TimeTable`
--

CREATE TABLE `TimeTable` (
  `ID` int(8) NOT NULL,
  `Day` int(1) NOT NULL,
  `Section` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `TimeTable`
--

INSERT INTO `TimeTable` (`ID`, `Day`, `Section`) VALUES
(1, 2, 3),
(1, 2, 4),
(2, 2, 6),
(2, 2, 7),
(3, 1, 1),
(4, 1, 4),
(5, 3, 3),
(5, 3, 4),
(5, 3, 5),
(6, 2, 8),
(6, 2, 9),
(6, 2, 10),
(9, 5, 4),
(9, 5, 5),
(9, 5, 6),
(10, 3, 6),
(10, 3, 7),
(10, 3, 8),
(11, 1, 5),
(11, 1, 6),
(11, 1, 7);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `Subscription`
--
ALTER TABLE `Subscription`
  ADD PRIMARY KEY (`s_id`,`c_id`);

--
-- 資料表索引 `TimeTable`
--
ALTER TABLE `TimeTable`
  ADD PRIMARY KEY (`ID`,`Day`,`Section`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `Course`
--
ALTER TABLE `Course`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
