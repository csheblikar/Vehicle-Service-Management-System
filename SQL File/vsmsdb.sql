-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2021 at 12:58 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vsmsdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCategory` ()  SELECT * FROM tblcategory$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getMechanics` ()  SELECT * FROM tblmechanics$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getUser` ()  SELECT * FROM tbluser$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `id` int(11) NOT NULL,
  `ServiceNumber` char(20) NOT NULL,
  `Vehicle Name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'Admin', 2147483647, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-03-03 09:26:32'),
(2, 'Chaithanya', 'Chaithanya', 8660327150, 'csheblikar@gmail.com', 'chai1234', '2021-09-28 08:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(11) NOT NULL,
  `VehicleCat` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `VehicleCat`) VALUES
(1, 'Two Wheeler'),
(2, 'Three Wheeler'),
(3, 'Four Wheeler'),
(4, 'Three Wheeler Autoo'),
(5, '4 Wheeler Tractor'),
(6, '3 wheeler Auto'),
(7, 'Test category');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `EnquiryNumber` varchar(120) NOT NULL,
  `EnquiryType` varchar(120) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminResponse` varchar(250) NOT NULL,
  `AdminStatus` int(11) NOT NULL,
  `AdminRemarkdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `UserId`, `EnquiryNumber`, `EnquiryType`, `Description`, `EnquiryDate`, `AdminResponse`, `AdminStatus`, `AdminRemarkdate`) VALUES
(1, 10, '320977403', 'Service Related Enquiry', 'I want service my bike can u please give me price.', '2020-03-07 05:57:46', 'Prices of servicing bike given below.', 1, '2020-03-07 07:08:19'),
(2, 9, '612700713', 'Parts Related Enquiry', 'Can you change ggjhg parts of my bike and how much its cost', '2020-03-08 06:21:44', 'Yes we can. its cost is 8500 rs', 1, '2020-03-08 06:21:44'),
(3, 11, '467395787', 'Service Related Enquiry', 'I want to know cost of spares parts of maruti suzuki car.', '2020-03-15 05:10:08', 'Dear Mayank,\r\nThere is different spare of different company and price dependent on that so please visit to our service centre so we can assist you better.', 1, '2020-03-15 05:10:08'),
(4, 7, '368658342', 'Price Related Enquiry', 'I want to know the price of servicing three-wheeler.', '2020-03-25 13:14:26', 'This is sample text for testing.', 1, '2020-03-25 13:14:26'),
(5, 13, '425316470', 'Service Related Enquiry', 'I want to know the price of four wheeler service', '2020-04-04 18:00:47', 'This is sample remark for testing', 1, '2020-04-04 18:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquirytype`
--

CREATE TABLE `tblenquirytype` (
  `ID` int(11) NOT NULL,
  `EnquiryType` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquirytype`
--

INSERT INTO `tblenquirytype` (`ID`, `EnquiryType`) VALUES
(1, 'Service Related Enquiry'),
(2, 'Price Related Enquiry'),
(3, 'Parts Related Enquiry'),
(4, 'Other Enquiry');

-- --------------------------------------------------------

--
-- Table structure for table `tblmechanics`
--

CREATE TABLE `tblmechanics` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Address` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmechanics`
--

INSERT INTO `tblmechanics` (`ID`, `FullName`, `MobileNumber`, `Email`, `Address`) VALUES
(1, 'Shonaya', 8287654547, 'lal@gmail.com', 'H.NO 6/8 New Delhi'),
(2, 'Naveen', 7967890288, 'munna@gmail.com', '6790 Plot, Delhi'),
(3, 'Rashid', 5399365859, 'rashid@gmail.com', '45-A, gali no 50, new colony new delhi'),
(4, 'Rahul Kumar', 9865486484, 'rahul@gmail.com', 'c/o, Mohan Rajnagar near metro place B3/4144'),
(5, 'Harish Singh', 7697547903, 'harish@gmail.com', 'gh-67, sohna road haryana'),
(6, 'Jone', 8976565718, 'jone@gmail.com', 'shastri Niketan gali no:75 near baikund dham neelgari Himchal Pradesh'),
(7, 'test mech', 423423423, 'restmech@gmail.com', 'New Delhi India');

-- --------------------------------------------------------

--
-- Table structure for table `tblpickup`
--

CREATE TABLE `tblpickup` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(20) CHARACTER SET latin1 NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `Email` varchar(120) CHARACTER SET latin1 NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Password` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpickup`
--

INSERT INTO `tblpickup` (`ID`, `FullName`, `MobileNumber`, `Email`, `Address`, `Password`) VALUES
(1, 'Darshan', '8660327189', 'darshan@gmail.com', 'Jaynagar', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tblservicerequest`
--

CREATE TABLE `tblservicerequest` (
  `ID` int(10) NOT NULL,
  `UserId` char(34) DEFAULT NULL,
  `ServiceNumber` char(20) NOT NULL,
  `Category` varchar(120) DEFAULT NULL,
  `VehicleName` varchar(120) DEFAULT NULL,
  `VehicleModel` varchar(120) DEFAULT NULL,
  `VehicleBrand` varchar(120) DEFAULT NULL,
  `VehicleRegno` varchar(120) DEFAULT NULL,
  `ServiceDate` date DEFAULT NULL,
  `ServiceTime` varchar(100) DEFAULT NULL,
  `DeliveryType` varchar(120) DEFAULT NULL,
  `PickupAddress` varchar(120) DEFAULT NULL,
  `ServicerequestDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ServiceBy` varchar(120) NOT NULL,
  `ServiceCharge` int(10) NOT NULL,
  `PartsCharge` int(10) NOT NULL,
  `OtherCharge` int(10) NOT NULL,
  `AdminRemark` varchar(120) NOT NULL,
  `AdminStatus` varchar(120) DEFAULT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `PickupStatus` varchar(120) NOT NULL,
  `PickupBy` varchar(120) NOT NULL,
  `otp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservicerequest`
--

INSERT INTO `tblservicerequest` (`ID`, `UserId`, `ServiceNumber`, `Category`, `VehicleName`, `VehicleModel`, `VehicleBrand`, `VehicleRegno`, `ServiceDate`, `ServiceTime`, `DeliveryType`, `PickupAddress`, `ServicerequestDate`, `ServiceBy`, `ServiceCharge`, `PartsCharge`, `OtherCharge`, `AdminRemark`, `AdminStatus`, `AdminRemarkdate`, `PickupStatus`, `PickupBy`, `otp`) VALUES
(1, '7', '530203057', 'Two Wheeler', 'Activa Scooter', '3G', 'Honda', 'DL3C AR-4851', '2020-04-24', '00:00:00', 'pickupservice', 'Mayur Vihar Phase 1 New Delhi', '2020-04-03 17:22:44', 'Harish Singh', 1234, 500, 0, 'This sample text for testing.', '3', '2020-04-03 17:29:30', '', '', ''),
(2, '7', '300012550', 'Two Wheeler', 'Pulsor ', '220CC', 'Bajaj', 'UP13 AB3111', '2020-04-04', '13:11', 'dropservice', '', '2020-04-03 17:25:09', '', 0, 0, 0, '', '2', '2020-04-04 18:03:29', '', '', ''),
(3, '13', '826535329', 'Two Wheeler', 'Activa', '3g', 'Honda', 'DL3C AR 4861', '2020-04-18', '12:30', 'pickupservice', 'Mayur Vihar Phase 1 Delhi', '2020-04-04 17:57:58', 'Naveen', 1200, 1100, 100, 'Service done', '3', '2020-04-04 17:59:40', '', '', ''),
(4, '6', '969184484', 'Two Wheeler', 'Activa', '5g', 'Honda', 'KA-05-2315', '2021-10-01', '13:00', 'pickupservice', 'Jaynagar 4th block', '2021-09-29 10:33:08', '', 0, 0, 0, '', '1', '2021-09-29 10:35:12', '', '', '4953'),
(5, '14', '871867423', 'Two Wheeler', 'Activa', '5g', 'Honda', 'KA-05-2266', '2021-10-10', '12:00', 'pickupservice', 'Jaynagar 4th block', '2021-09-29 10:37:51', '', 0, 0, 0, '', '1', '2021-09-29 10:38:48', '1', '1', '5156');

--
-- Triggers `tblservicerequest`
--
DELIMITER $$
CREATE TRIGGER `backup` AFTER INSERT ON `tblservicerequest` FOR EACH ROW INSERT into backup values (NEW.id, NEW.ServiceNumber, NEW.VehicleName)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNo` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNo`, `Email`, `Password`, `RegDate`) VALUES
(6, 'Chaithanya', 9036827793, 'chai@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-09-29 10:29:52'),
(7, 'Anuj Pandey', 6677777777, 'anuj@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-01 12:33:21'),
(8, 'Anuj', 3456778888, 'abc@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-01 12:34:01'),
(9, 'Mahesh Dadlani', 8985675321, 'mahesh@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-06 11:46:05'),
(10, 'Manish Agarwal', 5678905577, 'manish@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-07 05:36:02'),
(11, 'Mayank Chaturvedy', 9876543123, 'mayank@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-15 05:08:00'),
(12, 'Kulkari', 8597887984, 'abhi@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-03-25 09:16:44'),
(13, 'Test user', 1234567890, 'testuser@test.com', 'f925916e2754e5e03f75dd58a5733251', '2020-04-04 17:56:04'),
(14, 'Chaithanya S Heblikar', 8660327150, 'csheblikar@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-09-29 10:36:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquirytype`
--
ALTER TABLE `tblenquirytype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmechanics`
--
ALTER TABLE `tblmechanics`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpickup`
--
ALTER TABLE `tblpickup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservicerequest`
--
ALTER TABLE `tblservicerequest`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblenquirytype`
--
ALTER TABLE `tblenquirytype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblmechanics`
--
ALTER TABLE `tblmechanics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpickup`
--
ALTER TABLE `tblpickup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblservicerequest`
--
ALTER TABLE `tblservicerequest`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
