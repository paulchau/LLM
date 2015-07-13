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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lpromela_model`
--

LOCK TABLES `lpromela_model` WRITE;
/*!40000 ALTER TABLE `lpromela_model` DISABLE KEYS */;
INSERT INTO `lpromela_model` VALUES (1,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(16,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(17,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(18,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(19,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(20,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(21,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(22,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(23,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(24,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(25,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(26,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(27,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml'),(28,'Case2.pml','D:Google DriveworkspaceLPromelaSampleCase2.pml');
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
  `nickname` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ltl_formula_definition`
--

LOCK TABLES `ltl_formula_definition` WRITE;
/*!40000 ALTER TABLE `ltl_formula_definition` DISABLE KEYS */;
INSERT INTO `ltl_formula_definition` VALUES (1,'always @V@','[]@V@','always'),(2,' not @B@','!@V@','Not'),(9,' eventually @V2@','<>@V@','eventually');
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

-- Dump completed on 2015-07-12 16:35:00
