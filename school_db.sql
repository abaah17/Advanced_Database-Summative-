-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 23, 2021 at 10:52 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `idattendance` int(11) NOT NULL,
  `student-id` int(11) NOT NULL,
  `Attended` tinyint(4) NOT NULL,
  `date` date NOT NULL,
  `levelid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`idattendance`, `student-id`, `Attended`, `date`, `levelid`) VALUES
(1, 1, 1, '2020-11-11', 1),
(2, 2, 1, '2020-11-11', 1),
(3, 3, 1, '2020-11-11', 1),
(4, 4, 1, '2020-11-11', 1),
(5, 5, 0, '2020-11-11', 1),
(6, 6, 1, '2020-11-11', 1),
(7, 7, 1, '2020-11-11', 1),
(8, 8, 0, '2020-11-11', 1),
(9, 9, 0, '2020-11-11', 1),
(10, 10, 1, '2020-11-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `idgrade` int(11) NOT NULL,
  `levelid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `observation` varchar(45) NOT NULL,
  `staff` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `student-id` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `academic_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`idgrade`, `levelid`, `name`, `observation`, `staff`, `grade`, `subject_id`, `student-id`, `semester`, `academic_year`) VALUES
(1, 1, 'grade1', 'good', 1, 15, 1, 1, 1, 2020),
(2, 1, 'grade2', 'good', 1, 15, 1, 1, 1, 2020),
(3, 1, 'grade3', 'good', 1, 15, 1, 2, 1, 2020),
(4, 1, 'grade4', 'bad', 1, 9, 1, 2, 1, 2020),
(5, 1, 'grade5', 'excellent', 1, 18, 1, 3, 1, 2020),
(6, 1, 'grade6', 'mediocre', 1, 3, 1, 3, 1, 2020),
(7, 1, 'grade7', 'good', 1, 16, 1, 4, 1, 2020),
(8, 1, 'grade8', 'good', 1, 14, 1, 4, 1, 2020),
(9, 1, 'grade9', 'bad', 1, 5, 1, 5, 1, 2020),
(10, 1, 'grade10', 'average', 1, 10, 1, 5, 1, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `idlevel` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `head` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`idlevel`, `name`, `head`) VALUES
(1, 'level1', 'kolo'),
(2, 'level2', 'kolo'),
(3, 'level3', 'kolo'),
(4, 'level4', 'kolo'),
(5, 'level5', 'kolo'),
(6, 'level6', 'soro'),
(7, 'level7', 'soro'),
(8, 'level8', 'soro'),
(9, 'level9', 'soro'),
(10, 'level10', 'soro');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `idmaterial` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`idmaterial`, `Name`, `room_id`) VALUES
(1, 'room_table', 1),
(2, 'room_table', 2),
(3, 'room_table', 3),
(4, 'room_table', 4),
(5, 'room_table', 4),
(6, 'duster', 4),
(7, 'pen', 3),
(8, 'notebooks', 3),
(9, 'notebooks', 2),
(10, 'book', 7);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `idrooms` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`idrooms`, `Name`) VALUES
(1, 'Abidjan'),
(2, 'Bouake'),
(3, 'Yakro'),
(4, 'man'),
(5, 'san-pedro'),
(6, 'Korhogo'),
(7, 'kigali'),
(8, 'butare'),
(9, 'paris'),
(10, 'Douala');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `idstaff` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `LastNameMother` varchar(45) NOT NULL,
  `DateOfBirth` varchar(45) NOT NULL,
  `PlaceOfBirth` varchar(45) NOT NULL,
  `LastNameFather` varchar(45) NOT NULL,
  `Sex` varchar(45) NOT NULL,
  `Telephone` varchar(45) NOT NULL,
  `MobilePhone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `stafftype` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`idstaff`, `FirstName`, `LastName`, `LastNameMother`, `DateOfBirth`, `PlaceOfBirth`, `LastNameFather`, `Sex`, `Telephone`, `MobilePhone`, `email`, `stafftype`) VALUES
(1, 'check', 'Ouattara', 'Sella', '01/01/1990', 'Abidjan', 'Ruth', 'Male', '1451151515151', '525252521551515', 'check@alueducation', 'CI facilitator'),
(2, 'Olivier', 'umwwe', 'Botwe', '02/02/1995', 'Oume', 'ELla', 'Male', '1451151515151', '525252521551515', 'olivier@alueducation', 'EL facilitator'),
(3, 'Aicha', 'Sella', 'Anthony', '03/03/1990', 'Paris', 'Irene', 'Male', '1451151515151', '525252521551515', 'Aicha@alueducation', 'EL facilitator'),
(4, 'Ruth', 'Assie', 'yvette', '04/04/1980', 'kodi', 'Amande', 'Female', '1451151515151', '525252521551515', 'ruth@alueducation', 'EL facilitator'),
(5, 'Lelait', 'Largue', 'Ariette', '05/05/1990', 'Korhogo', 'Rita', 'Female', '1451151515151', '525252521551515', 'lelait@alueducation', 'EL facilitator'),
(6, 'Irie', 'paul', 'Sella', '06/06/1985', 'Man', 'Tano', 'Male', '1451151515151', '525252521551515', 'irie@alueducation', 'CI facilitator'),
(7, 'Sauvage', 'Laurelle', 'levillage', '07/07/1993', 'Oume', 'bayo', 'Male', '1451151515151', '525252521551515', 'savage@alueducation', 'CI facilitator'),
(8, 'Lalana', 'Satara', 'aprilgt', '08/08/1990', 'Abidjan', 'Laurelle', 'Female', '1451151515151', '525252521551515', 'lalana@alueducation', 'EP facilitator'),
(9, 'Ima lala', 'Jesaispas', 'Sylla', '09/09/1990', 'Oume', 'Victoire', 'Male', '1451151515151', '525252521551515', 'ima@alueducation', 'EP facilitator'),
(10, 'le connard', 'salala', 'Aurielle', '10/10/1997', 'Abidjan', 'tutu', 'Male', '1451151515151', '525252521551515', 'le@alueducation', 'EP facilitator');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `idstudent` int(11) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Fist Name` varchar(45) NOT NULL,
  `LastNameFather` varchar(45) NOT NULL,
  `LastNameMother` varchar(45) NOT NULL,
  `DateOfBirth` varchar(45) NOT NULL,
  `PlaceOfBirth` varchar(45) NOT NULL,
  `Sex` varchar(45) NOT NULL,
  `Telephone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `FatherMobilePhone` varchar(45) NOT NULL,
  `MotherMobilePhone` varchar(45) NOT NULL,
  `FatherProfession` varchar(45) NOT NULL,
  `MotherProfession` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`idstudent`, `LastName`, `Fist Name`, `LastNameFather`, `LastNameMother`, `DateOfBirth`, `PlaceOfBirth`, `Sex`, `Telephone`, `email`, `FatherMobilePhone`, `MotherMobilePhone`, `FatherProfession`, `MotherProfession`) VALUES
(1, 'Soro', 'Kolo', 'Angelo', 'Ana', '03/06/1999', 'Ahouya', 'Male', '2502522524552674', 'soro@alustudent.com', '225845145245', '52515154151', 'Teacher', 'Teacher'),
(2, 'Paul', 'hie', 'Rock', 'Rachelle', '05/05/1999', 'Yakro', 'Male', '2502522524552660', 'paul@alustudent.com', '225845145245', '52515154151', 'Lawyer', 'Teacher'),
(3, 'Betsa', 'Ouattra', 'Elisee', 'Sahara', '01/05/1999', 'Libreville', 'Male', '2502522524552622', 'betsa@alustudent.com', '225845145245', '52515154151', 'FruitSeller', 'Doctor'),
(4, 'Baah', 'Anthony', 'Cedric', 'Mascou', '05/02/1999', 'Bingerville', 'Female', '2502522524552620', 'baah@alustudent.com', '225845145245', '52515154151', 'Pilot', 'Restaurant Owner'),
(5, 'Yapo', 'Ferlux', 'Atto', 'Opoukou', '08/02/1998', 'Sinfra', 'Female', '2502522524552630', 'yapo@@alustudent.com', '225845145245', '52515154151', 'Security Agent', 'Seller'),
(6, 'Yves', 'Hallan', 'Sylla', 'Yacine', '07/07/1998', 'Bouake', 'Female', '250758584586621', 'yves@alustudent.com', '225845145245', '52515154151', 'Architech', 'HR'),
(7, 'Bayo', 'Rita', 'Allavo', 'Aude', '01/01/2000', 'Man', 'Male', '2507585845866254', 'bayo@alustudent.com', '225845145245', '52515154151', 'Driver', 'Seller'),
(8, 'Elvis', 'Elvis', 'Sidoine', 'Affoue', '12/12/1997', 'Oume', 'Male', '2507585825486621', 'elvis@alustudent.com', '225845145245', '52515154151', 'Doctor', 'Doctor'),
(9, 'Ruth', 'Assie', 'LeBeau', 'Eyve', '12/1/1999', 'Ouaga', 'Male', '2507585845866521', 'ruth@alustudent.com', '225845145245', '52515154151', 'Seller', 'Seller'),
(10, 'Ruth', 'Vanilla', 'Ole', 'Manu', '12/12/1999', 'Oume', 'Male', '2507585845862546', 'ruth2@alustudent.com', '225845145245', '52515154151', 'Seller', 'Seller');

-- --------------------------------------------------------

--
-- Table structure for table `student_score`
--

CREATE TABLE `student_score` (
  `idstudent_score` int(11) NOT NULL,
  `IDstudent` int(11) NOT NULL,
  `IDSubject` int(11) NOT NULL,
  `FirstTrimester` int(11) NOT NULL,
  `SecondTrimester` int(11) NOT NULL,
  `ThirdTrimester` int(11) NOT NULL,
  `FinalGrade` int(11) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_score`
--

INSERT INTO `student_score` (`idstudent_score`, `IDstudent`, `IDSubject`, `FirstTrimester`, `SecondTrimester`, `ThirdTrimester`, `FinalGrade`, `Year`) VALUES
(1, 1, 1, 15, 15, 15, 15, 2020),
(2, 2, 1, 17, 17, 17, 17, 2020),
(3, 3, 1, 16, 16, 16, 16, 2020),
(4, 4, 1, 15, 15, 15, 15, 2020),
(5, 5, 1, 14, 14, 14, 14, 2020),
(6, 6, 1, 15, 15, 15, 15, 2020),
(7, 7, 1, 16, 16, 16, 16, 2020),
(8, 8, 1, 17, 17, 17, 17, 2020),
(9, 9, 1, 20, 20, 20, 20, 2020),
(10, 10, 1, 19, 19, 19, 19, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `idsubject` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `idrooms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`idsubject`, `Name`, `description`, `idrooms`) VALUES
(1, 'data structure and algo', 'data structure and algorithm', 1),
(2, 'Communicating for impact', 'com for impact', 2),
(3, 'data and decision', 'dd to learn to use data', 3),
(4, 'entrepreuneurship', 'make students more entr', 4),
(5, 'project', 'supporting entr', 5),
(6, 'advanced database', 'more database', 6),
(7, 'advanced algorithm', 'more algo', 6),
(8, 'data mining', 'data mining', 6),
(9, 'machine learning', 'machine learning', 7),
(10, 'Capstone project', 'capstone', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`idattendance`),
  ADD KEY `student_id_idx` (`student-id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`idgrade`),
  ADD KEY `fk_grade_1_idx` (`levelid`),
  ADD KEY `fk_grade_2_idx` (`staff`),
  ADD KEY `student-id_idx` (`student-id`),
  ADD KEY `subject-id` (`subject_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`idlevel`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`idmaterial`),
  ADD KEY `fk_material_1_idx` (`room_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`idrooms`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`idstaff`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`idstudent`);

--
-- Indexes for table `student_score`
--
ALTER TABLE `student_score`
  ADD PRIMARY KEY (`idstudent_score`),
  ADD KEY `subjectid_idx` (`IDSubject`),
  ADD KEY `studentid_idx` (`IDstudent`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`idsubject`),
  ADD KEY `room_id_idx` (`idrooms`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `idgrade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `idlevel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `idmaterial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `idrooms` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `idstaff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `idstudent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_score`
--
ALTER TABLE `student_score`
  MODIFY `idstudent_score` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `idsubject` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `student_id` FOREIGN KEY (`student-id`) REFERENCES `student` (`idstudent`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `fk_grade_1` FOREIGN KEY (`levelid`) REFERENCES `level` (`idlevel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_grade_2` FOREIGN KEY (`staff`) REFERENCES `staff` (`idstaff`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `student-id` FOREIGN KEY (`student-id`) REFERENCES `student` (`idstudent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subject-id` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`idsubject`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `fk_material_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`idrooms`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_score`
--
ALTER TABLE `student_score`
  ADD CONSTRAINT `studentid` FOREIGN KEY (`IDstudent`) REFERENCES `student` (`idstudent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `subjectid` FOREIGN KEY (`IDSubject`) REFERENCES `subjects` (`idsubject`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `room_id` FOREIGN KEY (`idrooms`) REFERENCES `rooms` (`idrooms`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
