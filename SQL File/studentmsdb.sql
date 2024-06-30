-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 29, 2023 at 08:39 PM
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
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(10) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', 'abcd', '2019-10-11 04:36:52'),
(2, 'YRC', 'Admin@yrc', 8799678654, 'adminyrc@gmail.com', 'Yrc@mit22', '2022-12-18 16:42:42'),
(3, 'NSS', 'Admin@nss', 7569867478, 'adminnss@gmail.com', 'Nss@mit22', '2022-12-18 16:42:42'),
(4, 'NSO', 'Admin@nso', 9876543210, 'adminnso@gmail.com', 'Nso@mit22', '2022-12-18 17:20:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblclubs`
--

CREATE TABLE `tblclubs` (
  `id` varchar(10) NOT NULL,
  `Clubname` varchar(30) DEFAULT NULL,
  `No_of_members` int(11) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclubs`
--

INSERT INTO `tblclubs` (`id`, `Clubname`, `No_of_members`, `CreationDate`) VALUES
('1', 'NSS', 30, '2022-08-09 18:30:00'),
('2', 'NSO', 40, '2022-08-09 18:30:00'),
('3', 'YRC', 20, '2022-07-19 18:30:00'),
('RC01', 'RCMIT', 0, '2023-11-29 18:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `sessionid` varchar(10) DEFAULT NULL,
  `clubid` varchar(10) DEFAULT NULL,
  `activity` varchar(13) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `actdate` datetime DEFAULT NULL,
  `venue` varchar(18) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`sessionid`, `clubid`, `activity`, `description`, `actdate`, `venue`) VALUES
('YRC_01', 'YRC', 'Weekly Meet', 'A weekly meet is planned for all years student on 29/11/2022', '2022-11-29 00:00:00', 'PT Conference Hall'),
('NSO_01', 'NSO', 'Weekly Meet', 'A weekly meet is planned for all years student on 03/11/2022', '2022-11-03 00:00:00', 'PT Conference Hall'),
('YRC_02', 'YRC', 'Speacial Meet', 'A weekly meet is planned for all years student on 06/12/2022', '2022-12-06 00:00:00', 'GJ Park'),
('YRC_03', 'YRC', 'Weekly Meet', 'A weekly meet is planned for all years student on 29/10/2022', '2022-10-29 00:00:00', 'PT Conference Hall'),
('YRC_04', 'YRC', 'Weekly Meet', 'A weekly meet is planned for all years student on 25/12/2022', '2022-12-25 00:00:00', 'GJ Park'),
('YRC_05', 'YRC', 'Speacial Meet', 'A weekly meet is planned for 2nd year student on 18/10/2022', '2022-10-18 00:00:00', 'GJ Park'),
('YRC_06', 'YRC', 'Weekly Meet', 'A weekly meet is planned for 2nd year student on 28/11/2022', '2022-11-28 00:00:00', 'GJ Park'),
('NSO_02', 'NSO', 'Weekly Meet', 'A weekly meet is planned for 2nd year student on 19/12/2022', '2022-12-19 00:00:00', 'PT Conference Hall'),
('NSO_03', 'NSO', 'Speacial Meet', 'A weekly meet is planned for 2nd year student on 20/12/2022', '2022-12-20 00:00:00', 'PT Conference Hall'),
('NSO_04', 'NSO', 'Speacial Meet', 'A weekly meet is planned for 2nd year student on 31/10/2022', '2022-10-31 00:00:00', 'GJ Park'),
('NSO_05', 'NSO', 'Weekly Meet', 'A weekly meet is planned for 2nd year student on 06/12/2022', '2022-12-06 00:00:00', 'PT Conference Hall'),
('NSO_06', 'NSO', 'Weekly Meet', 'A weekly meet is planned for 1st year student on 18/11/2022', '2022-11-18 00:00:00', 'Admin Block'),
('NSS_02', 'NSS', 'Weekly Meet', 'A weekly meet is planned for 1st year student on 12/11/2022', '2022-11-12 00:00:00', 'Admin Block'),
('NSS_03', 'NSS', 'Weekly Meet', 'A weekly meet is planned for 3rd year student on 16/10/2022', '2022-10-16 00:00:00', 'Admin Block'),
('NSS_04', 'NSS', 'Weekly Meet', 'A weekly meet is planned for 3rd year student on 16/12/2022', '2022-12-16 00:00:00', 'PT Conference Hall'),
('NSS_05', 'NSS', 'Speacial Meet', 'A weekly meet is planned for 3rd year student on 16/12/2022', '2022-12-16 00:00:00', 'Club Office'),
('NSS_06', 'NSS', 'Weekly Meet', 'A weekly meet is planned for 3rd year student on 13/11/2022', '2022-11-13 00:00:00', 'PT Conference Hall'),
('NSS_07', 'NSS', 'Weekly Meet', 'A weekly meet is planned for 3rd year student on 05/12/2022', '2022-12-05 00:00:00', 'Admin Block'),
('NSS_08', 'NSS', 'Weekly Meet', 'A weekly meet is planned for 1st year student on 10/11/2022', '2022-11-10 00:00:00', 'Club Office'),
('NSS_09', 'NSS', 'Weekly Meet', 'adb', '2003-11-12 00:00:00', 'RPT CONFERENCE'),
('NSS_09', 'NSO', 'Weekly ', 'ssd', '2022-12-23 00:00:00', 'RLHC second floor');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><font color=\"#fff\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, ????, ??, SimSun, STXihei, ????, serif\"><span style=\"font-size: 26px;\">Various clubs in MIT provide platform to the students who aspire to be different in the society by discovering themselves. The association aims to develop individual skills of students and make them face the global competitive environment. Focused on developing soft skills and make students prepare for their placements by providing training on Aptitude, Psychometric, resume building, Group Discussion, Mock Interview, Stress Interview, HR Interview and conducting competitions on the same for interactive participation.</span></font><br></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'Admin, clubsMIT, Madras Institute of Technology, Chromepet -600044', 'mitindia@gmail.com', 9442251600, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(5, 'NSS Mass Cleaning Camp', 'Join NSS on the mass cleaning camp held on 31.12.2022\r\n!!! Attendance mandatory for first years !!!', '2022-12-24 09:21:01'),
(6, ' YRC Eye Care Camp', 'Annual EYE CAMP planned on 02.01.2022 at MIT campus\r\n', '2022-12-24 09:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblregister`
--

CREATE TABLE `tblregister` (
  `regno` bigint(20) NOT NULL,
  `clubname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblregister`
--

INSERT INTO `tblregister` (`regno`, `clubname`) VALUES
(2021501005, 'NSS'),
(2021501006, 'NSO'),
(2021501007, 'NSO'),
(2021501021, 'NSS'),
(2021501023, 'NSS'),
(2021501024, 'NSO'),
(2021501026, 'NSS'),
(2021501026, 'YRC'),
(2021501040, 'NSO'),
(2021502008, 'YRC'),
(2021502028, 'NSO'),
(2021502035, 'YRC'),
(2021502037, 'NSS'),
(2021503009, 'NSS'),
(2021503016, 'YRC'),
(2021503030, 'NSO'),
(2021503032, 'YRC'),
(2021503036, 'NSS'),
(2021503037, 'NSS'),
(2021503038, 'YRC'),
(2021503039, 'NSO'),
(2021503044, 'NSO'),
(2021503047, 'NSO'),
(2021503049, 'NSO'),
(2021503055, 'NSS'),
(2021503501, 'YRC'),
(2021503509, 'YRC'),
(2021503511, 'NSS'),
(2021503514, 'YRC'),
(2021503519, 'NSS'),
(2021503519, 'TCB'),
(2021503529, 'YRC'),
(2021503531, 'YRC'),
(2021503549, 'NSO'),
(2021503558, 'YRC'),
(2021503561, 'NSS'),
(2021503565, 'YRC'),
(2021503572, 'NSS'),
(2021504004, 'NSS'),
(2021504006, 'NSO'),
(2021504007, 'NSO'),
(2021504021, 'NSS'),
(2021504027, 'NSS'),
(2021504028, 'NSS'),
(2021504029, 'NSS'),
(2021504039, 'NSO'),
(2021504041, 'NSO'),
(2021504507, 'NSO'),
(2021504510, 'NSS'),
(2021504515, 'NSO'),
(2021504552, 'NSS'),
(2021504557, 'YRC'),
(2021504558, 'NSO'),
(2021505018, 'YRC'),
(2021505020, 'YRC'),
(2021505029, 'NSS'),
(2021505036, 'NSS'),
(2021505036, 'YRC'),
(2021505047, 'NSS'),
(2021505051, 'NSS'),
(2021505054, 'YRC'),
(2021506009, 'NSO'),
(2021506009, 'NSS'),
(2021506009, 'YRC'),
(2021506018, 'YRC'),
(2021506025, 'YRC'),
(2021506037, 'NSS'),
(2021506040, 'YRC'),
(2021506041, 'RCMIT'),
(2021506041, 'YRC'),
(2021506042, 'YRC'),
(2021506048, 'NSO'),
(2021506051, 'YRC'),
(2021506056, 'NSS'),
(2021506059, 'NSO'),
(2021506060, 'NSS'),
(2021506063, 'YRC'),
(2021506065, 'NSO'),
(2021506067, 'NSO'),
(2021506069, 'NSS'),
(2021506069, 'TBO'),
(2021506069, 'YRC'),
(2021506070, 'NSO'),
(2021506077, 'YRC'),
(2021506078, 'NSS'),
(2021506085, 'NSO'),
(2021506086, 'NSS'),
(2021506092, 'NSO'),
(2021506123, 'NSO'),
(2021507004, 'YRC'),
(2021507019, 'YRC'),
(2021507020, 'YRC'),
(2021507025, 'NSS'),
(2021507032, 'NSO'),
(2021507039, 'NSO'),
(2021508011, 'YRC'),
(2021508025, 'NSS'),
(2021508028, 'NSS'),
(2021508034, 'NSO'),
(2021508036, 'YRC'),
(2021508039, 'NSO'),
(2021508040, 'YRC'),
(2021509003, 'NSS'),
(2021509008, 'NSO'),
(2021509018, 'NSO'),
(2021509040, 'NSS'),
(2021509040, 'YRC'),
(2021509045, 'NSS'),
(2021509054, 'YRC'),
(2022506089, 'TBO'),
(2023506089, 'TBO'),
(2024506089, 'TBO'),
(2025506089, 'TBO'),
(7981803249, 'NSO');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `regno` int(11) NOT NULL,
  `name` varchar(28) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `dept` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `dob` varchar(19) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `email` varchar(26) CHARACTER SET utf8 DEFAULT NULL,
  `desig` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `accomod` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `place` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(10) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`regno`, `name`, `gender`, `dept`, `year`, `dob`, `mobile`, `email`, `desig`, `accomod`, `place`, `password`) VALUES
(11, 'wsd', 'Female', 'IT', 3, '2022-12-28', 3456443, 'ad@gmail.com', 'member', NULL, 'chennai', 'fsfsgfs'),
(21, 'asdf', 'asd', '2', 0, '2022-12-09', 5432765, 'ak@gamil.com', 'sdfgh', 'sdfvb', 'cvbn', 'sdfg'),
(101, 'ghad', 'Male', 'PT', 1, '2022-12-08', 8768636742, 'ad@gmail.com', 'volunteer', NULL, 'Chennai', 'asdfg'),
(123, 'sfgs', 'Female', 'EE', 4, '2022-12-15', 3456443, 'GA@gmail.com', 'member', NULL, 'qwsds', 'ssdd'),
(9677, 'wsd ', 'Male', 'Auto', 1, '2022-12-10', 3456443, 'GA@gmail.com', 'member', NULL, 'chenaii', 'ahjds'),
(202167, 'sfgs', 'Female', 'IE', 3, '2022-12-20', 8768636742, 'ad@gmail.com', 'member', NULL, 'fsgfs', 'sghsfs'),
(967746, 'app', 'Female', 'EE', 2, '2022-12-07', 3456443, 'ad@gmail.com', 'member', NULL, 'scgax', 'sxdsds'),
(2021507, 'Suganth G', 'Male', 'IT', 3, '2003-05-04', 8078987890, 'sk@gmail.com', 'member', 'Dayscholar', 'Chennai', 'skp@5553'),
(2021678, 'ghad', 'Female', 'IT', 3, '2022-12-21', 3456443, 'GA@gmail.com', 'member', NULL, 'sbhs', 'ssh'),
(202150656, 'ghad', 'Male', 'CT', 2, '2022-12-08', 8768636742, 'gff@gmail.com', 'member', NULL, 'chennai', 'sdfgh'),
(2021501005, 'Arun Kumar K', 'Male', 'IT', 4, '2002-11-30 00:00:00', 8274604387, 'arun@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Arun @1005'),
(2021501006, 'Aruna V R', 'Female', 'Aero', 2, '2003-12-18 00:00:00', 9150288453, 'aruna@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Aruna@1006'),
(2021501007, 'Asuvathi K', 'Female', 'CT', 4, '2004-02-15 00:00:00', 9168213167, 'asuvathi@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Asuva@1007'),
(2021501021, 'Krithi Vikraman', 'Female', 'Auto', 1, '2003-09-16 00:00:00', 9090471087, 'krithi@gmail.com', 'member', 'Hosteller', 'Sivagangai', 'Krith@1021'),
(2021501023, 'Monisha V', 'Female', 'CT', 3, '2003-08-16 00:00:00', 9458644749, 'monisha@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Monis@1023'),
(2021501024, 'Naagamani V', 'Female', 'Aero', 2, '2003-08-16', 9503573993, 'naagamani@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Naaga@1024'),
(2021501026, 'Nisanth T', 'Male', 'Aero', 1, '2002-11-30', 9572908795, 'nisanth@gmail.com', 'member', 'Hosteller', 'Coimbatore', 'abcd'),
(2021501040, 'Uvanshankar N', 'Male', 'Auto', 4, '2003-12-18 00:00:00', 9190375753, 'uvanshankar@gmail.com', 'member', 'Hosteller', 'Erode', 'Uvans@1040'),
(2021501089, 'Saravanakumar V', 'Male', 'IT', 2, '2022-12-09', 8765432102, 'ad@gmail.com', 'member', NULL, 'Sivagangai', 'Siva@123'),
(2021502008, 'Dinakaran G', 'Female', 'IT', 3, '2003-09-01', 9881308488, 'dinakaran@gmail.com', 'volunteer', 'Hosteller', 'Ooty', 'Dinak@2008'),
(2021502028, 'Nishaanth R', 'Male', 'Auto', 3, '2004-04-24 00:00:00', 8609969565, 'nishaanth@gmail.com', 'member', 'Hosteller', 'Kanyakumari', 'Nisha@2028'),
(2021502035, 'Sakthivel R', 'Male', 'IE', 4, '2004-01-11 00:00:00', 8289029999, 'sakthivel@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Sakth@2035'),
(2021502037, 'Sri Ranjani R', 'Female', 'Auto', 1, '2003-09-02 00:00:00', 9951042805, 'sri@gmail.com', 'member', 'Hosteller', 'Ooty', 'Sri R@2037'),
(2021503009, 'Babith Sarish S', 'Male', 'CT', 1, '2003-11-20 00:00:00', 8976693120, 'babith@gmail.com', 'member', 'Hosteller', 'Kanyakumari', 'Babit@3009'),
(2021503016, 'Faheema Gullnass', 'Female', 'IT', 3, '2003-07-10 00:00:00', 8346406274, 'faheema@gmail.com', 'volunteer', 'Hosteller', 'Kanchipuram', 'Fahee@3016'),
(2021503030, 'Monish R', 'Male', 'CT', 4, '2003-10-22 00:00:00', 9149082089, 'monish@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Monis@3030'),
(2021503032, 'Nithish T', 'Male', 'IT', 2, '2003-12-04 00:00:00', 8301729602, 'nithish@gmail.com', 'member', 'Hosteller', 'Ramanathapuram', 'Nithi@3032'),
(2021503036, 'Priyadharshini S', 'Female', 'EE', 2, '2003-10-09 00:00:00', 8139338856, 'priyadharshini@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Priya@3036'),
(2021503037, 'Priyasahaana M', 'Female', 'CT', 2, '2004-01-13 00:00:00', 8847097590, 'priyasahaana@gmail.com', 'member', 'Hosteller', 'Tirunelveli', 'Priya@3037'),
(2021503038, 'Puviyarasan V K', 'Male', 'Mech', 1, '2004-01-13 00:00:00', 9601111579, 'puviyarasan@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Puviy@3038'),
(2021503039, 'Rajkumar M', 'Male', 'CT', 1, '2004-07-03 00:00:00', 8124713842, 'rajkumar@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Rajku@3039'),
(2021503044, 'Sangeetha R K', 'Female', 'EE', 1, '2004-07-03 00:00:00', 9487294635, 'sangeetha@gmail.com', 'member', 'Hosteller', 'Erode', 'Sange@3044'),
(2021503047, 'Santhosh D', 'Male', 'CT', 2, '2003-12-04 00:00:00', 9824127735, 'santhosh@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Santh@3047'),
(2021503049, 'Santhoshkumar E', 'Male', 'Mech', 3, '21.05.2003', 8544009715, 'santhoshkumar@gmail.com', 'volunteer', 'Dayscholar', 'Chennai', 'Santh@3049'),
(2021503055, 'Thasneem Fathima M', 'Female', 'CT', 2, '2003-10-09 00:00:00', 8783131724, 'thasneem@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Thasn@3055'),
(2021503501, 'Aishwarya Devi R', 'Female', 'EE', 3, '2004-02-01 00:00:00', 9986007644, 'aishwarya@gmail.com', 'member', 'Hosteller', 'Tirunelveli', 'Aishw@3501'),
(2021503509, 'Devi K', 'Female', 'CT', 1, '2003-12-04 00:00:00', 8144859333, 'devi@gmail.com', 'member', 'Hosteller', 'Coimbatore', 'Devi @3509'),
(2021503511, 'Hariharan R V', 'Male', 'CT', 2, '21.05.2003', 8958396736, 'hariharan@gmail.com', 'volunteer', 'Hosteller', 'Madurai', 'Harih@3511'),
(2021503514, 'Karthi M', 'Male', 'CT', 4, '2004-05-21 00:00:00', 8253809412, 'karthi@gmail.com', 'member', 'Hosteller', 'Madurai', 'Karth@3514'),
(2021503519, 'Logesh S', 'Male', 'Auto', 3, '2004-05-21', 8565383637, 'logesh@gmail.com', 'member', 'Hosteller', 'Kanchipuram', 'Loges@3519'),
(2021503529, 'Nidhish kumar C M', 'Male', 'CT', 3, '2004-01-18 00:00:00', 8807271412, 'nidhish@gmail.com', 'member', 'Hosteller', 'Ramanathapuram', 'Nidhi@3529'),
(2021503531, 'Nivethitha S G', 'Female', 'PT', 3, '2004-01-18 00:00:00', 9052599201, 'nivethitha@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Nivet@3531'),
(2021503549, 'Rupesh A', 'Male', 'RPT', 1, '2003-12-04 00:00:00', 9365384975, 'rupesh@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Rupes@3549'),
(2021503558, 'Shyamala R B', 'Female', 'CT', 1, '2003-12-31 00:00:00', 8132108050, 'shyamala@gmail.com', 'member', 'Hosteller', 'Erode', 'Shyam@3558'),
(2021503561, 'Som Sridhar Roy', 'Male', 'IT', 1, '2003-11-20 00:00:00', 9742344906, 'som@gmail.com', 'member', 'Hosteller', 'Trichy', 'Som S@3561'),
(2021503565, 'Taufiq Aziz A R', 'Male', 'CT', 3, '2003-12-22 00:00:00', 9889466648, 'taufiq@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Taufi@3565'),
(2021503572, 'Vithya S', 'Female', 'CT', 4, '2004-02-01 00:00:00', 8362149514, 'vithya@gmail.com', 'member', 'Hosteller', 'Trichy', 'Vithy@3572'),
(2021504006, 'Fathima Nabisathul Sameera S', 'Female', 'Auto', 4, '2003-08-01 00:00:00', 8824092430, 'fathima@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Fathi@4006'),
(2021504007, 'Hari Haran S', 'Male', 'EE', 4, '2004-04-27 00:00:00', 8544723110, 'hari@gmail.com', 'member', 'Hosteller', 'Kanchipuram', 'Hari @4007'),
(2021504021, 'Madhu Mithaa V', 'Female', 'EE', 2, '2004-01-11 00:00:00', 8467050806, 'madhu@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Madhu@4021'),
(2021504027, 'Naveenaa Suresh Babu', 'Female', 'PT', 2, '2004-06-13 00:00:00', 9750788490, 'naveenaa@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Navee@4027'),
(2021504028, 'Nittin S', 'Male', 'EE', 3, '2004-02-15 00:00:00', 8692540962, 'nittin@gmail.com', 'member', 'Hosteller', 'Ooty', 'Nitti@4028'),
(2021504029, 'Pattu Hariharaan N', 'Male', 'PT', 2, '2004-06-17 00:00:00', 9889907567, 'pattu@gmail.com', 'member', 'Hosteller', 'Madurai', 'Pattu@4029'),
(2021504039, 'Shiva S', 'Male', 'Auto', 2, '2004-04-23 00:00:00', 9017999039, 'shiva@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Shiva@4039'),
(2021504041, 'Shrinidhi V', 'Female', 'Mech', 3, '2003-10-05 00:00:00', 9722676708, 'shrinidhi@gmail.com', 'member', 'Hosteller', 'Trichy', 'Shrin@4041'),
(2021504507, 'Balamurugan. M', 'Male', 'Mech', 3, '2003-12-22 00:00:00', 9943495377, 'balamurugan.@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Balam@4507'),
(2021504510, 'Dhanesh C N E', 'Male', 'EE', 4, '2003-08-01 00:00:00', 8868012868, 'dhanesh@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Dhane@4510'),
(2021504515, 'Gokul R', 'Male', 'IT', 2, '2004-04-21 00:00:00', 8168674520, 'gokul@gmail.com', 'volunteer', 'Hosteller', 'Sivagangai', 'Gokul@4515'),
(2021504552, 'Suvetha R', 'Female', 'EE', 3, '2004-06-13 00:00:00', 8725894768, 'suvetha@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Suvet@4552'),
(2021504557, 'Vidhya S S', 'Female', 'EE', 1, '2004-06-17 00:00:00', 9368994736, 'vidhya@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Vidhy@4557'),
(2021504558, 'Vishal K', 'Male', 'EE', 4, '2004-04-23 00:00:00', 8954790136, 'vishal@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Visha@4558'),
(2021504890, 'Sishaath K', 'Male', 'IT', 4, '2022-11-30', 9876543546, 'sishaath@gmail.com', 'member', 'Hosteller', 'Chennai', 'asdf'),
(2021505002, 'Abiraj T S ', 'Male', 'PT', 1, '2003-09-18', 9821250819, 'abiraj@gmail.com', 'member', 'Hosteller', 'Kanchipuram', 'Abira@5002'),
(2021505018, 'Jebajothi S', 'Female', 'Mech', 2, '2004-05-11 00:00:00', 8408851807, 'jebajothi@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Jebaj@5018'),
(2021505020, 'Keerthivasan G', 'Male', 'IE', 4, '2004-05-11 00:00:00', 9174796360, 'keerthivasan@gmail.com', 'member', 'Hosteller', 'Madurai', 'Keert@5020'),
(2021505029, 'Padmanaban G', 'Male', 'IE', 4, '2003-10-31 00:00:00', 8275047974, 'padmanaban@gmail.com', 'member', 'Hosteller', 'Trichy', 'Padma@5029'),
(2021505036, 'Renuga M', 'Female', 'PT', 4, '2003-09-19 00:00:00', 9577705813, 'renuga@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Renug@5036'),
(2021505047, 'Sundharavarshini K S', 'Female', 'IE', 3, '2003-10-31 00:00:00', 8896231803, 'sundharavarshini@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Sundh@5047'),
(2021505051, 'Thamizharasan K', 'Male', 'Mech', 1, '2003-10-22 00:00:00', 9719401908, 'thamizharasan@gmail.com', 'member', 'Hosteller', 'Coimbatore', 'Thami@5051'),
(2021505054, 'Vigneshwaran J', 'Male', 'IE', 1, '2003-11-06 00:00:00', 9882544040, 'vigneshwaran@gmail.com', 'member', 'Hosteller', 'Ooty', 'Vigne@5054'),
(2021506003, 'Abinaya V', 'Female', 'Auto', 3, '2003-09-17 00:00:00', 8675239387, 'abinaya@gmail.com', 'member', 'Hosteller', 'Coimbatore', 'Abina@6003'),
(2021506018, 'Dharshan S', 'Male', 'IE', 2, '2004-01-17 00:00:00', 8631722981, 'dharshan@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Dhars@6018'),
(2021506025, 'Gowri R ', 'Female', 'IT', 4, '2002-11-07 00:00:00', 9087931457, 'gowri@gmail.com', 'member', 'Hosteller', 'Kanyakumari', 'Gowri@6025'),
(2021506037, 'Kavi Sri S', 'Female', 'IE', 4, '2004-04-24 00:00:00', 8865694550, 'kavi@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Kavi @6037'),
(2021506040, 'Krupa Janani G', 'Female', 'Mech', 2, '2003-09-13 00:00:00', 8472690497, 'krupa@gmail.com', 'member', 'Hosteller', 'Coimbatore', 'Krupa@6040'),
(2021506041, 'Loganathan S', 'Male', 'IT', 3, '2004-03-25', 8889126597, 'loganathan@gmail.com', 'volunteer', 'Hosteller', 'Chennai', 'Logan@6041'),
(2021506042, 'Lokesh M', 'Male', 'CT', 3, '2002-11-07 00:00:00', 9711688433, 'lokesh@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Lokes@6042'),
(2021506048, 'Marimuthu Thrisha Devi', 'Female', 'IT', 2, '2004-01-17 00:00:00', 8327878647, 'marimuthu@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Marim@6048'),
(2021506051, 'Monisha H', 'Female', 'Auto', 2, '2003-10-09 00:00:00', 8124333315, 'monisha@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Monis@6051'),
(2021506056, 'Nidhi ravikumar', 'Female', 'IT', 4, '2004-02-26 00:00:00', 8734666584, 'nidhi@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Nidhi@6056'),
(2021506059, 'Padmapriya S', 'Female', 'IT', 1, '2003-09-05 00:00:00', 9119006532, 'padmapriya@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Padma@6059'),
(2021506060, 'Parthasarathi D', 'Male', 'IT', 4, '2003-07-01 00:00:00', 8785529645, 'parthasarathi@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Parth@6060'),
(2021506063, 'Poornima K', 'Female', 'EE', 3, '2003-09-15 00:00:00', 9672113719, 'poornima@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Poorn@6063'),
(2021506065, 'Promodh R P', 'Male', 'RPT', 1, '2003-09-02 00:00:00', 8710737888, 'promodh@gmail.com', 'member', 'Hosteller', 'Madurai', 'Promo@6065'),
(2021506067, 'Ragul T', 'Male', 'IT', 3, '2004-02-13 00:00:00', 9001023523, 'ragul@gmail.com', 'member', 'Hosteller', 'Ramanathapuram', 'Ragul@6067'),
(2021506070, 'Ravin A', 'Male', 'IE', 1, '2004-02-13 00:00:00', 9735132259, 'ravin@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Ravin@6070'),
(2021506077, 'Rudraraju Bhavana', 'Female', 'PT', 1, '2003-09-14 00:00:00', 8188087526, 'rudraraju@gmail.com', 'volunteer', 'Hosteller', 'Trichy', 'Rudra@6077'),
(2021506078, 'Vaisshnavi A', 'Female', 'Auto', 2, '2003-07-01 00:00:00', 9904557113, 'vaisshnavi@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Vaiss@6078'),
(2021506085, 'Sanjana V', 'Female', 'PT', 4, '2004-03-25 00:00:00', 9108491046, 'sanjana@gmail.com', 'volunteer', 'Dayscholar', 'Chennai', 'Sanja@6085'),
(2021506086, 'Sanjay M', 'Male', 'IT', 2, '2003-10-09 00:00:00', 8754283904, 'sanjay@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Sanja@6086'),
(2021506089, 'Saravanakumar V', 'Male', 'IT', 2, '2003-11-26', 8768636742, 'sarvan@gmail.com', 'volunteer', NULL, 'Sivagangai', 'sarav@089'),
(2021506092, 'Senthil Nathan M', 'Male', 'IT', 2, '2003-10-05 00:00:00', 8990389679, 'senthil@gmail.com', 'member', 'Hosteller', 'Ooty', 'Senth@6092'),
(2021506117, 'Suganth G', 'Male', 'IT', 3, '2003-05-04', 8078987890, 'sk@gmail.com', 'member', 'Dayscholar', 'Chennai', 'skp@5553'),
(2021506123, 'Vignesh S', 'Male', 'Mech', 2, '2003-09-05 00:00:00', 8651782277, 'vignesh@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Vigne@6123'),
(2021507004, 'Anish Kumar. R', 'Male', 'PT', 1, '2003-09-16 00:00:00', 8418991394, 'anish@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Anish@7004'),
(2021507019, 'Harishdharshan V', 'Male', 'PT', 3, '09.05.2003', 8125479375, 'harishdharshan@gmail.com', 'member', 'Hosteller', 'Kanchipuram', 'Haris@7019'),
(2021507020, 'Harshath M', 'Male', 'PT', 2, '2004-05-23 00:00:00', 8396977230, 'harshath@gmail.com', 'member', 'Hosteller', 'Trichy', 'Harsh@7020'),
(2021507025, 'Jyothirmai Divya P', 'Female', 'CT', 3, '2003-09-12 00:00:00', 9055177184, 'jyothirmai@gmail.com', 'member', 'Hosteller', 'Kanchipuram', 'Jyoth@7025'),
(2021507032, 'Ponram Kumar', 'Male', 'Mech', 4, '2004-05-23 00:00:00', 9527079890, 'ponram@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Ponra@7032'),
(2021507039, 'Sarvesh C', 'Male', 'Auto', 3, '09.05.2003', 9520074917, 'sarvesh@gmail.com', 'member', 'Hosteller', 'Kanyakumari', 'Sarve@7039'),
(2021508011, 'Dhanush L', 'Male', 'IT', 4, '2003-02-24 00:00:00', 8862680969, 'dhanush@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Dhanu@8011'),
(2021508025, 'Manjamalai R', 'Male', 'Mech', 2, '2003-11-06 00:00:00', 9711061982, 'manjamalai@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Manja@8025'),
(2021508028, 'Monish M', 'Male', 'PT', 2, '2004-06-09 00:00:00', 9528280827, 'monish@gmail.com', 'member', 'Hosteller', 'Ramanathapuram', 'Monis@8028'),
(2021508034, 'Sakthivel S', 'Male', 'RPT', 4, '2003-09-13 00:00:00', 9900190929, 'sakthivel@gmail.com', 'member', 'Hosteller', 'Tirunelveli', 'Sakth@8034'),
(2021508036, 'Sanjana M S', 'Female', 'RPT', 1, '2003-02-24 00:00:00', 8708672701, 'sanjana@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Sanja@8036'),
(2021508039, 'Seetha Raman R', 'Male', 'RPT', 1, '2004-02-26 00:00:00', 9633766559, 'seetha@gmail.com', 'member', 'Hosteller', 'Ooty', 'Seeth@8039'),
(2021508040, 'Semmozhi T', 'Female', 'RPT', 4, '2004-06-09 00:00:00', 9749878791, 'semmozhi@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Semmo@8040'),
(2021509003, 'Aravind Samy S', 'Male', 'PT', 2, '2004-01-10 00:00:00', 9786800158, 'aravind@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Aravi@9003'),
(2021509008, 'Barathvasan T', 'Male', 'Auto', 1, '2004-04-27 00:00:00', 9151016271, 'barathvasan@gmail.com', 'member', 'Hosteller', 'Trichy', 'Barat@9008'),
(2021509018, 'Ilanchezhiyan D', 'Male', 'Mech', 2, '2004-01-10 00:00:00', 8743008705, 'ilanchezhiyan@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Ilanc@9018'),
(2021509040, 'Sanjay R', 'Male', 'Auto', 1, '2003-09-16', 8724158062, 'sanjay@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Sanja@9040'),
(2021509045, 'Shibi Praveen S', 'Male', 'PT', 1, '2003-09-01 00:00:00', 8324014141, 'shibi@gmail.com', 'volunteer', 'Dayscholar', 'Chennai', 'Shibi@9045'),
(2021509054, 'Vignesh k', 'Male', 'Mech', 2, '2003-09-12 00:00:00', 9092604656, 'vignesh@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Vigne@9054'),
(2022506009, 'ghad', 'Male', 'IT', 1, '2022-02-14', 6473473453, 'ad@gmail.com', 'member', NULL, 'Kanchi', 'kanchi212'),
(2022506010, 'ghad', 'Female', 'IT', 1, '2022-12-07', 8765432102, 'GA@gmail.com', 'volunteer', NULL, 'chennai', 'fdagdfa'),
(2022506011, 'ghad', 'Female', 'IE', 3, '2022-12-16', 8768636742, 'ad@gmail.com', 'member', NULL, 'sdsd', 'dad'),
(2022506089, 'Saravanakumar V', 'Male', 'CT', 1, '2022-12-08', 5678567867, 'GA@gmail.com', 'member', NULL, 'chennai', 'chennai'),
(2023506089, 'Saravanakumar V', 'Male', 'IT', 1, '2022-11-30', 3456443, 'GA@gmail.com', 'volunteer', 'Dayscholar', 'gdhsfgd', 'abcd'),
(2024506089, 'Saravanakumar V', 'Male', 'IE', 2, '2022-12-08', 5678567867, 'GA@gmail.com', 'volunteer', 'Hosteller', 'chennai', 'chennai'),
(2025506089, 'Saravanakumar V', 'Male', 'CT', 3, '2022-12-09', 8768636742, 'ad@gmail.com', 'volunteer', 'Hosteller', 'chennai', 'chennai'),
(2147483647, 'Vijai Suria M', 'Male', 'Auto', 1, '2003-12-31 00:00:00', 9953315796, 'vijai@gmail.com', 'member', 'Dayscholar', 'Chennai', 'Vijai@3249');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclubs`
--
ALTER TABLE `tblclubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblregister`
--
ALTER TABLE `tblregister`
  ADD PRIMARY KEY (`regno`,`clubname`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`regno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
