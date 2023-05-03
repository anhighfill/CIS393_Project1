-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2023 at 05:10 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `custom_itinerary`
--

CREATE TABLE `custom_itinerary` (
  `country` varchar(32) NOT NULL,
  `depart_date` date NOT NULL,
  `return_date` date NOT NULL,
  `budget` int(11) NOT NULL,
  `people` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `form_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_itinerary`
--

INSERT INTO `custom_itinerary` (`country`, `depart_date`, `return_date`, `budget`, `people`, `username`, `form_no`) VALUES
('United States of America', '2023-12-10', '2023-12-25', 3400, 6, 'ahighfill', 30),
('Jamaica', '2023-05-27', '2023-06-03', 5555, 5, 'ahighfill', 47),
('Spain', '2023-04-14', '2023-05-02', 4444, 3, 'ahighfill', 48),
('United States of America', '2023-05-31', '2023-06-08', 2300, 4, 'ahighfill', 49),
('Costa Rica', '2023-05-05', '2023-05-26', 3400, 4, 'sue', 50),
('Peru', '2023-05-19', '2023-05-19', 6666, 5, 'sue', 51);

-- --------------------------------------------------------

--
-- Table structure for table `destination_in_mind`
--

CREATE TABLE `destination_in_mind` (
  `country` varchar(32) NOT NULL,
  `continent` varchar(32) NOT NULL,
  `month` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination_in_mind`
--

INSERT INTO `destination_in_mind` (`country`, `continent`, `month`) VALUES
('India', 'asia', 'February'),
('Japan', 'asia', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('United States of America', 'northamerica', 'May'),
('Germany', 'europe', 'March'),
('Costa Rica', 'northamerica', 'February'),
('Japan', 'asia', 'February'),
('Germany', 'europe', 'June'),
('Germany', 'europe', 'December'),
('Italy', 'europe', 'November'),
('Jamaica', 'northamerica', 'October'),
('Brazil', 'southamerica', 'September'),
('New Zealand', 'australia', 'May'),
('Columbia', 'southamerica', 'January'),
('Columbia', 'southamerica', 'August'),
('Columbia', 'southamerica', 'August'),
('Columbia', 'southamerica', 'August'),
('Columbia', 'southamerica', 'August'),
('Columbia', 'southamerica', 'August'),
('India', 'asia', 'March'),
('United States of America', 'northamerica', 'May');

-- --------------------------------------------------------

--
-- Table structure for table `getting_started_form`
--

CREATE TABLE `getting_started_form` (
  `people` int(9) NOT NULL,
  `category` varchar(32) NOT NULL,
  `days` int(9) NOT NULL,
  `form_number` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `getting_started_form`
--

INSERT INTO `getting_started_form` (`people`, `category`, `days`, `form_number`) VALUES
(2, 'Family Vacation', 3, 1),
(2, 'Weekend', 2, 2),
(3, 'Family Vacation', 4, 3),
(3, 'Family Vacation', 4, 4),
(3, 'Family Vacation', 4, 5),
(3, 'Family Vacation', 4, 6),
(3, 'Family Vacation', 4, 7),
(3, 'Family Vacation', 4, 8),
(3, 'Family Vacation', 4, 9),
(3, 'Family Vacation', 4, 10),
(3, 'Family Vacation', 4, 11),
(3, 'Family Vacation', 5, 12),
(3, 'Family Vacation', 4, 13),
(3, 'Family Vacation', 4, 14),
(3, 'Weekend', 4, 15),
(3, 'Weekend', 5, 16),
(3, 'Family Vacation', 5, 17),
(3, 'Outdoors', 5, 18),
(3, 'Family Vacation', 4, 19),
(3, 'Family Vacation', 4, 20),
(3, 'Family Vacation', 4, 21),
(10, 'Family Vacation', 5, 22),
(3, 'Family Vacation', 10, 23),
(4, 'Family Vacation', 10, 24),
(4, 'Family Vacation', 10, 25),
(3, 'Family Vacation', 9, 26),
(4, 'Family Vacation', 9, 27),
(4, 'Family Vacation', 9, 28),
(4, 'Family Vacation', 9, 29),
(4, 'Family Vacation', 9, 30),
(4, 'Family Vacation', 9, 31),
(3, 'Outdoors', 10, 32),
(2, 'Romantic', 4, 33),
(2, 'Family Vacation', 4, 34),
(2, 'Family Vacation', 4, 35),
(3, 'Weekend Getaway', 10, 36),
(3, 'Weekend Getaway', 10, 37),
(3, 'Weekend Getaway', 10, 38),
(3, 'Weekend Getaway', 10, 39),
(3, 'Weekend Getaway', 10, 40),
(3, 'Weekend Getaway', 10, 41),
(3, 'Weekend Getaway', 10, 42),
(3, 'Weekend Getaway', 10, 43),
(3, 'Weekend Getaway', 10, 44),
(3, 'Weekend Getaway', 10, 45),
(3, 'Weekend Getaway', 10, 46),
(3, 'Weekend Getaway', 10, 47),
(3, 'Weekend Getaway', 10, 48),
(3, 'Weekend Getaway', 10, 49),
(3, 'Weekend Getaway', 10, 50),
(3, 'Weekend Getaway', 10, 51),
(3, 'Weekend Getaway', 10, 52),
(5, 'Family Vacation', 4, 53),
(5, 'Family Vacation', 4, 54),
(2, 'Weekend Getaway', 10, 55),
(2, 'Weekend Getaway', 12, 56),
(2, 'Weekend Getaway', 12, 57),
(4, 'Family Vacation', 5, 58),
(5, 'Family Vacation', 4, 59),
(5, 'Family Vacation', 4, 60),
(5, 'Family Vacation', 5, 61),
(2, 'Weekend Getaway', 6, 62),
(2, 'Weekend Getaway', 4, 63),
(3, 'Weekend Getaway', 2, 64),
(3, 'Weekend Getaway', 2, 65),
(3, 'Weekend Getaway', 2, 66),
(4, 'Family Vacation', 5, 67),
(4, 'Romantic', 5, 68),
(2, 'Romantic', 5, 69),
(2, 'Family Vacation', 5, 70),
(2, 'Family Vacation', 7, 71),
(2, 'Weekend Getaway', 7, 72),
(4, 'Family Vacation', 5, 73),
(4, 'Family Vacation', 5, 74);

-- --------------------------------------------------------

--
-- Table structure for table `Itineraries`
--

CREATE TABLE `Itineraries` (
  `days` int(2) NOT NULL,
  `approx_price` int(10) NOT NULL,
  `people` int(3) NOT NULL,
  `best_month` varchar(15) NOT NULL,
  `vaca_type` varchar(32) NOT NULL,
  `category` varchar(20) NOT NULL,
  `country` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Itineraries`
--

INSERT INTO `Itineraries` (`days`, `approx_price`, `people`, `best_month`, `vaca_type`, `category`, `country`) VALUES
(9, 3500, 2, 'June', 'Couple\'s Getaway', 'Romantic', 'France'),
(21, 2200, 2, 'May', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2300, 3, 'May', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2400, 4, 'May', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2200, 2, 'June', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2300, 3, 'June', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2400, 4, 'June', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2200, 2, 'July', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2300, 3, 'July', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2400, 4, 'July', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2200, 2, 'August', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2300, 3, 'August', 'Roadtrip', 'Outdoors', 'United States of America'),
(21, 2400, 4, 'August', 'Roadtrip', 'Outdoors', 'United States of America'),
(9, 3500, 2, 'July', 'Couple\'s Getaway', 'Romantic', 'France'),
(9, 3500, 2, 'August', 'Couple\'s Getaway', 'Romantic', 'France'),
(9, 3500, 2, 'May', 'Couple\'s Getaway', 'Romantic', 'France'),
(4, 2400, 2, 'May', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 3600, 3, 'May', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 4800, 4, 'May', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 6000, 5, 'May', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 2400, 2, 'June', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 3600, 3, 'June', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 4800, 4, 'June', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 6000, 5, 'June', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 2400, 2, 'July', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 3600, 3, 'July', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 4800, 4, 'July', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 6000, 5, 'July', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 2400, 2, 'August', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 3600, 3, 'August', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 4800, 4, 'August', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(4, 6000, 5, 'August', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 3000, 2, 'May', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 4500, 3, 'May', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 6000, 4, 'May', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 7500, 5, 'May', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 3000, 2, 'June', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 4500, 3, 'June', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 6000, 4, 'June', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 7500, 5, 'June', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 3000, 2, 'July', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 4500, 3, 'July', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 6000, 4, 'July', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 7500, 5, 'July', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 3000, 2, 'August', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 4500, 3, 'August', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 6000, 4, 'August', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(5, 7500, 5, 'August', 'Disney Cruise', 'Family Vacation', 'United States of America'),
(7, 3500, 2, 'May', 'For fun', 'Family Vacation', 'Japan'),
(5, 4400, 2, 'June', 'Beach vacation', 'Romantic', 'Bahamas'),
(5, 5500, 4, 'June', 'Friends vacation', 'Family Vacation', 'Bahamas'),
(5, 5500, 4, 'July', 'Friends vacation', 'Family Vacation', 'Bahamas'),
(5, 4400, 2, 'July', 'Friends vacation', 'Family Vacation', 'Bahamas'),
(7, 7700, 2, 'June', 'Honeymoon', 'Romantic', 'Bahamas'),
(7, 7700, 2, 'July', 'Honeymoon', 'Romantic', 'Bahamas'),
(6, 6600, 2, 'June', 'Honeymoon', 'Romantic', 'Bahamas'),
(7, 3500, 2, 'August', 'For fun', 'Family Vacation', 'Canada'),
(7, 3500, 2, 'July', 'For fun', 'Family Vacation', 'Canada'),
(7, 3500, 2, 'June', 'For fun', 'Family Vacation', 'Canada'),
(7, 4500, 4, 'August', 'For fun', 'Family Vacation', 'Canada'),
(7, 4500, 4, 'July', 'For fun', 'Family Vacation', 'Canada'),
(7, 4500, 4, 'June', 'For fun', 'Family Vacation', 'Canada'),
(7, 7700, 2, 'June', 'Honeymoon', 'Romantic', 'Costa Rica'),
(7, 8700, 4, 'June', 'For fun', 'Family Vacation', 'Costa Rica'),
(6, 7700, 2, 'July', 'Honeymoon', 'Romantic', 'Costa Rica'),
(7, 7700, 4, 'June', 'For fun', 'Family Vacation', 'Jamaica'),
(7, 7700, 4, 'July', 'For fun', 'Family Vacation', 'Jamaica'),
(7, 7700, 4, 'August', 'For fun', 'Family Vacation', 'Jamaica'),
(7, 7700, 4, 'September', 'For fun', 'Family Vacation', 'Jamaica'),
(7, 7700, 4, 'October', 'For fun', 'Family Vacation', 'Jamaica'),
(7, 5700, 4, 'March', 'Resort vacation', 'Family Vacation', 'Mexico'),
(7, 5700, 4, 'April', 'Resort vacation', 'Family Vacation', 'Mexico'),
(7, 5700, 4, 'May', 'Resort vacation', 'Family Vacation', 'Mexico'),
(7, 5700, 4, 'June', 'Resort vacation', 'Family Vacation', 'Mexico'),
(7, 5700, 4, 'July', 'Resort vacation', 'Family Vacation', 'Mexico'),
(7, 5700, 4, 'August', 'Resort vacation', 'Family Vacation', 'Mexico'),
(7, 5700, 4, 'September', 'Resort vacation', 'Family Vacation', 'Mexico'),
(7, 5700, 4, 'October', 'Resort vacation', 'Family Vacation', 'Mexico'),
(7, 5700, 4, 'November', 'Resort vacation', 'Family Vacation', 'Mexico'),
(7, 5500, 2, 'March', 'Resort vacation', 'Romantic', 'Mexico'),
(7, 5500, 2, 'April', 'Resort vacation', 'Romantic', 'Mexico'),
(7, 5500, 2, 'May', 'Resort vacation', 'Romantic', 'Mexico'),
(7, 5500, 2, 'June', 'Resort vacation', 'Romantic', 'Mexico'),
(7, 5500, 2, 'July', 'Resort vacation', 'Romantic', 'Mexico'),
(7, 5500, 2, 'August', 'Resort vacation', 'Romantic', 'Mexico'),
(5, 4300, 2, 'January', 'Beach vacation', 'Romantic', 'Panama'),
(5, 4300, 2, 'February', 'Beach vacation', 'Romantic', 'Panama'),
(5, 4300, 2, 'December', 'Beach vacation', 'Romantic', 'Panama'),
(5, 4300, 2, 'November', 'Beach vacation', 'Romantic', 'Panama'),
(5, 4300, 2, 'May', 'Beach vacation', 'Romantic', 'Panama'),
(5, 4300, 2, 'June', 'Beach vacation', 'Romantic', 'Panama'),
(3, 1200, 4, 'January', 'Weekend in the city', 'Weekend Getaway', 'United States of America'),
(3, 1200, 4, 'February', 'Weekend in the city', 'Weekend Getaway', 'United States of America'),
(3, 1200, 4, 'December', 'Weekend in the city', 'Weekend Getaway', 'United States of America'),
(3, 1200, 4, 'July', 'Weekend in the city', 'Weekend Getaway', 'United States of America'),
(3, 1200, 4, 'June', 'Weekend in the city', 'Weekend Getaway', 'United States of America'),
(3, 800, 2, 'July', 'Weekend in the city', 'Weekend Getaway', 'United States of America'),
(3, 800, 2, 'October', 'Weekend in the city', 'Weekend Getaway', 'United States of America'),
(3, 800, 2, 'April', 'Weekend in the city', 'Weekend Getaway', 'United States of America'),
(3, 800, 2, 'March', 'Weekend in the city', 'Weekend Getaway', 'United States of America'),
(7, 3400, 5, 'June', 'Historical', 'Family Vacation', 'Argentina'),
(7, 3400, 5, 'July', 'Historical', 'Family Vacation', 'Argentina'),
(7, 3400, 5, 'June', 'Historical', 'Outdoors', 'Brazil'),
(5, 2400, 2, 'June', 'Historical', 'Outdoors', 'Argentina'),
(5, 2400, 2, 'June', 'Historical', 'Outdoors', 'Brazil'),
(5, 2400, 2, 'July', 'Historical', 'Outdoors', 'Columbia'),
(7, 4400, 5, 'July', 'Historical', 'Family Vacation', 'Columbia'),
(5, 2400, 2, 'December', 'Historical', 'Outdoors', 'Ecuador and the Galapagos'),
(7, 3400, 5, 'December', 'Historical', 'Family Vacation', 'Ecuador and the Galapagos'),
(7, 3400, 5, 'December', 'Historical', 'Family Vacation', 'Peru'),
(5, 2400, 2, 'December', 'Historical', 'Family Vacation', 'Peru'),
(5, 5500, 4, 'December', 'Historical', 'Family Vacation', 'Germany'),
(5, 4500, 2, 'May', 'Historical', 'Family Vacation', 'Germany'),
(5, 5500, 4, 'June', 'Historical', 'Family Vacation', 'Germany'),
(7, 5500, 2, 'July', 'Honeymoon', 'Romantic', 'Italy'),
(5, 5500, 2, 'July', 'Honeymoon', 'Romantic', 'Italy'),
(7, 6600, 5, 'July', 'For fun', 'Family Vacation', 'Italy'),
(5, 5500, 4, 'July', 'Cultural', 'Family Vacation', 'Spain'),
(7, 7700, 4, 'August', 'Cultural', 'Outdoors', 'Spain'),
(5, 5500, 4, 'October', 'Cultural', 'Outdoors', 'Egypt'),
(10, 8800, 4, 'October', 'Cultural', 'Outdoors', 'Egypt'),
(5, 5500, 4, 'October', 'Cultural', 'Outdoors', 'Morocco'),
(21, 11000, 2, 'August', 'Cultural', 'Outdoors', 'South Africa'),
(21, 11000, 2, 'September', 'Cultural', 'Outdoors', 'South Africa'),
(12, 7000, 4, 'May', 'For fun', 'Family Vacation', 'United Kingdom'),
(12, 7000, 4, 'September', 'For fun', 'Family Vacation', 'United Kingdom'),
(7, 6600, 4, 'June', 'Cultural', 'Family Vacation', 'China'),
(4, 4400, 4, 'June', 'Cultural', 'Family Vacation', 'China'),
(4, 4400, 4, 'June', 'Cultural', 'Family Vacation', 'Japan'),
(5, 5500, 4, 'June', 'Cultural', 'Family Vacation', 'Japan'),
(16, 9000, 4, 'June', 'Cultural', 'Outdoors', 'The Philippines'),
(16, 9000, 4, 'June', 'Cultural', 'Family Vacation', 'The Philippines'),
(16, 9000, 4, 'June', 'Cultural', 'Outdoors', 'Thailand'),
(16, 9000, 4, 'June', 'Cultural', 'Family Vacation', 'Thailand'),
(3, 1500, 2, 'February', 'For fun', 'Outdoors', 'Australia'),
(4, 2500, 4, 'February', 'For fun', 'Outdoors', 'Australia'),
(3, 1500, 2, 'February', 'For fun', 'Family Vacation', 'Australia'),
(4, 2500, 4, 'February', 'For fun', 'Family Vacation', 'Australia'),
(3, 1500, 2, 'February', 'For fun', 'Weekend Getaway', 'Australia'),
(4, 2500, 4, 'February', 'For fun', 'Weekend Getaway', 'Australia'),
(3, 1500, 2, 'February', 'For fun', 'Outdoors', 'Papua New Guinea'),
(4, 2500, 4, 'February', 'For fun', 'Outdoors', 'Papua New Guinea'),
(3, 1500, 2, 'February', 'For fun', 'Family Vacation', 'Papua New Guinea'),
(4, 2500, 4, 'February', 'For fun', 'Family Vacation', 'Papua New Guinea'),
(3, 1500, 2, 'February', 'For fun', 'Weekend Getaway', 'Papua New Guinea'),
(4, 2500, 4, 'February', 'For fun', 'Weekend Getaway', 'Papua New Guinea'),
(3, 1500, 2, 'February', 'For fun', 'Outdoors', 'New Zealand'),
(4, 2500, 4, 'February', 'For fun', 'Outdoors', 'New Zealand'),
(3, 1500, 2, 'February', 'For fun', 'Family Vacation', 'New Zealand'),
(4, 2500, 4, 'February', 'For fun', 'Family Vacation', 'New Zealand'),
(3, 1500, 2, 'February', 'For fun', 'Weekend Getaway', 'New Zealand');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `username` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`fname`, `lname`, `email`, `username`) VALUES
('John', 'George', 'jgeorge@gmail.com', 'jgeorge'),
('Jack', 'Highfill', 'jackh@gmail.com', 'jhigh'),
('Ashley', 'Highfill', 'ahighfill@mail.bradley.edu', 'jhighfill');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custom_itinerary`
--
ALTER TABLE `custom_itinerary`
  ADD PRIMARY KEY (`form_no`);

--
-- Indexes for table `getting_started_form`
--
ALTER TABLE `getting_started_form`
  ADD PRIMARY KEY (`form_number`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custom_itinerary`
--
ALTER TABLE `custom_itinerary`
  MODIFY `form_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `getting_started_form`
--
ALTER TABLE `getting_started_form`
  MODIFY `form_number` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
