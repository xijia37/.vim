-- MySQL dump 10.13  Distrib 5.5.21, for CYGWIN (i686)
--
-- Host: 127.0.0.1    Database: ci_snerp
-- ------------------------------------------------------
-- Server version	5.1.30-community

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
-- Table structure for table `augroup`
--

DROP TABLE IF EXISTS `augroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `augroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `augroup`
--

LOCK TABLES `augroup` WRITE;
/*!40000 ALTER TABLE `augroup` DISABLE KEYS */;
INSERT INTO `augroup` VALUES (1,'users'),(2,'admins');
/*!40000 ALTER TABLE `augroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aurole`
--

DROP TABLE IF EXISTS `aurole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aurole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aurole`
--

LOCK TABLES `aurole` WRITE;
/*!40000 ALTER TABLE `aurole` DISABLE KEYS */;
INSERT INTO `aurole` VALUES (1,'baned'),(2,'user'),(3,'moderator'),(4,'admin');
/*!40000 ALTER TABLE `aurole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auser`
--

DROP TABLE IF EXISTS `auser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `activate_code` varchar(50) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_visit` datetime DEFAULT NULL,
  `role_id` int(11) unsigned DEFAULT '1',
  `group_id` int(11) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auser`
--

LOCK TABLES `auser` WRITE;
/*!40000 ALTER TABLE `auser` DISABLE KEYS */;
/*!40000 ALTER TABLE `auser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captcha`
--

DROP TABLE IF EXISTS `captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha`
--

LOCK TABLES `captcha` WRITE;
/*!40000 ALTER TABLE `captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `supplier_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) NOT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(60) DEFAULT NULL,
  `fax` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `bank` varchar(512) DEFAULT NULL,
  `facility` varchar(512) DEFAULT NULL,
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `supplier_id_2` (`supplier_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'宇宙公司','宇宙公司','male','昌平路','fds@fdsaf.com','12154654','0754-8888888','0754-88888875','15902059184','ICBC5465456465465464654654','50人 占地1000平方米',0),(2,'谋智','hailis','female','布拉格广场','lasdj@lfds.com','','0754-54654562','','','','200人',0),(3,'fsdfds','fsdfds','female','fsdgsdgf','fsdf@dsf.com','465465465','','','','','',0),(4,'北极','fdsf','','sdagag','','',NULL,NULL,NULL,NULL,NULL,0),(5,'dsfdsfdsaf','fsdfsdf','','fdsds','','',NULL,NULL,NULL,NULL,NULL,0),(6,'fdsffsdfds','fsdfsdf','','DSFDSF','','',NULL,NULL,NULL,NULL,NULL,0),(7,'蘑菇','fsdfsdf','','DSFDSF','','',NULL,NULL,NULL,NULL,NULL,0),(8,'小红伞','鲁锦','male','fdsds','','','','0754-8888888','','','',0),(9,'橘子','fsdfsdf','male','fdsds','','','','','','','',0),(10,'酷睿','李德水','','武陵山','','',NULL,NULL,NULL,NULL,NULL,0),(11,'fsdf','fsad','','fsd','','',NULL,NULL,NULL,NULL,NULL,0),(12,'sdfdsfds','fdsfds','','','','','','','','','',1336445407),(13,'fdsaf','黄金龙','','dsgdsg','','','','','','','',1336445835),(14,'happy wind','是','male','','','','','254 1566565','','','',1336447488),(15,'fsdafsd','fdsfsd','male','fsdgsdagf','xijia37@gmail.com','446456','ffdsfdsf','fdsagsdag','gfdsagsdfg','gsdfgsdagf','dfgfgsdagasg',1336451110),(16,'的撒发大水范德萨发','士大夫但是','female','反对萨芬','fdsf2@sdfsdlf.com','64984847','0754-8888888','0754-8888887','13521212415','fdsafsdds','的森林发夹撒旦发发生大幅觉得萨芬力进多少哦范德萨辅导书',1336455839),(17,'gfgfdsafdsf','dsfdsf','unknown','fsdafds','fdsafsd@gmai.com','','0754 54555555','','','','',1336456450),(18,'fdsafsd','fdsfds','unknown','','','','','','','','',1336463572),(19,'俏佳人','黄先生','male','龙湖区','','','','','','','',1336469227);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` mediumint(8) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` char(40) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2012-05-08 18:02:31
