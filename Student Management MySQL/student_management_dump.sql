-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: student_management
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `instructor` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Mathematics 101','Professor Smith','2024-02-01','2024-05-15'),(2,'History 202','Dr. Johnson','2024-03-10','2024-06-20'),(3,'Computer Science Fundamentals','Professor White','2024-01-15','2024-04-30'),(4,'English Composition','Dr. Taylor','2024-02-20','2024-06-01'),(5,'Physics for Beginners','Professor Brown','2024-01-05','2024-04-15'),(6,'Chemistry Lab','Dr. Martinez','2024-03-01','2024-07-10'),(7,'Art History','Professor Anderson','2024-02-15','2024-05-30'),(8,'Psychology 101','Dr. Davis','2024-01-10','2024-04-25'),(9,'Environmental Science','Professor Hernandez','2024-03-05','2024-06-15'),(10,'Business Ethics','Dr. Young','2024-02-10','2024-05-20'),(11,'Statistics and Probability','Professor Lee','2024-01-25','2024-05-05'),(12,'Introduction to Economics','Dr. Rodriguez','2024-03-15','2024-06-30'),(13,'Political Science 202','Professor Adams','2024-01-20','2024-05-01'),(14,'Physical Education','Dr. Thomas','2024-02-05','2024-05-10'),(15,'Music Theory','Professor Moore','2024-03-20','2024-07-05'),(16,'Nutrition and Wellness','Dr. Clark','2024-01-15','2024-04-30'),(17,'Foreign Language - Spanish','Professor Taylor','2024-02-01','2024-05-15'),(18,'Sociology of Culture','Dr. Adams','2024-03-10','2024-06-20'),(19,'Introduction to Astronomy','Professor Lopez','2024-01-05','2024-04-15'),(20,'Marketing Strategies','Dr. Moore','2024-03-01','2024-07-10'),(21,'Philosophy 101','Professor Young','2024-02-20','2024-06-01'),(22,'Geology and Earth Science','Dr. Thomas','2024-01-10','2024-04-25'),(23,'Communication Skills','Professor Brown','2024-03-05','2024-06-15'),(24,'Introduction to Robotics','Dr. Martinez','2024-02-10','2024-05-20'),(25,'Health and Wellness','Professor Davis','2024-01-25','2024-05-05'),(26,'Culinary Arts','Dr. Taylor','2024-03-15','2024-06-30'),(27,'World Literature','Professor Young','2024-01-20','2024-05-01'),(28,'Information Technology Management','Dr. Adams','2024-02-05','2024-05-10'),(29,'Drama and Performance Arts','Professor Clark','2024-03-20','2024-07-05'),(30,'Digital Marketing','Dr. Simmons','2024-03-01','2024-06-15'),(31,'Astrophysics','Professor Turner','2024-01-15','2024-04-30'),(32,'Web Development Fundamentals','Dr. Reynolds','2024-02-20','2024-06-01'),(33,'Literary Analysis','Professor Clark','2024-03-10','2024-06-20'),(34,'Organic Chemistry','Dr. Parker','2024-01-05','2024-04-15'),(35,'Data Science Essentials','Professor Martinez','2024-03-01','2024-07-10'),(36,'Political Economy','Dr. Hill','2024-02-15','2024-05-30'),(37,'Introduction to Psychology','Professor Bailey','2024-01-10','2024-04-25'),(38,'Creative Writing Workshop','Dr. Johnson','2024-03-05','2024-06-15'),(39,'Introduction to Microbiology','Professor Miller','2024-02-10','2024-05-20'),(40,'Financial Accounting','Dr. Carter','2024-01-25','2024-05-05'),(41,'Human Resource Management','Professor Foster','2024-03-15','2024-06-30'),(42,'Environmental Ethics','Dr. Turner','2024-01-20','2024-05-01'),(43,'Introduction to Linguistics','Professor Bryant','2024-02-05','2024-05-10'),(44,'Introduction to Cybersecurity','Dr. Hayes','2024-03-20','2024-07-05'),(45,'International Business','Professor Foster','2024-01-15','2024-04-30'),(46,'Artificial Intelligence','Dr. Reynolds','2024-02-01','2024-05-15'),(47,'World History','Professor Simmons','2024-03-10','2024-06-20'),(48,'Music Production','Dr. Parker','2024-01-05','2024-04-15'),(49,'Public Speaking','Professor Turner','2024-03-01','2024-07-10'),(50,'Graphic Design Basics','Professor Cooper','2024-02-25','2024-06-10');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'John','Doe','1995-03-12','john.doe@example.com','+1234567890','123 Main St, City A'),(2,'Jane','Smith','1998-07-22','jane.smith@example.com','+1987654321','456 Oak St, City B'),(3,'Michael','Johnson','1990-05-05','michael.j@example.com','+1122334455','789 Pine St, City C'),(4,'Emily','Brown','1993-11-18','emily.brown@example.com','+1555666777','101 Elm St, City D'),(5,'Daniel','Wilson','1997-09-30','daniel.w@example.com','+1888777666','202 Maple St, City E'),(6,'Sophia','Miller','1994-02-14','sophia.m@example.com','+1444333222','303 Cedar St, City F'),(7,'Ethan','Davis','1996-08-08','ethan.d@example.com','+1777888999','404 Birch St, City G'),(8,'Olivia','Anderson','1992-12-03','olivia.a@example.com','+1999888777','505 Walnut St, City H'),(9,'Mason','Martinez','1999-04-27','mason.m@example.com','+1666777888','606 Oak St, City I'),(10,'Ava','Taylor','1991-06-15','ava.t@example.com','+1333222111','707 Pine St, City J'),(11,'Liam','Garcia','1998-01-09','liam.g@example.com','+1222111333','808 Maple St, City K'),(12,'Isabella','Rodriguez','1994-10-14','isabella.r@example.com','+1444999888','909 Cedar St, City L'),(13,'Noah','Lee','1993-03-01','noah.l@example.com','+1999111222','111 Elm St, City M'),(14,'Emma','Hernandez','1997-07-07','emma.h@example.com','+1888444333','222 Oak St, City N'),(15,'Aiden','Young','1996-05-20','aiden.y@example.com','+1666555444','333 Pine St, City O'),(16,'Chloe','Lopez','1990-09-11','chloe.l@example.com','+1333444111','444 Maple St, City P'),(17,'Carter','Adams','1995-11-25','carter.a@example.com','+1777999222','555 Cedar St, City Q'),(18,'Grace','Thomas','1992-08-03','grace.t@example.com','+1222888777','666 Elm St, City R'),(19,'Lucas','Moore','1999-02-17','lucas.m@example.com','+1444111222','777 Oak St, City S'),(20,'Lily','Clark','1991-04-05','lily.c@example.com','+1999333444','888 Pine St, City T'),(21,'Elijah','Cooper','1993-06-08','elijah.cooper@example.com','+1888222333','777 Oak St, City U'),(22,'Aria','Perez','1996-09-17','aria.perez@example.com','+1333777888','888 Pine St, City V'),(23,'Logan','Turner','1998-04-02','logan.turner@example.com','+1777000111','999 Elm St, City W'),(24,'Hazel','Baker','1991-11-15','hazel.baker@example.com','+1222333444','111 Cedar St, City X'),(25,'Jackson','Hill','1994-03-28','jackson.hill@example.com','+1444555666','222 Walnut St, City Y'),(26,'Penelope','Flores','1997-08-09','penelope.flores@example.com','+1999666777','333 Maple St, City Z'),(27,'Gabriel','Ward','1992-02-14','gabriel.ward@example.com','+1888333222','444 Birch St, City AA'),(28,'Avery','Reyes','1995-05-27','avery.reyes@example.com','+1333444111','555 Oak St, City BB'),(29,'Scarlett','Fisher','1999-12-10','scarlett.fisher@example.com','+1777888999','666 Pine St, City CC'),(30,'Luke','Watson','1990-07-03','luke.watson@example.com','+1222111222','777 Cedar St, City DD'),(31,'Layla','Gordon','1993-10-16','layla.gordon@example.com','+1444888777','888 Elm St, City EE'),(32,'Caleb','Fleming','1998-01-29','caleb.fleming@example.com','+1999222333','999 Oak St, City FF'),(33,'Zoe','Kennedy','1994-04-12','zoe.kennedy@example.com','+1888555444','111 Pine St, City GG'),(34,'Grayson','Hudson','1996-11-25','grayson.hudson@example.com','+1333999888','222 Cedar St, City HH'),(35,'Aubrey','Bowman','1991-07-08','aubrey.bowman@example.com','+1777111222','333 Elm St, City II'),(36,'Oliver','Morrison','1997-02-21','oliver.morrison@example.com','+1222888333','444 Oak St, City JJ'),(37,'Emma','Ray','1995-06-04','emma.ray@example.com','+1444777666','555 Pine St, City KK'),(38,'Miles','Wells','1999-09-17','miles.wells@example.com','+1999000111','666 Cedar St, City LL'),(39,'Hannah','Sharp','1992-04-30','hannah.sharp@example.com','+1888777555','777 Elm St, City MM'),(40,'Nolan','Fields','1990-08-13','nolan.fields@example.com','+1333666444','888 Oak St, City NN'),(41,'Grace','Harrison','1994-12-26','grace.harrison@example.com','+1777444333','999 Pine St, City OO'),(42,'Carter','Goodman','1993-03-09','carter.goodman@example.com','+1222555222','111 Cedar St, City PP'),(43,'Lillian','Manning','1998-10-22','lillian.manning@example.com','+1444666111','222 Maple St, City QQ'),(44,'Liam','Blackwell','1996-05-05','liam.blackwell@example.com','+1999333444','333 Elm St, City RR'),(45,'Aurora','Fuller','1991-09-18','aurora.fuller@example.com','+1888222111','444 Pine St, City SS'),(46,'Jack','Norman','1995-02-01','jack.norman@example.com','+1333555333','555 Oak St, City TT'),(47,'Stella','Gibson','1997-07-14','stella.gibson@example.com','+1777666888','666 Pine St, City UU'),(48,'Ezra','Chapman','1999-11-27','ezra.chapman@example.com','+1222999888','777 Cedar St, City VV'),(49,'Isaac','Barnes','1992-06-10','isaac.barnes@example.com','+1444333222','888 Elm St, City WW'),(50,'Sophie','Ward','1996-12-22','sophie.ward@example.com','+1999444555','123 Pine St, City ZZ');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-20 14:40:26
