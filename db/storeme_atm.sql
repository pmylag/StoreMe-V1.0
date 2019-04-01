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
-- Table structure for table `atm`
--

DROP TABLE IF EXISTS `atm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atm` (
  `idatm` int(11) NOT NULL AUTO_INCREMENT,
  `cassete1` int(11) DEFAULT NULL,
  `checker` varchar(45) DEFAULT NULL,
  `bolt_screw_set_qty` int(11) DEFAULT NULL,
  `bolt_screw_set_rmk` varchar(45) DEFAULT NULL,
  `cash_casst_key_qty` int(11) DEFAULT NULL,
  `cash_casst_key_rmk` varchar(45) DEFAULT NULL,
  `clad_qty` int(11) DEFAULT NULL,
  `clad_rmk` varchar(45) DEFAULT NULL,
  `collar_qty` int(11) DEFAULT NULL,
  `collar_rmk` varchar(45) DEFAULT NULL,
  `decale_qty` int(11) DEFAULT NULL,
  `decale_rmk` varchar(45) DEFAULT NULL,
  `fsc_wndw_frame_qty` int(11) DEFAULT NULL,
  `fsc_wndw_frame_remk` varchar(45) DEFAULT NULL,
  `bank` varchar(45) DEFAULT NULL,
  `driver` varchar(45) DEFAULT NULL,
  `warehouse_asst` varchar(45) DEFAULT NULL,
  `consignee` varchar(45) DEFAULT NULL,
  `plateno` varchar(45) DEFAULT NULL,
  `cassete2` int(1) DEFAULT NULL,
  `cassete3` int(1) DEFAULT NULL,
  `cassete4` int(1) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `modem_qty` int(11) DEFAULT NULL,
  `modem_rmk` varchar(45) DEFAULT NULL,
  `pnl_door_key_qty` int(11) DEFAULT NULL,
  `pnl_door_key_rmk` varchar(45) DEFAULT NULL,
  `pedestal_qty` int(11) DEFAULT NULL,
  `pedestaL_rmk` varchar(45) DEFAULT NULL,
  `power_crd_qty` int(11) DEFAULT NULL,
  `power_cord_rmk` varchar(45) DEFAULT NULL,
  `router_qtry` int(11) DEFAULT NULL,
  `router_rmk` varchar(45) DEFAULT NULL,
  `topper_qty` int(11) DEFAULT NULL,
  `topper_rmk` varchar(45) DEFAULT NULL,
  `ups_qty` int(11) DEFAULT NULL,
  `ups_rmk` varchar(45) DEFAULT NULL,
  `vault_door_key_qty` int(11) DEFAULT NULL,
  `vault_door_key` varchar(45) DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idatm`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atm`
--

LOCK TABLES `atm` WRITE;
/*!40000 ALTER TABLE `atm` DISABLE KEYS */;
INSERT INTO `atm` VALUES (3,1,'Kevin',4,'-',2,'-',5,'-',11,'-',5,'-',1,'-','BPI','Steve','Natasha','Bruce','ABC123',1,0,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,0,'Wewew',5,'5',5,'5',5,'5',5,'5',55,NULL,5,'5','Micci','Ed',NULL,'Justin','55555',0,0,0,5,'5',5,'55',5,'5',55,'5',55,'5',5,'5',5,'5',55,'5',5,'5',NULL),(25,0,'assd',1,'5',1,'1',5,'5',5,'5',5,NULL,5,'5','aaaa','ad',NULL,'Edward Rainier Curugan','ad',0,0,0,1,'5',5,'5',55,'',55,'5',55,'5',64,'5',5,'5',5,'5',5,'5',NULL),(34,0,'adsf',1,'1',1,'1',1,'1',1,'1',1,NULL,1,'','qwe','asd','fhg','rqr','asdf',1,0,0,1,'1',1,'1',1,'1',1,'11',1,'1',11,'1',1,'1',1,'1',1,'',NULL),(38,0,'wq',2,'2',22,'22',2,'2',22,'2',2,NULL,22,'2','wqe','qwe','qwe','Edward Rainier Curugan','weq',0,0,0,1,'1',2,'22',2,'22',2,'2',2,'2',22,'2',2,'22',2,'2',3,'',NULL),(47,0,'afs',5,'5',5,'5',55,'5',5,'55',5,NULL,5,'55','asdf','afs','saf','sad','sdf',0,1,0,1,'5',5,'5',55,'5',5,'5',6,'5',5,'5',6,'6',6,'6',6,'6',NULL),(49,0,'bshjw',4,'4',4,'4',44,'4',4,'4',4,NULL,4,'4','de','edw','sq','Edward Rainier Curugan','dew',0,1,0,1,'2',4,'4',44,'4',4,'4',4,'4',4,'44',4,'44',4,'4',4,'4',NULL);
/*!40000 ALTER TABLE `atm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-01  6:44:49
