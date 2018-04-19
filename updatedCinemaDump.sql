-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cinema
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `num_tickets` int(11) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `customer_id_idx` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table contains a record of each "booking" or order made by the customer with ''customer_id''. \nTo find info on each individual ticket in an order, view the tickets in the ticket table with the cooresponding booking_id.\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `street_address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `has_promo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This contains all customer information for REGISTERED customers. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'ccallahan95@uga.edu','Chris2','Callahan2','pass','6784462192','200 Fern Ridge Court','Athens','GA','30601','Yes','Yes'),(3,'email@email.com','john','doe','pass','6784462192','200 Fern Ridge Court','Athens','GA','30601','Yes','No');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_types`
--

DROP TABLE IF EXISTS `employee_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_types` (
  `employee_type` int(11) NOT NULL,
  `employee_lable` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employee_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains the different types of employees. \nemployee_type will be an identifier (INT) used to find the employee''s role.\ntypes are as follows:\n1 - Admin\n2 - Manager\n3 - general staff ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_types`
--

LOCK TABLES `employee_types` WRITE;
/*!40000 ALTER TABLE `employee_types` DISABLE KEYS */;
INSERT INTO `employee_types` VALUES (1,'admin'),(2,'manager'),(3,'employee');
/*!40000 ALTER TABLE `employee_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employee_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_type` int(10) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains general employee info.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `halls`
--

DROP TABLE IF EXISTS `halls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `halls` (
  `hall_id` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`hall_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halls`
--

LOCK TABLES `halls` WRITE;
/*!40000 ALTER TABLE `halls` DISABLE KEYS */;
INSERT INTO `halls` VALUES (1,50),(2,50),(3,50),(4,50),(5,50);
/*!40000 ALTER TABLE `halls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(45) DEFAULT NULL,
  `cast_list` varchar(500) DEFAULT NULL,
  `producer` varchar(45) DEFAULT NULL,
  `director` varchar(45) DEFAULT NULL,
  `synopsis` varchar(500) DEFAULT NULL,
  `picture` varchar(200) DEFAULT NULL,
  `rating` int(5) DEFAULT NULL,
  `currently_showing` varchar(10) DEFAULT NULL,
  `trailer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='movie info stored in this table.\nEach movie has a unique ID. \ncurrently_showing is either yes or no. ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_info` (
  `billing_zip` text,
  `card_type` text,
  `exd_date` text,
  `customer_id` int(11) DEFAULT NULL,
  `card_number` int(11) NOT NULL,
  PRIMARY KEY (`card_number`),
  KEY `customer_id_idx` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
INSERT INTO `payment_info` VALUES ('billingZip','cardType','expDate',NULL,0);
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo` (
  `description` text,
  `promo_id` int(11) NOT NULL,
  `amount_available` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`promo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES ('description',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seats`
--

DROP TABLE IF EXISTS `seats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seats` (
  `showing_id` int(11) NOT NULL,
  `1` int(11) DEFAULT NULL,
  `2` int(11) DEFAULT NULL,
  `3` int(11) DEFAULT NULL,
  `4` int(11) DEFAULT NULL,
  `5` int(11) DEFAULT NULL,
  `6` int(11) DEFAULT NULL,
  `7` int(11) DEFAULT NULL,
  `8` int(11) DEFAULT NULL,
  `9` int(11) DEFAULT NULL,
  `10` int(11) DEFAULT NULL,
  `11` int(11) DEFAULT NULL,
  `12` int(11) DEFAULT NULL,
  `13` int(11) DEFAULT NULL,
  `14` int(11) DEFAULT NULL,
  `15` int(11) DEFAULT NULL,
  `16` int(11) DEFAULT NULL,
  `17` int(11) DEFAULT NULL,
  `18` int(11) DEFAULT NULL,
  `19` int(11) DEFAULT NULL,
  `20` int(11) DEFAULT NULL,
  `21` int(11) DEFAULT NULL,
  `22` int(11) DEFAULT NULL,
  `23` int(11) DEFAULT NULL,
  `24` int(11) DEFAULT NULL,
  `25` int(11) DEFAULT NULL,
  `26` int(11) DEFAULT NULL,
  `27` int(11) DEFAULT NULL,
  `28` int(11) DEFAULT NULL,
  `29` int(11) DEFAULT NULL,
  `30` int(11) DEFAULT NULL,
  `31` int(11) DEFAULT NULL,
  `32` int(11) DEFAULT NULL,
  `33` int(11) DEFAULT NULL,
  `34` int(11) DEFAULT NULL,
  `35` int(11) DEFAULT NULL,
  `36` int(11) DEFAULT NULL,
  `37` int(11) DEFAULT NULL,
  `38` int(11) DEFAULT NULL,
  `39` int(11) DEFAULT NULL,
  `40` int(11) DEFAULT NULL,
  `41` int(11) DEFAULT NULL,
  `42` int(11) DEFAULT NULL,
  `43` int(11) DEFAULT NULL,
  `44` int(11) DEFAULT NULL,
  `45` int(11) DEFAULT NULL,
  `46` int(11) DEFAULT NULL,
  `47` int(11) DEFAULT NULL,
  `48` int(11) DEFAULT NULL,
  `49` int(11) DEFAULT NULL,
  `50` int(11) DEFAULT NULL,
  PRIMARY KEY (`showing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table contains the seat availability for a specific showing_id.\nThe seats are named 1-50. If a seat is open its value is 0, if occupied it is a 1.\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seats`
--

LOCK TABLES `seats` WRITE;
/*!40000 ALTER TABLE `seats` DISABLE KEYS */;
/*!40000 ALTER TABLE `seats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showings`
--

DROP TABLE IF EXISTS `showings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `showings` (
  `showing_id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `hall_id` int(11) DEFAULT NULL,
  `num_tickets_available` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`showing_id`),
  KEY `movie_id_idx` (`movie_id`),
  KEY `hall_id_idx` (`hall_id`),
  CONSTRAINT `hall_id` FOREIGN KEY (`hall_id`) REFERENCES `halls` (`hall_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table contains all showtimes for ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showings`
--

LOCK TABLES `showings` WRITE;
/*!40000 ALTER TABLE `showings` DISABLE KEYS */;
/*!40000 ALTER TABLE `showings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `booking_id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='types: \n0 - child\n1 - adult\n2 - senior';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_type`
--

DROP TABLE IF EXISTS `ticket_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_type` (
  `ticket_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='0-child\n1-adult\n2-senior';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_type`
--

LOCK TABLES `ticket_type` WRITE;
/*!40000 ALTER TABLE `ticket_type` DISABLE KEYS */;
INSERT INTO `ticket_type` VALUES (0,5),(1,11),(2,6);
/*!40000 ALTER TABLE `ticket_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-18 21:29:06
