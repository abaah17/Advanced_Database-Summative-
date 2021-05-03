-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2021 at 11:06 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advanced_db[summative]`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `idassignment` int(11) NOT NULL,
  `idmodule` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `quiz` tinyint(1) NOT NULL,
  `summative` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`idassignment`, `idmodule`, `name`, `quiz`, `summative`) VALUES
(1, 1, 'Sorting', 1, 0),
(2, 2, 'Literature Review', 1, 0),
(3, 3, 'Social Media', 1, 0),
(4, 4, 'Ohms Law', 1, 0),
(5, 5, 'Organic Matter', 1, 0),
(6, 6, 'Muscle Energy', 1, 0),
(7, 7, 'Muscle', 1, 0),
(8, 8, 'Branding', 0, 1),
(9, 9, 'Supply Change', 0, 1),
(10, 10, 'Disruption of Hunting ', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `idattendance` int(11) NOT NULL,
  `idstudent` int(11) NOT NULL,
  `idsession` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `idcourse` int(11) NOT NULL,
  `iddegree` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`idcourse`, `iddegree`, `name`) VALUES
(1, 1, 'Computer Science 101'),
(2, 2, 'Global Challenges 101'),
(3, 3, 'IBT 101'),
(4, 4, 'Electricals 101'),
(5, 5, 'Chemistry 101'),
(6, 6, 'Physics 101'),
(7, 7, 'PE 101'),
(8, 8, 'Fashion 101'),
(9, 9, 'Economics 101'),
(10, 10, 'Conservation 101');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `iddegree` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`iddegree`, `name`) VALUES
(1, 'Computer Science'),
(2, 'Global Challenges'),
(3, 'IBT'),
(4, 'Electricals'),
(5, 'Chemistry'),
(6, 'Physics'),
(7, 'PE'),
(8, 'Fashion'),
(9, 'Economics'),
(10, 'Conservation');

-- --------------------------------------------------------

--
-- Table structure for table `facilitator`
--

CREATE TABLE `facilitator` (
  `idfacilitator` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facilitator`
--

INSERT INTO `facilitator` (`idfacilitator`, `first_name`, `last_name`, `sex`, `telephone`, `email`, `dob`, `nationality`) VALUES
(1, 'Anthonyf1', 'Bah', 'Male', 187599146, 'f1@alu.com', '1998-11-27', 'Nigeria'),
(2, 'Kwabenaf2', 'Bahi', 'Male', 287599146, 'f2@alu.com', '1998-11-27', 'Ghana'),
(3, 'Kwamef3', 'Bahe', 'Male', 387599146, 'f3@alu.com', '1998-11-27', 'Togo'),
(4, 'Yawf4', 'Baha', 'Male', 487599146, 'f4@alu.com', '1998-11-27', 'America'),
(5, 'Yanaf5', 'Bah', 'Female', 587599146, 'f5@alu.com', '1998-11-27', 'Brazil'),
(6, 'Brodef6', 'Yes', 'Female', 687599146, 'f6@alu.com', '1998-11-27', 'Congo'),
(7, 'Sistaf7', 'Jou', 'Female', 787599146, 'f7@alu.com', '1998-11-27', 'Rwanda'),
(8, 'Mommyf8', 'Koa', 'Female', 887599146, 'f8@alu.com', '1998-11-27', 'Kenya'),
(9, 'Sheaf9', 'Koaaw', 'Male', 987599146, 'f9@alu.com', '1998-11-27', 'Sudan'),
(10, 'Amberf10', 'Koaawi', 'Male', 997599146, 'f10@alu.com', '1998-11-27', 'Egypt');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `idmodule` int(11) NOT NULL,
  `idcourse` int(11) NOT NULL,
  `idfacilitator` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`idmodule`, `idcourse`, `idfacilitator`, `name`, `description`) VALUES
(1, 1, 1, 'Programming 1', 'Coding'),
(2, 2, 2, 'Education', 'Research'),
(3, 3, 3, 'Marketing', 'Digital'),
(4, 4, 4, 'Conductors', 'Ohms'),
(5, 5, 5, 'Chemicals', 'Alkanoids'),
(6, 6, 6, 'Energy', 'Motion'),
(7, 7, 7, 'Running Sports', 'Football'),
(8, 8, 8, 'Fashion 23', 'Streetwear'),
(9, 9, 9, 'Supply', 'Demand'),
(10, 10, 10, 'Sustainability', 'Hunting');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `idsession` int(11) NOT NULL,
  `idmodule` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`idsession`, `idmodule`, `date`) VALUES
(1, 1, '2021-10-01'),
(2, 2, '2021-10-02'),
(3, 3, '2021-10-03'),
(4, 4, '2021-10-04'),
(5, 5, '2021-10-05'),
(6, 6, '2021-10-06'),
(7, 7, '2021-10-07'),
(8, 8, '2021-10-08'),
(9, 9, '2021-10-09'),
(10, 10, '2021-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `idstudent` int(11) NOT NULL,
  `idcourse` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`idstudent`, `idcourse`, `first_name`, `last_name`, `age`, `sex`, `telephone`, `email`, `nationality`, `dob`) VALUES
(1, 1, 'Anthony', 'Baah', 22, 'Male', 787599147, 'abaah17@alu.com', 'Ghanaian', '1998-10-27'),
(2, 2, 'Thony', 'Baah', 22, 'Male', 787599141, 'baah17@alu.com', 'Ghanaian', '1998-10-27'),
(3, 3, 'Hony', 'Tah', 22, 'Male', 787599142, 'aah17@alu.com', 'Ghanaian', '1998-10-27'),
(4, 4, 'Soro', 'Kolo', 22, 'Male', 487599146, 'sk17@alu.com', 'Nigeria', '1998-11-27'),
(5, 5, 'Outt', 'Bets', 22, 'Male', 467599146, 'bet17@alu.com', 'Liberia', '1998-11-27'),
(6, 6, 'Linda', 'Kolo', 22, 'Female', 787999146, 'linda28@alu.com', 'Nigeria', '1998-12-27'),
(7, 7, 'Timi', 'Desh', 22, 'Female', 887599146, 'desh7@alu.com', 'Nigeria', '1998-04-27'),
(8, 8, 'Mommy', 'Baah', 22, 'Female', 987599146, 'mom6@alu.com', 'SouthAfrica', '1998-01-27'),
(9, 9, 'Sinnah', 'Lamin', 22, 'Female', 787599646, 'sina18@alu.com', 'Mali', '1998-07-27'),
(10, 10, 'Gugu', 'Lethu', 22, 'Female', 787599946, 'gugu7@alu.com', 'Lesotho', '1998-11-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`idassignment`),
  ADD UNIQUE KEY `module` (`idmodule`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`idattendance`),
  ADD UNIQUE KEY `studentId` (`idstudent`),
  ADD UNIQUE KEY `sessionId` (`idsession`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`idcourse`),
  ADD KEY `iddegree` (`iddegree`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`iddegree`);

--
-- Indexes for table `facilitator`
--
ALTER TABLE `facilitator`
  ADD PRIMARY KEY (`idfacilitator`),
  ADD UNIQUE KEY `phone` (`telephone`),
  ADD KEY `email_2` (`email`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`idmodule`),
  ADD KEY `idcourse` (`idcourse`),
  ADD KEY `idfacilitator` (`idfacilitator`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`idsession`),
  ADD UNIQUE KEY `module` (`idmodule`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`idstudent`),
  ADD UNIQUE KEY `telephone` (`telephone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idcourse` (`idcourse`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `idassignment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `idattendance` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `idcourse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `degree`
--
ALTER TABLE `degree`
  MODIFY `iddegree` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `facilitator`
--
ALTER TABLE `facilitator`
  MODIFY `idfacilitator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `idmodule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `idsession` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `idstudent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `idmoudle` FOREIGN KEY (`idmodule`) REFERENCES `module` (`idmodule`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `idsession` FOREIGN KEY (`idsession`) REFERENCES `session` (`idsession`),
  ADD CONSTRAINT `idstudent` FOREIGN KEY (`idstudent`) REFERENCES `student` (`idstudent`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `iddegree` FOREIGN KEY (`iddegree`) REFERENCES `degree` (`iddegree`);

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `idcourse` FOREIGN KEY (`idcourse`) REFERENCES `course` (`idcourse`),
  ADD CONSTRAINT `idfacilitator` FOREIGN KEY (`idfacilitator`) REFERENCES `facilitator` (`idfacilitator`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `idmodule` FOREIGN KEY (`idmodule`) REFERENCES `module` (`idmodule`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `courseId` FOREIGN KEY (`idcourse`) REFERENCES `course` (`idcourse`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
