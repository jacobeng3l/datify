-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: team_8
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `date_published` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'The Click',NULL,NULL,NULL),(2,'YouTube',NULL,NULL,NULL),(3,'?',NULL,NULL,NULL),(4,'Yeezus',NULL,NULL,NULL),(5,'My Beautiful Dark Twisted Fantasy',NULL,NULL,NULL),(6,'ye',NULL,NULL,NULL),(7,'Night Visions',NULL,NULL,NULL),(8,'Smoke and Mirrors',NULL,NULL,NULL),(9,'Evolve',NULL,NULL,NULL),(10,'Starboy',NULL,NULL,NULL),(200,'YouTube Audio Library',NULL,NULL,NULL),(201,'Atlas',NULL,NULL,NULL),(202,'3',NULL,NULL,NULL),(203,'Parkin\'',NULL,NULL,NULL),(204,'feelz',NULL,NULL,NULL);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `plays` int(11) DEFAULT '0',
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'XXXTentacion',NULL,NULL,NULL,0),(2,'George Washington',NULL,NULL,NULL,0),(3,'AJR',NULL,NULL,NULL,0),(4,'Kanye West',NULL,NULL,NULL,0),(5,'Imagine Dragons',NULL,NULL,NULL,0),(6,'The Weeknd',NULL,NULL,NULL,0),(200,'Freedom Trail Studio',NULL,NULL,NULL,0),(201,'Sextile',NULL,NULL,NULL,0),(202,'Silent Panther',NULL,NULL,NULL,0),(203,'Riot',NULL,NULL,NULL,0),(204,'ALBIS',NULL,NULL,NULL,0),(205,'Jungle Punks',NULL,NULL,NULL,0),(206,'The Whole Other',NULL,NULL,NULL,0),(207,'Wayne Jones',NULL,NULL,NULL,0),(208,'Vibe Mountain',NULL,NULL,NULL,0),(209,'Geographer',NULL,NULL,NULL,0),(210,'Anno Domini Beats',NULL,NULL,NULL,0),(211,'Quincas Moreira',NULL,NULL,NULL,0),(212,'Chris Haugen',NULL,NULL,NULL,0),(213,'Dan Lebowitz',NULL,NULL,NULL,0),(214,'roljui',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `in_library`
--

DROP TABLE IF EXISTS `in_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `in_library` (
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `date_added` date DEFAULT NULL,
  `plays` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`,`song_id`),
  KEY `song_id` (`song_id`),
  CONSTRAINT `in_library_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `in_library_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `in_library`
--

LOCK TABLES `in_library` WRITE;
/*!40000 ALTER TABLE `in_library` DISABLE KEYS */;
INSERT INTO `in_library` VALUES (1,2,NULL,0),(1,3,NULL,0),(1,6,NULL,0),(1,7,NULL,0),(1,8,NULL,0),(1,15,NULL,0),(1,16,NULL,0),(1,19,NULL,0),(1,20,NULL,0),(1,21,NULL,0),(1,22,NULL,0),(1,47,NULL,0),(1,50,NULL,0),(1,61,NULL,0),(1,62,NULL,0),(1,63,NULL,0),(1,66,NULL,0),(1,72,NULL,0),(1,74,NULL,0),(1,85,NULL,0),(1,200,NULL,0),(2,8,NULL,0),(2,9,NULL,0),(2,10,NULL,0),(2,20,NULL,0),(2,23,NULL,0),(2,24,NULL,0),(2,25,NULL,0),(2,26,NULL,0),(2,27,NULL,0),(2,28,NULL,0),(2,45,NULL,0),(2,46,NULL,0),(2,50,NULL,0),(2,51,NULL,0),(2,55,NULL,0),(2,60,NULL,0),(2,62,NULL,0),(2,65,NULL,0),(2,68,NULL,0),(2,74,NULL,0),(2,75,NULL,0),(2,85,NULL,0),(2,90,NULL,0),(2,91,NULL,0),(2,92,NULL,0),(2,93,NULL,0),(2,94,NULL,0),(2,100,NULL,0),(3,8,NULL,0),(3,39,NULL,0),(3,40,NULL,0),(3,67,NULL,0),(3,70,NULL,0),(3,71,NULL,0),(3,72,NULL,0),(3,73,NULL,0),(3,74,NULL,0),(3,82,NULL,0),(3,83,NULL,0),(3,84,NULL,0),(3,85,NULL,0),(4,8,NULL,0),(4,9,NULL,0),(4,10,NULL,0),(4,11,NULL,0),(4,18,NULL,0),(4,19,NULL,0),(4,20,NULL,0),(4,33,NULL,0),(4,34,NULL,0),(4,35,NULL,0),(4,36,NULL,0),(4,48,NULL,0),(4,55,NULL,0),(4,62,NULL,0),(4,69,NULL,0),(4,74,NULL,0),(4,79,NULL,0),(4,85,NULL,0),(4,93,NULL,0),(4,98,NULL,0),(4,102,NULL,0),(5,3,NULL,0),(5,200,NULL,0),(5,201,NULL,0),(5,202,NULL,0),(5,203,NULL,0),(5,204,NULL,0),(5,205,NULL,0),(5,206,NULL,0),(5,207,NULL,0),(5,208,NULL,0),(5,209,NULL,0),(5,211,NULL,0),(5,212,NULL,0),(5,213,NULL,0),(5,214,NULL,0),(6,1,NULL,0),(6,3,NULL,0),(6,200,NULL,0),(6,201,NULL,0),(6,202,NULL,0),(6,204,NULL,0),(6,205,NULL,0),(6,206,NULL,0),(6,207,NULL,0),(6,208,NULL,0),(6,209,NULL,0),(6,210,NULL,0),(6,212,NULL,0),(6,213,NULL,0),(6,214,NULL,0),(7,1,NULL,0),(7,3,NULL,0),(7,200,NULL,0),(7,201,NULL,0),(7,202,NULL,0),(7,203,NULL,0),(7,204,NULL,0),(7,205,NULL,0),(7,207,NULL,0),(7,208,NULL,0),(7,209,NULL,0),(7,210,NULL,0),(7,211,NULL,0),(7,212,NULL,0),(7,214,NULL,0),(8,1,NULL,0),(8,3,NULL,0),(8,200,NULL,0),(8,202,NULL,0),(8,203,NULL,0),(8,204,NULL,0),(8,205,NULL,0),(8,206,NULL,0),(8,207,NULL,0),(8,208,NULL,0),(8,210,NULL,0),(8,211,NULL,0),(8,212,NULL,0),(8,213,NULL,0),(8,214,NULL,0);
/*!40000 ALTER TABLE `in_library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `in_playlist`
--

DROP TABLE IF EXISTS `in_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `in_playlist` (
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `date_added` date DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  PRIMARY KEY (`playlist_id`,`song_id`),
  KEY `song_id` (`song_id`,`added_by`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `in_playlist_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`playlist_id`) ON DELETE CASCADE,
  CONSTRAINT `in_playlist_ibfk_2` FOREIGN KEY (`song_id`, `added_by`) REFERENCES `in_library` (`song_id`, `user_id`) ON DELETE CASCADE,
  CONSTRAINT `in_playlist_ibfk_3` FOREIGN KEY (`added_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `in_playlist`
--

LOCK TABLES `in_playlist` WRITE;
/*!40000 ALTER TABLE `in_playlist` DISABLE KEYS */;
INSERT INTO `in_playlist` VALUES (1,2,NULL,1),(1,22,NULL,1),(2,9,NULL,2),(2,10,NULL,2),(2,20,NULL,2),(2,55,NULL,2),(2,62,NULL,2),(3,50,NULL,1),(3,61,NULL,1),(3,62,NULL,1),(3,63,NULL,1),(4,8,NULL,1),(4,74,NULL,1),(4,85,NULL,1),(5,8,NULL,2),(5,74,NULL,2),(5,85,NULL,2),(6,8,NULL,3),(6,74,NULL,3),(6,85,NULL,3),(7,8,NULL,4),(7,74,NULL,4),(7,85,NULL,4),(100,3,NULL,5),(100,200,NULL,5),(100,205,NULL,5),(101,201,NULL,5),(101,203,NULL,5),(101,207,NULL,5),(101,214,NULL,5);
/*!40000 ALTER TABLE `in_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_friend`
--

DROP TABLE IF EXISTS `is_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_friend` (
  `follower` int(11) NOT NULL,
  `following` int(11) NOT NULL,
  PRIMARY KEY (`follower`,`following`),
  KEY `following` (`following`),
  CONSTRAINT `is_friend_ibfk_1` FOREIGN KEY (`follower`) REFERENCES `user` (`user_id`),
  CONSTRAINT `is_friend_ibfk_2` FOREIGN KEY (`following`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_friend`
--

LOCK TABLES `is_friend` WRITE;
/*!40000 ALTER TABLE `is_friend` DISABLE KEYS */;
INSERT INTO `is_friend` VALUES (2,1),(3,1),(4,1),(1,2),(4,2),(2,3),(1,4),(2,4),(3,4);
/*!40000 ALTER TABLE `is_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `playlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_created` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `plays` int(11) DEFAULT '0',
  PRIMARY KEY (`playlist_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,1,'Hype Music',NULL,NULL,0),(2,2,'Workout',NULL,NULL,0),(3,1,'In My Feels',NULL,NULL,0),(4,1,'Sleepy Time',NULL,NULL,0),(5,2,'Sleepy Time',NULL,NULL,0),(6,3,'Sleepy Time',NULL,NULL,0),(7,4,'Sleepy Time',NULL,NULL,0),(100,5,'Happy',NULL,'For when you\'re in a good mood',0),(101,5,'Sad',NULL,'For when you\'re in a bad mood',0);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plays`
--

DROP TABLE IF EXISTS `plays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plays` (
  `plays_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `current_song_id` int(11) NOT NULL,
  `next_song_id` int(11) DEFAULT NULL,
  `times` datetime NOT NULL,
  PRIMARY KEY (`plays_id`),
  KEY `user_id` (`user_id`),
  KEY `current_song_id` (`current_song_id`),
  KEY `next_song_id` (`next_song_id`),
  CONSTRAINT `plays_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `plays_ibfk_2` FOREIGN KEY (`current_song_id`) REFERENCES `song` (`song_id`),
  CONSTRAINT `plays_ibfk_3` FOREIGN KEY (`next_song_id`) REFERENCES `song` (`song_id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays`
--

LOCK TABLES `plays` WRITE;
/*!40000 ALTER TABLE `plays` DISABLE KEYS */;
INSERT INTO `plays` VALUES (1,1,1,2,'2019-05-02 14:54:42'),(2,1,2,3,'2019-05-02 14:54:42'),(3,1,3,4,'2019-05-02 14:54:42'),(4,1,4,5,'2019-05-02 14:54:42'),(5,1,5,6,'2019-05-02 14:54:42'),(6,1,6,7,'2019-05-02 14:54:42'),(7,1,7,8,'2019-05-02 14:54:42'),(8,1,8,9,'2019-05-02 14:54:42'),(9,1,9,10,'2019-05-02 14:54:42'),(10,1,10,11,'2019-05-02 14:54:42'),(11,1,11,12,'2019-05-02 14:54:42'),(12,1,12,13,'2019-05-02 14:54:42'),(13,1,13,14,'2019-05-02 14:54:42'),(14,1,14,15,'2019-05-02 14:54:42'),(15,1,15,16,'2019-05-02 14:54:42'),(16,1,16,17,'2019-05-02 14:54:42'),(17,1,17,18,'2019-05-02 14:54:42'),(18,1,18,19,'2019-05-02 14:54:42'),(19,1,19,20,'2019-05-02 14:54:42'),(20,1,20,2,'2019-05-02 14:54:42'),(21,2,20,2,'2019-05-02 14:54:42'),(22,2,2,20,'2019-05-02 14:54:42'),(23,2,20,2,'2019-05-02 14:54:42'),(24,2,2,20,'2019-05-02 14:54:42'),(25,2,20,5,'2019-05-02 14:54:42'),(26,2,5,20,'2019-05-02 14:54:42'),(27,2,20,5,'2019-05-02 14:54:42'),(28,2,5,20,'2019-05-02 14:54:42'),(29,2,20,5,'2019-05-02 14:54:42'),(30,2,5,20,'2019-05-02 14:54:42'),(31,2,20,5,'2019-05-02 14:54:42'),(32,2,5,20,'2019-05-02 14:54:42'),(33,2,20,8,'2019-05-02 14:54:42'),(34,2,8,20,'2019-05-02 14:54:42'),(35,2,20,8,'2019-05-02 14:54:42'),(36,2,8,20,'2019-05-02 14:54:42'),(37,2,20,8,'2019-05-02 14:54:42'),(38,2,8,NULL,'2019-05-02 14:54:42'),(39,3,19,20,'2019-05-02 14:54:42'),(40,3,20,NULL,'2019-05-02 14:54:42'),(41,1,2,3,'2019-05-02 14:55:05'),(42,1,3,2,'2019-05-02 14:55:06'),(43,1,2,3,'2019-05-02 14:55:06'),(44,1,3,19,'2019-05-02 14:55:06'),(45,4,2,NULL,'2019-05-02 14:59:53'),(46,5,2,210,'2019-05-02 14:59:55'),(47,5,210,209,'2019-05-02 15:00:35'),(48,5,210,NULL,'2019-05-02 15:00:35'),(49,5,209,3,'2019-05-02 15:00:35'),(50,5,209,NULL,'2019-05-02 15:00:35'),(51,5,3,212,'2019-05-02 15:00:35'),(52,5,212,NULL,'2019-05-02 15:00:35'),(53,5,3,212,'2019-05-02 15:00:35'),(54,5,203,NULL,'2019-05-02 15:00:36'),(55,5,212,203,'2019-05-02 15:00:36'),(56,5,201,NULL,'2019-05-02 15:00:36'),(57,5,203,201,'2019-05-02 15:00:36'),(58,5,200,NULL,'2019-05-02 15:00:36'),(59,5,201,200,'2019-05-02 15:00:36'),(60,5,200,204,'2019-05-02 15:00:36'),(61,5,204,1,'2019-05-02 15:05:33'),(62,5,1,214,'2019-05-02 15:06:29'),(63,5,214,210,'2019-05-02 15:06:29'),(64,5,210,2,'2019-05-02 15:07:37'),(65,5,2,206,'2019-05-02 15:08:33'),(66,5,206,206,'2019-05-02 15:13:43'),(67,5,206,209,'2019-05-02 15:29:02'),(68,6,2,202,'2019-05-02 15:38:23'),(69,7,2,200,'2019-05-02 15:38:23'),(70,8,2,204,'2019-05-02 15:38:23'),(71,5,209,207,'2019-05-02 15:43:30'),(72,5,207,211,'2019-05-02 15:43:30'),(73,6,202,213,'2019-05-02 15:43:46'),(74,5,211,213,'2019-05-02 15:44:53'),(75,5,213,208,'2019-05-02 15:44:53'),(76,5,208,205,'2019-05-02 15:45:12'),(77,5,205,204,'2019-05-02 15:45:12'),(78,5,204,206,'2019-05-02 15:45:12'),(79,6,213,208,'2019-05-02 15:45:22'),(80,6,208,205,'2019-05-02 15:45:22'),(81,6,205,202,'2019-05-02 15:45:22'),(82,6,202,3,'2019-05-02 15:46:00'),(83,6,3,210,'2019-05-02 15:46:00'),(84,6,210,3,'2019-05-02 15:46:00'),(85,6,3,3,'2019-05-02 15:46:00'),(86,6,3,210,'2019-05-02 15:47:59'),(87,6,210,207,'2019-05-02 15:47:59'),(88,6,207,212,'2019-05-02 15:47:59'),(89,6,212,1,'2019-05-02 15:47:59'),(90,6,1,3,'2019-05-02 15:47:59'),(91,6,3,213,'2019-05-02 15:47:59'),(92,6,213,214,'2019-05-02 15:47:59'),(93,6,214,207,'2019-05-02 15:47:59'),(94,6,207,NULL,'2019-05-02 15:48:00'),(95,5,206,NULL,'2019-05-02 15:48:57'),(96,7,200,203,'2019-05-02 15:51:01'),(97,7,203,202,'2019-05-02 15:51:01'),(98,7,202,205,'2019-05-02 15:51:01'),(99,7,205,209,'2019-05-02 15:51:01'),(100,7,209,3,'2019-05-02 15:51:01'),(101,7,3,1,'2019-05-02 15:51:01'),(102,7,1,207,'2019-05-02 15:51:01'),(103,7,207,204,'2019-05-02 15:51:01'),(104,7,204,214,'2019-05-02 15:51:01'),(105,7,214,210,'2019-05-02 15:51:01'),(106,7,210,202,'2019-05-02 15:51:01'),(107,7,202,201,'2019-05-02 15:51:01'),(108,7,201,207,'2019-05-02 15:51:01'),(109,7,207,211,'2019-05-02 15:51:01'),(110,7,211,204,'2019-05-02 15:51:01'),(111,7,204,202,'2019-05-02 15:51:01'),(112,7,202,NULL,'2019-05-02 15:51:01'),(113,8,204,NULL,'2019-05-02 15:53:24'),(114,1,19,200,'2019-05-02 15:58:12'),(115,1,200,NULL,'2019-05-02 16:00:30');
/*!40000 ALTER TABLE `plays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `plays` int(11) DEFAULT '0',
  `explicit` enum('Yes','No') NOT NULL DEFAULT 'No',
  `duration` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `file_loc` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `album_id` (`album_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `song_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  CONSTRAINT `song_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Sober Up',3,'No',218,4,'/home',1,3),(2,'Lament Golden Light',14,'No',216,1,'Lament_Golden_Light.mp3',2,2),(3,'Sky Skating',15,'No',216,2,'Sky_Skating.mp3',2,2),(4,'SAD!',0,'No',167,4,'/home',3,1),(5,'On Sight',0,'No',157,1,'/home',4,4),(6,'Black Skinhead',0,'No',160,2,'/home',4,4),(7,'I am a God',0,'No',278,3,'/home',4,4),(8,'New Slaves',0,'No',265,4,'/home',4,4),(9,'Hold My Liquor',0,'No',152,5,'/home',4,4),(10,'I\'m In it',0,'No',177,6,'/home',4,4),(11,'Blood On the Leaves',0,'No',201,7,'/home',4,4),(12,'Guilt Trip',0,'No',245,8,'/home',4,4),(13,'Send It Up',0,'No',157,9,'/home',4,4),(14,'Bound 2',0,'No',210,10,'/home',4,4),(15,'Dark Fantasy',0,'No',157,1,'/home',5,4),(16,'Gorgeous',0,'No',168,2,'/home',5,4),(17,'Power',0,'No',176,3,'/home',5,4),(18,'All of the Lights (Interlude)',0,'No',189,4,'/home',5,4),(19,'All of the Lights',1,'No',198,5,'/home',5,4),(20,'Monster',0,'No',200,6,'/home',5,4),(21,'So Appalled',0,'No',185,7,'/home',5,4),(22,'Devil in a New Dress',0,'No',210,8,'/home',5,4),(23,'Runaway',0,'No',238,9,'/home',5,4),(24,'Hell of a Life',0,'No',170,10,'/home',5,4),(25,'Blame Game',0,'No',160,11,'/home',5,4),(26,'Lost in the World',0,'No',267,12,'/home',5,4),(27,'Who Will Survive in America',0,'No',278,13,'/home',5,4),(28,'See Me Now',0,'No',246,14,'/home',5,4),(29,'I Thought About Killing You',0,'No',648,1,'/home',6,4),(30,'Yikes',0,'No',289,2,'/home',6,4),(31,'All Mine',0,'No',341,3,'/home',6,4),(32,'Wouldn\'t leave',0,'No',270,4,'/home',6,4),(33,'No Mistakes',0,'No',189,5,'/home',6,4),(34,'Ghost Town',0,'No',250,6,'/home',6,4),(35,'Violent Crimes',0,'No',216,7,'/home',6,4),(36,'Tiptoe',0,'No',216,2,'/home',7,5),(37,'It\'s Time',0,'No',216,3,'/home',7,5),(38,'Demons',0,'No',216,4,'/home',7,5),(39,'On Top of the World',0,'No',216,5,'/home',7,5),(40,'Amsterdam',0,'No',216,6,'/home',7,5),(41,'Hear Me',0,'No',216,7,'/home',7,5),(42,'Every Night',0,'No',216,8,'/home',7,5),(43,'Bleeding Out',0,'No',216,9,'/home',7,5),(44,'Underdog',0,'No',216,10,'/home',7,5),(45,'Nothing Left To Say / Rocks',0,'No',216,11,'/home',7,5),(46,'Working Man',0,'No',216,12,'/home',7,5),(47,'Fallen',0,'No',216,13,'/home',7,5),(48,'My Fault',0,'No',216,14,'/home',7,5),(49,'Round and Round',0,'No',216,15,'/home',7,5),(50,'The River',0,'No',216,16,'/home',7,5),(51,'America',0,'No',216,17,'/home',7,5),(52,'Selene',0,'No',216,18,'/home',7,5),(53,'Shots',0,'No',274,1,'/home',8,5),(54,'Gold',0,'No',274,2,'/home',8,5),(55,'Smoke and Mirrors',0,'No',274,3,'/home',8,5),(56,'I\'m So Sorry',0,'No',274,4,'/home',8,5),(57,'I Bet My Life',0,'No',274,5,'/home',8,5),(58,'Poloroid',0,'No',274,6,'/home',8,5),(59,'Friction',0,'No',274,7,'/home',8,5),(60,'It Comes Back to You',0,'No',274,8,'/home',8,5),(61,'Dream',0,'No',274,9,'/home',8,5),(62,'Trouble',0,'No',274,10,'/home',8,5),(63,'Summer',0,'No',274,11,'/home',8,5),(64,'Hopeless Opus',0,'No',274,12,'/home',8,5),(65,'The Fall',0,'No',274,13,'/home',8,5),(66,'Thief',0,'No',274,14,'/home',8,5),(67,'The Unknown',0,'No',274,15,'/home',8,5),(68,'Second Chances',0,'No',274,16,'/home',8,5),(69,'Release',0,'No',274,17,'/home',8,5),(70,'Warriors',0,'No',274,18,'/home',8,5),(71,'Battle Cry',0,'No',274,19,'/home',8,5),(72,'Monster',0,'No',274,20,'/home',8,5),(73,'Who We Are',0,'No',274,21,'/home',8,5),(74,'I Don\'t Know Why',0,'No',253,1,'/home',9,5),(75,'Whatever It Takes',0,'No',253,2,'/home',9,5),(76,'Believer',0,'No',253,3,'/home',9,5),(77,'Walking the Wire',0,'No',253,4,'/home',9,5),(78,'Rise Up',0,'No',253,5,'/home',9,5),(79,'I\'ll Make It Up to You',0,'No',253,6,'/home',9,5),(80,'Yesterday',0,'No',253,7,'/home',9,5),(81,'Mouth of the River',0,'No',253,8,'/home',9,5),(82,'Thunder',0,'No',253,9,'/home',9,5),(83,'Start Over',0,'No',253,10,'/home',9,5),(84,'Dancing in the Dark',0,'No',253,11,'/home',9,5),(85,'Starboy',0,'No',312,1,'/home',10,6),(86,'Party Monster',0,'No',312,2,'/home',10,6),(87,'False Alarm',0,'No',312,3,'/home',10,6),(88,'Reminder',0,'No',312,4,'/home',10,6),(89,'Rockin\'',0,'No',312,5,'/home',10,6),(90,'Secrets',0,'No',312,6,'/home',10,6),(91,'True Colors',0,'No',312,7,'/home',10,6),(92,'Stargirl Interlude',0,'No',312,8,'/home',10,6),(93,'Sidewalks',0,'No',312,9,'/home',10,6),(94,'Six Feet Under',0,'No',312,10,'/home',10,6),(95,'Love To Lay',0,'No',312,11,'/home',10,6),(96,'A Lonely Night',0,'No',312,12,'/home',10,6),(97,'Attention',0,'No',312,13,'/home',10,6),(98,'Ordinary Life',0,'No',312,14,'/home',10,6),(99,'Nothing Without You',0,'No',312,15,'/home',10,6),(100,'All I Know',0,'No',312,16,'/home',10,6),(101,'Die For You',0,'No',312,17,'/home',10,6),(102,'I Feel It Coming',0,'No',312,1,'/home',10,6),(200,'8-Bit Dreamscape',4,'No',114,1,'8_Bit_Dreamscape.mp3',200,206),(201,'A Quiet Thought',3,'No',116,2,'A_Quiet_Thought.mp3',200,207),(202,'AI 2',5,'No',115,3,'AI_2.mp3',200,208),(203,'Away',3,'No',123,4,'Away.mp3',200,209),(204,'Dark Tranquility',5,'No',183,1,'Dark_Tranquility.mp3',201,210),(205,'Dreaming Blue',3,'No',228,1,'Dreaming_Blue.mp3',202,201),(206,'Entire',3,'No',142,5,'Entire.mp3',200,211),(207,'New Land',5,'No',150,6,'New_Land.mp3',200,204),(208,'Joy to the World (Instrumental)',2,'No',150,7,'Joy_to_the_World_Instrumental.mp3',200,205),(209,'Mirage',4,'No',178,8,'Mirage.mp3',200,212),(210,'Price Check',6,'No',210,1,'Price_Check.mp3',203,200),(211,'Safety Net',2,'No',90,9,'Safety_Net.mp3',200,203),(212,'Ticker',3,'No',183,10,'Ticker.mp3',200,202),(213,'Wishful Thinking',3,'No',99,11,'Wishful_Thinking.mp3',200,213),(214,'You\'re Not Wrong',3,'No',99,1,'You_re_Not_Wrong.mp3',204,214);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'abc1@case.edu','Alex','password',NULL),(2,'abc2@case.edu','Jacob','2',NULL),(3,'abc3@case.edu','Jason','3',NULL),(4,'abc4@case.edu','Jordan','4',NULL),(5,'abc5@case.edu','EECS 341','test',NULL),(6,'abc6@case.edu','Ted','6',NULL),(7,'abc7@case.edu','Robin','7',NULL),(8,'abc8@case.edu','Barney','8',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-02 16:02:44
