CREATE DATABASE  IF NOT EXISTS `mta_transit` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mta_transit`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: mta_transit
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `amenity`
--

DROP TABLE IF EXISTS `amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenity` (
  `amenity_id` int unsigned NOT NULL AUTO_INCREMENT,
  `benches` tinyint NOT NULL,
  `ticket_machine` tinyint NOT NULL,
  `route_info` tinyint NOT NULL,
  `shelter` tinyint NOT NULL,
  `public_phones` tinyint NOT NULL,
  `restrooms` tinyint NOT NULL,
  `ev_charge_stations` int NOT NULL,
  `bike_racks` int DEFAULT NULL,
  `bike_lockers` int DEFAULT NULL,
  PRIMARY KEY (`amenity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenity`
--

LOCK TABLES `amenity` WRITE;
/*!40000 ALTER TABLE `amenity` DISABLE KEYS */;
INSERT INTO `amenity` VALUES (2,1,1,1,1,1,1,0,7,0),(3,1,1,1,1,0,0,0,5,0),(4,1,1,1,1,1,1,0,0,10),(5,1,1,1,1,1,0,0,2,8),(6,1,1,1,1,1,0,0,2,10),(7,1,1,1,1,1,0,0,2,10),(8,1,1,1,1,1,0,0,2,10),(9,1,1,1,1,1,0,0,2,10),(10,1,1,1,1,1,0,0,0,10),(11,1,1,1,1,1,0,0,0,0),(12,0,1,1,0,1,0,0,0,0),(13,0,1,1,0,1,0,0,0,0),(14,0,1,1,1,1,0,0,0,0),(15,0,1,1,0,1,0,0,0,0),(16,1,1,1,1,0,0,0,0,0),(17,0,1,1,1,1,0,0,0,0),(18,1,0,1,1,1,1,0,1,0),(19,1,1,1,1,0,0,0,0,10),(20,1,1,1,1,1,0,0,2,10),(21,1,1,1,1,0,0,0,2,0),(22,1,1,1,1,1,0,0,2,0),(23,1,1,1,1,1,0,0,2,0),(24,1,1,1,1,1,0,0,0,0),(25,1,1,1,1,1,0,0,2,0),(26,1,1,1,1,0,0,0,2,0),(27,1,1,1,1,1,0,0,2,0),(28,1,1,1,1,0,0,0,0,0),(29,0,1,1,1,0,0,0,0,0),(30,1,1,1,1,0,0,0,0,0),(31,0,1,1,1,0,0,0,0,0),(32,1,1,1,1,0,0,0,0,0),(33,1,1,1,1,0,0,0,0,0),(34,1,1,1,1,1,0,0,0,0),(35,1,1,1,1,1,1,0,2,0),(36,1,1,1,1,1,0,0,2,0),(37,1,1,1,1,1,0,0,3,0),(38,1,1,1,1,0,0,0,0,0),(39,1,1,1,1,0,0,2,3,0),(40,1,1,1,1,1,0,2,0,8),(41,1,1,1,1,1,0,0,2,0),(42,1,1,1,1,1,0,0,2,0),(43,1,1,1,1,1,0,0,0,14),(44,1,0,1,1,1,0,0,0,0),(45,1,1,1,1,0,0,0,0,0),(46,1,1,1,1,0,0,0,0,0),(47,1,1,1,1,1,0,0,0,0),(48,1,1,1,1,0,0,0,0,0),(49,1,1,1,1,0,1,0,1,0),(50,1,1,1,1,0,1,0,3,0),(51,1,1,1,1,0,1,0,1,0),(52,1,1,1,1,0,1,0,0,10),(53,1,0,1,1,0,0,0,1,0),(54,1,1,1,1,0,1,0,1,6),(55,1,1,1,1,1,1,5,0,20),(57,1,1,1,1,1,1,2,4,10),(58,1,0,1,1,0,0,0,6,0),(59,1,0,1,1,0,1,0,3,10),(60,1,1,1,1,0,1,0,35,8),(63,1,0,0,1,0,0,0,0,0),(64,1,1,1,1,1,1,2,2,10),(65,0,0,0,1,0,0,0,0,0),(66,1,1,0,1,0,1,0,1,0),(68,1,0,1,1,0,1,0,8,10),(69,1,0,1,1,0,0,0,0,8),(70,1,0,1,1,0,0,0,70,27),(71,1,0,1,1,0,0,0,40,20),(72,1,0,1,1,0,0,0,2,1),(75,1,0,0,1,0,1,0,1,0),(76,1,1,1,1,0,1,0,2,0),(77,1,0,1,1,0,0,0,4,0),(78,1,1,1,1,1,0,0,6,0),(79,1,1,1,1,0,0,0,10,0),(80,0,0,1,0,0,0,0,0,0),(81,0,0,1,1,1,0,0,4,0),(82,1,0,1,1,0,0,0,0,0),(83,1,1,0,1,1,0,0,4,0),(84,1,0,1,1,0,0,0,3,0),(85,1,1,0,1,0,1,0,0,0),(86,1,0,1,1,0,0,0,0,0),(87,1,1,0,1,0,0,0,32,20),(88,1,0,1,1,0,0,0,2,0),(89,1,1,1,1,0,1,0,2,0),(90,0,1,1,1,0,0,0,0,0);
/*!40000 ALTER TABLE `amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `amenity_type_diversity_vs_ridership`
--

DROP TABLE IF EXISTS `amenity_type_diversity_vs_ridership`;
/*!50001 DROP VIEW IF EXISTS `amenity_type_diversity_vs_ridership`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `amenity_type_diversity_vs_ridership` AS SELECT 
 1 AS `station_id`,
 1 AS `station_name`,
 1 AS `amenity_type_count`,
 1 AS `avg_weekday_ridership`,
 1 AS `avg_weekend_ridership`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `area_id` int unsigned NOT NULL AUTO_INCREMENT,
  `TOD_area_type` varchar(45) DEFAULT NULL,
  `area_population` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,NULL,NULL),(2,'Downtown','604827'),(3,'Downtown','549217'),(4,'Town, Suburban, or Employment Center','175524'),(5,'Town, Suburban, or Employment Center','275633'),(6,'Town, Suburban, or Employment Center','319823'),(7,'Urban Neighborhood','400814'),(8,'Urban Neighborhood','470630'),(9,'Urban Neighborhood','546561'),(10,'Urban Neighborhood','622731'),(11,'Urban Neighborhood','623771'),(12,'Urban Neighborhood','608105'),(13,'Urban Neighborhood','598132'),(14,'Downtown','575933'),(15,'Downtown','566012'),(16,'Downtown','561369'),(17,'Downtown','574352'),(18,'Town, Suburban, or Employment Center','202689'),(19,'Town, Suburban, or Employment Center','208356'),(20,'Town, Suburban, or Employment Center','188867'),(21,'Urban Neighborhood','199270'),(22,'Urban Neighborhood','201438'),(23,'Town, Suburban, or Employment Center','215086'),(24,'Town, Suburban, or Employment Center','230560'),(25,'Urban Neighborhood','321577'),(26,'Town, Suburban, or Employment Center','372674'),(27,'Urban Neighborhood','432625'),(28,'Urban Neighborhood','459602'),(29,'Downtown','534100'),(30,'Downtown','556292'),(31,'Downtown','565504'),(32,'Downtown','574546'),(33,'Downtown','586468'),(34,'Downtown','599830'),(35,'Downtown','609062'),(36,'Urban Neighborhood','612599'),(37,'Urban Neighborhood','157509'),(38,'Urban Neighborhood','592208'),(39,'Urban Neighborhood','460390'),(40,'Urban Neighborhood','430950'),(41,'Town, Suburban, or Employment Center','191933'),(42,'Town, Suburban, or Employment Center','172673'),(43,'Town, Suburban, or Employment Center','129973'),(44,'Town, Suburban, or Employment Center','85777'),(45,'Town, Suburban, or Employment Center','76318'),(46,'Town, Suburban, or Employment Center','73036'),(47,'Town, Suburban, or Employment Center','72184'),(48,'Town, Suburban, or Employment Center','69912'),(49,'Town, Suburban, or Employment Center','28554'),(50,'Town, Suburban, or Employment Center','46940'),(51,'Village Center or Rural Town','81133'),(52,'Town, Suburban, or Employment Center','135189'),(53,'Urban Neighborhood','572849'),(54,'Town, Suburban, or Employment Center','282770'),(55,'Town, Suburban, or Employment Center','183449'),(57,'Town, Suburban, or Employment Center','133367'),(58,'Town, Suburban, or Employment Center','118615'),(59,'Town, Suburban, or Employment Center','231434'),(60,'Town, Suburban, or Employment Center','301688'),(63,'Town, Suburban, or Employment Center','225363'),(64,'Town, Suburban, or Employment Center','145241'),(65,'Town, Suburban, or Employment Center','175470'),(66,'Town, Suburban, or Employment Center','174932'),(67,'Village Center or Rural Town','143527'),(68,'Town, Suburban, or Employment Center','147126'),(69,'Town, Suburban, or Employment Center','192427'),(70,'Urban Neighborhood','347842'),(71,'Town, Suburban, or Employment Center','368352'),(72,'Urban Neighborhood','364380'),(73,NULL,NULL),(74,NULL,NULL),(75,NULL,NULL),(76,'Village Center or Rural Town','11322'),(77,'Village Center or Rural Town','8424'),(78,'Downtown','110368'),(79,'Town, Suburban, or Employment Center','101546'),(80,'Village Center or Rural Town','5046'),(81,'Village Center or Rural Town','11447'),(82,'Village Center or Rural Town','111308'),(83,'Town, Suburban, or Employment Center','216450'),(84,'Town, Suburban, or Employment Center','289266'),(85,'Urban Neighborhood','282045'),(86,'Urban Neighborhood','281726'),(87,'Town, Suburban, or Employment Center','316574'),(88,'Urban Neighborhood','389820'),(89,'Urban Neighborhood','418254'),(90,'Town, Suburban, or Employment Center','391426'),(91,NULL,NULL),(92,NULL,NULL),(93,NULL,NULL),(94,NULL,NULL),(95,NULL,NULL),(96,NULL,NULL);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `best_stations_by_area_type`
--

DROP TABLE IF EXISTS `best_stations_by_area_type`;
/*!50001 DROP VIEW IF EXISTS `best_stations_by_area_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `best_stations_by_area_type` AS SELECT 
 1 AS `station_id`,
 1 AS `station_name`,
 1 AS `TOD_area_type`,
 1 AS `avg_access_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `rail_line`
--

DROP TABLE IF EXISTS `rail_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rail_line` (
  `rail_line_id` int unsigned NOT NULL AUTO_INCREMENT,
  `rail_line_name` varchar(45) NOT NULL,
  PRIMARY KEY (`rail_line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rail_line`
--

LOCK TABLES `rail_line` WRITE;
/*!40000 ALTER TABLE `rail_line` DISABLE KEYS */;
INSERT INTO `rail_line` VALUES (1,'WMATA Metro'),(2,'MARC: Brunswick Line'),(3,'Amtrak'),(4,'MARC: Penn Line'),(5,'VRE'),(6,'Metro'),(7,'MARC: Camden Line'),(8,'Light Rail');
/*!40000 ALTER TABLE `rail_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ridership`
--

DROP TABLE IF EXISTS `ridership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ridership` (
  `rail_line_id` int unsigned NOT NULL,
  `station_id` int unsigned NOT NULL,
  `ridership_amount_weekday` decimal(10,2) DEFAULT NULL,
  `ridership_amount_weekend` decimal(10,2) DEFAULT NULL,
  `frequency_weekday` int DEFAULT NULL,
  `frequency_weekend` int DEFAULT NULL,
  PRIMARY KEY (`rail_line_id`,`station_id`),
  KEY `fk_Ridership_junction_Station1_idx` (`station_id`),
  KEY `fk_Ridership_junction_rail_line1_idx` (`rail_line_id`),
  CONSTRAINT `fk_Ridership_junction_rail_line1` FOREIGN KEY (`rail_line_id`) REFERENCES `rail_line` (`rail_line_id`),
  CONSTRAINT `fk_Ridership_junction_Station1` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ridership`
--

LOCK TABLES `ridership` WRITE;
/*!40000 ALTER TABLE `ridership` DISABLE KEYS */;
INSERT INTO `ridership` VALUES (2,75,81.67,NULL,NULL,NULL),(2,76,556.50,NULL,NULL,NULL),(2,77,409.00,NULL,NULL,NULL),(2,78,117.92,NULL,NULL,NULL),(2,79,219.25,NULL,NULL,NULL),(2,80,26.75,NULL,NULL,NULL),(2,81,87.92,NULL,NULL,NULL),(2,82,18.33,NULL,NULL,NULL),(2,83,913.00,NULL,NULL,NULL),(2,84,306.92,NULL,NULL,NULL),(2,85,585.33,NULL,NULL,NULL),(2,86,47.92,NULL,NULL,NULL),(2,87,584.33,NULL,NULL,NULL),(2,88,50.33,NULL,NULL,NULL),(2,89,188.58,NULL,NULL,NULL),(2,90,561.08,NULL,NULL,NULL),(4,2,3712.92,NULL,38,23),(4,49,153.67,NULL,NULL,0),(4,50,204.58,NULL,NULL,0),(4,51,301.33,NULL,NULL,0),(4,52,391.83,NULL,NULL,3),(4,53,750.58,NULL,NULL,9),(4,54,1418.75,NULL,NULL,9),(4,55,1889.08,NULL,NULL,9),(4,57,2815.58,NULL,NULL,9),(4,58,652.17,NULL,NULL,9),(4,59,431.08,NULL,NULL,0),(4,60,960.33,NULL,NULL,9),(6,4,3643.95,1383.00,116,70),(6,5,1183.05,478.75,116,70),(6,6,1433.36,583.25,116,70),(6,7,1878.82,784.25,117,71),(6,8,2433.45,1117.25,117,71),(6,9,1487.14,738.25,117,71),(6,10,3001.00,1412.25,117,71),(6,11,2444.95,1220.00,117,71),(6,12,1708.91,902.25,117,71),(6,13,1645.86,532.50,117,71),(6,14,5523.86,2098.25,117,71),(6,15,4744.09,1771.00,117,71),(6,16,1791.82,897.75,117,71),(6,17,3357.95,1157.50,117,71),(7,3,389.17,NULL,NULL,108),(7,63,17.17,NULL,NULL,NULL),(7,64,581.00,NULL,NULL,NULL),(7,65,0.58,NULL,NULL,NULL),(7,66,361.58,NULL,NULL,NULL),(7,68,678.75,NULL,NULL,NULL),(7,69,355.25,NULL,NULL,NULL),(7,70,61.33,NULL,NULL,NULL),(7,71,165.92,NULL,NULL,NULL),(7,72,59.33,NULL,NULL,NULL),(8,2,291.46,NULL,NULL,NULL),(8,3,630.44,NULL,NULL,NULL),(8,18,1016.94,NULL,45,36),(8,19,209.09,NULL,45,36),(8,20,1102.48,NULL,45,36),(8,21,95.04,NULL,45,36),(8,22,453.03,NULL,90,72),(8,23,592.42,NULL,90,72),(8,24,437.19,NULL,90,72),(8,25,275.62,NULL,90,72),(8,26,1219.70,NULL,90,72),(8,27,677.96,NULL,90,72),(8,28,617.77,NULL,90,72),(8,29,240.77,NULL,90,72),(8,30,1032.78,NULL,114,108),(8,31,2261.98,NULL,114,108),(8,32,3117.36,NULL,114,108),(8,33,462.53,NULL,114,108),(8,34,747.66,NULL,114,108),(8,35,719.15,NULL,114,108),(8,36,953.58,NULL,90,72),(8,37,392.84,NULL,90,72),(8,38,601.93,NULL,90,72),(8,39,430.85,NULL,90,72),(8,40,421.35,NULL,90,72),(8,41,807.85,NULL,90,72),(8,42,316.80,NULL,90,72),(8,43,982.09,NULL,90,72),(8,44,281.96,NULL,72,72),(8,45,228.10,NULL,72,72),(8,46,443.53,NULL,72,72),(8,47,161.57,NULL,72,72),(8,48,744.49,NULL,72,72);
/*!40000 ALTER TABLE `ridership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ridership_consistency`
--

DROP TABLE IF EXISTS `ridership_consistency`;
/*!50001 DROP VIEW IF EXISTS `ridership_consistency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ridership_consistency` AS SELECT 
 1 AS `station_id`,
 1 AS `station_name`,
 1 AS `ridership_difference`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `score_id` int unsigned NOT NULL AUTO_INCREMENT,
  `transit_score` int DEFAULT NULL,
  `station_facility_score` int DEFAULT NULL,
  `parking_score` int DEFAULT NULL,
  `bike_access_score` int DEFAULT NULL,
  `ped_access_score` int DEFAULT NULL,
  `tod_zoning_score` int DEFAULT NULL,
  `development_market_score` int DEFAULT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (2,3,5,5,5,5,NULL,5),(3,2,1,3,3,5,NULL,5),(4,5,3,1,5,2,NULL,3),(5,5,3,3,1,3,NULL,1),(6,5,3,5,2,4,NULL,1),(7,5,2,2,4,4,NULL,3),(8,5,3,5,4,4,NULL,2),(9,5,3,1,3,4,NULL,2),(10,5,3,3,4,4,NULL,3),(11,5,3,4,3,5,NULL,4),(12,5,1,3,4,5,NULL,4),(13,5,1,1,4,5,NULL,5),(14,5,1,1,4,5,NULL,4),(15,5,1,1,3,5,NULL,4),(16,5,2,1,4,5,NULL,5),(17,5,2,2,3,5,NULL,5),(18,4,3,4,2,1,NULL,1),(19,4,2,1,1,1,NULL,1),(20,4,3,3,3,4,NULL,2),(21,4,2,5,1,2,NULL,4),(22,3,3,4,4,2,NULL,4),(23,3,3,5,1,2,NULL,4),(24,3,3,1,2,2,NULL,2),(25,3,3,4,1,2,NULL,2),(26,3,1,1,2,2,NULL,2),(27,3,3,3,3,3,NULL,1),(28,3,2,5,5,3,NULL,1),(29,3,1,1,3,4,NULL,5),(30,3,1,2,3,5,NULL,4),(31,3,1,5,4,5,NULL,4),(32,3,1,1,3,5,NULL,5),(33,3,1,4,4,5,NULL,5),(34,3,2,3,4,5,NULL,5),(35,3,5,2,4,5,NULL,5),(36,3,3,1,4,4,NULL,5),(37,3,3,3,3,3,NULL,4),(38,3,2,5,4,3,NULL,1),(39,3,2,1,3,4,NULL,3),(40,3,3,1,3,1,NULL,3),(41,3,3,1,1,4,NULL,2),(42,3,3,4,4,4,NULL,3),(43,3,3,4,1,2,NULL,2),(44,4,2,1,4,1,NULL,1),(45,4,2,3,1,1,NULL,2),(46,4,2,4,4,2,NULL,2),(47,4,3,5,1,1,NULL,1),(48,4,2,5,4,2,NULL,1),(49,1,3,1,4,1,NULL,1),(50,1,3,5,5,2,NULL,3),(51,1,3,4,1,2,NULL,1),(52,2,3,2,2,1,NULL,1),(53,2,1,3,4,4,NULL,2),(54,2,3,4,1,2,NULL,3),(55,3,5,3,1,1,NULL,1),(57,3,5,5,4,1,NULL,5),(58,3,1,4,1,1,NULL,1),(59,2,2,4,1,2,NULL,1),(60,3,3,3,5,2,NULL,1),(63,1,1,1,1,2,NULL,2),(64,2,5,2,1,1,NULL,4),(65,1,1,1,1,1,NULL,1),(66,2,2,5,4,1,NULL,1),(68,2,2,5,4,2,NULL,1),(69,2,1,1,1,1,NULL,1),(70,1,1,4,4,4,NULL,1),(71,2,1,3,4,3,NULL,1),(72,1,1,2,1,4,NULL,2),(75,1,1,4,1,1,NULL,1),(76,1,3,4,4,2,NULL,1),(77,1,1,5,1,1,NULL,1),(78,1,3,1,3,4,NULL,2),(79,1,2,2,1,1,NULL,1),(80,1,1,2,2,1,NULL,1),(81,1,1,1,1,1,NULL,1),(82,1,1,1,2,1,NULL,1),(83,2,1,4,2,2,NULL,3),(84,2,1,1,1,1,NULL,5),(85,2,2,3,3,3,NULL,1),(86,1,1,3,2,2,NULL,1),(87,2,1,5,4,5,NULL,2),(88,1,1,3,1,3,NULL,1),(89,2,3,1,1,3,NULL,1),(90,2,1,1,4,5,NULL,5);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `station_id` int unsigned NOT NULL,
  `station_name` varchar(45) NOT NULL,
  `area_id` int unsigned NOT NULL,
  `modes_served` int NOT NULL,
  PRIMARY KEY (`station_id`),
  KEY `fk_Station_Area_idx` (`area_id`),
  CONSTRAINT `fk_Station_Area` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Union Station',1,1),(2,'Penn Station',2,5),(3,'Camden Station',3,4),(4,'Owings Mills',4,2),(5,'Old Court',5,2),(6,'Milford Mill',6,2),(7,'Reisterstown Plaza',7,2),(8,'Rogers Avenue',8,2),(9,'West Cold Spring',9,2),(10,'Mondawmin',10,2),(11,'Penn North',11,2),(12,'Upton',12,2),(13,'State Center',13,3),(14,'Lexington Market',14,3),(15,'Charles Center',15,3),(16,'Shot Tower',16,3),(17,'Johns Hopkins Hospital',17,4),(18,'BWI Airport',18,4),(19,'BWI Business District',19,4),(20,'Cromwell Station/Glen Burnie',20,3),(21,'Ferndale',21,1),(22,'Linthicum',22,1),(23,'North Linthicum',23,1),(24,'Nursery Road',24,2),(25,'Baltimore Highlands',25,1),(26,'Patapsco',26,2),(27,'Cherry Hill',27,2),(28,'Westport',28,1),(29,'Hamburg Street',29,1),(30,'Pratt Street/Convention Center',30,4),(31,'Baltimore St./1st Mariner Arena',31,3),(32,'Lexington Street',32,3),(33,'Centre Street',33,2),(34,'Cultural Center/State Center',34,3),(35,'Mount Royal/University of Baltimore',35,2),(36,'North Avenue',36,2),(37,'Woodberry',37,2),(38,'Cold Spring Lane',38,2),(39,'Mount Washington',39,2),(40,'Falls Road',40,2),(41,'Lutherville',41,2),(42,'Timonium Business Park',42,1),(43,'Timonium Fairgrounds',43,2),(44,'Warren Road',44,2),(45,'Gilroy Road',45,1),(46,'McCormick Road',46,2),(47,'Pepper Road',47,1),(48,'Hunt Valley',48,2),(49,'Perryville',49,1),(50,'Aberdeen',50,3),(51,'Edgewood',51,2),(52,'Martin State Airport',52,3),(53,'West Baltimore',53,4),(54,'Halethorpe',54,2),(55,'BWI Rail Station',55,4),(57,'Odenton',57,2),(58,'Bowie State',58,2),(59,'Seabrook',59,2),(60,'New Carrollton',60,4),(63,'St. Denis',63,1),(64,'Dorsey',64,3),(65,'Jessup',65,1),(66,'Savage',66,2),(67,'Laurel Racetrack',67,1),(68,'Laurel Mainstreet',68,2),(69,'Muirkirk',69,2),(70,'Greenbelt',70,4),(71,'College Park',71,5),(72,'Riverdale',72,2),(73,'Martinsburg',73,2),(74,'Duffields',74,1),(75,'Harpers Ferry',75,3),(76,'Brunswick',76,2),(77,'Point of Rocks',77,2),(78,'Frederick',78,3),(79,'Monocacy',79,3),(80,'Dickerson',80,1),(81,'Barnesville',81,1),(82,'Boyds',82,1),(83,'Germantown',83,2),(84,'Metropolitan Grove',84,3),(85,'Gaithersburg',85,2),(86,'Washington Grove',86,2),(87,'Rockville',87,3),(88,'Garrett Park',88,1),(89,'Kensington',89,2),(90,'Silver Spring',90,4),(91,'Branch Avenue',91,3),(92,'Naylor Road',92,3),(93,'Shady Grove',93,4),(94,'Twinbrook',94,3),(95,'Wheaton',95,3),(96,'White Flint',96,3);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `station_accessibility_scores`
--

DROP TABLE IF EXISTS `station_accessibility_scores`;
/*!50001 DROP VIEW IF EXISTS `station_accessibility_scores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `station_accessibility_scores` AS SELECT 
 1 AS `station_id`,
 1 AS `station_name`,
 1 AS `avg_access_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `station_has_amenity`
--

DROP TABLE IF EXISTS `station_has_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_has_amenity` (
  `station_id` int unsigned NOT NULL,
  `amenity_id` int unsigned NOT NULL,
  PRIMARY KEY (`station_id`,`amenity_id`),
  KEY `fk_Station_has_Amenity_Amenity1_idx` (`amenity_id`),
  KEY `fk_Station_has_Amenity_Station1_idx` (`station_id`),
  CONSTRAINT `fk_Station_has_Amenity_Amenity1` FOREIGN KEY (`amenity_id`) REFERENCES `amenity` (`amenity_id`),
  CONSTRAINT `fk_Station_has_Amenity_Station1` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_has_amenity`
--

LOCK TABLES `station_has_amenity` WRITE;
/*!40000 ALTER TABLE `station_has_amenity` DISABLE KEYS */;
INSERT INTO `station_has_amenity` VALUES (1,2),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(57,57),(58,58),(59,59),(60,60),(63,63),(64,64),(65,65),(66,66),(67,66),(68,68),(69,69),(70,70),(71,71),(72,72),(73,72),(74,72),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(90,90),(91,90),(92,90),(93,90),(94,90),(95,90),(96,90);
/*!40000 ALTER TABLE `station_has_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station_has_score`
--

DROP TABLE IF EXISTS `station_has_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station_has_score` (
  `station_id` int unsigned NOT NULL,
  `score_id` int unsigned NOT NULL,
  PRIMARY KEY (`station_id`,`score_id`),
  KEY `fk_Station_has_Score_Score1_idx` (`score_id`),
  KEY `fk_Station_has_Score_Station1_idx` (`station_id`),
  CONSTRAINT `fk_Station_has_Score_Score1` FOREIGN KEY (`score_id`) REFERENCES `score` (`score_id`),
  CONSTRAINT `fk_Station_has_Score_Station1` FOREIGN KEY (`station_id`) REFERENCES `station` (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station_has_score`
--

LOCK TABLES `station_has_score` WRITE;
/*!40000 ALTER TABLE `station_has_score` DISABLE KEYS */;
INSERT INTO `station_has_score` VALUES (1,2),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(57,57),(58,58),(59,59),(60,60),(63,63),(64,64),(65,65),(66,65),(67,65),(68,68),(69,69),(70,70),(71,71),(72,71),(73,71),(74,71),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(91,89),(90,90),(92,90),(93,90),(94,90),(95,90),(96,90);
/*!40000 ALTER TABLE `station_has_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tod_zone_transit_distribution`
--

DROP TABLE IF EXISTS `tod_zone_transit_distribution`;
/*!50001 DROP VIEW IF EXISTS `tod_zone_transit_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tod_zone_transit_distribution` AS SELECT 
 1 AS `area_id`,
 1 AS `TOD_area_type`,
 1 AS `total_stations`,
 1 AS `avg_parking_score`,
 1 AS `avg_ped_score`,
 1 AS `avg_bike_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'mta_transit'
--

--
-- Final view structure for view `amenity_type_diversity_vs_ridership`
--

/*!50001 DROP VIEW IF EXISTS `amenity_type_diversity_vs_ridership`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `amenity_type_diversity_vs_ridership` AS select `station`.`station_id` AS `station_id`,`station`.`station_name` AS `station_name`,((((((((max(`amenity`.`benches`) + max(`amenity`.`ticket_machine`)) + max(`amenity`.`route_info`)) + max(`amenity`.`shelter`)) + max(`amenity`.`public_phones`)) + max(`amenity`.`restrooms`)) + least(max(`amenity`.`ev_charge_stations`),1)) + least(max(`amenity`.`bike_racks`),1)) + least(max(`amenity`.`bike_lockers`),1)) AS `amenity_type_count`,round(avg(`ridership`.`ridership_amount_weekday`),2) AS `avg_weekday_ridership`,round(avg(`ridership`.`ridership_amount_weekend`),2) AS `avg_weekend_ridership` from (((`station` join `ridership` on((`station`.`station_id` = `ridership`.`station_id`))) join `station_has_amenity` on((`station`.`station_id` = `station_has_amenity`.`station_id`))) join `amenity` on((`station_has_amenity`.`amenity_id` = `amenity`.`amenity_id`))) group by `station`.`station_id`,`station`.`station_name` having (`amenity_type_count` > 0) order by `amenity_type_count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `best_stations_by_area_type`
--

/*!50001 DROP VIEW IF EXISTS `best_stations_by_area_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `best_stations_by_area_type` AS select `s`.`station_id` AS `station_id`,`s`.`station_name` AS `station_name`,`a`.`TOD_area_type` AS `TOD_area_type`,round(((`sc`.`bike_access_score` + `sc`.`ped_access_score`) / 2),2) AS `avg_access_score` from (((`station` `s` join `area` `a` on((`s`.`area_id` = `a`.`area_id`))) join `station_has_score` `shs` on((`s`.`station_id` = `shs`.`station_id`))) join `score` `sc` on((`shs`.`score_id` = `sc`.`score_id`))) where (((`sc`.`bike_access_score` + `sc`.`ped_access_score`) / 2) = (select max(((`sc2`.`bike_access_score` + `sc2`.`ped_access_score`) / 2)) from (((`station` `s2` join `area` `a2` on((`s2`.`area_id` = `a2`.`area_id`))) join `station_has_score` `shs2` on((`s2`.`station_id` = `shs2`.`station_id`))) join `score` `sc2` on((`shs2`.`score_id` = `sc2`.`score_id`))) where (`a2`.`TOD_area_type` = `a`.`TOD_area_type`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ridership_consistency`
--

/*!50001 DROP VIEW IF EXISTS `ridership_consistency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ridership_consistency` AS select `station`.`station_id` AS `station_id`,`station`.`station_name` AS `station_name`,abs((sum(`ridership`.`ridership_amount_weekday`) - sum(`ridership`.`ridership_amount_weekend`))) AS `ridership_difference` from (`station` join `ridership` on((`station`.`station_id` = `ridership`.`station_id`))) group by `station`.`station_id`,`station`.`station_name` having (`ridership_difference` is not null) order by `ridership_difference` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `station_accessibility_scores`
--

/*!50001 DROP VIEW IF EXISTS `station_accessibility_scores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `station_accessibility_scores` AS select `station`.`station_id` AS `station_id`,`station`.`station_name` AS `station_name`,round((avg((`score`.`bike_access_score` + `score`.`ped_access_score`)) / 2),2) AS `avg_access_score` from ((`station` join `station_has_score` on((`station`.`station_id` = `station_has_score`.`station_id`))) join `score` on((`station_has_score`.`score_id` = `score`.`score_id`))) group by `station`.`station_id`,`station`.`station_name` having (`avg_access_score` is not null) order by `avg_access_score` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tod_zone_transit_distribution`
--

/*!50001 DROP VIEW IF EXISTS `tod_zone_transit_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tod_zone_transit_distribution` AS select `area`.`area_id` AS `area_id`,`area`.`TOD_area_type` AS `TOD_area_type`,count(distinct `station`.`station_id`) AS `total_stations`,round(avg(`score`.`parking_score`),2) AS `avg_parking_score`,round(avg(`score`.`ped_access_score`),2) AS `avg_ped_score`,round(avg(`score`.`bike_access_score`),2) AS `avg_bike_score` from (((`area` join `station` on((`area`.`area_id` = `station`.`area_id`))) join `station_has_score` on((`station`.`station_id` = `station_has_score`.`station_id`))) join `score` on((`station_has_score`.`score_id` = `score`.`score_id`))) where (`area`.`TOD_area_type` is not null) group by `area`.`TOD_area_type`,`area`.`area_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15 17:33:29
