-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 02, 2014 at 06:26 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reza`
--

-- --------------------------------------------------------

--
-- Table structure for table `memoreciept`
--

CREATE TABLE IF NOT EXISTS `memoreciept` (
  `memoNo` bigint(20) NOT NULL,
  `customerName` varchar(40) NOT NULL,
  `productId` varchar(25) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productPrice` double NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `showDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memoreciept`
--


-- --------------------------------------------------------

--
-- Table structure for table `sale_return`
--

CREATE TABLE IF NOT EXISTS `sale_return` (
  `Serial No` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `memoNo` bigint(20) NOT NULL,
  `customerName` varchar(40) NOT NULL,
  `productId` varchar(25) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productPrice` double NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `showDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isReturned` int(11) NOT NULL DEFAULT '0',
  `returnProfit` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `Serial No_2` (`Serial No`),
  KEY `Serial No` (`Serial No`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `sale_return`
--

INSERT INTO `sale_return` (`Serial No`, `memoNo`, `customerName`, `productId`, `productName`, `productPrice`, `quantity`, `amount`, `showDate`, `isReturned`, `returnProfit`) VALUES
(1, 10411, 'reza', 'pro 101', 'Soap', 60, 4, 240, '2013-04-02 17:06:47', 0, 0),
(3, 146798, 'Reza', 'pro 102', 'Pen', 20, 10, 20, '2013-04-02 17:11:47', 0, 0),
(4, 146798, 'Reza', 'pro 102', 'Pen', 20, 10, 20, '2013-04-02 17:12:19', 0, 0),
(5, 112981, 'Raju', 'pro 103', 'computer', 6000, 3, 6000, '2013-04-02 19:53:03', 0, 0),
(6, 112981, 'Raju', 'pro 101', 'SOAP', 60, 2, 60, '2013-04-02 19:53:03', 0, 0),
(7, 263532, 'RAbbany', 'pro 103', 'computer', 6000, 1, 6000, '2013-04-02 20:03:55', 0, 0),
(8, 263532, 'RAbbany', 'pro 102', 'Pen', 20, 2, 20, '2013-04-02 20:03:55', 0, 0),
(9, 246678, '', 'pro 101', 'SOAP', 60, 3, 60, '2013-04-02 20:10:55', 0, 0),
(10, 246678, '', 'pro 102', 'Pen', 20, 2, 20, '2013-04-02 20:10:55', 0, 0),
(11, 262986, 'asdf', 'pro 101', 'SOAP', 60, 2, 60, '2013-04-02 20:16:25', 0, 0),
(12, 262986, 'asdf', 'pro 102', 'Pen', 20, 4, 20, '2013-04-02 20:16:25', 0, 0),
(13, 254282, '', 'pro 101', 'SOAP', 60, 10, 60, '2013-04-02 20:20:09', 0, 0),
(14, 254282, '', 'pro 102', 'Pen', 20, 5, 20, '2013-04-02 20:20:09', 0, 0),
(15, 254282, 'RAjjuu', 'pro 101', 'SOAP', 60, 10, 60, '2013-04-02 20:20:38', 0, 0),
(16, 254282, 'RAjjuu', 'pro 102', 'Pen', 20, 5, 20, '2013-04-02 20:20:38', 0, 0),
(17, 271191, 'raju', 'pro 103', 'computer', 6000, 1, 6000, '2013-04-02 20:21:01', 0, 0),
(18, 271191, 'raju', 'pro 101', 'SOAP', 60, 2, 60, '2013-04-02 20:21:01', 0, 0),
(19, 181241, 'asdfgh', 'pro 101', 'SOAP', 60, 12, 60, '2013-04-02 20:22:34', 0, 0),
(20, 181241, 'asdfgh', 'pro 102', 'Pen', 20, 21, 20, '2013-04-02 20:22:34', 0, 0),
(21, 284988, 'lkjhg', 'pro 101', 'SOAP', 60, 1, 60, '2013-04-02 20:25:32', 0, 0),
(22, 284988, 'lkjhg', 'pro 103', 'computer', 6000, 2, 6000, '2013-04-02 20:25:32', 0, 0),
(23, 272545, 'tyui', 'pro 101', 'SOAP', 60, 1, 60, '2013-04-02 20:27:16', 0, 0),
(24, 272545, 'tyui', 'pro 102', 'Pen', 20, 2, 20, '2013-04-02 20:27:16', 0, 0),
(25, 221179, 'poi', 'pro 103', 'computer', 6000, 1, 6000, '2013-04-02 20:28:38', 0, 0),
(26, 221179, 'poi', 'pro 101', 'SOAP', 60, 2, 60, '2013-04-02 20:28:38', 0, 0),
(27, 171374, 'qwerty', 'pro 101', 'SOAP', 60, 40, 60, '2013-04-02 20:29:59', 0, 0),
(28, 171374, 'qwerty', 'pro 103', 'computer', 6000, 1, 6000, '2013-04-02 20:29:59', 0, 0),
(29, 149971, 'qwertrytyt', 'pro 101', 'SOAP', 60, 12, 60, '2013-04-02 20:31:57', 0, 0),
(30, 149971, 'qwertrytyt', 'pro 103', 'computer', 6000, 21, 6000, '2013-04-02 20:31:57', 0, 0),
(31, 150974, 'alo', 'pro 101', 'SOAP', 60, 1, 60, '2013-04-02 20:35:06', 0, 0),
(32, 150974, 'alo', 'pro 102', 'Pen', 20, 2, 20, '2013-04-02 20:35:06', 0, 0),
(33, 273062, 'qw', 'pro 101', 'SOAP', 60, 2, 60, '2013-04-02 20:36:04', 0, 0),
(34, 202250, 'poiu', 'pro 102', 'Pen', 20, 1, 20, '2013-04-02 21:13:43', 0, 0),
(35, 202250, 'poiu', 'pro 103', 'computer', 6000, 2, 6000, '2013-04-02 21:13:43', 0, 0),
(36, 241235, 'pol', 'pro 101', 'SOAP', 60, 1, 60, '2013-04-02 21:16:25', 0, 0),
(37, 241235, 'pol', 'pro 102', 'Pen', 20, 2, 20, '2013-04-02 21:16:25', 0, 0),
(38, 242732, 'tyu', 'pro 101', 'SOAP', 60, 5, 60, '2013-04-02 21:18:13', 0, 0),
(39, 242732, 'tyu', 'pro 102', 'Pen', 20, 12, 20, '2013-04-02 21:18:13', 0, 0),
(40, 302256, 'zxcv', 'pro 102', 'Pen', 20, 12, 20, '2013-04-02 21:19:55', 0, 0),
(41, 302256, 'zxcv', 'pro 101', 'SOAP', 60, 21, 60, '2013-04-02 21:19:55', 0, 0),
(42, 121286, 'yuityu', 'pro 101', 'SOAP', 60, 12, 60, '2013-04-02 21:24:41', 0, 0),
(43, 121286, 'yuityu', 'pro 102', 'Pen', 20, 99, 20, '2013-04-02 21:24:41', 0, 0),
(44, 256842, 'qtyu', 'pro 101', 'SOAP', 60, 4, 60, '2013-04-02 21:30:34', 0, 0),
(45, 256842, 'qtyu', 'pro 102', 'Pen', 20, 3, 20, '2013-04-02 21:30:34', 0, 0),
(46, 138408, 'reza', 'pro 101', 'SOAP', 60, 1, 60, '2013-04-03 09:44:12', 0, 0),
(47, 138408, 'reza', 'pro 103', 'computer', 6000, 1, 6000, '2013-04-03 09:44:12', 0, 0),
(48, 144077, 'wwww', 'pro 101', 'SOAP', 60, 2, 60, '2013-04-03 09:48:34', 0, 0),
(49, 144077, 'wwww', 'pro 102', 'Pen', 20, 1, 20, '2013-04-03 09:48:34', 0, 0),
(50, 248052, 'asert', 'pro 101', 'SOAP', 60, 4, 60, '2013-04-03 09:52:16', 0, 0),
(51, 248052, 'asert', 'pro 102', 'Pen', 20, 3, 20, '2013-04-03 09:52:16', 0, 0),
(52, 211416, 'Fanta', 'Pro 104', 'Fanta', 40, 6, 40, '2013-04-03 11:26:37', 0, 0),
(53, 211416, 'Fanta', 'pro 101', 'SOAP', 60, 1, 60, '2013-04-03 11:26:37', 0, 0),
(54, 191880, 'reza', 'Pro 104', 'Fanta', 40, 100, 40, '2014-06-01 15:47:29', 0, 0),
(55, 191880, 'reza', 'pro 103', 'computer', 6000, 1, 6000, '2014-06-01 15:47:30', 0, 0),
(56, 248688, 'moli', 'Pro 104', 'Fanta', 40, 2, 40, '2014-06-02 16:16:03', 0, 0),
(57, 248688, 'moli', 'pro 101', 'SOAP', 60, 4, 60, '2014-06-02 16:16:03', 0, 0),
(58, 157836, '', 'pro 101', 'SOAP', 60, 1, 60, '2014-06-02 16:21:37', 0, 0),
(59, 157836, '', 'pro 102', 'Pen', 20, 2, 20, '2014-06-02 16:21:37', 0, 0),
(60, 157836, '', 'pro 103', 'computer', 6000, 3, 6000, '2014-06-02 16:21:37', 0, 0),
(61, 157836, '', 'Pro 104', 'Fanta', 40, 4, 40, '2014-06-02 16:21:37', 0, 0),
(62, 157836, '', 'pro 101', 'SOAP', 60, 5, 60, '2014-06-02 16:21:37', 0, 0),
(63, 248534, 'to', 'pro 101', 'SOAP', 60, 6, 60, '2014-06-02 20:33:33', 0, 0),
(64, 248534, 'to', 'pro 102', 'Pen', 20, 5, 20, '2014-06-02 20:33:34', 0, 0),
(65, 248534, 'to', 'pro 103', 'computer', 6000, 4, 6000, '2014-06-02 20:33:34', 0, 0),
(66, 248534, 'to', 'Pro 104', 'Fanta', 40, 3, 40, '2014-06-02 20:33:34', 0, 0),
(67, 248534, 'to', 'pro 101', 'SOAP', 60, 2, 60, '2014-06-02 20:33:34', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `Product Id` varchar(20) NOT NULL,
  `Product Name` varchar(40) NOT NULL,
  `Product Price(in buy)` double NOT NULL,
  `Product Price(in sell)` double NOT NULL,
  `QuantityInStock` int(11) NOT NULL,
  PRIMARY KEY (`Product Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`Product Id`, `Product Name`, `Product Price(in buy)`, `Product Price(in sell)`, `QuantityInStock`) VALUES
('pro 101', 'SOAP', 50, 60, 73),
('pro 102', 'Pen', 10, 20, 182),
('pro 103', 'computer', 5000, 6000, 192),
('Pro 104', 'Fanta', 35, 40, 185);

-- --------------------------------------------------------

--
-- Table structure for table `uad`
--

CREATE TABLE IF NOT EXISTS `uad` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uad`
--

INSERT INTO `uad` (`Username`, `Password`, `Type`) VALUES
('raju', '865', 'Student'),
('reza', 'reza', 'Admin');
