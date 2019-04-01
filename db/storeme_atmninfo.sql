-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: storeme
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
-- Table structure for table `atmninfo`
--

DROP TABLE IF EXISTS `atmninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atmninfo` (
  `idatminfo` int(11) NOT NULL AUTO_INCREMENT,
  `atmplacement` char(10) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `sku` varchar(45) DEFAULT NULL,
  `consignee` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `date_shipped` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `waybill_no` varchar(45) DEFAULT NULL,
  `activity` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `received_by` varchar(45) DEFAULT NULL,
  `time_received` varchar(45) DEFAULT NULL,
  `idatm` int(11) DEFAULT NULL,
  `vendorCheckVerified` int(4) DEFAULT '0',
  `deliveryCheckVerified` int(4) DEFAULT '0',
  `warehouseCheckVerified` int(4) DEFAULT '0',
  `lastEdited` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idatminfo`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atmninfo`
--

LOCK TABLES `atmninfo` WRITE;
/*!40000 ALTER TABLE `atmninfo` DISABLE KEYS */;
INSERT INTO `atmninfo` VALUES (3,NULL,'Metro Manila','09-BPI-CC45','Bruce','01/01/2018','','12:00:00','52342','','Completed','sa','12:00:00 AM',3,NULL,NULL,NULL,NULL),(24,'B','asdfas','55-NBI-8888','Justin','2019-03-15',NULL,'01:00','30','dasdsa\r\n','Returned',NULL,NULL,24,NULL,NULL,NULL,NULL),(25,'A','asf','34-BPI-1231','Edward Rainier Curugan','2019-03-15','2019-03-08','01:00','1','dasdsa','Completed','sasd','01:00',25,NULL,NULL,NULL,NULL),(27,'H','sq','34-BPI-1231','Edward Rainier Curugan','2019-01-01',NULL,'01:00','1','sa','InProgress',NULL,NULL,27,NULL,NULL,NULL,NULL),(28,'B',NULL,NULL,NULL,NULL,'2019-03-15',NULL,NULL,'RF','On Hold','fa','01:00 PM',NULL,NULL,NULL,NULL,NULL),(29,'E',NULL,NULL,NULL,NULL,'2019-03-27',NULL,NULL,'SW','Waiting','SW','01:00 PM',NULL,NULL,NULL,NULL,NULL),(33,'F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'A','qe','qew','rqr','2019-03-06',NULL,'02:00','1','rw','InProgress',NULL,NULL,34,NULL,NULL,NULL,NULL),(35,'C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'A','qwe','asdf','Edward Rainier Curugan','2019-01-01','','13:00','1','','Completed','asd','01:00 PM',38,NULL,NULL,NULL,NULL),(39,NULL,'asf','34-BPI-1231','Edward Rainier Curugan','2019-01-02','2019-03-26','09:10 PM','1','sss','Completed','edde','01:00 PM',39,NULL,NULL,NULL,NULL),(40,'A','dew','ede','de','2019-01-01','','11:00 AM','11','','Completed','',' AM',40,NULL,NULL,NULL,NULL),(41,'B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'A','asd','34-BPI-1231','asdsa','2019-01-31',NULL,'08:00 AM','1','asd','Scheduled',NULL,NULL,42,NULL,NULL,NULL,NULL),(46,'D','das','34-BPI-1231','saDD','2019-01-01','','01:00 PM','1',NULL,'Waiting','',' AM',46,NULL,NULL,NULL,NULL),(47,'A','asf','34-BPI-1231','sad','2019-11-17',NULL,'01:00 PM','2121','fas','Scheduled',NULL,NULL,47,NULL,NULL,NULL,NULL),(48,NULL,'dads','34-BPI-1231','dwdw','2019-02-02','2019-03-28','01:00 PM','12123','','Completed','',' AM',48,NULL,NULL,NULL,NULL),(49,'A','da','34-BPI-1231','Edward Rainier Curugan','2021-03-01',NULL,'01:00 PM','1','da','Scheduled',NULL,NULL,49,NULL,NULL,NULL,NULL),(50,'A','ed','34-BPI-1231','de','2019-04-01',NULL,'01:00 PM','1','de','Waiting',NULL,NULL,50,NULL,NULL,NULL,NULL),(51,'A','sdf','fs','Edward Rainier Curugan','2019-03-29','2019-05-31','01:00 PM','1','','Waiting','',' AM',51,NULL,NULL,NULL,NULL),(52,'A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'D','asda','34-BPI-1231','Edward Rainier Curugan','2019-01-05',NULL,'01:00 PM','122546','asd','Scheduled',NULL,NULL,53,1,NULL,NULL,NULL),(54,'C','fasfad','34-BPI-1231','wedw','2024-02-12',NULL,'12:01 PM','56','sad','Scheduled',NULL,NULL,54,0,0,1,NULL);
/*!40000 ALTER TABLE `atmninfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-01 10:32:48
