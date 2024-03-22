-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2017 at 11:05 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `pharmacy`

-- Table structure for table `batch`
CREATE TABLE IF NOT EXISTS `batch` (
  `id` int(11) NOT NULL,
  `Batch_ID` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Cost_Price` float NOT NULL,
  `Sell_Price` float NOT NULL,
  `Production_Date` date NOT NULL,
  `Expire_Date` date NOT NULL,
  `Purchase_ID` int(11) NOT NULL,
  `Medicine_ID` int(11) NOT NULL,
  `Supplier_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `batch`
INSERT INTO `batch` (`id`, `Batch_ID`, `Quantity`, `Cost_Price`, `Sell_Price`, `Production_Date`, `Expire_Date`, `Purchase_ID`, `Medicine_ID`, `Supplier_ID`) VALUES
(1, '112', 20, 200, 555, '2017-09-12', '2017-09-30', 0, 1, 1);

-- Table structure for table `bill_information`
CREATE TABLE IF NOT EXISTS `bill_information` (
  `id` int(11) NOT NULL,
  `Invoice_No` varchar(255) NOT NULL,
  `Total_Amount` float NOT NULL,
  `Discount` varchar(10) NOT NULL,
  `Discount_Amount` float NOT NULL,
  `Total_Payable` float NOT NULL,
  `Paid` float NOT NULL,
  `Returned` float NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `bill_information`
INSERT INTO `bill_information` (`id`, `Invoice_No`, `Total_Amount`, `Discount`, `Discount_Amount`, `Total_Payable`, `Paid`, `Returned`, `Date`) VALUES
(1, '525', 1200, '10', 120, 1080, 1080, 0, '2017-09-06'),
(2, 'IN-11143543444', 50, '5', 2.5, 47.5, 66, 18.5, '2017-09-23'),
(3, '324', 60, '5', 3, 57, 100, 43, '2017-09-19'),
-- Insert other data statements here...

-- Table structure for table `category`
CREATE TABLE IF NOT EXISTS `category` (
  `ID` int(11) NOT NULL,
  `Category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert data statements for `category` table...
-- Insert statements for other tables...

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
