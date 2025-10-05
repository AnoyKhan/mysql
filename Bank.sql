-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 30, 2025 at 03:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrower_relation`
--

CREATE TABLE `borrower_relation` (
  `customer_name` varchar(30) DEFAULT NULL,
  `loan_number` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrower_relation`
--

INSERT INTO `borrower_relation` (`customer_name`, `loan_number`) VALUES
('Adams', 'L-16'),
('Curry', 'L-93'),
('Hayes', 'L-15'),
('Johnson', 'L-14'),
('Jones', 'L-17'),
('Smith', 'L-11'),
('Smith', 'L-23'),
('Williams', 'L-17');

-- --------------------------------------------------------

--
-- Table structure for table `customer_relation`
--

CREATE TABLE `customer_relation` (
  `customer_name` varchar(30) NOT NULL,
  `customer_street` varchar(30) DEFAULT NULL,
  `customer_city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_relation`
--

INSERT INTO `customer_relation` (`customer_name`, `customer_street`, `customer_city`) VALUES
('Adams', 'Spring', 'Pittsfield'),
('Brooks', 'Senator', 'Brooklyn'),
('Curry', 'North', 'Rye'),
('Glenn', 'Sand Hill', 'Woodside'),
('Green', 'Walnut', 'Stamford'),
('Hayes', 'Main', 'Harrison'),
('Johnson', 'Alma', 'Palo Alto'),
('Jones', 'Main', 'Harrison'),
('Lindsay', 'Park', 'Pittsfield'),
('Smith', 'North', 'Rye'),
('Turner', 'Putnam', 'Stamford'),
('Williams', 'Nassau', 'Princeton');

-- --------------------------------------------------------

--
-- Table structure for table `loan_relation`
--

CREATE TABLE `loan_relation` (
  `loan_number` varchar(30) NOT NULL,
  `branch_name` varchar(30) DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_relation`
--

INSERT INTO `loan_relation` (`loan_number`, `branch_name`, `amount`) VALUES
('L-11', 'Round Hill', '900'),
('L-14', 'Downtown', '1500'),
('L-15', 'Perryridge', '1500'),
('L-16', 'Perryridge', '1300'),
('L-17', 'Downtown', '1000'),
('L-23', 'Redwood', '2000'),
('L-93', 'Mianus', '500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrower_relation`
--
ALTER TABLE `borrower_relation`
  ADD KEY `customer_name` (`customer_name`),
  ADD KEY `loan_number` (`loan_number`);

--
-- Indexes for table `customer_relation`
--
ALTER TABLE `customer_relation`
  ADD PRIMARY KEY (`customer_name`);

--
-- Indexes for table `loan_relation`
--
ALTER TABLE `loan_relation`
  ADD PRIMARY KEY (`loan_number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrower_relation`
--
ALTER TABLE `borrower_relation`
  ADD CONSTRAINT `borrower_relation_ibfk_1` FOREIGN KEY (`customer_name`) REFERENCES `customer_relation` (`customer_name`),
  ADD CONSTRAINT `borrower_relation_ibfk_2` FOREIGN KEY (`loan_number`) REFERENCES `loan_relation` (`loan_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
