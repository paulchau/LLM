CREATE DATABASE  IF NOT EXISTS `lpromela` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lpromela`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lpromela
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `lpromela_model`
--

DROP TABLE IF EXISTS `lpromela_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lpromela_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `file_path` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lpromela_model`
--

LOCK TABLES `lpromela_model` WRITE;
/*!40000 ALTER TABLE `lpromela_model` DISABLE KEYS */;
INSERT INTO `lpromela_model` VALUES (1,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(16,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(17,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(18,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(19,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(20,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(21,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(22,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(23,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(24,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(25,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(26,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(27,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(28,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(29,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(30,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(31,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(32,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(33,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(34,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(35,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(36,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(37,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(38,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(39,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(40,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(41,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(42,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(43,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(44,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(45,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(46,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(47,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(48,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(49,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(50,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(51,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(52,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(53,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(54,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(55,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(56,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(57,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(58,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(59,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(60,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(61,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(62,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(63,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(64,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(65,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(66,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(67,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(68,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(69,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(70,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(71,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(72,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(73,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(74,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(75,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(76,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(77,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(78,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(79,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(80,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(81,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(82,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(83,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(84,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(85,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(86,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(87,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(88,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(89,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(90,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(91,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(92,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(93,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(94,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(95,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(96,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(97,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(98,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(99,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(100,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(101,'Case3sel.pml','D:Google DriveworkspaceLPromelaSampleCase3sel.pml'),(102,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(103,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(104,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(105,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(106,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(107,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(108,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(109,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(110,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(111,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(112,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(113,'little.pml','D:Google DriveworkspaceLPromelaSamplelittle.pml'),(114,'little.pml','D:Google DriveworkspaceLPromelaSamplelittle.pml'),(115,'little.pml','D:Google DriveworkspaceLPromelaSamplelittle.pml'),(116,'little.pml','D:Google DriveworkspaceLPromelaSamplelittle.pml'),(117,'little.pml','D:Google DriveworkspaceLPromelaSamplelittle.pml'),(118,'little.pml','D:Google DriveworkspaceLPromelaSamplelittle.pml'),(119,'little.pml','D:Google DriveworkspaceLPromelaSamplelittle.pml'),(120,'little.pml','D:Google DriveworkspaceLPromelaSamplelittle.pml'),(121,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(122,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(123,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(124,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(125,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(126,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(127,'BuyerStoreContract.pml','D:Google DriveResearchModelling and Verification on adaptive elearning systemscontraval-masterBuyerStoreContractBuyerStoreContract.pml'),(128,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(129,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(130,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(131,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(132,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(133,'Eg1.pml','D:Google DriveworkspaceLPromelaSampleEg1.pml'),(134,'Case1.pml','D:Google DriveworkspaceLPromelaSampleCase1.pml'),(135,'little.pml','D:Google DriveworkspaceLPromelaSamplelittle.pml');
/*!40000 ALTER TABLE `lpromela_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lpromela_model_message_info`
--

DROP TABLE IF EXISTS `lpromela_model_message_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lpromela_model_message_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL DEFAULT '0',
  `message` varchar(64) NOT NULL DEFAULT '',
  `ltl_symbol` varchar(64) NOT NULL DEFAULT '',
  `bool_message` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lpromela_model_message_info`
--

LOCK TABLES `lpromela_model_message_info` WRITE;
/*!40000 ALTER TABLE `lpromela_model_message_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `lpromela_model_message_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ltl_formula_definition`
--

DROP TABLE IF EXISTS `ltl_formula_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ltl_formula_definition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(1024) NOT NULL,
  `formula` varchar(256) NOT NULL,
  `nickname` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltl_formula_definition`
--

LOCK TABLES `ltl_formula_definition` WRITE;
/*!40000 ALTER TABLE `ltl_formula_definition` DISABLE KEYS */;
INSERT INTO `ltl_formula_definition` VALUES (1,'always Learning Event @V2@','[] @V@','always'),(2,' not Learning Event @V2@','! @V@','Not'),(9,' eventually Variables @V2@','<> @V@','eventually'),(14,' always Learning Event @V2@ of Role Player #V2# is prohibited implies Learning Event @V2@ of Role Player #V2# is prohibited',' []( IS_P( @V2@ , #V2# ) -> IS_P( @V2@ , #V2# ))','linked lock'),(16,' not always Learning Event @V2@ of Role Player #V2# has right to be executed implies Learning Event @V2@ of Role Player #V2# is prohibited',' !( []( IS_R( @V2@ , #V2# ) -> IS_P( @V2@ , #V2# )))','not always once done and delete'),(18,' always Learning Event @V2@ of Role Player #V2# is executed implies Learning Event @V2@ of Role Player #V2# is obliged or Learning Event @V2@ of Role Player #V2# is executed',' [](( IS_X( @V2@ , #V2# )) ->( IS_O( @V2@ , #V2# )  ||  IS_X( @V2@ , #V2# )))','event directed to another');
/*!40000 ALTER TABLE `ltl_formula_definition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ltl_formula_instance`
--

DROP TABLE IF EXISTS `ltl_formula_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ltl_formula_instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL DEFAULT '0',
  `definition_id` int(11) NOT NULL DEFAULT '0',
  `specific_description` varchar(255) DEFAULT '',
  `specific_formula` varchar(255) DEFAULT '',
  `is_setup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltl_formula_instance`
--

LOCK TABLES `ltl_formula_instance` WRITE;
/*!40000 ALTER TABLE `ltl_formula_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ltl_formula_instance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-27 21:55:07
