-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bookid` varchar(10) NOT NULL,
  `bookname` varchar(50) DEFAULT NULL,
  `authorname` varchar(30) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `semester` varchar(6) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('b01','Lets read C with us','R K Sinha','C','1','24'),('b02','Let us Java ','PC mishra','java','3','14');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuebook`
--

DROP TABLE IF EXISTS `issuebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuebook` (
  `bookid` varchar(10) NOT NULL,
  `bookname` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `registration` varchar(50) NOT NULL,
  `studentname` varchar(25) DEFAULT NULL,
  `classroll` varchar(20) DEFAULT NULL,
  `issuedate` varchar(15) DEFAULT NULL,
  `returndate` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`bookid`,`registration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuebook`
--

LOCK TABLES `issuebook` WRITE;
/*!40000 ALTER TABLE `issuebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `issuebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarian` (
  `name` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(80) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `securityQuestion` varchar(50) DEFAULT NULL,
  `answer` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarian`
--

LOCK TABLES `librarian` WRITE;
/*!40000 ALTER TABLE `librarian` DISABLE KEYS */;
INSERT INTO `librarian` VALUES ('Priy Ranjan','p@gmail.com','45751424','purnea','p@123','what is your nick name?','saulty'),('Priy','p@gmail.com','564654135','wdkjwdo','12345','what is your nick name?','Saulty'),('Priy Ranjan','Saulty@gmail.com','7250106308','Purnea','123','what is your name','saulty'),('Priy','priy@gmail.com','758245412','purnea','123','what is your phone name','redmi 10s'),('saulty kutwa','priy@gmail.com','87654356','Purnea,bihar','admin','what is your phone name?','mi');
/*!40000 ALTER TABLE `librarian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `name` varchar(25) DEFAULT NULL,
  `classroll` varchar(30) DEFAULT NULL,
  `universityroll` varchar(30) DEFAULT NULL,
  `registration` varchar(50) NOT NULL,
  `session` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `aadhar` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`registration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('Rohan','11','1122','1811','18-21','Male','457265','758436985','purnea'),('Raja','15','1123','RA2232241030051','22-24','Male','7250106308','758245129652','purnea'),('akshay anand','1122','112','RA22322413','22-24','Male','4553365','545444','Purnea');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 15:49:30
