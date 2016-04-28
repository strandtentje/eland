-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: stortneer
-- ------------------------------------------------------
-- Server version	5.6.28-1

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
-- Table structure for table `Article`
--

DROP TABLE IF EXISTS `Article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) NOT NULL,
  `locale` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `urlindex` (`url`(255)),
  KEY `artloc_idx` (`locale`),
  CONSTRAINT `artloc` FOREIGN KEY (`locale`) REFERENCES `Locale` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- Table structure for table `Behaald`
--

DROP TABLE IF EXISTS `Behaald`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Behaald` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team` int(11) NOT NULL,
  `prestatie` int(11) NOT NULL,
  `waarde` int(11) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `obsolete` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Behaald_1` (`team`),
  KEY `fk_Behaald_2` (`prestatie`),
  CONSTRAINT `fk_Behaald_1` FOREIGN KEY (`team`) REFERENCES `Team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Behaald_2` FOREIGN KEY (`prestatie`) REFERENCES `Prestatie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- Table structure for table `Body`
--

DROP TABLE IF EXISTS `Body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Body` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article` int(11) DEFAULT NULL,
  `title` text,
  `summary` varchar(256) DEFAULT NULL,
  `content` longtext,
  `previous` int(11) DEFAULT NULL,
  `since` datetime DEFAULT NULL,
  `until` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sectionarticle_idx` (`article`),
  KEY `previousversion_idx` (`previous`),
  CONSTRAINT `previousversion` FOREIGN KEY (`previous`) REFERENCES `Body` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sectionarticle` FOREIGN KEY (`article`) REFERENCES `Article` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- Temporary view structure for view `CurrentTeams`
--

DROP TABLE IF EXISTS `CurrentTeams`;
/*!50001 DROP VIEW IF EXISTS `CurrentTeams`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `CurrentTeams` AS SELECT 
 1 AS `id`,
 1 AS `title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `CurrentTokens`
--

DROP TABLE IF EXISTS `CurrentTokens`;
/*!50001 DROP VIEW IF EXISTS `CurrentTokens`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `CurrentTokens` AS SELECT 
 1 AS `token`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Locale`
--

DROP TABLE IF EXISTS `Locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `langct` (`language`,`country`)
);

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valid` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `PersonAttribute`
--

DROP TABLE IF EXISTS `PersonAttribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PersonAttribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text,
  `obsolete` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `personattributeperson_idx` (`person`),
  KEY `attributename` (`name`),
  FULLTEXT KEY `attributevalue` (`value`),
  CONSTRAINT `personattributeperson` FOREIGN KEY (`person`) REFERENCES `Person` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- Table structure for table `PersonView`
--

DROP TABLE IF EXISTS `PersonView`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PersonView` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `view` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `title` text,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nameindex` (`view`),
  KEY `viewattribute_idx` (`name`)
);

--
-- Table structure for table `Prestatie`
--

DROP TABLE IF EXISTS `Prestatie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prestatie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `docs` text,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);

--
-- Table structure for table `Session`
--

DROP TABLE IF EXISTS `Session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cookie` varchar(192) CHARACTER SET utf8 DEFAULT NULL,
  `login` int(11) DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loggedinsession_idx` (`login`),
  CONSTRAINT `loggedinsession` FOREIGN KEY (`login`) REFERENCES `Login` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `obsolete` datetime DEFAULT NULL,
  `token` varchar(256) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tokenindex` (`token`)
);

--
-- Table structure for table `TokenSection`
--

DROP TABLE IF EXISTS `TokenSection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TokenSection` (
  `section` varchar(45) NOT NULL,
  PRIMARY KEY (`section`)
);
