-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 11, 2023 at 05:00 PM
-- Server version: 8.0.34
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartid` int NOT NULL AUTO_INCREMENT,
  `INID` int NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Bar_code` varchar(50) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `Unit_Price` varchar(20) NOT NULL,
  `Total_Price` varchar(20) NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `INID`, `Product_Name`, `Bar_code`, `qty`, `Unit_Price`, `Total_Price`) VALUES
(73, 15, 'keyboard', '123546', '23', '18', '414.0'),
(74, 16, 'box', '100500', '5', '50', '250.0'),
(75, 1, 'keyboard', '123546', '6', '18', '108.0'),
(76, 1, 'mini book ', '0', '24', '00.00', '0.0'),
(77, 1, 'novels', '141456', '5', '500', '2500.0'),
(78, 1, 'novels', '141456', '5', '500', '2500.0'),
(79, 1, 'pen', '100200', '2', '10', '20.0'),
(80, 2, 'Mouse', '12354', '5', '13', '65.0'),
(81, 3, 'Mouse', '12354', '5', '13', '65.0'),
(82, 4, 'Mouse', '12354', '10', '13', '130.0'),
(83, 5, 'box', '100500', '10', '50', '500.0'),
(84, 6, 'keyboard', '123546', '3', '18', '54.0'),
(85, 7, 'pen', '100200', '2', '10', '20.0'),
(86, 8, 'Mouse', '12354', '2', '13', '26.0'),
(87, 9, 'box', '100500', '5', '50', '250.0'),
(88, 10, 'keyboard', '123546', '3', '18', '54.0'),
(89, 11, 'Mouse', '12354', '5', '13', '65.0');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(50) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `person_tp` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `customer_name`, `Tp_Number`, `billing_address`, `shipping_address`, `bank`, `city`, `person_name`, `contact_person`, `person_tp`, `email`) VALUES
(1, 'test', '12345', '', '', '', '', '', '', '0', ''),
(11, 'cus test', '3211', 'xyz', 'xyz', '123', 'xyz', 'xyz', '123', '123', 'abc'),
(12, 'abc', '134', 'xyz	', 'xyz', '2313211', 'swl', 'abc', '', '', ''),
(13, 'ayesha', '12345', 'abc', 'abc', '123', 'swl', 'xyz', 'xyz', '465465', 'abc@gmail.com'),
(16, 'ash', '1234', 'xyz', 'xyz', '123465', 'swl', 'zamm', 'abc', '1561651', 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `eid` int NOT NULL AUTO_INCREMENT,
  `Employee_Name` varchar(50) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL,
  `main_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `temp_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `bank` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `person_tp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `Employee_Name`, `Tp_Number`, `main_address`, `temp_address`, `bank`, `city`, `person_name`, `contact_person`, `person_tp`, `email`) VALUES
(1, 'emp test', '111-222', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

DROP TABLE IF EXISTS `extra`;
CREATE TABLE IF NOT EXISTS `extra` (
  `exid` int NOT NULL AUTO_INCREMENT,
  `val` varchar(10) NOT NULL,
  PRIMARY KEY (`exid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`exid`, `val`) VALUES
(1, '11');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(50) NOT NULL,
  `Bar_code` varchar(20) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Qty` varchar(10) NOT NULL,
  `Sid` int NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `Product_Name`, `Bar_code`, `Price`, `Qty`, `Sid`) VALUES
(1, 'mini book ', '100100', '200', '10', 2),
(2, 'pen', '100200', '10', '8', 1),
(3, 'box', '100500', '50', '12', 3),
(4, 'Mouse', '12354', '13', '3', 2),
(5, 'keyboard', '123546', '18', '30', 3),
(6, 'novels', '141456', '500', '10', 5);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `saleid` int NOT NULL AUTO_INCREMENT,
  `INID` int NOT NULL,
  `Cid` int NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Total_Qty` varchar(10) NOT NULL,
  `Total_Bill` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Balance` varchar(10) NOT NULL,
  PRIMARY KEY (`saleid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`saleid`, `INID`, `Cid`, `Customer_Name`, `Total_Qty`, `Total_Bill`, `Status`, `Balance`) VALUES
(21, 15, 0, 'test', '23.0', '414.0', 'Paid', '0.0'),
(22, 1, 0, 'test', '6.0', '108.0', 'Paid', '92.0'),
(23, 1, 0, 'test', '24.0', '0.0', 'Paid', '30.0'),
(24, 1, 0, 'test', '5.0', '2500.0', 'Paid', '500.0'),
(25, 1, 0, 'test', '5.0', '2500.0', 'Paid', '500.0'),
(26, 1, 0, 'test', '2.0', '20.0', 'Paid', '10.0'),
(27, 2, 0, 'test', '5.0', '65.0', 'Paid', '5.0'),
(28, 3, 0, 'test', '5.0', '65.0', 'Paid', '15.0'),
(29, 4, 0, 'test', '10.0', '130.0', 'Paid', '0.0'),
(30, 5, 0, 'test', '10.0', '500.0', 'Paid', '0.0'),
(31, 6, 0, 'test', '3.0', '54.0', 'Paid', '6.0'),
(32, 7, 0, 'test', '2.0', '20.0', 'Paid', '0.0'),
(33, 8, 0, 'test', '2.0', '26.0', 'Paid', '4.0'),
(34, 9, 0, 'test', '5.0', '250.0', 'Paid', '50.0'),
(35, 10, 0, 'test', '3.0', '54.0', 'Paid', '46.0'),
(36, 11, 0, 'test', '5.0', '65.0', 'Paid', '35.0');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `supplier_Name` varchar(50) NOT NULL,
  `Tp_Number` varchar(10) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `person_tp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `supplier_Name`, `Tp_Number`, `billing_address`, `shipping_address`, `bank`, `city`, `person_name`, `contact_person`, `person_tp`, `email`) VALUES
(1, 'sup test', '1100', '', '', '', '', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
