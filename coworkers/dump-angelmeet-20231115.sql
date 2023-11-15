-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (x86_64)
--
-- Host: localhost    Database: angelmeet
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `meeting_room`
--

DROP TABLE IF EXISTS `meeting_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_room` (
  `mid` bigint NOT NULL AUTO_INCREMENT,
  `building_name` varchar(100) NOT NULL,
  `first_registered_at` timestamp NULL DEFAULT NULL,
  `first_registered_by` varchar(10) NOT NULL,
  `floor` int NOT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `usable_from` date DEFAULT NULL,
  `usable_to` date DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_room`
--

LOCK TABLES `meeting_room` WRITE;
/*!40000 ALTER TABLE `meeting_room` DISABLE KEYS */;
INSERT INTO `meeting_room` VALUES (1,'현대오피스빌딩','2023-11-15 07:30:08','admin',10,'2023-11-15 07:30:08','admin','10층 대회의실','2019-01-01','9999-12-31'),(2,'현대오피스빌딩','2023-11-15 07:30:08','admin',10,'2023-11-15 07:30:08','admin','10층 MT ROOM 1','2019-01-01','9999-12-31'),(3,'현대오피스빌딩','2023-11-15 07:30:08','admin',10,'2023-11-15 07:30:08','admin','10층 MT ROOM 2','2019-01-01','9999-12-31'),(4,'현대오피스빌딩','2023-11-15 07:30:08','admin',10,'2023-11-15 07:30:08','admin','10층 MT ROOM 3','2019-01-01','9999-12-31'),(5,'현대오피스빌딩','2023-11-15 07:30:08','admin',10,'2023-11-15 07:30:08','admin','10층 MT ROOM 4','2019-01-01','9999-12-31'),(6,'현대오피스빌딩','2023-11-15 07:30:08','admin',8,'2023-11-15 07:30:08','admin','8층 대회의실','2019-01-01','9999-12-31'),(7,'현대오피스빌딩','2023-11-15 07:30:08','admin',8,'2023-11-15 07:30:08','admin','8층 MT ROOM 1','2019-01-01','9999-12-31'),(8,'현대오피스빌딩','2023-11-15 07:30:08','admin',8,'2023-11-15 07:30:08','admin','8층 MT ROOM 2','2019-01-01','9999-12-31'),(9,'현대오피스빌딩','2023-11-15 07:30:08','admin',8,'2023-11-15 07:30:08','admin','8층 MT ROOM 3','2019-01-01','9999-12-31'),(10,'현대오피스빌딩','2023-11-15 07:30:08','admin',8,'2023-11-15 07:30:08','admin','8층 LAB 2','2019-01-01','9999-12-31'),(11,'현대오피스빌딩','2023-11-15 07:30:08','admin',8,'2023-11-15 07:30:08','admin','8층 LAB 3','2019-01-01','9999-12-31'),(12,'현대오피스빌딩','2023-11-15 07:30:08','admin',12,'2023-11-15 07:30:08','admin','12층 MT ROOM 2','2019-01-01','9999-12-31'),(13,'현대오피스빌딩','2023-11-15 07:30:08','admin',12,'2023-11-15 07:30:08','admin','12층 MT ROOM 3','2019-01-01','9999-12-31'),(14,'현대오피스빌딩','2023-11-15 07:30:08','admin',12,'2023-11-15 07:30:08','admin','12층 MT ROOM 4','2019-01-01','9999-12-31');
/*!40000 ALTER TABLE `meeting_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `rid` bigint NOT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `first_registered_at` timestamp NULL DEFAULT NULL,
  `first_registered_through` varchar(10) NOT NULL,
  `is_repeated` tinyint(1) DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `last_modified_through` varchar(10) NOT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_interval` int DEFAULT NULL,
  `representative_rid` bigint DEFAULT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  PRIMARY KEY (`rid`),
  CONSTRAINT `reservation_FK` FOREIGN KEY (`rid`) REFERENCES `meeting_room` (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'angelmeet'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 16:39:11
