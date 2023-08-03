-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: asrs
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course_details`
--

DROP TABLE IF EXISTS `course_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_details` (
  `CourseId` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(30) DEFAULT NULL,
  `Duration_weeks` int DEFAULT NULL,
  `Starts` varchar(30) DEFAULT NULL,
  `Ends` varchar(30) DEFAULT NULL,
  `Students_Capacity` int DEFAULT NULL,
  `Students_Enrolled` int DEFAULT NULL,
  `Vacancy` int DEFAULT NULL,
  PRIMARY KEY (`CourseId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_details`
--

LOCK TABLES `course_details` WRITE;
/*!40000 ALTER TABLE `course_details` DISABLE KEYS */;
INSERT INTO `course_details` VALUES (1,'CORE JAVA',4,'15/01/2014','12/02/2014',60,1,59),(2,'JEE 7',4,'17/01/2014','14/02/2014',60,0,60),(3,'C',3,'15/01/2014','5/02/2014',50,0,50),(4,'ANDROID',3,'20/01/2014','10/02/2014',40,0,40),(5,'C++',3,'17/01/2014','7/02/2014',40,0,40),(6,'PHP',3,'17/01/2014','7.02.2014',40,0,40);
/*!40000 ALTER TABLE `course_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_courses`
--

DROP TABLE IF EXISTS `student_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_courses` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Student_Id` varchar(10) NOT NULL,
  `Course` varchar(30) DEFAULT NULL,
  `Course_Id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Course_Id` (`Course_Id`),
  KEY `Student_Id` (`Student_Id`),
  CONSTRAINT `student_courses_ibfk_1` FOREIGN KEY (`Course_Id`) REFERENCES `course_details` (`CourseId`),
  CONSTRAINT `student_courses_ibfk_2` FOREIGN KEY (`Student_Id`) REFERENCES `student_details` (`Unique_Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_courses`
--

LOCK TABLES `student_courses` WRITE;
/*!40000 ALTER TABLE `student_courses` DISABLE KEYS */;
INSERT INTO `student_courses` VALUES (1,'73711','CORE JAVA',1);
/*!40000 ALTER TABLE `student_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_details` (
  `Id` int DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `Pincode` varchar(10) DEFAULT NULL,
  `Contact` varchar(10) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `Birthdate` varchar(10) DEFAULT NULL,
  `Unique_Id` varchar(10) NOT NULL,
  PRIMARY KEY (`Unique_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES (1,'Kishor Kadam','Bhalawani,Ahmednagar,Maharashtra.','414103','7475767371','kadamk33@gmail.com','M','7/2/1990','73711');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_education`
--

DROP TABLE IF EXISTS `student_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_education` (
  `Student_Id` varchar(10) NOT NULL,
  `Degree` varchar(10) DEFAULT NULL,
  `CGPA` varchar(5) DEFAULT NULL,
  `Stream` varchar(100) DEFAULT NULL,
  KEY `Student_Id` (`Student_Id`),
  CONSTRAINT `student_education_ibfk_1` FOREIGN KEY (`Student_Id`) REFERENCES `student_details` (`Unique_Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_education`
--

LOCK TABLES `student_education` WRITE;
/*!40000 ALTER TABLE `student_education` DISABLE KEYS */;
INSERT INTO `student_education` VALUES ('73711','MCA','9.7','Information Technology');
/*!40000 ALTER TABLE `student_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t1` (
  `Id` int DEFAULT NULL,
  `Designation` varchar(10) DEFAULT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t1`
--

LOCK TABLES `t1` WRITE;
/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` VALUES (1,'Councilor','Coun101','c101'),(2,'Councilor','Coun102','c102'),(3,'Registrar','Reg191','reg1');
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-23 21:53:24
