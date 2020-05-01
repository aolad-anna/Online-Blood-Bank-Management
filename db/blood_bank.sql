-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 09:16 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `DONOR_ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FATHER_NAME` varchar(150) NOT NULL,
  `GENDER` varchar(150) NOT NULL,
  `DOB` date NOT NULL,
  `BLOOD` varchar(150) NOT NULL,
  `BODY_WEIGHT` int(11) NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `ADDRESS` text NOT NULL,
  `DISTRICT` varchar(150) NOT NULL,
  `POST_CODE` varchar(150) NOT NULL,
  `DIVISION` varchar(150) NOT NULL,
  `COUNTRY` varchar(150) NOT NULL,
  `CONTACT_1` varchar(150) NOT NULL,
  `CONTACT_2` varchar(150) NOT NULL,
  `VOLUNTARY` text NOT NULL,
  `VOLUNTARY_GROUP` text NOT NULL,
  `NEW_DONOR` varchar(150) NOT NULL,
  `LAST_D_DATE` date NOT NULL,
  `DONOR_PIC` varchar(150) NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`DONOR_ID`, `NAME`, `FATHER_NAME`, `GENDER`, `DOB`, `BLOOD`, `BODY_WEIGHT`, `EMAIL`, `ADDRESS`, `DISTRICT`, `POST_CODE`, `DIVISION`, `COUNTRY`, `CONTACT_1`, `CONTACT_2`, `VOLUNTARY`, `VOLUNTARY_GROUP`, `NEW_DONOR`, `LAST_D_DATE`, `DONOR_PIC`, `STATUS`) VALUES
(6, 'Sajid- bin Faisal       ', 'Amir faisal  ', 'Male', '1997-11-13', 'B+', 57, 'sajidfaisal80@gmail.com', '37, khan jahan ali road Khulna, collegiate college.', 'Khulna', '9201', 'Khulna', 'Bangladesh', '01715314639', '01715314639', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/964sajid.jpg', 1),
(7, 'Shahrear Shawon   ', 'Mohammod Noor ', 'Male', '1996-10-10', 'A+', 80, 'shawon@gmail.com', 'Bogra city cantonment , Bogra', 'Bogra', '5880', 'Rajshahi', 'Bangladesh', '01315789654', '01315789654', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/80367162914_352895685643287_4450375881537355776_n.jpg', 1),
(8, 'Sabbir Shikdar Orid', 'Ahmed Shikdar ', 'Male', '1997-06-10', 'AB+', 57, 'orid@gmail.com', 'Rajshahi police line school area, house 24-road 12; Rajshahi              ', 'Rajshahi', '6202', 'Rajshahi', 'Bangladesh', '01714698547', '01714698547', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/946orid.jpg', 1),
(9, 'Khondoker Shehrina   ', 'Khondoker Riaz ', 'Female', '1997-12-31', 'O+', 55, 'knishe@gmail.com', 'Dinajpur city new market road , house 13, road 2 ; Dinajpur', 'Dinajpur', '5200', 'Rangpur', 'Bangladesh', '01798214569', '01798214569', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/20567198053_347265492842140_1909313598174265344_n.jpg', 1),
(10, 'Sumya Meem', 'Zamal Hossain', 'Male', '1997-05-17', 'B-', 52, 'meem@gmail.com', 'Narayanganj city, , memorial lane.house 11, road: 08', 'Narayanganj', '2011', 'Dhaka', 'Bangladesh', '01615639874', '01615639874', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/262meem.jpg', 1),
(11, 'Afzar Al Munem', 'Ali Akbar ', 'Male', '1997-07-08', 'A-', 60, 'nazat@gmail.com', 'Railway road, dorgapara, Akbar monzil, natore thana sadar, Natore.', 'Natore', '6421', 'Rajshahi', 'Bangladesh', '01742156398', '01742156398', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/984nazat.jpg', 1),
(12, 'Ahmed Zahin Akif ', 'Jobbar Ahmed ', 'Male', '1997-02-14', 'AB-', 63, 'akif@gmail.com', 'Boro shah nagar road 2, house 13,Noakhali city.', 'Noakhali', '3800', 'Chattagram', 'Bangladesh', '01415897461', '01415897461', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/215akif.jpg', 1),
(13, 'Nihal Nahyan', 'Ashikul hasan', 'Male', '1997-01-03', 'O-', 58, 'nihal@gmail.com', 'Stadium road house :15, Mirpur 10.Dhaka', 'Dhaka', '1207', 'Dhaka', 'Bangladesh', '01518963258', '01518963258', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/223nahyan.jpg', 1),
(14, 'Tasmim Urmila', 'Late Jalil Uddin', 'Female', '1996-04-13', 'A-', 57, 'urmi@gmail.com', 'Jela kollyan  road;Magura city ', 'Magura', '7600', 'Khulna', 'Bangladesh', '01318963656', '01318963656', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/118urmila.jpg', 1),
(15, 'Khalid bin Oalid', 'Khalid Ahmed ', 'Male', '1997-03-24', 'B+', 55, 'hunter@gmail.com', 'south central thana , Barisal city ', 'Barisal', '8200', 'Barisal', 'Bangladesh', '01985632145', '01985632145', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/520durjoy.jpg', 1),
(16, 'Sayeed bin Faisal ', 'Amir Faisal', 'Male', '1997-09-17', 'AB+', 70, 'sayed@gmail.com', 'jashim Uddin street, Road 3, house no: 37;Joshor.', 'Joshor', '3800', 'Khulna', 'Bangladesh', '01714897845', '01714897845', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/316sayeed.jpg', 1),
(17, 'Aolad Hossain Anna', 'Abul Bashar', 'Male', '1996-04-15', 'B+', 65, 'aolad.anna@gmail.com', 'DPHE,Adalat para,Patuakhali', 'Patuakhali', '8600', 'Barisal', 'Bangladesh', '01781351112', '01781351112', 'No', 'Nill', 'No', '0000-00-00', 'donor_image/14930087637_1931764603531280_7354237380993220608_n(1).jpg', 1),
(18, 'Khan Akash ', 'Khan Akash ', 'Male', '1992-03-06', 'AB+', 65, 'akash@gmail.com', 'sabalia ,horin daroga,Gazipur', 'Gazipur', '1900', 'Dhaka', 'Bangladesh', '01474586987', '01474586987', 'No', 'Nill', 'No', '0000-00-00', 'donor_image/477default-dp.jpg', 0),
(19, 'Ashiqul Haque Durjoy ', 'Sunny haque', 'Male', '2000-07-05', 'O+', 85, 'ashiqul@gmail.com', '01, S.C Chakrawarthy road', 'Rangpur', '5400', 'Rangpur', 'Bangladesh', '01512136985', '01512136985', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/585default-dp.jpg', 0),
(20, 'Imtiazul Sakib', 'Wasiul Hoque ', 'Male', '1997-04-16', 'A+', 56, 'sakib@gmail.com', 'MES', 'Dhaka', '1228', 'Dhaka', 'Bangladesh', '01556985698', '01556985698', 'No', 'Nill', 'No', '0000-00-00', 'donor_image/624default-dp.jpg', 0),
(22, 'Md Alamin ', ' Mohammad Jalil Mia ', 'Male', '1979-07-02', 'O-', 63, 'alamin@gmail.com', 'Medical road Jamalpur Thana, Jamalpur ', 'Jamalpur', '2000', 'Mymensingh', 'Bangladesh', '01414589632', '01414589632', 'No', 'Nill', 'No', '0000-00-00', 'donor_image/333default-dp.jpg', 0),
(23, 'Most Khadija ', 'Mohammad Rais Mia', 'Female', '1984-07-26', 'B-', 55, 'khadija@gmail.com', 'Daspara , Fenchuganj Thana', 'Fenchuganaj', '3116', 'Sylhet', 'Bangladesh', '01512458796', '01512458796', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/279female.jpg', 0),
(24, 'Kaosar Hossain Munna', 'Abul Bashar', 'Male', '1988-03-30', 'B+', 70, 'munna@gmail.com', 'Borguna board Road', 'Borguna', '8700', 'Barisal', 'Bangladesh', '01715895647', '01715895647', 'No', 'Nill', 'Yes', '0000-00-00', 'donor_image/841default-dp.jpg', 0),
(25, 'Tamim Iqbal ', 'Iqbal Khan ', 'Male', '1998-03-11', 'AB+', 70, 'iqbal@gmail.com', 'Nasirabad, Chattagram city', 'Chattagram', '4217', 'Chattagram', 'Bangladesh', '0171896584', '0171896584', 'No', 'Nill', 'No', '0000-00-00', 'donor_image/830tamim.jpg', 0),
(26, 'Sekh Hasina', 'Mujibur Rahman', 'Female', '1947-09-28', 'O+', 55, 'hasina@gov.bd', 'Hasina vobon,Dhaka', 'Dhaka', '1212', 'Dhaka', 'Bangladesh', '02586974', '02586974', 'No', 'Nill', 'No', '0000-00-00', 'donor_image/784pm-file-photo-1-edited-focus-bangla-1537087662934.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `COUNTRY_ID` int(11) NOT NULL,
  `COUNTRY_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`COUNTRY_ID`, `COUNTRY_NAME`) VALUES
(15, 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `DISTRICT_ID` int(11) NOT NULL,
  `DIVISION_ID` int(11) NOT NULL,
  `DISTRICT_NAME` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`DISTRICT_ID`, `DIVISION_ID`, `DISTRICT_NAME`) VALUES
(75, 50, 'Gazipur'),
(76, 50, 'Narayanganj'),
(78, 50, 'Dhaka'),
(79, 51, 'Joshor'),
(80, 51, 'Magura'),
(82, 51, 'Khulna'),
(83, 54, 'Rangpur'),
(84, 54, 'Dinajpur'),
(85, 54, 'Kurigram'),
(86, 55, 'Natore'),
(87, 55, 'Rajshahi'),
(88, 55, 'Bogra'),
(89, 53, 'Barisal'),
(90, 53, 'Patuakhali'),
(91, 53, 'Borguna'),
(92, 56, 'Chattagram'),
(93, 56, 'Feni'),
(94, 56, 'Noakhali'),
(95, 57, 'Moulobhibazar'),
(96, 57, 'Sylhet'),
(97, 57, 'Fenchuganaj'),
(98, 58, 'Mymensingh'),
(99, 58, 'Jamalpur');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `DIVISION_ID` int(11) NOT NULL,
  `DIVISION_NAME` varchar(150) NOT NULL,
  `COUNTRY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`DIVISION_ID`, `DIVISION_NAME`, `COUNTRY_ID`) VALUES
(50, 'Dhaka', 15),
(51, 'Khulna', 15),
(53, 'Barisal', 15),
(54, 'Rangpur', 15),
(55, 'Rajshahi', 15),
(56, 'Chattagram', 15),
(57, 'Sylhet', 15),
(58, 'Mymensingh', 15);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `CONTACT` text NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `MESSAGE` text NOT NULL,
  `STATUS` text NOT NULL,
  `LOGS` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `NAME`, `CONTACT`, `EMAIL`, `MESSAGE`, `STATUS`, `LOGS`) VALUES
(6, 'Anna', '01781351112', 'aolad.anna@gmail.com', 'Please help me.', '0', '2019-07-25 01:56:09');

-- --------------------------------------------------------

--
-- Table structure for table `request_blood`
--

CREATE TABLE `request_blood` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `GENDER` varchar(150) NOT NULL,
  `BLOOD` varchar(150) NOT NULL,
  `BUNIT` int(11) NOT NULL,
  `HOSP` text NOT NULL,
  `DISTRICT` varchar(150) NOT NULL,
  `POST_CODE` varchar(150) NOT NULL,
  `DOC` varchar(150) NOT NULL,
  `RDATE` date NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `CADDRESS` text NOT NULL,
  `EMAIL` varchar(150) NOT NULL,
  `CON1` varchar(150) NOT NULL,
  `CON2` varchar(150) NOT NULL,
  `REASON` text NOT NULL,
  `PIC` varchar(150) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `CDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_blood`
--

INSERT INTO `request_blood` (`ID`, `NAME`, `GENDER`, `BLOOD`, `BUNIT`, `HOSP`, `DISTRICT`, `POST_CODE`, `DOC`, `RDATE`, `CNAME`, `CADDRESS`, `EMAIL`, `CON1`, `CON2`, `REASON`, `PIC`, `STATUS`, `CDATE`) VALUES
(3, 'Sekh Hasina', 'Female', 'O+', 1, 'Kurmitola', 'Dhaka', '1229', 'Kibria hossain', '2019-07-31', 'Bongobondhu', 'Gopalganj', 'govt@bd.com', '025454545', '0269565514', 'Operation', 'request_image/411pm-file-photo-1-edited-focus-bangla-1537087662934.jpg', 2, '2019-07-15'),
(4, 'Sajid- bin Faisal ', 'Male', 'B+', 2, 'Appollo', 'Khulna', '9201', 'Amir faisal  ', '2019-07-31', 'Sajid- bin Faisal ', '37, khan jahan ali road Khulna, collegiate college.', 'sajidfaisal80@gmail.com', '01715698547', '01715698547', 'Denggu', 'request_image/355sajid.jpg', 1, '0000-00-00'),
(5, 'Shahrear Shawon', 'Male', 'A+', 2, 'popular', 'Bogra', '5880', 'Mohammod Noor', '2019-07-31', 'Shahrear Shawon', 'Bogra city cantonment , Bogra', 'shawon@gmail.com', '01715632145', '01715632145', 'cancer', 'request_image/14867162914_352895685643287_4450375881537355776_n.jpg', 0, '2019-07-26'),
(6, 'Sabbir Shikdar Orid', 'Male', 'AB+', 3, 'LabAid', 'Rajshahi', '6201', 'Ahmed Shikdar ', '2019-07-30', 'Sabbir Shikdar Orid', 'Rajshahi police line school area, house 24-road 12; Rajshahi              ', 'orid@gmail.com ', '01316987454', '01316987454', 'Open Heart', 'request_image/348orid.jpg', 2, '2019-07-26'),
(7, 'Sumya Meem', 'Female', 'B-', 1, 'Squre', 'Narayanganj', '2011', 'Zamal Hossain', '2019-09-03', 'Sumya Meem', 'Narayanganj city, , memorial lane.house 11, road: 08', 'Sumya Meem', '01715879632', '01715879632', 'operation', 'request_image/234meem.jpg', 1, '0000-00-00'),
(8, 'Afzar Al Munem', 'Male', 'A-', 2, 'CMH', 'Natore', '6421', 'Ali Akbar ', '2019-09-01', 'Ali Akbar ', 'Railway road, dorgapara, Akbar monzil, natore thana sadar, Natore', 'nazat@gmail.com', '01478965874', '01478965874', 'Cancer', 'request_image/995nazat.jpg', 0, '0000-00-00'),
(9, 'Ahmed Zahin Akif ', 'Male', 'AB-', 3, 'Anwer Khan', 'Noakhali', '3800', 'Jobbar Ahmed ', '2019-07-31', 'Jobbar Ahmed ', 'Boro shah nagar road 2, house 13,Noakhali ', 'akif@gmail.com', '01512458796', '01512458796', 'Byke accident', 'request_image/313akif.jpg', 2, '2019-07-25'),
(10, 'Nihal Nahyan', 'Male', 'O-', 5, 'Kurmitola', 'Dhaka', '1207', 'Ashikul hasan', '2019-07-29', 'Ashikul hasan', 'Stadium road house :15, Mirpur 10.Dhaka', 'nihal@gmail.com', '01714895478', '01714895478', 'Car accident', 'request_image/965nahyan.jpg', 0, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`DONOR_ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`COUNTRY_ID`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`DISTRICT_ID`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`DIVISION_ID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `request_blood`
--
ALTER TABLE `request_blood`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `DONOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `DISTRICT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `DIVISION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `request_blood`
--
ALTER TABLE `request_blood`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
