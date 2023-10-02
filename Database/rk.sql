-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2023 at 12:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `date`) VALUES
(1, 'Admin', 'Rk@123', '2023-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`id`, `name`, `pname`, `qty`, `date`) VALUES
(1, 'Dev', 'phone', 2, '2023-09-29'),
(2, 'Radhesh', 'phone', 3, '2023-09-29'),
(3, 'phone123', '', 5, '2023-09-29'),
(4, 'phone123', '', 5, '2023-09-29'),
(5, 'phone123', '', 5, '2023-09-29'),
(6, 'phone123', '', 5, '2023-09-29'),
(7, '', 'phone123', 5, '2023-09-29'),
(8, '', 'phone123', 5, '2023-09-29'),
(9, '', 'phone123', 5, '2023-09-29'),
(10, '', '123', 5, '2023-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Stock` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'Incoming',
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `Name`, `Stock`, `status`, `date`) VALUES
(1, 'Mobile Phone (iphone 15)', '250', 'Current', '2023-09-29'),
(2, 'Mobile Phone(Vivo)', '300', 'Current', '2023-09-29'),
(3, 'Phone (Samsung)', '200', 'Current', '2023-09-29'),
(4, 'phone123', '500', 'Current', '2023-09-29'),
(5, 'phone124', '300', 'Current', '2023-09-29'),
(6, 'phone125', '100', 'Incoming', '2023-09-29'),
(7, 'phone126', '50', 'Current', '2023-09-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
