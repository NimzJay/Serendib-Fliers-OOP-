-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2018 at 10:36 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serendib_fliers`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingID` int(50) NOT NULL,
  `pkgID` varchar(50) NOT NULL,
  `TDate` varchar(12) NOT NULL,
  `userN` varchar(20) NOT NULL,
  `cardNo` int(20) NOT NULL,
  `cvv` int(4) NOT NULL,
  `expDate` varchar(12) NOT NULL,
  `GuideId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingID`, `pkgID`, `TDate`, `userN`, `cardNo`, `cvv`, `expDate`, `GuideId`) VALUES
(73, 'Option1', '2018-05-01', 'pp', 789456123, 4561, '2018-05-15', '001'),
(74, 'Option2', '2018-05-07', 'bp', 789456123, 1238, '2018-05-31', '002'),
(75, 'Option3', '2018-05-06', 'mh', 456789123, 7894, '2018-05-26', '003');

-- --------------------------------------------------------

--
-- Table structure for table `customize`
--

CREATE TABLE `customize` (
  `pkgId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `cnumber` int(10) NOT NULL,
  `country` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `adults` varchar(15) NOT NULL,
  `children` varchar(15) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(30) NOT NULL,
  `budget` varchar(30) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customize`
--

INSERT INTO `customize` (`pkgId`, `name`, `id`, `email`, `cnumber`, `country`, `date`, `pickup`, `adults`, `children`, `duration`, `accommodation`, `budget`, `note`) VALUES
(7, 'nn', 'uivuijlb', 'hkh', 24165798, 'hj gvjx', '22/22/22', 'bvj', '3', '3', '2', 'kjjgfd', '65423', 'bv jvh'),
(8, 'qq', 'qq', 'qq@gmail.com', 1234567890, 'qq', 'qq', 'qq', 'qq', 'qq', 'qq', 'qq', 'qq', 'qq'),
(14, 'zfgn', 'adgb', 'zgn', 123, 'fgn', '2018-05-17', 'fgn', '12', '12', 'sgf', 'gcn ', '12314536', 'ggggggggggggggggggggggg'),
(15, 'zfgn', 'adgb', 'zgn', 123, 'fgn', '2018-05-17', 'fgn', '12', '12', 'sgf', 'gcn ', '12314536', 'xxxxxxxxxxxxxxxxx'),
(16, 'cgl,', 'adgb', 'zgn', 123, 'fgn', '2018-05-17', 'fgn', '12', '12', 'sgf', 'gcn ', '12314536', 'ggggggggggggggggggggggg');

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `GuideId` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ContactNumber` int(15) NOT NULL,
  `availability` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`GuideId`, `FirstName`, `LastName`, `age`, `Email`, `ContactNumber`, `availability`) VALUES
('001', 'vbmnvmh', 'klo', 48, 'dn', 123456789, 'no'),
('002', 'lhb', 'khkj', 78, 'lnnnk', 1234654, 'no'),
('003', 'gdn', 'fhm', 55, 'fhmx', 78945147, 'no'),
('004', 'eyu', 'lee', 36, 'leed', 78946123, 'no'),
('005', 'kkkkkk', 'asd', 65, 'asd', 12346789, 'yes'),
('006', 'sgb', 'sfhm', 58, 'xhm', 78912564, 'yes'),
('007', 'uf', 'fx', 45, 'szfgmjd', 789456159, 'yes'),
('008', 'xfgnj', 'fgnm', 56, 'xfg', 456789456, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userFname` varchar(50) NOT NULL,
  `userLname` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contactNo1` int(10) NOT NULL,
  `contactNo2` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userFname`, `userLname`, `username`, `password`, `address`, `contactNo1`, `contactNo2`, `email`, `NIC`, `type`) VALUES
('admin', 'admin', 'admin', '123', 'xxxxxxxx', 777777777, 111111111, 'admin@SerendibbFliers.com', '987654321V', 'admin'),
('Binura', 'Pramuditha', 'bp', '123', 'xxxxxxxx', 999888777, 111222333, 'bp@gmail.com', '965432123V', 'client'),
('mihiranga', 'xxx', 'mh', '123', 'xxxxxxxx', 999999999, 555555555, 'mh@gmail.com', '978865432V', 'client'),
('Mihiranga', 'Peththawadu', 'mihiranga', '123', 'xxxxxx', 123123, 123123, 'fgxfmhg', '1325651', 'client'),
('Nimz', 'Jay', 'nimz', '123', 'xxxxxxxx', 666666666, 999999999, 'nj@gmail.com', '977777777V', 'client'),
('Pawani', 'Pabasara', 'pp', '123', 'xxxxxxxx', 666666555, 987654321, 'pp@gmail.com', '977777777V', 'client'),
('qwerty', 'wert', 'qwerty', '123', 'xxxxxx', 258369147, 147258369, 'qwertyt', '68885471v', 'client'),
('sdfsd', 'sdfsdf', 'sdfsf', '4353453', 'sdfsdf', 876876, 8768768, 'sdfsdfs', '87687687v', 'sfsd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingID`),
  ADD KEY `userN` (`userN`),
  ADD KEY `GuideId` (`GuideId`);

--
-- Indexes for table `customize`
--
ALTER TABLE `customize`
  ADD PRIMARY KEY (`pkgId`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`GuideId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `customize`
--
ALTER TABLE `customize`
  MODIFY `pkgId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`userN`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
