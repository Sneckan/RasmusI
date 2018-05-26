CREATE DATABASE  IF NOT EXISTS `rasmusi` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `rasmusi`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rasmusi
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `actorId` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `lastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`actorId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Robert','Downey'),(2,'Terrence','Howard'),(3,'Jeff','Bridges'),(4,'Gwyneth','Paltrow'),(5,'Jon','Favreau'),(6,'Chris','Evans'),(7,'Hayley','Atwell'),(8,'Sebastian','Stan'),(9,'Tommy','Jones'),(10,'Hugo','Weaving'),(11,'Don','Cheadle'),(12,'Scarlett','Johansson'),(13,'Sam','Rockwell'),(14,'Mickey','Rourke'),(15,'Chris','Hemsworth'),(16,'Natalie','Portman'),(17,'Tom','Hiddleston'),(18,'Anthony','Hopkins'),(19,'Stellan','Skarsgård'),(20,'Mark','Ruffalo'),(21,'Jeremy','Renner'),(22,'Samuel','Jackson'),(23,'Ben','Kingsley'),(24,'Guy','Pearce'),(25,'Anthony','Mackie'),(26,'Robert','Redford'),(27,'Christopher','Eccleston'),(28,'Chris','Pratt'),(29,'Zoe','Saldana'),(30,'Dave','Bautista'),(31,'Vin','Diesel'),(32,'Bradley','Cooper'),(33,'Lee','Pace'),(34,'James','Spader'),(35,'Elizabeth','Olsen'),(36,'Paul','Bettany'),(37,'Aaron','Taylor-Johnson');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actorsinmovie`
--

DROP TABLE IF EXISTS `actorsinmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actorsinmovie` (
  `movieId` int(11) NOT NULL AUTO_INCREMENT,
  `actorId` int(11) NOT NULL,
  KEY `fk_actorsInMovie_actor1_idx` (`actorId`),
  KEY `fk_actorsInMovie_movie` (`movieId`),
  CONSTRAINT `fk_actorsInMovie_actor1` FOREIGN KEY (`actorId`) REFERENCES `actors` (`actorId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_actorsInMovie_movie` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actorsinmovie`
--

LOCK TABLES `actorsinmovie` WRITE;
/*!40000 ALTER TABLE `actorsinmovie` DISABLE KEYS */;
INSERT INTO `actorsinmovie` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(3,1),(3,5),(3,4),(3,11),(3,12),(3,13),(3,14),(4,15),(4,16),(4,17),(4,18),(4,19),(5,1),(5,6),(5,12),(5,15),(5,17),(5,19),(5,20),(5,21),(5,22),(6,1),(6,4),(6,5),(6,11),(6,23),(6,24),(7,6),(7,8),(7,12),(7,22),(7,25),(7,26),(8,15),(8,16),(8,17),(8,18),(8,19),(8,27),(9,28),(9,29),(9,30),(9,31),(9,32),(9,33),(10,1),(10,6),(10,12),(10,15),(10,20),(10,21),(10,22),(10,34),(10,35),(10,36),(10,37);
/*!40000 ALTER TABLE `actorsinmovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Mikael.Olsson@email.com','password1'),(2,'Jens.linghult@email.com','password2'),(3,'Pontus.landström@email.com','password3'),(4,'Joel.silfverstråle@email.com','password4'),(5,'Jenny.bäcklund@email.com','password5'),(6,'Felix.Åhlen@email.com','password6'),(7,'Jakob.krabbe@email.com','password7'),(8,'Johannes.palm@email.com','password8'),(9,'Dennis.demir@email.com','password9'),(10,'Ida.nilsson@email.com','password10');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `directorId` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `lastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`directorId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Jon','Favreau'),(2,'Joe','Johnston'),(3,'Kenneth','Branagh'),(4,'Joss','Whedon'),(5,'Shane','Black'),(6,'Anthony','Russo'),(7,'Alan','Taylor'),(8,'James','Gunn');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeemovies`
--

DROP TABLE IF EXISTS `employeemovies`;
/*!50001 DROP VIEW IF EXISTS `employeemovies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `employeemovies` AS SELECT 
 1 AS `employees`,
 1 AS `nrOfLoandMovies`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employeeId` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `lastName` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Rasmus','Isaksson'),(2,'Bertil','Bertilsson'),(3,'Magnus','Magnusson'),(4,'Möykky','Dofri'),(5,'Grazzy','Marweinicus');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!50001 DROP VIEW IF EXISTS `genres`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `genres` AS SELECT 
 1 AS `genre`,
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `genres_action`
--

DROP TABLE IF EXISTS `genres_action`;
/*!50001 DROP VIEW IF EXISTS `genres_action`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `genres_action` AS SELECT 
 1 AS `genre`,
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `genres_adventure`
--

DROP TABLE IF EXISTS `genres_adventure`;
/*!50001 DROP VIEW IF EXISTS `genres_adventure`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `genres_adventure` AS SELECT 
 1 AS `genre`,
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `genres_fantasy`
--

DROP TABLE IF EXISTS `genres_fantasy`;
/*!50001 DROP VIEW IF EXISTS `genres_fantasy`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `genres_fantasy` AS SELECT 
 1 AS `genre`,
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `genres_scifi`
--

DROP TABLE IF EXISTS `genres_scifi`;
/*!50001 DROP VIEW IF EXISTS `genres_scifi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `genres_scifi` AS SELECT 
 1 AS `genre`,
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `moviegenre`
--

DROP TABLE IF EXISTS `moviegenre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moviegenre` (
  `genre` varchar(45) DEFAULT NULL,
  `movieId` int(11) NOT NULL,
  KEY `fk_movieGenre_movie1_idx` (`movieId`),
  CONSTRAINT `fk_movieGenre_movie1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviegenre`
--

LOCK TABLES `moviegenre` WRITE;
/*!40000 ALTER TABLE `moviegenre` DISABLE KEYS */;
INSERT INTO `moviegenre` VALUES ('Action',1),('Adventure',1),('Sci-Fi',1),('Action',2),('Adventure',2),('Sci-Fi',2),('Action',3),('Adventure',3),('Sci-Fi',3),('Action',4),('Adventure',4),('Fantasy',4),('Action',5),('Adventure',5),('Sci-Fi',5),('Action',6),('Adventure',6),('Sci-Fi',6),('Action',7),('Adventure',7),('Sci-Fi',7),('Action',8),('Adventure',8),('Sci-Fi',8),('Action',9),('Adventure',9),('Sci-Fi',9),('Action',10),('Adventure',10),('Sci-Fi',10);
/*!40000 ALTER TABLE `moviegenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movieId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `releaseDate` datetime DEFAULT NULL,
  `directorId` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`movieId`),
  KEY `fk_movie_director1_idx` (`directorId`),
  CONSTRAINT `fk_movie_director1` FOREIGN KEY (`directorId`) REFERENCES `directors` (`directorId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Iron Man','2008-05-01 00:00:00',1,'Tony Starks origin story as Iron Man'),(2,'Captain America: The first Avenger','2011-12-12 00:00:00',2,'Origin story of Captain America'),(3,'Iron Man 2','2010-04-28 00:00:00',1,'Tony Stark continues as Iron Man'),(4,'Thor','2011-04-27 00:00:00',3,'Origin story of Thor'),(5,'Avengers','2012-04-27 00:00:00',4,'the Avengers Assemble against Loki'),(6,'Iron Man 3','2013-04-24 00:00:00',5,'Tony Stark have PTSD from Avengers'),(7,'Captain America: The Winter Soldier','2014-03-26 00:00:00',6,'Captain America searches for hydra agents'),(8,'Thor: The Dark World','2013-10-30 00:00:00',7,'Thor reunites with Jane Foster'),(9,'Guardians of the Galaxy','2014-08-01 00:00:00',8,'Starlord teams up with Gamora,Rocket, Groot and Drax'),(10,'Avengers: Age of Ultron','2015-04-22 00:00:00',4,'Avengers fight against Ultron');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `notreturnedmovies`
--

DROP TABLE IF EXISTS `notreturnedmovies`;
/*!50001 DROP VIEW IF EXISTS `notreturnedmovies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `notreturnedmovies` AS SELECT 
 1 AS `title`,
 1 AS `isReturned`,
 1 AS `employee`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orderrows`
--

DROP TABLE IF EXISTS `orderrows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderrows` (
  `isReturned` tinyint(4) NOT NULL,
  `orderId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  KEY `fk_orderRow_order1_idx` (`orderId`),
  KEY `fk_orderRow_movie1_idx` (`movieId`),
  CONSTRAINT `fk_orderRow_movie1` FOREIGN KEY (`movieId`) REFERENCES `movies` (`movieId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderRow_order1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderrows`
--

LOCK TABLES `orderrows` WRITE;
/*!40000 ALTER TABLE `orderrows` DISABLE KEYS */;
INSERT INTO `orderrows` VALUES (0,1,1),(1,1,2),(0,2,4),(0,2,5),(1,3,8),(1,4,1),(1,5,6),(1,5,7),(1,5,8),(0,5,9),(0,5,10),(0,3,9),(0,3,10);
/*!40000 ALTER TABLE `orderrows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `adress` varchar(45) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `employeeId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `sendDate` datetime DEFAULT NULL,
  `returnDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `fk_order_employee1_idx` (`employeeId`),
  KEY `fk_order_customer1_idx` (`customerId`),
  CONSTRAINT `fk_order_customer1` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_employee1` FOREIGN KEY (`employeeId`) REFERENCES `employees` (`employeeId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'linköpin 554',1,1,'2018-03-29 00:00:00','2018-04-04 00:00:00'),(2,'norrköping 624',1,2,'2018-04-05 00:00:00','2018-04-09 00:00:00'),(3,'motala 451',2,3,'2018-04-04 00:00:00','2018-04-08 00:00:00'),(4,'tjällmo 231',3,2,'2018-03-30 00:00:00','2018-04-05 00:00:00'),(5,'linköpin 345',3,4,'2018-04-06 00:00:00','2018-04-10 00:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `overtimenotreturnedmovies`
--

DROP TABLE IF EXISTS `overtimenotreturnedmovies`;
/*!50001 DROP VIEW IF EXISTS `overtimenotreturnedmovies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `overtimenotreturnedmovies` AS SELECT 
 1 AS `title`,
 1 AS `returnDate`,
 1 AS `currentDate`,
 1 AS `isReturned`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ownedmovies`
--

DROP TABLE IF EXISTS `ownedmovies`;
/*!50001 DROP VIEW IF EXISTS `ownedmovies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ownedmovies` AS SELECT 
 1 AS `title`,
 1 AS `releaseDate`,
 1 AS `description`,
 1 AS `director`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'rasmusi'
--
/*!50003 DROP PROCEDURE IF EXISTS `loanMovie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `loanMovie`(orId int(11),in cuId int(11),emId int(11),moId int(11),adrs varchar(45))
begin
insert into orders(adress,employeeId,customerId,sendDate,returnDate)
select * from(select adrs,emId,cuId,now(),now()+ interval 4 day) as tmp
where not exists(select orderId from orders where orderId=orId)
limit 1;
insert into orderrows(isReturned,orderId,movieId)
values (0,orId,moId);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `employeemovies`
--

/*!50001 DROP VIEW IF EXISTS `employeemovies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeemovies` AS select concat(`employees`.`firstName`,' ',`employees`.`lastName`) AS `employees`,count(`orderrows`.`orderId`) AS `nrOfLoandMovies` from ((`employees` left join `orders` on((`employees`.`employeeId` = `orders`.`employeeId`))) left join `orderrows` on((`orders`.`orderId` = `orderrows`.`orderId`))) group by `employees`.`employeeId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `genres`
--

/*!50001 DROP VIEW IF EXISTS `genres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `genres` AS select group_concat(`moviegenre`.`genre` separator ' ') AS `genre`,`movies`.`title` AS `title` from (`movies` left join `moviegenre` on((`moviegenre`.`movieId` = `movies`.`movieId`))) group by `movies`.`title` order by `movies`.`title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `genres_action`
--

/*!50001 DROP VIEW IF EXISTS `genres_action`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `genres_action` AS select `genres`.`genre` AS `genre`,`genres`.`title` AS `title` from `genres` where (`genres`.`genre` like '%Action%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `genres_adventure`
--

/*!50001 DROP VIEW IF EXISTS `genres_adventure`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `genres_adventure` AS select `genres`.`genre` AS `genre`,`genres`.`title` AS `title` from `genres` where (`genres`.`genre` like '%SAdventure%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `genres_fantasy`
--

/*!50001 DROP VIEW IF EXISTS `genres_fantasy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `genres_fantasy` AS select `genres`.`genre` AS `genre`,`genres`.`title` AS `title` from `genres` where (`genres`.`genre` like '%Fantasy%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `genres_scifi`
--

/*!50001 DROP VIEW IF EXISTS `genres_scifi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `genres_scifi` AS select `genres`.`genre` AS `genre`,`genres`.`title` AS `title` from `genres` where (`genres`.`genre` like '%Sci-Fi%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notreturnedmovies`
--

/*!50001 DROP VIEW IF EXISTS `notreturnedmovies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `notreturnedmovies` AS select `movies`.`title` AS `title`,`orderrows`.`isReturned` AS `isReturned`,concat(`employees`.`firstName`,' ',`employees`.`lastName`) AS `employee`,`customers`.`email` AS `email` from ((((`orderrows` left join `movies` on((`movies`.`movieId` = `orderrows`.`movieId`))) left join `orders` on((`orderrows`.`orderId` = `orders`.`orderId`))) left join `employees` on((`orders`.`employeeId` = `employees`.`employeeId`))) left join `customers` on((`orders`.`customerId` = `customers`.`customerId`))) where (`orderrows`.`isReturned` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `overtimenotreturnedmovies`
--

/*!50001 DROP VIEW IF EXISTS `overtimenotreturnedmovies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `overtimenotreturnedmovies` AS select `movies`.`title` AS `title`,`orders`.`returnDate` AS `returnDate`,now() AS `currentDate`,`orderrows`.`isReturned` AS `isReturned` from ((`orders` left join `orderrows` on((`orders`.`orderId` = `orderrows`.`orderId`))) left join `movies` on((`orderrows`.`movieId` = `movies`.`movieId`))) where ((now() > `orders`.`returnDate`) and (`orderrows`.`isReturned` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ownedmovies`
--

/*!50001 DROP VIEW IF EXISTS `ownedmovies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ownedmovies` AS select `movies`.`title` AS `title`,`movies`.`releaseDate` AS `releaseDate`,`movies`.`description` AS `description`,concat(`directors`.`firstName`,' ',`directors`.`lastName`) AS `director` from (`movies` left join `directors` on((`movies`.`directorId` = `directors`.`directorId`))) order by `movies`.`title` */;
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

-- Dump completed on 2018-05-26 17:40:45
