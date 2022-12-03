-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: product_management_system_server
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `img_path` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_types`
--

DROP TABLE IF EXISTS `category_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_types`
--

LOCK TABLES `category_types` WRITE;
/*!40000 ALTER TABLE `category_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaints`
--

DROP TABLE IF EXISTS `complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complaints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaints`
--

LOCK TABLES `complaints` WRITE;
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (3,'Goooo123','dsdsdddadasdadadadsadasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdads','2022-11-29 08:54:30','2022-11-29 09:18:15'),(4,'Department - CxFj5inUtO','Dummy DescriptioncGZ4yCMtwR','2022-11-30 13:51:09','2022-11-30 13:51:09'),(5,'Department - pbMrb2mkF2','Dummy Description4LHnWpzFlJ','2022-11-30 13:53:28','2022-11-30 13:53:28'),(6,'Department - zDEcRL9fq1','Dummy DescriptionYETXpgHNLM','2022-11-30 13:53:28','2022-11-30 13:53:28'),(7,'Department - SfOLhcOFeM','Dummy DescriptionCAFkTfaHPE','2022-11-30 13:53:28','2022-11-30 13:53:28'),(8,'Department - yOwsjWdflM','Dummy DescriptionjUzSw7FDTh','2022-11-30 13:53:28','2022-11-30 13:53:28'),(9,'Department - BM7qNCydaN','Dummy Descriptionjn48smrzLe','2022-11-30 13:53:28','2022-11-30 13:53:28'),(10,'Department - o8MLFmHuvn','Dummy DescriptionHYOgDgFU00','2022-11-30 13:53:28','2022-11-30 13:53:28'),(11,'Department - R89yor83E1','Dummy Descriptionfy7NIJZm63','2022-11-30 13:53:28','2022-11-30 13:53:28'),(12,'Department - zawF9cCdNP','Dummy DescriptionIHkwiZM8br','2022-11-30 13:53:28','2022-11-30 13:53:28'),(13,'Department - f7Qs8AjV50','Dummy DescriptionpmPevancUP','2022-11-30 13:53:28','2022-11-30 13:53:28'),(14,'Department - cQ9wiGxZXw','Dummy DescriptionPn9tMvNukQ','2022-11-30 13:53:28','2022-11-30 13:53:28'),(15,'Department - NXsjwZnyi8','Dummy DescriptionuG9mP6ECe7','2022-11-30 13:53:28','2022-11-30 13:53:28'),(16,'Department - Xh4cwauJfO','Dummy Descriptiond6PZcncbIE','2022-11-30 13:53:28','2022-11-30 13:53:28'),(17,'Department - S8G4DcNNNf','Dummy DescriptionJlCEyz4O1g','2022-11-30 13:53:28','2022-11-30 13:53:28'),(18,'Department - PyZgcpeQ2L','Dummy DescriptionJnxbtl5hy0','2022-11-30 13:53:28','2022-11-30 13:53:28'),(19,'Department - 22kv2peMgy','Dummy DescriptionbhDkNd7gZx','2022-11-30 13:53:28','2022-11-30 13:53:28'),(20,'Department - SxQbQeoglo','Dummy DescriptionUYQE9PgAML','2022-11-30 13:53:28','2022-11-30 13:53:28'),(21,'Department - cAsLdynoMg','Dummy Description9FUcvfBE5c','2022-11-30 13:53:28','2022-11-30 13:53:28'),(22,'Department - ySlAAyyGHs','Dummy DescriptionpoATxppN5P','2022-11-30 13:53:28','2022-11-30 13:53:28'),(23,'Department - 7VSVbhxtZL','Dummy DescriptionzTryuFjqYF','2022-11-30 13:53:28','2022-11-30 13:53:28'),(24,'Department - Ki1fAS7BQR','Dummy DescriptionRUxGwLR5MU','2022-11-30 13:53:28','2022-11-30 13:53:28'),(25,'Department - xXjx065VTJ','Dummy DescriptionPl20NpDv5s','2022-11-30 13:53:28','2022-11-30 13:53:28'),(26,'Department - othN7DLlcC','Dummy Descriptionp8owLyRrAi','2022-11-30 13:53:28','2022-11-30 13:53:28'),(27,'Department - fX4y3dBZTG','Dummy Description84QkOvcVVt','2022-11-30 13:53:28','2022-11-30 13:53:28'),(28,'Department - fRzBLZyBJr','Dummy DescriptionDDFGac7A2x','2022-11-30 13:53:28','2022-11-30 13:53:28'),(29,'Department - FNoXlYjNZp','Dummy DescriptiondolcQqJv6y','2022-11-30 13:53:28','2022-11-30 13:53:28'),(30,'Department - pdNnssEKOt','Dummy DescriptionnhcqVe3D4C','2022-11-30 13:53:28','2022-11-30 13:53:28'),(31,'Department - iaOlcU3tee','Dummy DescriptionVnqgMFx7fQ','2022-11-30 13:53:28','2022-11-30 13:53:28'),(32,'Department - UO5WRJcxYj','Dummy DescriptionpsVdGObUUY','2022-11-30 13:53:28','2022-11-30 13:53:28'),(33,'Department - j0faLEnpL2','Dummy Description5IXRAY6VFl','2022-11-30 13:53:28','2022-11-30 13:53:28'),(34,'Department - O5Dkd3KBgC','Dummy DescriptionMWx3ppYPca','2022-11-30 13:53:28','2022-11-30 13:53:28'),(35,'Department - u1I7DPLnfD','Dummy DescriptionXBzgEieVtO','2022-11-30 13:53:28','2022-11-30 13:53:28'),(36,'Department - BKFcQKdvvy','Dummy Descriptiono3eXJ3PhmS','2022-11-30 13:53:28','2022-11-30 13:53:28'),(37,'Department - kNXWI0x6Bh','Dummy DescriptiongsUDuNSVkw','2022-11-30 13:53:28','2022-11-30 13:53:28'),(38,'Department - z8eZy3QSPn','Dummy DescriptionE9bKqKowpu','2022-11-30 13:53:28','2022-11-30 13:53:28'),(39,'Department - Uc6nscfR6I','Dummy DescriptionCBGklhIeM3','2022-11-30 13:53:28','2022-11-30 13:53:28'),(40,'Department - 7hDOzRP1Qy','Dummy Descriptionq9x6ux24gH','2022-11-30 13:53:28','2022-11-30 13:53:28'),(41,'Department - pNKyaQ3dz4','Dummy DescriptionWeSSEWQo7o','2022-11-30 13:53:28','2022-11-30 13:53:28'),(42,'Department - ZPV28naU8K','Dummy DescriptionDbary6ylkS','2022-11-30 13:53:28','2022-11-30 13:53:28'),(43,'Department - daSqoQcbIR','Dummy DescriptionUjIGpWy0Us','2022-11-30 13:53:28','2022-11-30 13:53:28'),(44,'Department - 6kZxnSul0Y','Dummy Descriptionct2LC80Atw','2022-11-30 13:53:28','2022-11-30 13:53:28'),(45,'Department - 60rZOugVJ3','Dummy DescriptionEKrGnbWT56','2022-11-30 13:53:28','2022-11-30 13:53:28'),(46,'Department - elwtOVP2Kk','Dummy DescriptionEuYOBJvXzM','2022-11-30 13:53:28','2022-11-30 13:53:28'),(47,'Department - 2r6sMh6WdR','Dummy DescriptionUUn0UXxSjo','2022-11-30 13:53:28','2022-11-30 13:53:28'),(48,'Department - QRe285D6Zb','Dummy DescriptionnQLT8q7mmx','2022-11-30 13:53:28','2022-11-30 13:53:28'),(49,'Department - nHuZsyZVSa','Dummy DescriptionDz0jJoLk8D','2022-11-30 13:53:28','2022-11-30 13:53:28'),(50,'Department - xd29dmXEef','Dummy Descriptiond3FpXMtlCL','2022-11-30 13:53:28','2022-11-30 13:53:28'),(51,'Department - DWOUfxqnGR','Dummy Description7tuwnMOlpZ','2022-11-30 13:53:28','2022-11-30 13:53:28'),(52,'Department - R7uuP852SV','Dummy Descriptionc4KhuoyAlV','2022-11-30 13:53:28','2022-11-30 13:53:28'),(53,'Department - 3KlY5DImQB','Dummy DescriptionwAfieKEttN','2022-11-30 13:53:28','2022-11-30 13:53:28'),(54,'Department - mp8sFnd7kD','Dummy DescriptionqxxRjEgmlo','2022-11-30 13:53:28','2022-11-30 13:53:28'),(55,'Department - QTE0hx0xcx','Dummy DescriptionfUlVCWgDZE','2022-11-30 13:53:28','2022-11-30 13:53:28'),(56,'Department - 0fjhcecTfp','Dummy Description245AsWYjuL','2022-11-30 13:53:28','2022-11-30 13:53:28'),(57,'Department - JuHucgbcjv','Dummy Descriptionx7Aw1MW4iq','2022-11-30 13:53:28','2022-11-30 13:53:28'),(58,'Department - GaEfFGJwab','Dummy DescriptionUL7pRboB9c','2022-11-30 13:53:28','2022-11-30 13:53:28'),(59,'Department - sqSZeFCXMj','Dummy DescriptionZlNGOXZpDO','2022-11-30 13:53:28','2022-11-30 13:53:28'),(60,'Department - slCV0rS6PT','Dummy DescriptionylBX5zyM9w','2022-11-30 13:53:28','2022-11-30 13:53:28'),(61,'Department - 5yrYExfxmO','Dummy DescriptionkWCHQIJqxD','2022-11-30 13:53:28','2022-11-30 13:53:28'),(62,'Department - GmqHtHpZd2','Dummy DescriptionExduwh67iQ','2022-11-30 13:53:28','2022-11-30 13:53:28'),(63,'Department - Psb23nUYVw','Dummy DescriptionAOir5fVtkK','2022-11-30 13:53:28','2022-11-30 13:53:28'),(64,'Department - 25GUBwBC4f','Dummy DescriptionrH08GzY7Nb','2022-11-30 13:53:28','2022-11-30 13:53:28'),(65,'Department - 3EEsJ96qTu','Dummy DescriptionwR6Ou39To4','2022-11-30 13:53:28','2022-11-30 13:53:28'),(66,'Department - MD793q8sGQ','Dummy DescriptionFhJ8WAnrWT','2022-11-30 13:53:28','2022-11-30 13:53:28'),(67,'Department - f5tu47NIoV','Dummy DescriptionIXppdXntob','2022-11-30 13:53:28','2022-11-30 13:53:28'),(68,'Department - 0aTMBG1R3g','Dummy DescriptionjJPeJaCZM6','2022-11-30 13:53:28','2022-11-30 13:53:28'),(69,'Department - JTCHdgKoiF','Dummy DescriptionUnxB6eDbOy','2022-11-30 13:53:28','2022-11-30 13:53:28'),(70,'Department - DV7t3ADfV4','Dummy DescriptionQqA8Az437q','2022-11-30 13:53:28','2022-11-30 13:53:28'),(71,'Department - zFzbdZtYIN','Dummy DescriptionEvxA5O6N3q','2022-11-30 13:53:28','2022-11-30 13:53:28'),(72,'Department - yJ8N3Q9AoG','Dummy DescriptiondYO0Jm7Qlm','2022-11-30 13:53:28','2022-11-30 13:53:28'),(73,'Department - HwElIRmq6D','Dummy DescriptionYs7HEe0Olk','2022-11-30 13:53:28','2022-11-30 13:53:28'),(74,'Department - OhVsN7NIfz','Dummy DescriptionycI3Bi1MqK','2022-11-30 13:53:28','2022-11-30 13:53:28'),(75,'Department - 4aETLqqOSw','Dummy DescriptionZQ90ea3Ulv','2022-11-30 13:53:28','2022-11-30 13:53:28'),(76,'Department - 4Aosb8LDxT','Dummy DescriptionpHjd4OCE1v','2022-11-30 13:53:28','2022-11-30 13:53:28'),(77,'Department - PQSOc5nnMs','Dummy DescriptionMrVLeuRYJM','2022-11-30 13:53:28','2022-11-30 13:53:28'),(78,'Department - mQ7FdKz01l','Dummy Description1zFspswdki','2022-11-30 13:53:28','2022-11-30 13:53:28'),(79,'Department - Q3jRngiuby','Dummy DescriptionZnqMqbq1Ho','2022-11-30 13:53:28','2022-11-30 13:53:28'),(80,'Department - 9RyJbxZguW','Dummy DescriptionCSAM0yX5g1','2022-11-30 13:53:28','2022-11-30 13:53:28'),(81,'Department - 4Bl0lybtsN','Dummy Description97tNKLKHDW','2022-11-30 13:53:28','2022-11-30 13:53:28'),(82,'Department - kQz65AikYc','Dummy DescriptionlJt9wnU3wy','2022-11-30 13:53:28','2022-11-30 13:53:28'),(83,'Department - OyeWZjANq4','Dummy DescriptionwIZM9WSveD','2022-11-30 13:53:28','2022-11-30 13:53:28'),(84,'Department - BkNs6CEOwf','Dummy DescriptionCxa7aoav48','2022-11-30 13:53:28','2022-11-30 13:53:28'),(85,'Department - af4dewzrE3','Dummy Description3K0Wx539ch','2022-11-30 13:53:28','2022-11-30 13:53:28'),(86,'Department - l0tzz3nPxw','Dummy DescriptionacxbK1x9Wv','2022-11-30 13:53:28','2022-11-30 13:53:28'),(87,'Department - gl3MmONRP7','Dummy DescriptionYooLBRpb0M','2022-11-30 13:53:28','2022-11-30 13:53:28'),(88,'Department - 3OX4v5cMcN','Dummy DescriptionFIv6N7WR5L','2022-11-30 13:53:28','2022-11-30 13:53:28'),(89,'Department - orerRIFhx3','Dummy DescriptionEKuYiVjPA1','2022-11-30 13:53:28','2022-11-30 13:53:28'),(90,'Department - JNNhbKVC1H','Dummy Descriptionm8wNuY7JnL','2022-11-30 13:53:28','2022-11-30 13:53:28'),(91,'Department - 2J1c6KPXPJ','Dummy DescriptionOgWlT9Esgy','2022-11-30 13:53:28','2022-11-30 13:53:28'),(92,'Department - iFls5lLde6','Dummy DescriptionStZi9bJabO','2022-11-30 13:53:28','2022-11-30 13:53:28'),(93,'Department - EOeBA1pZrR','Dummy DescriptionmgYLuHFyCv','2022-11-30 13:53:28','2022-11-30 13:53:28'),(94,'Department - kv0CPcF0Sl','Dummy DescriptionNsW0EXfquh','2022-11-30 13:53:28','2022-11-30 13:53:28'),(95,'Department - vGk6eFPJBD','Dummy DescriptiontxQv6YbJ30','2022-11-30 13:53:28','2022-11-30 13:53:28'),(96,'Department - XBC1Vg8Td2','Dummy DescriptionkHYNZLjHza','2022-11-30 13:53:28','2022-11-30 13:53:28'),(97,'Department - ZPUoeRhLwO','Dummy Descriptiona3FbgqKDSW','2022-11-30 13:53:28','2022-11-30 13:53:28'),(98,'Department - mZnwQd3SDp','Dummy DescriptionLMk7mzyHHG','2022-11-30 13:53:28','2022-11-30 13:53:28'),(99,'Department - p1DQPaECr7','Dummy DescriptionbUi2hc6VWP','2022-11-30 13:53:28','2022-11-30 13:53:28'),(100,'Department - ktbDzMXwgU','Dummy DescriptionioPYO4FlFO','2022-11-30 13:53:28','2022-11-30 13:53:28'),(101,'Department - IOOGWlZKdn','Dummy Description7L9tFirE8d','2022-11-30 13:53:28','2022-11-30 13:53:28'),(102,'Department - 5lSoGybCaC','Dummy Descriptionf8msOhvfl1','2022-11-30 13:53:28','2022-11-30 13:53:28'),(103,'Department - tF8DXTwAVZ','Dummy Description1zCMum8iMp','2022-11-30 13:53:28','2022-11-30 13:53:28'),(104,'Department - bQW5ZM1n3Q','Dummy Description2PkB8PlZEu','2022-11-30 13:53:28','2022-11-30 13:53:28'),(105,'Goooofdsffs','dfgfdgfgffdsfdsf','2022-11-30 12:12:05','2022-11-30 12:12:05'),(106,'Goooo','fdsf','2022-11-30 12:15:13','2022-11-30 12:15:13');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(225) NOT NULL,
  `host` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `number` bigint(20) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `photo_path` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `salary` int(11) NOT NULL DEFAULT 0,
  `roll` varchar(225) DEFAULT NULL,
  `document_path` varchar(225) DEFAULT NULL,
  `cv_path` varchar(225) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,'Sourav Maity',8252591281,'souravmaity091@gmail.com',NULL,'Jamshedpur','2022-12-02 09:13:18','2022-12-02 09:12:58',NULL,20,'Developer',NULL,NULL,106);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_user_id` int(11) NOT NULL,
  `reciver_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `message_body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2016_09_13_070520_add_verification_to_user_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `message` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_stage`
--

DROP TABLE IF EXISTS `order_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_stage` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_stage`
--

LOCK TABLES `order_stage` WRITE;
/*!40000 ALTER TABLE `order_stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(10) NOT NULL,
  `form_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `payment_id` varchar(225) DEFAULT NULL,
  `order_id` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oreder_track`
--

DROP TABLE IF EXISTS `oreder_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oreder_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_stage_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oreder_track`
--

LOCK TABLES `oreder_track` WRITE;
/*!40000 ALTER TABLE `oreder_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `oreder_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('souravmauty091@gmail.com','$2y$10$rRyINWbsrs5.sLRcAuz0G.DZ6Z0CmDJ4pq0H453kUJrD3k4lJnRLq','2022-11-21 02:10:52');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_inventory`
--

DROP TABLE IF EXISTS `product_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_inventory`
--

LOCK TABLES `product_inventory` WRITE;
/*!40000 ALTER TABLE `product_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `img_path` varchar(225) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `img_path` varchar(225) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `name` varchar(100) NOT NULL,
  `desc` text DEFAULT NULL,
  `img_path` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `messages` varchar(225) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `assign_user_id` int(11) DEFAULT NULL,
  `workier_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traffics`
--

DROP TABLE IF EXISTS `traffics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `traffics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(50) NOT NULL,
  `device` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traffics`
--

LOCK TABLES `traffics` WRITE;
/*!40000 ALTER TABLE `traffics` DISABLE KEYS */;
/*!40000 ALTER TABLE `traffics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sourav Maity','souravmaity091@gmail.com',NULL,'$2y$10$gEfKqWU3/sctQHGq8nzrUeO5qRBggBm.0a1/UTgZFS47RjQPTcT7W',NULL,'2022-12-02 09:12:58','2022-12-02 09:13:18',0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-03 19:50:14
