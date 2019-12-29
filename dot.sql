-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: dot
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `EmployeeName` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` bigint(20) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `DOJ` date DEFAULT NULL,
  `Skillset` varchar(1000) DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `EmployeeImage` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1001,1,'Justin Fernandes','HOUSE NO 49,WIRELESS COLONY',8975845669,'justin@gmail.com','1995-07-22','2018-04-15','Java, MEAN stack, C++,AWP',80000,'~/Images/emp1.jpg'),(1010,1,'Natvarsinh Parmar','HOUSE NO 49,WIRELESS COLONY, Aundh',9595571687,'ashu.a.ece90@gmail.com','1996-05-04','2018-04-15','Java, MEAN stack, C++,AWP',800000,'~/Images/pro.png'),(1111,2,'Pritesh Kumar','HOUSE NO 49,WIRELESS COLONY',8975845669,'tuneinshivam@gmail.com','1995-06-08','2019-12-12','Java, MEAN stack, C++,AWP',40000,'~/Images/emp1.jpg'),(1200,1,'Rahul','House no 17, Mahalaxmi Appartments, Wakad',7878787878,'rahul@gmail.com','1996-05-04','2019-12-12','Java, MEAN stack, C++,AWP',80000,'~/Images/pro.png'),(1205,1,'Tansukh','HOUSE NO 49,WIRELESS COLONY',8975845669,'tansukh@gmail.com','1996-02-15','2018-04-15','Java, MEAN stack, C++,AWP',80000,'~/Images/emp1.jpg'),(1211,2,'Shreyash Girdhar','H.No.69 Azad nagar, Kothrud',8989898998,'shreyashg@gmail.com','2018-04-04','1993-12-15','Java, MEAN stack, C++,AWP',45000,'~/Images/emp1.jpg'),(1212,2,'Abhishek Kadam','Hinjawadi, Pune',7887878787,'abhi.shake@gmail.cpom','1995-06-08','2018-04-15','Java, MEAN stack, C++,AWP',40000,'~/Images/emp1.jpg'),(1299,1,'Pruthvi','Tech Mahindra Pvt Ltd, RGIT , Hinjewadi phase 3',9595571687,'p@gmail.com','1996-05-04','2019-12-12','Java, MEAN stack, C++,AWP',80000,'~/Images/pro.png');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventdetails`
--

DROP TABLE IF EXISTS `eventdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventdetails` (
  `Eventcode` varchar(30) DEFAULT NULL,
  `EventID` int(11) NOT NULL,
  `Eventname` varchar(20) DEFAULT NULL,
  `EventDescription` varchar(500) DEFAULT NULL,
  `StartDate` varchar(20) DEFAULT NULL,
  `EndDate` varchar(20) DEFAULT NULL,
  `Venue` varchar(100) DEFAULT NULL,
  `EventFees` double DEFAULT NULL,
  `EventStatus` varchar(10) DEFAULT NULL,
  `Eventlogo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventdetails`
--

LOCK TABLES `eventdetails` WRITE;
/*!40000 ALTER TABLE `eventdetails` DISABLE KEYS */;
INSERT INTO `eventdetails` VALUES ('angularjs123',12,'Angular','learn angular','1996/09/09','1997/08/09','Seminar room',123,'open','System.Web.HttpPostedFile'),('Angular8',1001,'Angular 8 ','Angular 8 beginner course','2019/12/12','2019/12/14','Seminar Room 2',400,'open','~/Images/pro.png'),('Spring0.1',1011,'Spring 2.0','Spring tutorial','2019/12/25','2019/12/25','Seminar room3',100,'open','~/Images/slider2.jpg'),('REACT JS101',1110,'REACT JS COURSE','REACT JS beginner course','2019/09/12','2019/09/13','Seminar room',1400,'open','~/Images/facebook_profile_image.png'),('JAVAII',1111,'Advance jAVA','Advance java beginner course','1996/09/09','1997/08/09','Seminar room',200,'123',''),('Hibernate01',1200,'Hiberante ORM','Hibernate beginner course','2019/12/24','2019/12/30','Floor1',2000,'open','~/Images/logo_transparent.png'),('Ms.Net1M',1234,'Ms.Net','Ms.net begginer course','2019/21/12','2019/23/12',' 3rd floor',123,'open','~/Images/download.jpg'),('java123',12345,'Java','Advance java beginner course','2019/09/12','2019/09/13','Seminar room',400,'open','~/Images/emp1.jpg');
/*!40000 ALTER TABLE `eventdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventsubscription`
--

DROP TABLE IF EXISTS `eventsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventsubscription` (
  `SubscriptionID` int(11) NOT NULL AUTO_INCREMENT,
  `EventID` int(11) DEFAULT NULL,
  `EmployeeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`SubscriptionID`),
  KEY `EventID` (`EventID`),
  KEY `EmployeeId` (`EmployeeId`),
  CONSTRAINT `eventsubscription_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `event` (`EventID`),
  CONSTRAINT `eventsubscription_ibfk_2` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventsubscription`
--

LOCK TABLES `eventsubscription` WRITE;
/*!40000 ALTER TABLE `eventsubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logincredentials`
--

DROP TABLE IF EXISTS `logincredentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logincredentials` (
  `EmployeeID` int(11) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(45) DEFAULT NULL,
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `logincredentials_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logincredentials`
--

LOCK TABLES `logincredentials` WRITE;
/*!40000 ALTER TABLE `logincredentials` DISABLE KEYS */;
INSERT INTO `logincredentials` VALUES (1010,'123456','HR'),(1111,'9876','Developer');
/*!40000 ALTER TABLE `logincredentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `SubscriptionID` int(11) NOT NULL AUTO_INCREMENT,
  `EventID` int(11) DEFAULT NULL,
  `EmployeeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`SubscriptionID`),
  KEY `EventID` (`EventID`),
  KEY `EmployeeId` (`EmployeeId`),
  CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`EventID`) REFERENCES `eventdetails` (`EventID`),
  CONSTRAINT `subscription_ibfk_2` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,1200,1010),(2,1011,1010),(3,1111,NULL),(4,1001,1111),(5,12,1111),(6,12,1111),(7,12345,1010);
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-29 18:52:53
