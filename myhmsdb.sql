-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2020 at 02:34 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Kipruto', 'Lal', 'Male', 'kevinsmart0@gmail.com', '8838489464', 'gloria', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Kipruto', 'Lal', 'Male', 'kevinsmart0@gmail.com', '8838489464', 'diana', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Kipruto', 'Lal', 'Male', 'kevinsmart0@gmail.com', '8838489464', 'amos', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Sheila', 'nekesa', 'Female', 'faith@gmail.com', '9768946252', 'ashok', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Kipruto', 'Lal', 'Male', 'kevinsmart0@gmail.com', '8838489464', 'diana', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Kipruto', 'Lal', 'Male', 'kevinsmart0@gmail.com', '8838489464', 'gloria', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alice', 'bahati', 'Female', 'alia@gmail.com', '8976897689', 'gloria', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Godfrey', 'wafula', 'Male', 'godfrey@gmail.com', '9070897653', 'gloria', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Kipruto', 'Lal', 'Male', 'kevinsmart0@gmail.com', '8838489464', 'gloria', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kipruto', 'Lal', 'Male', 'kevinsmart0@gmail.com', '8838489464', 'diana', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'Kamau', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'kevin', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'Kamau', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Tiwa', 450, '2020-03-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anita', 'anu@gmail.com', '0796677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '0799778865', 'Good Job, Pal'),
('Caren', 'ananya@gmail.com', '0797888879', 'How can I reach you?'),
('mike', 'aakash@gmail.com', '0788979967', 'Love your site'),
('Manasse', 'mani@gmail.com', '0777768978', 'Want some coffee?'),
('Keith', 'karthi@gmail.com', '0798989898', 'Good service'),
('Abby', 'abby@gmail.com', '0779776868', 'Love your service'),
('Asiya', 'asiq@gmail.com', '0787897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '07869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('afula', 'afula123', 'afula@gmail.com', 'General', 500),
('mercy', 'mercy123', 'mercy@gmail.com', 'Cardiologist', 600),
('diana', 'diana123', 'diana@gmail.com', 'General', 700),
('gloria', 'gloria123', 'gloria@gmail.com', 'Pediatrician', 550),
('kevin', 'kevin123', 'kevin@gmail.com', 'Pediatrician', 800),
('amos', 'amos123', 'amos@gmail.com', 'Cardiologist', 1000),
('abby', 'abby123', 'abby@gmail.com', 'Neurologist', 1500),
('tiwa', 'tiwa123', 'tiwa@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'odinga', 'kevin', 'Male', 'odinga@gmail.com', '0776543210', 'odinga123', 'odinga123'),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '0776897689', 'alia123', 'alia123'),
(3, 'sharon', 'khan', 'Male', 'sharon@gmail.com', '0776898463', 'sharon123', 'sharon123'),
(4, 'kevin', 'Lal', 'Male', 'kevinsmart0@gmail.com', '0738489464', 'kevin123', 'kevin123'),
(5, 'godfrey', 'Shankaraodinga', 'Male', 'godfrey@gmail.com', '0770897653', 'godfrey123', 'godfrey123'),
(6, 'susan', 'Singh', 'Male', 'susan@gmail.com', '0759986865', 'susan123', 'susan123'),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '0728972454', 'nancy123', 'nancy123'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '0709879868', 'kenny123', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '0783619153', 'william123', 'william123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '0709362815', 'peter123', 'peter123'),
(11, 'faith', 'Kapoor', 'Female', 'faith@gmail.com', '0768946252', 'faith123', 'faith123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('diana', 4, 11, 'kevin', 'Lal', '2022-10-16', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('gloria', 2, 8, 'Alia', 'Bhatt', '2022-10-14', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('kevin', 9, 12, 'William', 'Blake', '2022-10-12', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tiwa', 9, 13, 'William', 'Blake', '2022-10-10', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
