-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: stowqr
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'v','v@gmail.com','$2a$08$FyK7qEzeLLB0d7d6V/uv7OTHvktHvT/DnLCShcYLKATeC4hN/OJCm','2024-10-24 22:43:04'),(4,'v','vi@gmail.com','$2a$08$bh1wOLnwmA6skq8Af6clZ.rqvSqsF5.XQVUCvqGxwsZ8mS6RYowG.','2024-10-24 22:48:51'),(5,'v','vin@gmail.com','$2a$08$Gq1DMU13rtL5VG.KH93tWu3IG6CG.LQh4FI6hhTcljwR7ZE95R61u','2024-10-24 22:51:13'),(6,'vinay mallipudi','vpm5275@psu.edu','$2a$08$mFtUwSebRfRMPyGdwMKg4eEmD8vFszEn991lO0DgVw9jUXxKRpR3C','2024-10-24 23:55:04'),(7,'Vinay','vins@gmail.com','$2a$08$4ZuZgl3gK94Mmu1OjWopmekPtJkitdKX73icAWVviDUAWAHUbF34.','2024-10-26 21:13:22'),(8,'f','f@gmail.com','$2a$08$5fHqG7XmWlKi2yIO7bvXVeOiSNlmE.tE.dLd0f9CKTY85hxrZ3bE6','2024-10-26 21:21:25'),(11,'g','g@gmail.com','$2a$08$S/7niECSomJi5yOYZnzcmucdEk.Cx7StHfPVAvjmAzpATia.PAe72','2024-10-26 21:26:16'),(12,'t','t@gmail.com','$2a$08$sY2zEb9C79C3VcGbVvZqgOn12XzbVnAy7iyDBPz.GBCvTi0jBAAk.','2024-10-26 21:32:19'),(13,'j','j@gmail.com','$2a$08$0jc9KZYOZxAtd0OInDv2f.VdKhp.6H7NVWV6KxdbqoWhuzZR34HP2','2024-10-26 21:38:40'),(14,'h','h@gmail.com','$2a$08$jmrlxGJ1c03keEw8ioyD5OSURpAizqoGNqtQCFKyYEXO4lcpu5MA.','2024-10-26 22:15:41');
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

-- Dump completed on 2024-10-26 18:39:42
