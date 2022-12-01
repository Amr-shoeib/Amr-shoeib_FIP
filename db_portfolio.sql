-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 01, 2022 at 02:50 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `portfolio_id` smallint(6) NOT NULL,
  `id` varchar(150) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `project_bg` varchar(150) NOT NULL,
  `project_profile` varchar(150) NOT NULL,
  `project_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`portfolio_id`, `id`, `Name`, `project_bg`, `project_profile`, `project_desc`) VALUES
(7, 'Lead branding', 'lead', 'lead_branding.jpg', 'project1.jpg', 'the lead branding project visuals show the values of the company. I used the icons to create visuals that reflect this value '),
(8, 'Nescafe branding', 'Nescafe ', 'nescafe_bg.jpg', 'project2.jpg', 'In Nescafe branding, I used cups with the Nescafe icon for the backdrop '),
(9, 'changing sands movie poster', ' poster', 'poster_bg.jpg', 'project3.jpg', 'The poster shows the history of Dubai between the past and the present I used warm colors to be matching with the desert.'),
(10, 'ceci Advertising campaign', 'Ceci ', 'ceci_ad.jpg', 'project5.jpg', 'The idea of the advertisement was based on the logo icon I used a peacock feather for the logo icon then I used the peacock itself to connect with the products \n '),
(11, 'pyramedia typography campaign', 'pyramedia ', 'pyra_bg.jpg', 'project4.jpg', 'Pyramedia typography campaign shows the services that the company can provide\nthe typography visuals were based on the company\'s values'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`portfolio_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `portfolio_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
