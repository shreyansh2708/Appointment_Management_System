-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Server version: 10.3.22-MariaDB-cll-lve


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appoinment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin@gmail.com', 9090909090, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2022-12-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '791992286', 'Ria Sharma', 'sharma@gmail.com', 9574632148, '11/04/2022', '05PM', '', '2022-11-04 07:14:08', 'accepted appointment', '1', '2022-11-04 07:29:51'),
(2, '679078797', 'Smith', 'smith@gmail.com', 9874563214, '10/25/2022', '07PM', '', '2022-10-25 06:53:04', 'Remark for appointment', '1', '2022-10-25 06:54:57'),
(3, '679078797', 'Jack', 'jack@gmail.com', 9874563214, '08/11/2022', '07PM', '', '2022-08-11 07:15:04', 'Remark for appointment', '1', '2022-08-11 07:24:57'),
(4, '654897230','Andrea Roberts', 'roberts@gmail.com', 9877896545,'01/04/2023', '11PM', '', '2023-01-04 10:15:29','Remark for appointment', '1', '2023-01-04 10:24:57' ),
(5, '887453001','Rayne Shaw', 'shaw@gmail.com', 9877892200,'01/22/2023', '02PM', '', '2023-01-22 03:40:29','Remark for appointment', '1', '2023-01-22 03:59:57');
-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Ria Sharma', 'sharma@gmail.com',9574632148 , 'Female', 'Client details here', '2022-11-04 07:02:08', NULL),
(2, 'Smith', 'smith@gmail.com', 9874563214, 'Male', 'Clients details here', '2022-10-25 06:30:57', NULL),
(3, 'Jack', 'jack@gmail.com', 9874568879, 'Male', 'Clients details here', '2022-08-11 07:15:57', NULL),
(4, 'Rishabh', 'pant@gmail.com', 9874565546, 'Male', 'Clients details here', '2023-01-01 10:15:29', NULL),
(5, 'Andrea Roberts', 'roberts@gmail.com', 9877896545, 'Female', 'Clients details here', '2023-01-04 10:15:29', NULL),
(6, 'Harry Chan', 'chan@gmail.com', 9877892201, 'Female', 'Clients details here', '2022-12-31 03:40:29', NULL),
(7, 'Rayne Shaw', 'shaw@gmail.com', 9877892200, 'Male', 'Clients details here', '2023-01-22 03:40:29', NULL),
(8, 'Stephen George', 'george@gmail.com', 9877895442, 'Female', 'Clients details here', '2023-01-15 01:40:29', NULL),
(9, 'Akansha Gautam', 'gautam@gmail.com', 9877895220, 'Female', 'Clients details here', '2022-09-19 02:15:26', NULL),
(10, 'Harlee Buck', 'har@gmail.com', 9855495442, 'Male', 'Clients details here', '2023-01-09 01:15:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 1, 6, 496923361, '2022-04-06 07:20:33'),
(2, 4, 3, 914095039, '2022-04-06 07:37:05'),
(3, 2, 6, 104585344, '2022-04-06 07:57:41'),
(4, 3, 1, 377202092, '2022-04-20 10:52:28'),
(5, 5, 2, 372214500, '2022-04-20 10:52:28'),
(6, 9, 2, 928303444, '2022-04-24 03:21:14'),
(7, 8, 3, 928888996, '2022-04-24 03:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'Special Education', 1000, '2022-04-03 11:33:47'),
(2, 'Occupational Therapy', 1600, '2022-04-03 12:36:09'),
(3, 'Physiotherapy', 1650, '2022-04-03 12:36:24'),
(4, 'Speech therapy', 2450, '2022-04-03 12:36:35'),
(5, 'Remedial Education', 3200, '2022-04-03 12:36:49'),
(6, 'Acupuncture therapy', 1200, '2022-04-06 07:13:34'),
(7, 'Oxygen therapy', 1500, '2022-04-06 07:51:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
