-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: team_8
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

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
-- Current Database: `team_8`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `team_8` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `team_8`;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_published` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,1,'YouTube Audio Library',NULL,NULL,NULL),(2,2,'ty',NULL,NULL,NULL),(3,3,'Prior',NULL,NULL,NULL),(4,4,'Youths',NULL,NULL,NULL),(5,5,'YouTube Audio Library',NULL,NULL,NULL),(6,6,'YouTube Audio Library',NULL,NULL,NULL),(7,7,'Outlook',NULL,NULL,NULL),(8,8,'YouTube Audio Library',NULL,NULL,NULL),(9,9,'Global',NULL,NULL,NULL),(10,10,'Reflections',NULL,NULL,NULL),(11,11,'Lyfes',NULL,NULL,NULL),(12,12,'YouTube Audio Library',NULL,NULL,NULL),(13,13,'2.3',NULL,NULL,NULL),(14,14,'Zipper',NULL,NULL,NULL),(15,15,'YouTube Audio Library',NULL,NULL,NULL),(16,16,'Pans',NULL,NULL,NULL),(17,17,'YouTube Audio Library',NULL,NULL,NULL),(18,18,'EI',NULL,NULL,NULL),(19,19,'Central',NULL,NULL,NULL),(20,20,'Rply Plz',NULL,NULL,NULL),(21,21,'Pluto',NULL,NULL,NULL),(22,22,'YouTube Audio Library',NULL,NULL,NULL),(23,23,'YouTube Audio Library',NULL,NULL,NULL),(24,24,'YouTube Audio Library',NULL,NULL,NULL),(25,25,'?',NULL,NULL,NULL),(26,26,'YouTube',NULL,NULL,NULL),(27,27,'YouTube Audio Library',NULL,NULL,NULL),(28,26,'Lookx',NULL,NULL,NULL),(29,28,'Lagos',NULL,NULL,NULL),(30,29,'asd',NULL,NULL,NULL),(31,30,'Hills',NULL,NULL,NULL),(32,27,'EJD',NULL,NULL,NULL),(33,31,'Parkin\'',NULL,NULL,NULL),(34,32,'Atlas',NULL,NULL,NULL),(35,33,'Oceans',NULL,NULL,NULL),(36,34,'Kong',NULL,NULL,NULL),(37,13,'3',NULL,NULL,NULL),(38,35,'YouTube Audio Library',NULL,NULL,NULL),(39,36,'YouTube Audio Library',NULL,NULL,NULL),(40,37,'...',NULL,NULL,NULL),(41,38,'YouTube Audio Library',NULL,NULL,NULL),(42,27,'Heather',NULL,NULL,NULL),(43,39,'Classics',NULL,NULL,NULL),(44,40,'Xplore',NULL,NULL,NULL),(45,41,'vB',NULL,NULL,NULL),(46,6,'Instrumental',NULL,NULL,NULL),(47,26,'Thoughts',NULL,NULL,NULL),(48,42,'PHYS',NULL,NULL,NULL),(49,43,'D-Town',NULL,NULL,NULL),(50,2,'YouTube Audio Library',NULL,NULL,NULL),(51,44,'YouTube Audio Library',NULL,NULL,NULL),(52,45,'YouTube Audio Library',NULL,NULL,NULL),(53,46,'YouTube Audio Library',NULL,NULL,NULL),(54,47,'Proper',NULL,NULL,NULL),(55,24,'[]',NULL,NULL,NULL),(56,48,'qwite',NULL,NULL,NULL),(57,30,'YouTube Audio Library',NULL,NULL,NULL),(58,49,'Childhood',NULL,NULL,NULL),(59,50,'Knight',NULL,NULL,NULL),(60,51,'YouTube Audio Library',NULL,NULL,NULL),(61,52,'Countryside',NULL,NULL,NULL),(62,53,'YouTube Audio Library',NULL,NULL,NULL),(63,54,'feelz',NULL,NULL,NULL),(64,4,'Childhood',NULL,NULL,NULL),(65,55,'Skies',NULL,NULL,NULL),(66,56,'YouTube Audio Library',NULL,NULL,NULL),(67,57,'Instrumental',NULL,NULL,NULL),(68,27,'YouTube',NULL,NULL,NULL),(69,58,'YouTube Audio Library',NULL,NULL,NULL),(70,59,'Stpls',NULL,NULL,NULL),(71,60,'YouTube Audio Library',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Silent Partner',NULL,NULL,NULL,0),(2,'Quincas Moreira',NULL,NULL,NULL,0),(3,'Aakash Gandhi',NULL,NULL,NULL,0),(4,'Freedom Trail Studio',NULL,NULL,NULL,0),(5,'Puddle of Infinity',NULL,NULL,NULL,0),(6,'Jingle Punks',NULL,NULL,NULL,0),(7,'Dan Lebowitz',NULL,NULL,NULL,0),(8,'United States Marine Band and Arthur S.Witcomb',NULL,NULL,NULL,0),(9,'Chris Haugen',NULL,NULL,NULL,0),(10,'Diamond Ortiz',NULL,NULL,NULL,0),(11,'HOVATOFF',NULL,NULL,NULL,0),(12,'Gunnar Olsen',NULL,NULL,NULL,0),(13,'Sextile',NULL,NULL,NULL,0),(14,'SYBS',NULL,NULL,NULL,0),(15,'Jimmy Fontanez/Media Right Productions',NULL,NULL,NULL,0),(16,'Asher Fulero',NULL,NULL,NULL,0),(17,'ALBIS',NULL,NULL,NULL,0),(18,'Otis McDonald',NULL,NULL,NULL,0),(19,'Jimmy Fontanez and Doug Maxwell',NULL,NULL,NULL,0),(20,'Biz Baz Studio',NULL,NULL,NULL,0),(21,'Bruno E.',NULL,NULL,NULL,0),(22,'Doug Maxwell/Media Right Productions',NULL,NULL,NULL,0),(23,'Josh Kirsch/Media Right Productions',NULL,NULL,NULL,0),(24,'The Whole Other',NULL,NULL,NULL,0),(25,'Doug Maxwell',NULL,NULL,NULL,0),(26,'Devon Church',NULL,NULL,NULL,0),(27,'Geographer',NULL,NULL,NULL,0),(28,'Yung Logos',NULL,NULL,NULL,0),(29,'Francis Preve',NULL,NULL,NULL,0),(30,'Vibe Mountain',NULL,NULL,NULL,0),(31,'Riot',NULL,NULL,NULL,0),(32,'Anno Domini Beats',NULL,NULL,NULL,0),(33,'Midnight North',NULL,NULL,NULL,0),(34,'The 126ers',NULL,NULL,NULL,0),(35,'Dougie Wood',NULL,NULL,NULL,0),(36,'The Green Orbs',NULL,NULL,NULL,0),(37,'Aaron Kenny',NULL,NULL,NULL,0),(38,'John Deley and the 41 Players',NULL,NULL,NULL,0),(39,'Hanu Dixit',NULL,NULL,NULL,0),(40,'Danny Kean & Doug Maxwell',NULL,NULL,NULL,0),(41,'Josh Lippi & The Overtimers',NULL,NULL,NULL,0),(42,'Density & Time',NULL,NULL,NULL,0),(43,'Dan Bodan',NULL,NULL,NULL,0),(44,'MK2',NULL,NULL,NULL,0),(45,'Quinvas Moreira',NULL,NULL,NULL,0),(46,'Max Surla/Media Right Productions',NULL,NULL,NULL,0),(47,'Rondo Brothers',NULL,NULL,NULL,0),(48,'The Grand Affair',NULL,NULL,NULL,0),(49,'Freedom Trail Studios',NULL,NULL,NULL,0),(50,'The Brothers Records',NULL,NULL,NULL,0),(51,'John F. Kennedy',NULL,NULL,NULL,0),(52,'South London HiFi',NULL,NULL,NULL,0),(53,'Wayne Jones',NULL,NULL,NULL,0),(54,'roljui',NULL,NULL,NULL,0),(55,'Norma Rockwell',NULL,NULL,NULL,0),(56,'United States Naval Academy Band',NULL,NULL,NULL,0),(57,'Unicorn Heads',NULL,NULL,NULL,0),(58,'Kevin MacLeod',NULL,NULL,NULL,0),(59,'Endless Love',NULL,NULL,NULL,0),(60,'Media Right Productions',NULL,NULL,NULL,0);
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
INSERT INTO `in_library` VALUES (1,20,NULL,0),(1,21,NULL,0),(1,22,NULL,0),(1,47,NULL,0),(1,50,NULL,0),(1,61,NULL,0),(1,62,NULL,0),(1,63,NULL,0),(1,74,NULL,0),(1,85,NULL,0),(2,20,NULL,0),(2,23,NULL,0),(2,24,NULL,0),(2,25,NULL,0),(2,26,NULL,0),(2,27,NULL,0),(2,28,NULL,0),(2,45,NULL,0),(2,46,NULL,0),(2,50,NULL,0),(2,51,NULL,0),(2,55,NULL,0),(2,60,NULL,0),(2,62,NULL,0),(2,65,NULL,0),(2,68,NULL,0),(2,74,NULL,0),(2,75,NULL,0),(2,85,NULL,0),(2,90,NULL,0),(2,91,NULL,0),(2,92,NULL,0),(2,93,NULL,0),(2,94,NULL,0),(2,100,NULL,0),(3,39,NULL,0),(3,40,NULL,0),(3,67,NULL,0),(3,70,NULL,0),(3,71,NULL,0),(3,72,NULL,0),(3,73,NULL,0),(3,74,NULL,0),(3,82,NULL,0),(3,83,NULL,0),(3,84,NULL,0),(3,85,NULL,0),(4,20,NULL,0),(4,33,NULL,0),(4,34,NULL,0),(4,35,NULL,0),(4,36,NULL,0),(4,48,NULL,0),(4,55,NULL,0),(4,62,NULL,0),(4,69,NULL,0),(4,74,NULL,0),(4,79,NULL,0),(4,85,NULL,0),(4,93,NULL,0),(4,98,NULL,0),(4,102,NULL,0),(6,200,NULL,0),(6,201,NULL,0),(6,202,NULL,0),(6,204,NULL,0),(6,205,NULL,0),(6,206,NULL,0),(6,207,NULL,0),(6,208,NULL,0),(6,209,NULL,0),(6,210,NULL,0),(6,212,NULL,0),(6,213,NULL,0),(6,214,NULL,0),(7,200,NULL,0),(7,201,NULL,0),(7,202,NULL,0),(7,203,NULL,0),(7,204,NULL,0),(7,205,NULL,0),(7,207,NULL,0),(7,208,NULL,0),(7,209,NULL,0),(7,210,NULL,0),(7,211,NULL,0),(7,212,NULL,0),(7,214,NULL,0),(8,200,NULL,0),(8,202,NULL,0),(8,203,NULL,0),(8,204,NULL,0),(8,205,NULL,0),(8,206,NULL,0),(8,207,NULL,0),(8,208,NULL,0),(8,210,NULL,0),(8,211,NULL,0),(8,212,NULL,0),(8,213,NULL,0),(8,214,NULL,0);
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
INSERT INTO `in_playlist` VALUES (2,20,NULL,2),(2,55,NULL,2),(2,62,NULL,2),(3,50,NULL,1),(3,61,NULL,1),(3,62,NULL,1),(3,63,NULL,1),(4,74,NULL,1),(4,85,NULL,1),(5,74,NULL,2),(5,85,NULL,2),(6,74,NULL,3),(6,85,NULL,3),(7,74,NULL,4),(7,85,NULL,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,1,'Hype Music',NULL,NULL,0),(2,2,'Workout',NULL,NULL,0),(3,1,'In My Feels',NULL,NULL,0),(4,1,'Sleepy Time',NULL,NULL,0),(5,2,'Sleepy Time',NULL,NULL,0),(6,3,'Sleepy Time',NULL,NULL,0),(7,4,'Sleepy Time',NULL,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays`
--

LOCK TABLES `plays` WRITE;
/*!40000 ALTER TABLE `plays` DISABLE KEYS */;
INSERT INTO `plays` VALUES (23,1,20,50,'2019-05-16 15:59:01'),(43,3,20,NULL,'2019-05-16 15:59:01'),(46,1,50,85,'2019-05-16 16:01:39'),(47,1,85,63,'2019-05-16 16:01:39'),(48,1,63,62,'2019-05-16 16:01:39'),(49,1,62,NULL,'2019-05-16 16:02:09'),(53,1,21,22,'2019-05-16 16:12:12'),(54,1,22,23,'2019-05-16 16:12:12'),(55,1,23,24,'2019-05-16 16:12:12'),(56,1,24,25,'2019-05-16 16:12:12'),(57,1,25,26,'2019-05-16 16:12:12'),(58,1,26,27,'2019-05-16 16:12:12'),(59,1,27,28,'2019-05-16 16:12:12'),(60,1,28,29,'2019-05-16 16:12:12'),(61,1,29,210,'2019-05-16 16:12:12'),(64,1,212,213,'2019-05-16 16:12:12'),(65,1,213,214,'2019-05-16 16:12:12'),(66,1,214,215,'2019-05-16 16:12:12'),(67,1,215,216,'2019-05-16 16:12:12'),(68,1,216,217,'2019-05-16 16:12:12'),(69,1,217,218,'2019-05-16 16:12:12'),(70,1,218,219,'2019-05-16 16:12:12'),(71,1,219,220,'2019-05-16 16:12:12'),(72,1,220,62,'2019-05-16 16:12:12'),(73,2,20,22,'2019-05-16 16:12:12'),(74,2,22,20,'2019-05-16 16:12:12'),(75,2,20,22,'2019-05-16 16:12:12'),(76,2,22,20,'2019-05-16 16:12:12'),(77,2,20,25,'2019-05-16 16:12:12'),(78,2,25,20,'2019-05-16 16:12:12'),(79,2,20,25,'2019-05-16 16:12:12'),(80,2,25,20,'2019-05-16 16:12:12'),(81,2,20,25,'2019-05-16 16:12:12'),(82,2,25,20,'2019-05-16 16:12:12'),(83,2,20,25,'2019-05-16 16:12:12'),(84,2,25,20,'2019-05-16 16:12:12'),(85,2,20,28,'2019-05-16 16:12:12'),(86,2,28,20,'2019-05-16 16:12:12'),(87,2,20,28,'2019-05-16 16:12:12'),(88,2,28,20,'2019-05-16 16:12:12'),(89,2,20,28,'2019-05-16 16:12:12'),(90,2,28,NULL,'2019-05-16 16:12:12'),(91,3,219,20,'2019-05-16 16:12:12'),(92,3,20,NULL,'2019-05-16 16:12:12'),(93,4,22,NULL,'2019-05-16 16:12:12'),(95,1,62,NULL,'2019-05-16 16:13:02');
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
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (20,'Standing Here',0,'No',171,0,'Standing_Here.mp3',1,1),(21,'Miles Beyond',0,'No',205,0,'Miles_Beyond.mp3',2,2),(22,'How it Began',0,'No',182,0,'How_it_Began.mp3',1,1),(23,'Eyes of Glory',0,'No',151,0,'Eyes_of_Glory.mp3',3,3),(24,'Always Be My Unicorn',0,'No',159,0,'Always_Be_My_Unicorn.mp3',4,4),(25,'Porches and Universes',0,'No',184,0,'Porches_and_Universes.mp3',5,5),(26,'Dusty Road',0,'No',81,0,'Dusty_Road.mp3',6,6),(27,'Birds in Flight',0,'No',145,0,'Birds_in_Flight.mp3',7,7),(28,'Blue Macaw',0,'No',231,0,'Blue_Macaw.mp3',2,2),(29,'The Premier',0,'No',247,0,'The_Premier.mp3',8,8),(30,'Campfire Song',0,'No',164,0,'Campfire_Song.mp3',9,9),(31,'Magnolia',0,'No',104,0,'Magnolia.mp3',1,1),(32,'Carmel Shades',0,'No',170,0,'Carmel_Shades.mp3',1,1),(33,'Mirage',0,'No',178,0,'Mirage.mp3',9,9),(34,'Mirror Mirror',0,'No',185,0,'Mirror_Mirror.mp3',10,10),(35,'Wind Marching For Rain',0,'No',201,0,'Wind_Marching_For_Rain.mp3',5,5),(36,'Tibet',0,'No',151,0,'Tibet.mp3',11,11),(37,'The Sea Beneath Our Feet',0,'No',184,0,'The_Sea_Beneath_Our_Feet.mp3',5,5),(38,'Slay Well (Sting)',0,'No',7,0,'Slay_Well_Sting.mp3',12,12),(39,'I\'m Happy For This Guitar',0,'No',184,0,'I_m_Happy_For_This_Guitar.mp3',4,4),(40,'Young And Old Know Love',0,'No',176,0,'Young_And_Old_Know_Love.mp3',5,5),(41,'Purple',0,'No',114,0,'Purple.mp3',13,13),(42,'Fond Memories',0,'No',201,0,'Fond_Memories.mp3',14,14),(43,'Floaters',0,'No',109,0,'Floaters.mp3',15,15),(44,'Simmering',0,'No',260,0,'Simmering.mp3',16,16),(45,'Raw Deal',0,'No',168,0,'Raw_Deal.mp3',12,12),(46,'New Land',0,'No',150,0,'New_Land.mp3',17,17),(47,'Stuff',0,'No',174,0,'Stuff.mp3',18,18),(48,'Urban Lullaby',0,'No',91,0,'Urban_Lullaby.mp3',19,19),(49,'Park Bench',0,'No',149,0,'Park_Bench.mp3',12,12),(50,'Rumba Sabor',1,'No',98,0,'Rumba_Sabor.mp3',15,15),(51,'Blue Smile',0,'No',129,0,'Blue_Smile.mp3',12,12),(52,'Nemesis',0,'No',133,0,'Nemesis.mp3',17,17),(53,'How About Nah',0,'No',102,0,'Apprehensive_at_Best.mp3',20,20),(54,'California Wind',0,'No',276,0,'California_Wind.mp3',21,21),(55,'Sea Of Doom',0,'No',90,0,'Sea_Of_Doom.mp3',22,22),(56,'Rural Stride',0,'No',130,0,'Rural_Stride.mp3',23,23),(57,'Voyeur',0,'No',83,0,'Voyeur.mp3',6,6),(58,'8 Bit Dreamscape',0,'No',114,0,'8_Bit_Dreamscape.mp3',24,24),(59,'Cosmic Love',0,'No',247,0,'Cosmic_Love.mp3',21,21),(60,'Lucky Shot',0,'No',153,0,'Lucky_Shot.mp3',17,17),(61,'Da Funky Rapsta',0,'No',109,0,'Da_Funky_Rapsta.mp3',25,25),(62,'Lament (Golden Light)',2,'No',216,1,'Lament_Golden_Light.mp3',26,26),(63,'The Wrong Time',1,'No',173,0,'The_Wrong_Time.mp3',1,1),(64,'Dreams Electric',0,'No',167,0,'Dreams_Electric.mp3',27,27),(65,'Armchair Stellar Crossing',0,'No',216,0,'Armchair_Stellar_Crossing.mp3',5,5),(66,'A Fever',0,'No',152,0,'A_Fever.mp3',28,26),(67,'Burner',0,'No',149,0,'Burner.mp3',12,12),(68,'Triumph',0,'No',181,0,'Triumph.mp3',29,28),(69,'Open Highway',0,'No',148,0,'Open_Highway.mp3',17,17),(70,'Hands Way Up',0,'No',146,0,'Hands_Way_Up.mp3',12,12),(71,'Stranger Danger',0,'No',113,0,'Stranger_Danger.mp3',30,29),(72,'Doll Dancing',0,'No',143,0,'Doll_Dancing.mp3',5,5),(73,'Galactic Damages',0,'No',64,0,'Galactic_Damages.mp3',6,6),(74,'Thump and Jump',0,'No',98,0,'Thump_and_Jump.mp3',15,15),(75,'Operatic 3',0,'No',194,0,'Operatic_3.mp3',31,30),(76,'Fine Line',0,'No',155,0,'Fine_Line.mp3',32,27),(77,'Digital Solitude',0,'No',142,0,'Digital_Solitude.mp3',1,1),(78,'Price Check',0,'No',210,0,'Price_Check.mp3',33,31),(79,'Biggie',0,'No',133,0,'Biggie.mp3',17,17),(80,'Arms Dealer',0,'No',271,0,'Arms_Dealer.mp3',34,32),(81,'Take Me to the Depths',0,'No',147,0,'Take_Me_to_the_Depths.mp3',35,33),(82,'Pumping Irie',0,'No',80,0,'Pumping_Irie.mp3',6,6),(83,'Frost',0,'No',124,0,'Frost.mp3',11,11),(84,'Had She Stayed',0,'No',178,0,'Had_She_Stayed.mp3',5,5),(85,'Staring at the Sun',1,'No',160,0,'Staring_at_the_Sun.mp3',36,34),(86,'Parsifal Breathing',0,'No',131,0,'Parsifal_Breathing.mp3',28,26),(87,'Fuscia',0,'No',201,0,'Fuscia.mp3',37,13),(88,'Beach Disco',0,'No',183,0,'Beach_Disco.mp3',38,35),(89,'Trapped',0,'No',205,0,'Trapped.mp3',2,2),(90,'The Farmer In The Dell (Instrumental)',0,'No',110,0,'The_Farmer_In_The_Dell_Instrumental.mp3',39,36),(91,'Dub Spirit',0,'No',94,0,'Dub_Spirit.mp3',6,6),(92,'Desert Caravan',0,'No',121,0,'Desert_Caravan.mp3',40,37),(93,'Hear the Noise',0,'No',193,0,'Hear_the_Noise.mp3',41,38),(94,'Y Files',0,'No',159,0,'Y_Files.mp3',42,27),(95,'We Will Be',0,'No',192,0,'We_Will_Be.mp3',5,5),(96,'Boat Floating',0,'No',134,0,'Boat_Floating.mp3',5,5),(97,'In the Land of Rhinoplasty (Sting)',0,'No',5,0,'In_the_Land_of_Rhinoplasty_Sting.mp3',6,6),(98,'Psychedelicacy',0,'No',91,0,'Psychedelicacy.mp3',25,25),(99,'Morning Mandolin',0,'No',219,0,'Morning_Mandolin.mp3',9,9),(100,'Never Better',0,'No',88,0,'Never_Better.mp3',6,6),(101,'Grandpa',0,'No',182,0,'Grandpa.mp3',5,5),(102,'Requiem In Cello',0,'No',150,0,'Requiem_In_Cello.mp3',43,39),(103,'Good To Go',0,'No',141,0,'Good_To_Go.mp3',12,12),(104,'Howling',0,'No',116,0,'Howling.mp3',12,12),(105,'Slip',0,'No',148,0,'Slip.mp3',42,27),(106,'Weak Knight',0,'No',222,0,'Weak_Knight.mp3',26,26),(107,'Philly Crew',0,'No',102,0,'Philly_Crew.mp3',44,40),(108,'Synergy',0,'No',162,0,'Synergy.mp3',42,27),(109,'Detour (Sting)',0,'No',8,0,'Detour_Sting.mp3',12,12),(110,'Safety Net',0,'No',90,0,'Safety_Net.mp3',33,31),(111,'Never Sleep',0,'No',237,0,'Never_Sleep.mp3',12,12),(112,'St Francis',0,'No',138,0,'St_Francis.mp3',45,41),(113,'Snow Drift',0,'No',140,0,'Snow_Drift.mp3',12,12),(114,'Blue Skies',0,'No',163,0,'Blue_Skies.mp3',1,1),(115,'School Bus Shuffle',0,'No',174,0,'School_Bus_Shuffle.mp3',4,4),(116,'Joy to the World (Instrumental)',0,'No',146,0,'Joy_to_the_World_Instrumental.mp3',46,6),(117,'Always Hopeful',0,'No',114,0,'Always_Hopeful.mp3',1,1),(118,'Fugitive Kind',0,'No',150,0,'Fugitive_Kind.mp3',47,26),(119,'Wishful Thinking',0,'No',99,0,'Wishful_Thinking.mp3',7,7),(120,'Tremsz',0,'No',229,0,'Tremsz.mp3',12,12),(121,'Church of 8 Wheels',0,'No',193,0,'Church_of_8_Wheels.mp3',18,18),(122,'London Bayou',0,'No',128,0,'London_Bayou.mp3',17,17),(123,'Cycles',0,'No',186,0,'Cycles.mp3',48,42),(124,'Cloud Wheels, Castle Builder',0,'No',212,0,'Cloud_Wheels_Castle_Builder.mp3',5,5),(125,'Detour',0,'No',131,0,'Detour.mp3',12,12),(126,'City Plaza',0,'No',129,0,'City_Plaza.mp3',49,43),(127,'Volcano Trap',0,'No',146,0,'Volcano_Trap.mp3',12,12),(128,'Hit The Ground Running',0,'No',190,0,'Hit_The_Ground_Running.mp3',12,12),(129,'Spring',0,'No',150,0,'Spring.mp3',11,11),(130,'Dreams',0,'No',120,0,'Dreams.mp3',13,13),(131,'Dragonfly',0,'No',143,0,'Dragonfly.mp3',50,2),(132,'The Big Guns',0,'No',125,0,'The_Big_Guns.mp3',1,1),(133,'Schizo',0,'No',295,0,'Schizo.mp3',34,32),(134,'Shoulder Closures',0,'No',158,0,'Shoulder_Closures.mp3',12,12),(135,'Move Out',0,'No',135,0,'Move_Out.mp3',51,44),(136,'Very Right',0,'No',97,0,'Very_Right.mp3',6,6),(137,'Peace',0,'No',136,0,'Peace.mp3',11,11),(138,'Entire',0,'No',142,0,'Entire.mp3',52,45),(139,'Official National Anthem',0,'No',107,0,'Official_National_Anthem.mp3',6,6),(140,'Barge (Sting)',0,'No',15,0,'Barge_Sting.mp3',12,12),(141,'Cataclysmic Molten Core',0,'No',76,0,'Cataclysmic_Molten_Core.mp3',6,6),(142,'Tuscan Sun',0,'No',126,0,'Tuscan_Sun.mp3',13,13),(143,'Clover 3',0,'No',205,0,'Clover_3.mp3',31,30),(144,'Lay It Down',0,'No',218,0,'Lay_It_Down.mp3',1,1),(145,'Black and White',0,'No',133,0,'Black_and_White.mp3',53,46),(146,'Juno',0,'No',213,0,'Juno.mp3',13,13),(147,'Cameras',0,'No',112,0,'Cameras.mp3',17,17),(148,'A to the O',0,'No',218,0,'A_to_the_O.mp3',10,10),(149,'Green Leaf Stomp',0,'No',75,0,'Green_Leaf_Stomp.mp3',6,6),(150,'Mr Tea',0,'No',100,0,'Mr_Tea.mp3',54,47),(151,'Auld Lang Syne (Instrumental)',0,'No',122,0,'Auld_Lang_Syne_Instrumental.mp3',6,6),(152,'Garden Walk',0,'No',75,0,'Garden_Walk.mp3',6,6),(153,'Clean Break',0,'No',146,0,'Clean_Break.mp3',48,42),(154,'Dat Step',0,'No',110,0,'Dat_Step.mp3',12,12),(155,'Renegade Jubilee',0,'No',176,0,'Renegade_Jubilee.mp3',55,24),(156,'Free Dog',0,'No',104,0,'Free_Dog.mp3',1,1),(157,'Roll The Top Down',0,'No',211,0,'Roll_The_Top_Down.mp3',12,12),(158,'Coupe',0,'No',216,0,'Coupe.mp3',56,48),(159,'Para Santo Domingo',0,'No',96,0,'Para_Santo_Domingo.mp3',15,15),(160,'Pump',0,'No',139,0,'Pump.mp3',12,12),(161,'AI 2',0,'No',115,0,'AI_2.mp3',57,30),(162,'North',0,'No',139,0,'North.mp3',1,1),(163,'OK POP KO',0,'No',198,0,'OK_POP_KO.mp3',58,49),(164,'Aletheia (Unforgetting)',0,'No',154,0,'Aletheia_Unforgetting.mp3',28,26),(165,'Casbah Towers',0,'No',108,0,'Casbah_Towers.mp3',6,6),(166,'Sleeplessness',0,'No',147,0,'Sleeplessness.mp3',59,50),(167,'Magenta',0,'No',120,0,'Magenta.mp3',37,13),(168,'Airline',0,'No',101,0,'Airline.mp3',42,27),(169,'John F. Kennedy Inaugural Speech, January 20, 1961',0,'No',905,0,'John_F_Kennedy_Inaugural_Speech_January_20_1961.mp3',60,51),(170,'New Tires',0,'No',126,0,'New_Tires.mp3',1,1),(171,'1940\'s Slow Dance (Sting)',0,'No',8,0,'1940_s_Slow_Dance_Sting.mp3',22,22),(172,'Outlet',0,'No',105,0,'Outlet.mp3',1,1),(173,'Sleepy Jake',0,'No',97,0,'Sleepy_Jake.mp3',1,1),(174,'Wandering',0,'No',216,0,'Wandering.mp3',12,12),(175,'After the Soft Rains',0,'No',144,0,'After_the_Soft_Rains.mp3',61,52),(176,'Happy Haunts',0,'No',127,0,'Happy_Haunts.mp3',40,37),(177,'Get Back',0,'No',232,0,'Get_Back.mp3',1,1),(178,'A Quiet Thought',0,'No',116,0,'A_Quiet_Thought.mp3',62,53),(179,'Parkside',0,'No',128,0,'Parkside.mp3',7,7),(180,'Twitch',0,'No',144,0,'Twitch.mp3',28,26),(181,'Night Theme',0,'No',120,0,'Night_Theme.mp3',63,54),(182,'Feather Duster',0,'No',90,0,'Feather_Duster.mp3',32,27),(183,'Crimson',0,'No',120,0,'Crimson.mp3',37,13),(184,'Love On File',0,'No',221,0,'Love_On_File.mp3',64,4),(185,'There Ain\'t No Other Way',0,'No',84,0,'There_Ain_t_No_Other_Way.mp3',6,6),(186,'Ambient Ambulance',0,'No',88,0,'Ambient_Ambulance.mp3',6,6),(187,'How About Nah',0,'No',152,0,'How_About_Nah.mp3',63,54),(188,'Riddim Road',0,'No',92,0,'Riddim_Road.mp3',6,6),(189,'Ladybug',0,'No',201,0,'Ladybug.mp3',2,2),(190,'Dog and Pony Show',0,'No',93,0,'Dog_and_Pony_Show.mp3',1,1),(191,'Barge',0,'No',129,0,'Barge.mp3',12,12),(192,'Dreaming Blue',0,'No',229,0,'Dreaming_Blue.mp3',37,13),(193,'They Might Not',0,'No',160,0,'They_Might_Not.mp3',5,5),(194,'Memory Rain',0,'No',173,0,'Memory_Rain.mp3',29,28),(195,'Mountain Dub',0,'No',108,0,'Mountain_Dub.mp3',12,12),(196,'Pontiac Shuffle',0,'No',137,0,'Pontiac_Shuffle.mp3',17,17),(197,'Blues Infusion',0,'No',130,0,'Blues_Infusion.mp3',2,2),(198,'English Country Garden',0,'No',97,0,'English_Country_Garden.mp3',40,37),(199,'Sophomore Makeout',0,'No',108,0,'Sophomore_Makeout.mp3',1,1),(200,'Three Kinds of Suns',0,'No',197,0,'Three_Kinds_of_Suns.mp3',65,55),(201,'Ticker',0,'No',183,0,'Ticker.mp3',1,1),(202,'Light Years Away',0,'No',116,0,'Light_Years_Away.mp3',25,25),(203,'Trespass',0,'No',174,0,'Trespass.mp3',12,12),(204,'You\'re Not Wrong',0,'No',165,0,'You_re_Not_Wrong.mp3',63,54),(205,'Butchers',0,'No',96,0,'Butchers.mp3',1,1),(206,'Race Car',0,'No',89,0,'Race_Car.mp3',54,47),(207,'Etherial Choir Ascends',0,'No',104,0,'Etherial_Choir_Ascends.mp3',25,25),(208,'Wunderkind',0,'No',187,0,'Wunderkind.mp3',4,4),(209,'Scraping The Sewer',0,'No',110,0,'Scraping_The_Sewer.mp3',22,22),(210,'Splashing Around',0,'No',154,0,'Splashing_Around.mp3',39,36),(211,'Dark Cloak',0,'No',140,0,'Dark_Cloak.mp3',48,42),(212,'We Share This',0,'No',165,0,'We_Share_This.mp3',64,4),(213,'What Could Appear',0,'No',192,0,'What_Could_Appear.mp3',5,5),(214,'Chaos',0,'No',201,0,'Chaos.mp3',12,12),(215,'Daisy Dukes',0,'No',176,0,'Daisy_Dukes.mp3',1,1),(216,'Bed and Breakfast',0,'No',145,0,'Bed_and_Breakfast.mp3',36,34),(217,'Anchors Aweigh - Chorus Only',0,'No',92,0,'Anchors_Aweigh_Chorus_Only.mp3',66,56),(218,'Acoustic Circles',0,'No',106,0,'Acoustic_Circles.mp3',67,57),(219,'Sunrise Drive',0,'No',165,0,'Sunrise_Drive.mp3',61,52),(220,'Sky Skating',0,'No',215,2,'Sky_Skating.mp3',68,27),(221,'Friction Looks',0,'No',112,0,'Friction_Looks.mp3',1,1),(222,'Mysteries',0,'No',109,0,'Mysteries.mp3',7,7),(223,'If I Had a Chicken',0,'No',150,0,'If_I_Had_a_Chicken.mp3',69,58),(224,'Tape Deck',0,'No',86,0,'Tape_Deck.mp3',70,59),(225,'Anxious',0,'No',237,0,'Anxious.mp3',37,13),(226,'Toe Jam',0,'No',224,0,'Toe_Jam.mp3',10,10),(227,'Late Night Snack',0,'No',199,0,'Late_Night_Snack.mp3',12,12),(228,'7th Floor Tango',0,'No',141,0,'7th_Floor_Tango.mp3',1,1),(229,'Mob Battle',0,'No',128,0,'Mob_Battle.mp3',1,1),(230,'Away',0,'No',122,0,'Away.mp3',27,27),(231,'It Maintains, Eyes Change',0,'No',204,0,'It_Maintains_Eyes_Change.mp3',5,5),(232,'Her Owl Ring',0,'No',128,0,'Her_Owl_Ring.mp3',47,26),(233,'Earthy Crust',0,'No',79,0,'Earthy_Crust.mp3',6,6),(234,'Barely Small',0,'No',197,0,'Barely_Small.mp3',64,4),(235,'Procession',0,'No',180,0,'Procession.mp3',5,5),(236,'Smile Quiet Looking Up',0,'No',176,0,'Smile_Quiet_Looking_Up.mp3',5,5),(237,'Firefly',0,'No',148,0,'Firefly.mp3',2,2),(238,'12 Days of Christmas (Vocals)',0,'No',133,0,'12_Days_of_Christmas_Vocals.mp3',6,6),(239,'Parsifal (Gasping)',0,'No',126,0,'Parsifal_Gasping.mp3',28,26),(240,'Trancer',0,'No',255,0,'Trancer.mp3',12,12),(241,'The Wish',0,'No',174,0,'The_Wish.mp3',47,26),(242,'Tropix',0,'No',139,0,'Tropix.mp3',12,12),(243,'Lightning Bugs',0,'No',109,0,'Lightning_Bugs.mp3',42,27),(244,'Plenty Step',0,'No',142,0,'Plenty_Step.mp3',64,4),(245,'Azure',0,'No',164,0,'Azure.mp3',13,13),(246,'Spark',0,'No',121,0,'Spark.mp3',17,17),(247,'Sydney\'s Skyline',0,'No',121,0,'Sydney_s_Skyline.mp3',17,17),(248,'Haus Guest',0,'No',147,0,'Haus_Guest.mp3',12,12),(249,'Their Story, Them Seeing ',0,'No',158,0,'Their_Story_Them_Seeing.mp3',5,5),(250,'Open Sea Morning',0,'No',180,0,'Open_Sea_Morning.mp3',5,5),(251,'Osaka Rain',0,'No',108,0,'Osaka_Rain.mp3',17,17),(252,'Dream Yourself Smooth',0,'No',235,0,'Dream_Yourself_Smooth.mp3',5,5),(253,'March To Victory',0,'No',98,0,'March_To_Victory.mp3',71,60),(254,'Little Drunk, Quiet Floats',0,'No',183,0,'Little_Drunk_Quiet_Floats.mp3',5,5),(255,'Concierge',0,'No',103,0,'Concierge.mp3',17,17),(256,'Dark Tranquility',0,'No',183,0,'Dark_Tranquility.mp3',34,32),(257,'The End Is Near',0,'No',202,0,'The_End_Is_Near.mp3',12,12);
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
INSERT INTO `user` VALUES (1,'abc1@case.edu','Alex','password',NULL),(2,'abc2@case.edu','Jacob','2',NULL),(3,'abc3@case.edu','Jason','3',NULL),(4,'abc4@case.edu','Jordan','4',NULL),(6,'abc6@case.edu','Ted','6',NULL),(7,'abc7@case.edu','Robin','7',NULL),(8,'abc8@case.edu','Barney','8',NULL);
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

-- Dump completed on 2019-05-16 17:12:30
