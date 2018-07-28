-- MySQL dump 10.13  Distrib 5.6.19, for Win32 (x86)
--
-- Host: localhost    Database: library_ex_2015
-- ------------------------------------------------------
-- Server version	5.6.19-log

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `a_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `a_name` varchar(150) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `b_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `b_name` varchar(150) NOT NULL,
  `b_year` smallint(5) unsigned NOT NULL,
  `b_quantity` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `g_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `g_name` varchar(150) NOT NULL,
  PRIMARY KEY (`g_id`),
  UNIQUE KEY `UQ_genres_g_name` (`g_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2m_books_authors`
--

DROP TABLE IF EXISTS `m2m_books_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m2m_books_authors` (
  `b_id` int(10) unsigned NOT NULL,
  `a_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`b_id`,`a_id`),
  KEY `FK_m2m_books_authors_authors` (`a_id`),
  CONSTRAINT `FK_m2m_books_authors_authors` FOREIGN KEY (`a_id`) REFERENCES `authors` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_m2m_books_authors_books` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2m_books_authors`
--

LOCK TABLES `m2m_books_authors` WRITE;
/*!40000 ALTER TABLE `m2m_books_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2m_books_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2m_books_genres`
--

DROP TABLE IF EXISTS `m2m_books_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m2m_books_genres` (
  `b_id` int(10) unsigned NOT NULL,
  `g_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`b_id`,`g_id`),
  KEY `FK_m2m_books_genres_genres` (`g_id`),
  CONSTRAINT `FK_m2m_books_genres_books` FOREIGN KEY (`b_id`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_m2m_books_genres_genres` FOREIGN KEY (`g_id`) REFERENCES `genres` (`g_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2m_books_genres`
--

LOCK TABLES `m2m_books_genres` WRITE;
/*!40000 ALTER TABLE `m2m_books_genres` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2m_books_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `s_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_name` varchar(150) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `sb_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sb_subscriber` int(10) unsigned NOT NULL,
  `sb_book` int(10) unsigned NOT NULL,
  `sb_start` date NOT NULL,
  `sb_finish` date NOT NULL,
  `sb_is_active` enum('Y','N') NOT NULL,
  PRIMARY KEY (`sb_id`),
  KEY `FK_subscriptions_books` (`sb_book`),
  KEY `FK_subscriptions_subscribers` (`sb_subscriber`),
  CONSTRAINT `FK_subscriptions_books` FOREIGN KEY (`sb_book`) REFERENCES `books` (`b_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_subscriptions_subscribers` FOREIGN KEY (`sb_subscriber`) REFERENCES `subscribers` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-08 18:27:03
