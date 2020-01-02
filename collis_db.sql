-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 03:07 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about_me`
--

CREATE TABLE `tbl_about_me` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Btn_Name` varchar(20) NOT NULL,
  `Btn_Url` varchar(100) NOT NULL,
  `Skill_Name` varchar(100) NOT NULL,
  `Skill_percent` varchar(100) NOT NULL,
  `Status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_say`
--

CREATE TABLE `tbl_client_say` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `ID` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_email`
--

CREATE TABLE `tbl_contact_email` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Message` longtext NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_header_info`
--

CREATE TABLE `tbl_header_info` (
  `ID` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Icon` varchar(20) NOT NULL,
  `Icon_Url` varchar(100) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_latest_news`
--

CREATE TABLE `tbl_latest_news` (
  `ID` int(11) NOT NULL,
  `Icon` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Background_image` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `ID` int(11) NOT NULL,
  `Icon` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `P_Url` varchar(100) NOT NULL,
  `P_category` varchar(100) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_footer`
--

CREATE TABLE `tbl_service_footer` (
  `ID` int(11) NOT NULL,
  `Icon` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_info`
--

CREATE TABLE `tbl_service_info` (
  `ID` int(11) NOT NULL,
  `Icon` varchar(200) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `created` varchar(30) NOT NULL,
  `Modified` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service_info`
--

INSERT INTO `tbl_service_info` (`ID`, `Icon`, `Title`, `Description`, `created`, `Modified`) VALUES
(20, 'star', 'web development', 'Php full package tutorial...welcome to south bengal it', '15-01-2019 20:09:31', ''),
(22, 'users', 'hello title', 'Hello Description', '21-02-2019 16:11:19', ''),
(23, 'user', 'New title Add', 'Ok New title Description', '29-11-2019 04:09:53', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '1',
  `Created` date NOT NULL,
  `Modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserName`, `Email`, `Password`, `Status`, `Created`, `Modified`) VALUES
(1, 'shanto', 'shanto@gmail.com', '12345', 1, '2018-06-12', '2018-06-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about_me`
--
ALTER TABLE `tbl_about_me`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_client_say`
--
ALTER TABLE `tbl_client_say`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_contact_email`
--
ALTER TABLE `tbl_contact_email`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_header_info`
--
ALTER TABLE `tbl_header_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_latest_news`
--
ALTER TABLE `tbl_latest_news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_service_footer`
--
ALTER TABLE `tbl_service_footer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_service_info`
--
ALTER TABLE `tbl_service_info`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about_me`
--
ALTER TABLE `tbl_about_me`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_client_say`
--
ALTER TABLE `tbl_client_say`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_contact_email`
--
ALTER TABLE `tbl_contact_email`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_header_info`
--
ALTER TABLE `tbl_header_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_latest_news`
--
ALTER TABLE `tbl_latest_news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_service_footer`
--
ALTER TABLE `tbl_service_footer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_service_info`
--
ALTER TABLE `tbl_service_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
