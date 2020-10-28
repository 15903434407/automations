-- MySQL dump 10.13  Distrib 5.7.26, for Win64 (x86_64)
--
-- Host: localhost    Database: automation-dev
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add group object permission',6,'add_groupobjectpermission'),(22,'Can change group object permission',6,'change_groupobjectpermission'),(23,'Can delete group object permission',6,'delete_groupobjectpermission'),(24,'Can view group object permission',6,'view_groupobjectpermission'),(25,'Can add user object permission',7,'add_userobjectpermission'),(26,'Can change user object permission',7,'change_userobjectpermission'),(27,'Can delete user object permission',7,'delete_userobjectpermission'),(28,'Can view user object permission',7,'view_userobjectpermission'),(29,'Can add 用户',8,'add_firegameuser'),(30,'Can change 用户',8,'change_firegameuser'),(31,'Can delete 用户',8,'delete_firegameuser'),(32,'Can view 用户',8,'view_firegameuser'),(33,'Can add 域名',9,'add_domain'),(34,'Can change 域名',9,'change_domain'),(35,'Can delete 域名',9,'delete_domain'),(36,'Can view 域名',9,'view_domain'),(37,'Can add 域名联系人',10,'add_domaincontact'),(38,'Can change 域名联系人',10,'change_domaincontact'),(39,'Can delete 域名联系人',10,'delete_domaincontact'),(40,'Can view 域名联系人',10,'view_domaincontact'),(41,'Can add 数据统计',11,'add_statistics'),(42,'Can change 数据统计',11,'change_statistics'),(43,'Can delete 数据统计',11,'delete_statistics'),(44,'Can view 数据统计',11,'view_statistics'),(45,'Can add 域名配置',12,'add_domainconfig'),(46,'Can change 域名配置',12,'change_domainconfig'),(47,'Can delete 域名配置',12,'delete_domainconfig'),(48,'Can view 域名配置',12,'view_domainconfig'),(49,'Can add 落地页',13,'add_floorpage'),(50,'Can change 落地页',13,'change_floorpage'),(51,'Can delete 落地页',13,'delete_floorpage'),(52,'Can view 落地页',13,'view_floorpage'),(53,'Can add 服务器信息',14,'add_websiteserver'),(54,'Can change 服务器信息',14,'change_websiteserver'),(55,'Can delete 服务器信息',14,'delete_websiteserver'),(56,'Can view 服务器信息',14,'view_websiteserver');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-05-07 02:37:28.557531','1','test.test.com',1,'[{\"added\": {}}]',9,3),(2,'2020-05-07 06:04:05.544733','1','惊,男子一个回合',1,'[{\"added\": {}}]',13,3),(3,'2020-05-07 06:06:26.176663','1','test.test.com',1,'[{\"added\": {}}]',12,3),(4,'2020-05-07 06:08:35.631696','1','test.test.com',2,'[{\"changed\": {\"fields\": [\"\\u662f\\u5426\\u4fdd\\u7559\\u5ba2\\u670d\\u4e0e\\u7edf\\u8ba1\"]}}]',12,3),(5,'2020-05-07 06:08:40.247565','1','test.test.com',2,'[{\"changed\": {\"fields\": [\"\\u662f\\u5426\\u4fdd\\u7559\\u5ba2\\u670d\\u4e0e\\u7edf\\u8ba1\"]}}]',12,3),(6,'2020-05-07 06:09:41.217569','43','testing.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\"]}}]',9,3),(7,'2020-05-07 07:22:42.997854','1','testing.com',2,'[{\"changed\": {\"fields\": [\"\\u5f00\\u542f/\\u5173\\u95ed\"]}}]',12,3),(8,'2020-05-07 07:23:19.885987','1','testing.com',2,'[{\"changed\": {\"fields\": [\"\\u5f00\\u542f/\\u5173\\u95ed\"]}}]',12,3),(9,'2020-05-07 07:55:26.325880','1','testing.com',2,'[{\"changed\": {\"fields\": [\"CNZZ\\u7edf\\u8ba1\\u4ee3\\u7801\"]}}]',12,3),(10,'2020-05-07 07:56:26.772175','1','testing.com',2,'[{\"changed\": {\"fields\": [\"CNZZ\\u7edf\\u8ba1\\u4ee3\\u7801\"]}}]',12,3),(11,'2020-05-07 07:57:09.020687','1','testing.com',2,'[{\"changed\": {\"fields\": [\"CNZZ\\u7edf\\u8ba1\\u4ee3\\u7801\"]}}]',12,3),(12,'2020-05-07 07:57:49.900831','1','testing.com',2,'[{\"changed\": {\"fields\": [\"CNZZ\\u7edf\\u8ba1\\u4ee3\\u7801\"]}}]',12,3),(13,'2020-05-07 08:03:23.939338','1','testing.com',2,'[{\"changed\": {\"fields\": [\"\\u662f\\u5426\\u4fdd\\u7559\\u5ba2\\u670d\\u4e0e\\u7edf\\u8ba1\"]}}]',12,3),(14,'2020-05-07 08:04:28.083647','1','testing.com',2,'[{\"changed\": {\"fields\": [\"\\u662f\\u5426\\u4fdd\\u7559\\u5ba2\\u670d\\u4e0e\\u7edf\\u8ba1\"]}}]',12,3),(15,'2020-05-07 08:14:24.676237','1','testing.com',2,'[{\"changed\": {\"fields\": [\"\\u5f00\\u542f/\\u5173\\u95ed\"]}}]',12,3),(16,'2020-05-07 08:14:37.604673','1','testing.com',2,'[{\"changed\": {\"fields\": [\"\\u5f00\\u542f/\\u5173\\u95ed\", \"\\u662f\\u5426\\u4fdd\\u7559\\u5ba2\\u670d\\u4e0e\\u7edf\\u8ba1\"]}}]',12,3),(17,'2020-05-08 01:32:58.956702','1','47.241.128.107',1,'[{\"added\": {}}]',14,3),(18,'2020-05-08 01:35:33.611639','42','test42.test.com',2,'[{\"changed\": {\"fields\": [\"\\u4e3b\\u673a\"]}}]',9,3),(19,'2020-05-08 02:36:37.770508','1','47.241.128.107',2,'[{\"changed\": {\"fields\": [\"Ssh\\u8d26\\u53f7\", \"Ssh\\u5bc6\\u7801\"]}}]',14,3),(20,'2020-05-08 06:56:06.499965','7','XM-02',2,'[{\"changed\": {\"fields\": [\"\\u540d\\u5b57\", \"\\u843d\\u5730\\u9875\"]}}]',13,3),(21,'2020-05-09 07:02:33.717534','43','testing.com',3,'',9,3),(22,'2020-05-09 07:02:33.717534','42','test42.test.com',3,'',9,3),(23,'2020-05-09 07:02:33.717534','41','test41.test.com',3,'',9,3),(24,'2020-05-09 07:02:33.717534','40','test40.test.com',3,'',9,3),(25,'2020-05-09 07:02:33.717534','39','test39.test.com',3,'',9,3),(26,'2020-05-09 07:02:33.717534','38','test38.test.com',3,'',9,3),(27,'2020-05-09 07:02:33.717534','37','test37.test.com',3,'',9,3),(28,'2020-05-09 07:02:33.717534','36','test36.test.com',3,'',9,3),(29,'2020-05-09 07:02:33.717534','35','test35.test.com',3,'',9,3),(30,'2020-05-09 07:02:33.717534','34','test34.test.com',3,'',9,3),(31,'2020-05-09 07:02:33.717534','33','test33.test.com',3,'',9,3),(32,'2020-05-09 07:02:33.717534','32','test32.test.com',3,'',9,3),(33,'2020-05-09 07:02:33.717534','31','test31.test.com',3,'',9,3),(34,'2020-05-09 07:02:33.717534','30','test30.test.com',3,'',9,3),(35,'2020-05-09 07:02:33.717534','29','test29.test.com',3,'',9,3),(36,'2020-05-09 07:02:33.717534','28','test28.test.com',3,'',9,3),(37,'2020-05-09 07:02:33.717534','27','test27.test.com',3,'',9,3),(38,'2020-05-09 07:02:33.717534','26','test26.test.com',3,'',9,3),(39,'2020-05-09 07:02:33.717534','25','test25.test.com',3,'',9,3),(40,'2020-05-09 07:02:33.717534','24','test24.test.com',3,'',9,3),(41,'2020-05-09 07:02:33.717534','23','test23.test.com',3,'',9,3),(42,'2020-05-09 07:02:33.717534','22','test22.test.com',3,'',9,3),(43,'2020-05-09 07:02:33.717534','21','test21.test.com',3,'',9,3),(44,'2020-05-09 07:02:33.733128','20','test20.test.com',3,'',9,3),(45,'2020-05-09 07:02:33.733128','19','test19.test.com',3,'',9,3),(46,'2020-05-09 07:02:33.733128','18','test18.test.com',3,'',9,3),(47,'2020-05-09 07:02:33.733128','17','test17.test.com',3,'',9,3),(48,'2020-05-09 07:02:33.733128','16','test16.test.com',3,'',9,3),(49,'2020-05-09 07:02:33.733128','15','test15.test.com',3,'',9,3),(50,'2020-05-09 07:02:33.733128','14','test14.test.com',3,'',9,3),(51,'2020-05-09 07:02:33.733128','13','test13.test.com',3,'',9,3),(52,'2020-05-09 07:02:33.733128','12','test12.test.com',3,'',9,3),(53,'2020-05-09 07:02:33.733128','11','test11.test.com',3,'',9,3),(54,'2020-05-09 07:02:33.733128','10','test10.test.com',3,'',9,3),(55,'2020-05-09 07:02:33.733128','9','test9.test.com',3,'',9,3),(56,'2020-05-09 07:02:33.733128','8','test8.test.com',3,'',9,3),(57,'2020-05-09 07:02:33.733128','7','test7.test.com',3,'',9,3),(58,'2020-05-09 07:02:33.733128','6','test6.test.com',3,'',9,3),(59,'2020-05-09 07:02:33.733128','5','test5.test.com',3,'',9,3),(60,'2020-05-09 07:02:33.733128','4','test4.test.com',3,'',9,3),(61,'2020-05-09 07:02:33.733128','3','test.test.com',3,'',9,3),(62,'2020-05-09 07:02:33.733128','2','test3.test.com',3,'',9,3),(63,'2020-05-09 07:02:33.733128','1','test2.test.com',3,'',9,3),(64,'2020-05-09 07:04:00.423276','44','lineo.shengweilan.com',1,'[{\"added\": {}}]',9,3),(65,'2020-05-09 07:04:58.818688','45','huroi.shengweilan.com',1,'[{\"added\": {}}]',9,3),(66,'2020-05-09 07:05:26.067213','46','koiur.shengweilan.com',1,'[{\"added\": {}}]',9,3),(67,'2020-05-09 07:05:44.970528','7','XM-02',3,'',13,3),(68,'2020-05-09 07:05:44.970528','6','激动',3,'',13,3),(69,'2020-05-09 07:05:44.970528','5','可怕',3,'',13,3),(70,'2020-05-09 07:05:44.970528','4','震惊',3,'',13,3),(71,'2020-05-09 07:05:44.970528','3','惊呼',3,'',13,3),(72,'2020-05-09 07:05:44.970528','2','bBBS',3,'',13,3),(73,'2020-05-09 07:05:44.970528','1','惊,男子一个回合',3,'',13,3),(74,'2020-05-09 07:06:07.188016','8','XM-01',1,'[{\"added\": {}}]',13,3),(75,'2020-05-09 07:06:23.039182','9','XM-02',1,'[{\"added\": {}}]',13,3),(76,'2020-05-09 07:06:44.740871','10','XM-03',1,'[{\"added\": {}}]',13,3),(77,'2020-05-12 06:21:50.533129','11','XM-04',1,'[{\"added\": {}}]',13,3),(78,'2020-05-12 06:23:54.146176','12','XM-05',1,'[{\"added\": {}}]',13,3),(79,'2020-05-12 06:24:05.568570','13','TW-01',1,'[{\"added\": {}}]',13,3),(80,'2020-05-12 06:24:16.132947','14','TW-02',1,'[{\"added\": {}}]',13,3),(81,'2020-05-12 06:24:30.549261','15','TW-03',1,'[{\"added\": {}}]',13,3),(82,'2020-05-12 06:24:41.478766','16','TW-04',1,'[{\"added\": {}}]',13,3),(83,'2020-05-12 06:24:52.022480','17','TW-05',1,'[{\"added\": {}}]',13,3),(84,'2020-05-12 06:26:34.677715','44','lineo.shengweilan.com',2,'[{\"changed\": {\"fields\": [\"\\u90ae\\u7bb1\", \"\\u6ce8\\u518c\\u8005\", \"\\u6ce8\\u518c\\u5546\", \"\\u6ce8\\u518c\\u7f51\\u5740\", \"\\u72b6\\u6001\", \"DNS\"]}}]',9,3),(85,'2020-05-12 06:27:05.043607','45','huroi.shengweilan.com',2,'[{\"changed\": {\"fields\": [\"\\u90ae\\u7bb1\", \"\\u6ce8\\u518c\\u8005\", \"\\u6ce8\\u518c\\u5546\", \"\\u6ce8\\u518c\\u7f51\\u5740\", \"\\u72b6\\u6001\", \"DNS\"]}}]',9,3),(86,'2020-05-12 06:27:33.288219','46','koiur.shengweilan.com',2,'[{\"changed\": {\"fields\": [\"\\u90ae\\u7bb1\", \"\\u6ce8\\u518c\\u8005\", \"\\u6ce8\\u518c\\u5546\", \"\\u6ce8\\u518c\\u7f51\\u5740\", \"\\u72b6\\u6001\", \"DNS\"]}}]',9,3),(87,'2020-05-12 06:27:40.630911','45','huroi.shengweilan.com',2,'[{\"changed\": {\"fields\": [\"\\u6ce8\\u518c\\u7f51\\u5740\"]}}]',9,3),(88,'2020-05-12 06:27:47.564350','44','lineo.shengweilan.com',2,'[{\"changed\": {\"fields\": [\"\\u6ce8\\u518c\\u7f51\\u5740\"]}}]',9,3),(89,'2020-05-13 06:29:22.532181','135','hotit.baodinggame.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(90,'2020-05-13 06:42:06.489448','107','dirit.steelbrightbar.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(91,'2020-05-13 06:42:14.775054','135','hotit.baodinggame.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(92,'2020-05-13 06:53:11.785694','54','luiuc.syjtfy.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(93,'2020-05-13 06:53:20.805873','88','loirt.pingyuanxian.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(94,'2020-05-13 06:53:31.427280','100','jiouk.ydkqs.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(95,'2020-05-13 06:53:40.472449','101','guol.chongqingweixiu.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(96,'2020-05-13 06:53:50.046825','102','lori.chongqingweixiu.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(97,'2020-05-13 06:53:58.981628','106','tiori.ntmfxy.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(98,'2020-05-13 06:54:07.694147','51','auitor.kksgw.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(99,'2020-05-13 06:55:28.256249','131','aertui.sincemyaccident.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(100,'2020-05-13 06:55:38.043487','114','biouo.scaryjohnkerry.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(101,'2020-05-13 06:55:48.368828','74','kiobiu.sdbqq.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(102,'2020-05-13 06:56:01.917381','75','yuibiu.sdbqq.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(103,'2020-05-13 06:56:18.139540','111','lokiu.litterbitinc.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(104,'2020-05-13 06:56:28.135403','117','forui.baobeibike.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(105,'2020-05-13 06:56:37.396580','64','uidiuo.aliyunncs.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(106,'2020-05-13 06:56:45.463138','93','haiui.kksgw.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(107,'2020-05-13 06:56:54.276386','115','ariot.scaryjohnkerry.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(108,'2020-05-13 06:57:01.701286','110','iiuy.litterbitinc.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(109,'2020-05-13 07:06:49.802977','124','minad.shmcgs.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(110,'2020-05-13 07:08:04.036368','50','ouiciu.kksgw.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(111,'2020-05-13 07:08:12.980549','72','joki.whjianzhi.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(112,'2020-05-13 07:08:21.581872','90','riout.mlqmw.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(113,'2020-05-13 07:08:29.973241','94','miuop.qcsxw.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(114,'2020-05-13 07:08:37.994877','96','minak.cheap-gowns.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(115,'2020-05-13 07:08:45.517654','99','kioui.ydkqs.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(116,'2020-05-13 07:08:53.228233','120','iouir.juejin360.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(117,'2020-05-13 07:09:01.884362','56','huiter.cpw8688.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(118,'2020-05-13 07:09:09.278015','122','floik.shmcgs.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(119,'2020-05-13 07:09:16.820954','124','minad.shmcgs.com',2,'[]',9,3),(120,'2020-05-13 07:09:24.636247','76','ghero.sdbqq.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(121,'2020-05-13 07:09:31.764672','128','dotiu.meihuis.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(122,'2020-05-13 07:09:40.710219','58','liuomn.cpw8688.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(123,'2020-05-13 07:10:12.846901','133','anuia.sincemyaccident.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(124,'2020-05-13 07:10:22.747215','134','kiuou.baodinggame.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(125,'2020-05-13 07:10:34.845251','97','nokiu.cheap-gowns.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(126,'2020-05-13 07:10:44.252841','98','minui.ydkqs.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(127,'2020-05-13 07:10:52.788515','63','kiout.aliyunncs.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(128,'2020-05-13 07:11:06.093007','113','cuiti.scaryjohnkerry.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(129,'2020-05-13 07:11:14.276707','112','guito.litterbitinc.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(130,'2020-05-13 07:11:26.772419','48','qiuity.qcsxw.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(131,'2020-05-13 07:11:44.107830','67','xingau.mumstvccc.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(132,'2020-05-13 07:11:51.627870','69','cbuir.mumstvddd.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(133,'2020-05-13 07:11:59.958092','77','quiro.anychou.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(134,'2020-05-13 07:12:07.187623','132','auiru.sincemyaccident.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\", \"\\u57df\\u540d\"]}}]',9,3),(135,'2020-05-13 07:12:15.228205','135','hotit.baodinggame.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(136,'2020-05-14 02:23:57.946637','1','47.241.128.107',2,'[{\"changed\": {\"fields\": [\"\\u5185\\u7f51IP\", \"\\u670d\\u52a1\\u5668\\u7f16\\u53f7\"]}}]',14,3),(137,'2020-05-14 09:19:40.978304','129','kotir.meihuis.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(138,'2020-05-14 09:20:10.346445','126','mioer.nihaozaijian.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(139,'2020-05-14 09:20:25.973105','118','eseio.baobeibike.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(140,'2020-05-14 09:20:41.163050','107','dirit.steelbrightbar.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(141,'2020-05-14 09:20:57.606005','87','opiur.pingyuanxian.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(142,'2020-05-14 09:22:19.520849','136','couru.fookgame.com',1,'[{\"added\": {}}]',9,3),(143,'2020-05-14 09:22:56.889861','137','niuto.fookgame.com',1,'[{\"added\": {}}]',9,3),(144,'2020-05-14 09:23:27.644784','138','vauit.fookgame.com',1,'[{\"added\": {}}]',9,3),(145,'2020-05-14 10:46:46.040802','139','buiao.fookgame.com',1,'[{\"added\": {}}]',9,3),(146,'2020-05-14 10:47:13.022615','140','bnanr.fookgame.com',1,'[{\"added\": {}}]',9,3),(147,'2020-05-14 11:02:02.716547','116','groil.baobeibike.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(148,'2020-05-14 11:07:15.190507','121','hotor.juejin360.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(149,'2020-05-14 11:08:38.894757','83','retio.qltgw.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(150,'2020-05-15 01:09:36.407666','116','groil.baobeibike.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(151,'2020-05-15 01:09:50.776031','121','hotor.juejin360.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(152,'2020-05-15 01:10:06.926703','83','retio.qltgw.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(153,'2020-05-15 01:10:15.920487','92','kioro.baoxiaoliang.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(154,'2020-05-15 01:11:01.399106','80','suuib.zvqylc.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(155,'2020-05-15 01:11:14.960371','44','lineo.shengweilan.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(156,'2020-05-15 01:12:14.586447','141','leiut.wubaonet.com',1,'[{\"added\": {}}]',9,3),(157,'2020-05-15 03:53:29.445397','88','loirt.pingyuanxian.com',2,'[{\"changed\": {\"fields\": [\"\\u57df\\u540d\\u6240\\u5c5e\"]}}]',9,3),(158,'2020-05-15 05:52:29.274230','142','aaaad.conear.top',1,'[{\"added\": {}}]',9,3),(159,'2020-05-15 06:41:40.738080','1','47.241.128.107',2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9\\u6839\\u76ee\\u5f55\"]}}]',14,3),(160,'2020-05-15 06:41:44.864774','1','47.241.128.107',2,'[]',14,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(6,'guardian','groupobjectpermission'),(7,'guardian','userobjectpermission'),(8,'module_user','firegameuser'),(9,'module_website','domain'),(10,'module_website','domaincontact'),(11,'module_website','statistics'),(12,'module_website','domainconfig'),(13,'module_website','floorpage'),(14,'module_website','websiteserver');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-05-06 08:53:17.577019'),(2,'contenttypes','0002_remove_content_type_name','2020-05-06 08:53:17.813886'),(3,'auth','0001_initial','2020-05-06 08:53:18.079448'),(4,'auth','0002_alter_permission_name_max_length','2020-05-06 08:53:18.954242'),(5,'auth','0003_alter_user_email_max_length','2020-05-06 08:53:18.969835'),(6,'auth','0004_alter_user_username_opts','2020-05-06 08:53:18.969835'),(7,'auth','0005_alter_user_last_login_null','2020-05-06 08:53:18.969835'),(8,'auth','0006_require_contenttypes_0002','2020-05-06 08:53:18.969835'),(9,'auth','0007_alter_validators_add_error_messages','2020-05-06 08:53:18.985456'),(10,'auth','0008_alter_user_username_max_length','2020-05-06 08:53:18.985456'),(11,'auth','0009_alter_user_last_name_max_length','2020-05-06 08:53:18.985456'),(12,'auth','0010_alter_group_name_max_length','2020-05-06 08:53:19.094805'),(13,'auth','0011_update_proxy_permissions','2020-05-06 08:53:19.094805'),(14,'module_user','0001_initial','2020-05-06 08:53:19.485366'),(15,'admin','0001_initial','2020-05-06 08:53:21.256949'),(16,'admin','0002_logentry_remove_auto_add','2020-05-06 08:53:21.862034'),(17,'admin','0003_logentry_add_action_flag_choices','2020-05-06 08:53:21.877627'),(18,'guardian','0001_initial','2020-05-06 08:53:22.433146'),(19,'guardian','0002_generic_permissions_index','2020-05-06 08:53:23.818991'),(20,'module_user','0002_auto_20200506_1653','2020-05-06 08:53:24.092260'),(21,'sessions','0001_initial','2020-05-06 08:53:24.179027'),(22,'module_user','0003_auto_20200506_1703','2020-05-06 09:03:33.618260'),(23,'module_website','0001_initial','2020-05-06 10:55:45.383794'),(24,'module_website','0002_domainconfig_floorpage','2020-05-07 06:01:23.666945'),(25,'module_website','0003_domainconfig_is_save_service_info','2020-05-07 06:08:10.863984'),(26,'module_website','0004_auto_20200507_1638','2020-05-07 08:38:58.627973'),(27,'module_website','0005_websiteserver','2020-05-08 01:21:07.648277'),(28,'module_website','0006_domain_host','2020-05-08 01:35:13.888114'),(29,'module_website','0007_auto_20200513_1418','2020-05-13 06:18:11.468845'),(30,'module_website','0008_auto_20200513_1420','2020-05-13 06:21:01.862477'),(31,'module_website','0009_auto_20200514_1010','2020-05-14 02:10:32.234453'),(32,'module_website','0010_websiteserver_www_root','2020-05-15 06:40:40.298126');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('c0j3b49sk7zz8mdagahmt81iz5m8t61c','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-20 10:32:03.464869'),('6sj6erc9swhh2fc31wn35d0z3w87ytlf','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-21 10:47:59.592738'),('a67vz9kthb22doypuewbcvlapgmim4a2','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-22 01:14:10.298307'),('6gbh84t1hhtv6ytvio7a5eqtfnju90n7','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-23 07:01:34.751802'),('jb708prbdc062ln81m0c3271in6982og','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-23 07:10:45.023729'),('viowedi8pumnzh4qkbsxeq7g8t5ebfxx','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-26 05:34:39.096252'),('66mnw14umjm8glq90uflg0yjoapsarfn','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-26 05:34:42.598747'),('8flqz9zw2g1i9oyfsmoj3bbhjshqgz6y','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-26 06:20:08.784293'),('7l2wb4kr3ajeqeirhztpv7phtxuf9q0n','MjIyMTlhODllZGZjMjAzY2IzYmYyNmVmMmM4MTE0NzI2MmY4MzU3ODp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNmRlYzk2YWM1ZmJmZmY2YzQxNzgyOTUzMDNiNTY0MWFiNGQwZDE4In0=','2020-05-26 10:29:40.270189'),('eglloz07d9e6ohzvtn3ca0jhmvs6mbqi','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-27 07:18:00.978011'),('j8ess73b9dnh155lp5x1wecasp949i5u','MjAxNzMxOWYyZWFmYWI2MGUxMWM4Mzg2NjU5YzE1ODY3NTJlNzZiOTp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYWMzNWE1N2IyZTMzMjQ1ZWYwNjY4NWVkYWU0ZjBjZDU4YzIwNTc1In0=','2020-05-27 02:59:49.409622'),('v07a75484l2557olfucm2o86tyxqd925','NGQyYTFmZDZhMjk1NzY5ZWE0NWNmOWQ0OTBjZjk4MzUwNmI0ZTM3Njp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjODJkYmNlMDQyODNjZTczNTg3ZTExNmMzMDA4MDJlZTk1ZTkzOWM1In0=','2020-05-27 08:21:00.568282'),('2pgb64mdkb18nx3vj5x8uyit5kf9ldqv','YzJiMDVlZWQ4YTE3NWNkZDhlMjk1ZjJkMzIyMGRkZDY2MTY4MGVhZTp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2IxN2Y0MTE3MTlhZGIyMTExY2I2YTA4ZGNlNjc1YTNlMzI5YWFlMiJ9','2020-05-27 07:15:08.005886'),('j92l27jlbxrpbs493licf43k4d3e6ifb','OGFhYjQzZGNjMzAwMjVmYTg3NjA1MTdkZjA2ODIyYWM2NzQ3OTdmNTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTg4N2YwOTM2MGQyODQzZTgwZTIwNjdmNjlhMzY4ZmJjNTdjZDg1NSJ9','2020-05-27 07:05:51.407510'),('fpu3iosliuz5uyzekq5qj9y4jc89cxys','NWNlZDhkODE5ZGI5NjJjM2NlOTE5ZGYxN2QzYmRkNzRmODk2OWYzMzp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzQzYjI1NTBjMTI3NmUxZGQyMDQyMzFmMmNjODZlN2VlMzEyNTQzYSJ9','2020-05-27 06:59:44.193808'),('pyyq4ocoo6ud67sx1y5ojjdcia6itgeq','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-27 07:06:21.196126'),('m1vemprliivqa2sqte6y4xfmrsxql6sx','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-29 05:51:04.415409'),('6gi5dpjer88fzzzkjk1i9lir2tvon79g','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-28 09:38:41.365142'),('b47ojmh21nkt86khkib27jv8beitqhfk','ZjQyMWMxZmFiOTliOTMxYjliZDg2ZjZiODU4NzBkZmY2MTYzMmUwYjp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDcxOGEzYmM1NDM0MjlkY2Y1NmExZWM1ZGY3NTMyYTcwNDJmM2Y1MyJ9','2020-05-29 01:21:45.779850'),('0ia3mlnlpb31a1gykzi1qgvj7lqbofr6','ZTUwM2M5NmYyYzQ2MjcxZWI2MGY1YTcwMThjYzA0ODczMDFhNGU2Mjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MmViYTk1ZGU4NDgzMzQwMWExNjdmNTQyMzUxZGRhMTNiYzc1NTMyIn0=','2020-05-28 11:06:27.714137');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_groupobjectpermission`
--

DROP TABLE IF EXISTS `guardian_groupobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_groupobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_groupobjectperm_group_id_permission_id_o_3f189f7c_uniq` (`group_id`,`permission_id`,`object_pk`),
  KEY `guardian_groupobjectpermission_content_type_id_7ade36b8` (`content_type_id`),
  KEY `guardian_groupobjectpermission_group_id_4bbbfb62` (`group_id`),
  KEY `guardian_groupobjectpermission_permission_id_36572738` (`permission_id`),
  KEY `guardian_gr_content_ae6aec_idx` (`content_type_id`,`object_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_groupobjectpermission`
--

LOCK TABLES `guardian_groupobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_userobjectpermission`
--

DROP TABLE IF EXISTS `guardian_userobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_userobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_userobjectpermi_user_id_permission_id_ob_b0b3d2fc_uniq` (`user_id`,`permission_id`,`object_pk`),
  KEY `guardian_userobjectpermission_content_type_id_2e892405` (`content_type_id`),
  KEY `guardian_userobjectpermission_permission_id_71807bfc` (`permission_id`),
  KEY `guardian_userobjectpermission_user_id_d5c1e964` (`user_id`),
  KEY `guardian_us_content_179ed2_idx` (`content_type_id`,`object_pk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_userobjectpermission`
--

LOCK TABLES `guardian_userobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_userobjectpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_userobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_user_firegameuser`
--

DROP TABLE IF EXISTS `module_user_firegameuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_user_firegameuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `headshot` varchar(100) NOT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_user_firegameuser_username_01a750c6_uniq` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_user_firegameuser`
--

LOCK TABLES `module_user_firegameuser` WRITE;
/*!40000 ALTER TABLE `module_user_firegameuser` DISABLE KEYS */;
INSERT INTO `module_user_firegameuser` VALUES (1,'!OaencJbBFzXFhydIrOayy6nBETaLXd3mP3TnYLKI',NULL,0,'2020-05-06 08:53:24.384478','2020-05-06 08:53:24.384478','AnonymousUser','',NULL,'',NULL,NULL,1,0),(3,'pbkdf2_sha256$180000$dRN0skHrUImI$qMA+8Alay6idrbAh/087BpNOPsF4x1+/sKXvyjYpxN8=','2020-05-15 06:41:06.878135',1,'2020-05-06 09:03:43.313736','2020-05-06 09:03:43.314763','admin','',NULL,'',NULL,NULL,1,1),(4,'pbkdf2_sha256$180000$8HRc2JeP8pxx$jMLZ5pJ2iUaZlaLCo1iJC40DThSzCOEVSyAzmKaNMSs=',NULL,0,'2020-05-06 10:06:37.457847','2020-05-06 10:06:37.457847','test1','',NULL,'',NULL,NULL,1,0),(5,'pbkdf2_sha256$180000$HPHbgublxAxP$LIz4U98WKir3PgDgL0OR6m2jjmgJvbaBkoImyE/DYQ0=','2020-05-13 03:33:37.455942',0,'2020-05-12 10:25:47.475557','2020-05-12 10:25:47.475557','company_1','',NULL,'',NULL,NULL,1,0),(6,'pbkdf2_sha256$180000$MWtYF0L6iXC8$DqiGBsquAWudhKJjDamwXZhMK3jXX0GEIVhGvqIBkj0=','2020-05-13 05:42:58.116261',0,'2020-05-13 02:58:04.218328','2020-05-13 02:58:04.218328','guichangtao','',NULL,'',NULL,NULL,1,0),(7,'pbkdf2_sha256$180000$wAmu6w57RzuO$Cmq9HjTp7YEP43CQ5pqsNcpFidJRUgQUfzrwJgp0nCU=','2020-05-13 06:58:18.421685',0,'2020-05-13 02:58:44.823718','2020-05-13 02:58:44.823718','zhongyan','',NULL,'',NULL,NULL,1,0),(8,'pbkdf2_sha256$180000$pRlEruDCG0Cy$Sxdfhb9T7WtSt11mVF4c6g4N9OdiVXPftlf+W0QZcd0=',NULL,0,'2020-05-13 06:51:00.776813','2020-05-13 06:51:00.776813','钟晓欣','',NULL,'',NULL,NULL,1,0),(9,'pbkdf2_sha256$180000$5EshP3HkUOa5$E/Fzh8gtXU2Vuy8zJz/jKvo0hUeam5JHD03EJpI4jpE=','2020-05-13 08:21:00.566288',0,'2020-05-13 06:51:33.730801','2020-05-13 06:51:33.730801','许晓宁','',NULL,'',NULL,NULL,1,0),(10,'pbkdf2_sha256$180000$FPLogWPMe3xc$uZ3YXqSm2QsMtAw1bnD3UTUUUKotk1zrMP/Gp7KC6aE=','2020-05-13 07:05:51.405517',0,'2020-05-13 06:52:15.360711','2020-05-13 07:05:24.570675','钟妍','',NULL,'',NULL,NULL,1,0),(11,'pbkdf2_sha256$180000$zd4JD5FyCXhQ$zVwjoLmNcYB5LmTqke2lePFrKDRgEF2Z8jER14ubquo=','2020-05-13 07:15:08.004889',0,'2020-05-13 06:52:36.497688','2020-05-13 06:52:36.497688','方逸恒','',NULL,'',NULL,NULL,1,0),(12,'pbkdf2_sha256$180000$AjOCRHI0ZoIn$FP6iND8zPdjGhFLrl0cyS/oMcC24z2xjrUzd3uyGTFE=','2020-05-13 06:59:44.191814',0,'2020-05-13 06:52:47.362253','2020-05-13 06:52:47.363248','桂畅涛','',NULL,'',NULL,NULL,1,0),(13,'pbkdf2_sha256$180000$vJxe2JBumAYn$YaxuFutYWxm/3uNHjJLBNZnXZPirbFP2hUK4AhYrODA=','2020-05-15 01:21:45.779850',0,'2020-05-15 01:06:48.634160','2020-05-15 01:21:33.918646','韩力','',NULL,'',NULL,NULL,1,0);
/*!40000 ALTER TABLE `module_user_firegameuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_user_firegameuser_groups`
--

DROP TABLE IF EXISTS `module_user_firegameuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_user_firegameuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firegameuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_user_firegameuser_firegameuser_id_group_id_3d8d3b30_uniq` (`firegameuser_id`,`group_id`),
  KEY `module_user_firegameuser_groups_firegameuser_id_f78116ed` (`firegameuser_id`),
  KEY `module_user_firegameuser_groups_group_id_1c0efa50` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_user_firegameuser_groups`
--

LOCK TABLES `module_user_firegameuser_groups` WRITE;
/*!40000 ALTER TABLE `module_user_firegameuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_user_firegameuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_user_firegameuser_user_permissions`
--

DROP TABLE IF EXISTS `module_user_firegameuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_user_firegameuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firegameuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_user_firegameuser_firegameuser_id_permissi_d2ec8a5f_uniq` (`firegameuser_id`,`permission_id`),
  KEY `module_user_firegameuser_us_firegameuser_id_cf2eed53` (`firegameuser_id`),
  KEY `module_user_firegameuser_user_permissions_permission_id_715bae1b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_user_firegameuser_user_permissions`
--

LOCK TABLES `module_user_firegameuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `module_user_firegameuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_user_firegameuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_website_domain`
--

DROP TABLE IF EXISTS `module_website_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_website_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `register_author` varchar(255) NOT NULL,
  `register_business` varchar(255) NOT NULL,
  `register_site` varchar(255) NOT NULL,
  `register_date` date NOT NULL,
  `update_date` date NOT NULL,
  `expires_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `dns` varchar(255) NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_website_domain_name_85c84968_uniq` (`name`),
  KEY `module_website_domain_host_id_b4dcff0f` (`host_id`),
  KEY `module_website_domain_user_id_ff4e65d8` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_website_domain`
--

LOCK TABLES `module_website_domain` WRITE;
/*!40000 ALTER TABLE `module_website_domain` DISABLE KEYS */;
INSERT INTO `module_website_domain` VALUES (86,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','zuiro.pingyuanxian.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(79,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','tuiot.anychou.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(71,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','gamou.whjianzhi.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(63,'2020-05-12 06:53:05.426919','2020-05-13 07:10:52.786517','kiout.aliyunncs.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,9),(55,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','asduit.syjtfy.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(54,'2020-05-12 06:53:05.426919','2020-05-13 06:53:11.783698','luiuc.syjtfy.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(53,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','kiour.baoxiaoliang.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(48,'2020-05-12 06:53:05.426919','2020-05-13 07:11:26.770424','qiuity.qcsxw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,8),(47,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','easer.nnghw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(46,'2020-05-09 07:05:26.067213','2020-05-12 06:27:33.287221','koiur.shengweilan.com','791182200@qq.com','FIREGAME','FIREGAME','WWW.FIREGAME.COM','2020-05-09','2020-05-05','2020-05-09','在线','火游互动',1,NULL),(45,'2020-05-09 07:04:58.818688','2020-05-12 06:27:40.629885','huroi.shengweilan.com','791182200@qq.com','FIREGAME','FIREGAME','WWW.FIREGAME.COM','2020-05-04','2020-05-29','2020-05-06','在线','火游互动',1,NULL),(44,'2020-05-09 07:04:00.423276','2020-05-15 01:11:14.958371','lineo.shengweilan.com','791182200@qq.com','FIREGAME','FIREGAME','WWW.FIREGAME.COM','2020-05-09','2020-05-09','2020-05-30','在线','火游互动',1,13),(52,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','ouirt.baoxiaoliang.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(51,'2020-05-12 06:53:05.426919','2020-05-13 06:54:07.692156','auitor.kksgw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(50,'2020-05-12 06:53:05.426919','2020-05-13 07:08:04.034374','ouiciu.kksgw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(49,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','wewrui.qcsxw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(62,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','proiut.aliyunncs.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(61,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','suibvc.jinyuan99.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(60,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','niureo.jinyuan99.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(59,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','mnuiro.jinyuan99.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(58,'2020-05-12 06:53:05.426919','2020-05-13 07:09:40.708222','liuomn.cpw8688.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(57,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','yuoiu.cpw8688.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(56,'2020-05-12 06:53:05.426919','2020-05-13 07:09:01.882369','huiter.cpw8688.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(70,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','liuoy.mumstvddd.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(69,'2020-05-12 06:53:05.426919','2020-05-13 07:11:51.625880','cbuir.mumstvddd.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,8),(68,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','pouity.mumstvddd.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(67,'2020-05-12 06:53:05.426919','2020-05-13 07:11:44.105835','xingau.mumstvccc.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,8),(66,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','uiorep.mumstvccc.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(65,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','cvuiop.mumstvccc.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(64,'2020-05-12 06:53:05.426919','2020-05-13 06:56:37.394584','uidiuo.aliyunncs.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(78,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','eruip.anychou.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(77,'2020-05-12 06:53:05.442540','2020-05-13 07:11:59.956100','quiro.anychou.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,8),(76,'2020-05-12 06:53:05.442540','2020-05-13 07:09:24.634250','ghero.sdbqq.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(75,'2020-05-12 06:53:05.442540','2020-05-13 06:56:01.915384','yuibiu.sdbqq.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(74,'2020-05-12 06:53:05.426919','2020-05-13 06:55:48.366834','kiobiu.sdbqq.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(73,'2020-05-12 06:53:05.426919','2020-05-12 06:53:05.426919','cuirt.whjianzhi.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(72,'2020-05-12 06:53:05.426919','2020-05-13 07:08:12.978556','joki.whjianzhi.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(85,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','doiur.qltgw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(84,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','ruyto.qltgw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(83,'2020-05-12 06:53:05.442540','2020-05-15 01:10:06.924703','retio.qltgw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,13),(82,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','oiutu.zvqylc.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(81,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','gutou.zvqylc.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(80,'2020-05-12 06:53:05.442540','2020-05-15 01:11:01.397106','suuib.zvqylc.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,13),(87,'2020-05-12 06:53:05.442540','2020-05-14 09:20:57.604010','opiur.pingyuanxian.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(88,'2020-05-12 06:53:05.442540','2020-05-15 03:53:29.442388','loirt.pingyuanxian.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,13),(89,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','ruiou.mlqmw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(90,'2020-05-12 06:53:05.442540','2020-05-13 07:08:21.579882','riout.mlqmw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(91,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','woriu.mlqmw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(92,'2020-05-12 06:53:05.442540','2020-05-15 01:10:15.918487','kioro.baoxiaoliang.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,13),(93,'2020-05-12 06:53:05.442540','2020-05-13 06:56:45.461144','haiui.kksgw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(94,'2020-05-12 06:53:05.442540','2020-05-13 07:08:29.971245','miuop.qcsxw.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(95,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','linuo.cheap-gowns.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(96,'2020-05-12 06:53:05.442540','2020-05-13 07:08:37.992879','minak.cheap-gowns.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(97,'2020-05-12 06:53:05.442540','2020-05-13 07:10:34.843259','nokiu.cheap-gowns.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,9),(98,'2020-05-12 06:53:05.442540','2020-05-13 07:10:44.250843','minui.ydkqs.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,9),(99,'2020-05-12 06:53:05.442540','2020-05-13 07:08:45.515660','kioui.ydkqs.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(100,'2020-05-12 06:53:05.442540','2020-05-13 06:53:31.425286','jiouk.ydkqs.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(101,'2020-05-12 06:53:05.442540','2020-05-13 06:53:40.469462','guol.chongqingweixiu.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(102,'2020-05-12 06:53:05.442540','2020-05-13 06:53:50.043834','lori.chongqingweixiu.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(103,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','ourit.chongqingweixiu.com ','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(104,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','cirit.ntmfxy.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(105,'2020-05-12 06:53:05.442540','2020-05-12 06:53:05.442540','kouto.ntmfxy.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(106,'2020-05-12 06:53:05.458162','2020-05-13 06:53:58.979635','tiori.ntmfxy.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(107,'2020-05-12 06:53:05.458162','2020-05-14 09:20:41.159050','dirit.steelbrightbar.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(108,'2020-05-12 06:53:05.458162','2020-05-12 06:53:05.458162','runiu.steelbrightbar.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(109,'2020-05-12 06:53:05.458162','2020-05-12 06:53:05.458162','moirt.steelbrightbar.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(110,'2020-05-12 06:53:05.458162','2020-05-13 06:57:01.698294','iiuy.litterbitinc.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(111,'2020-05-12 06:53:05.458162','2020-05-13 06:56:18.137545','lokiu.litterbitinc.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(112,'2020-05-12 06:53:05.458162','2020-05-13 07:11:14.274713','guito.litterbitinc.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,9),(113,'2020-05-12 06:53:05.458162','2020-05-13 07:11:06.091015','cuiti.scaryjohnkerry.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,9),(114,'2020-05-12 06:53:05.458162','2020-05-13 06:55:38.041531','biouo.scaryjohnkerry.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(115,'2020-05-12 06:53:05.458162','2020-05-13 06:56:54.274392','ariot.scaryjohnkerry.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(116,'2020-05-12 06:53:05.458162','2020-05-15 01:09:36.405666','groil.baobeibike.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,13),(117,'2020-05-12 06:53:05.458162','2020-05-13 06:56:28.133409','forui.baobeibike.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(118,'2020-05-12 06:53:05.458162','2020-05-14 09:20:25.970102','eseio.baobeibike.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(119,'2020-05-12 06:53:05.458162','2020-05-12 06:53:05.458162','jourk.juejin360.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(120,'2020-05-12 06:53:05.458162','2020-05-13 07:08:53.226239','iouir.juejin360.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(121,'2020-05-12 06:53:05.458162','2020-05-15 01:09:50.774031','hotor.juejin360.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,13),(122,'2020-05-12 06:53:05.458162','2020-05-13 07:09:09.276021','floik.shmcgs.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(123,'2020-05-12 06:53:05.458162','2020-05-12 06:53:05.458162','biudi.shmcgs.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(124,'2020-05-12 06:53:05.458162','2020-05-13 07:09:16.817960','minad.shmcgs.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(125,'2020-05-12 06:53:05.458162','2020-05-12 06:53:05.458162','diuor.nihaozaijian.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(126,'2020-05-12 06:53:05.458162','2020-05-14 09:20:10.343470','mioer.nihaozaijian.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(127,'2020-05-12 06:53:05.458162','2020-05-12 06:53:05.458162','godio.nihaozaijian.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(128,'2020-05-12 06:53:05.458162','2020-05-13 07:09:31.761681','dotiu.meihuis.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,10),(129,'2020-05-12 06:53:05.458162','2020-05-14 09:19:40.976300','kotir.meihuis.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,12),(130,'2020-05-12 06:53:05.458162','2020-05-12 06:53:05.458162','hotiu.meihuis.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,NULL),(131,'2020-05-12 06:53:26.755655','2020-05-13 06:55:28.253255','aertui.sincemyaccident.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,11),(132,'2020-05-12 06:53:26.755655','2020-05-13 07:12:07.185629','auiru.sincemyaccident.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,8),(133,'2020-05-12 06:53:26.755655','2020-05-13 07:10:12.844906','anuia.sincemyaccident.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,9),(134,'2020-05-12 06:53:26.755655','2020-05-13 07:10:22.745220','kiuou.baodinggame.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,9),(135,'2020-05-12 06:53:26.755655','2020-05-13 07:12:15.226221','hotit.baodinggame.com','q@q.com','firegame','firegame','www','2020-05-12','2020-05-12','2020-05-12','ok','1.1.1.1',1,8),(136,'2020-05-14 09:22:19.518849','2020-05-14 09:22:19.518849','couru.fookgame.com','791182200@qq.com','FIREGAME','FIREGAME','WWW.FIREGAME.COM','2020-05-14','2020-05-14','2020-05-14','fuck','fuck',1,11),(137,'2020-05-14 09:22:56.886874','2020-05-14 09:22:56.886874','niuto.fookgame.com','791182200@qq.com','FIREGAME','FIREGAME','WWW.FIREGAME.COM','2020-05-14','2020-05-14','2020-05-14','fuck','fuck',1,11),(138,'2020-05-14 09:23:27.642783','2020-05-14 09:23:27.642783','vauit.fookgame.com','791182200@qq.com','FIREGAME','FIREGAME','WWW.FIREGAME.COM','2020-05-14','2020-05-14','2020-05-14','fuck','fuck',1,11),(139,'2020-05-14 10:46:46.037798','2020-05-14 10:46:46.037798','buiao.fookgame.com','791182200@qq.com','FIREGAME','FIREGAME','WWW.FIREGAME.COM','2020-05-14','2020-05-14','2020-05-14','fuck','fuck',1,9),(140,'2020-05-14 10:47:13.020614','2020-05-14 10:47:13.020614','bnanr.fookgame.com','791182200@qq.com','FIREGAME','FIREGAME','WWW.FIREGAME.COM','2020-05-14','2020-05-14','2020-05-14','在线','火游互动',1,9),(141,'2020-05-15 01:12:14.585445','2020-05-15 01:12:14.585445','leiut.wubaonet.com','leiut.wubaonet@qq.com','leiut.wubaonet.com','leiut.wubaonet.com','leiut.wubaonet.com','2020-05-15','2020-05-15','2020-05-15','ok','1.1.1.1',1,13),(142,'2020-05-15 05:52:29.272230','2020-05-15 05:52:29.272230','aaaad.conear.top','791182200@qq.com','FIREGAME','FIREGAME','WWW.FIREGAME.COM','2020-05-15','2020-05-15','2020-05-15','fuck','火游互动',1,3);
/*!40000 ALTER TABLE `module_website_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_website_domainconfig`
--

DROP TABLE IF EXISTS `module_website_domainconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_website_domainconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `cnzz` longtext NOT NULL,
  `facebook` longtext NOT NULL,
  `domain_id` int(11) NOT NULL,
  `f_page_id` int(11) DEFAULT NULL,
  `is_save_service_info` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain_id` (`domain_id`),
  KEY `module_website_domainconfig_f_page_id_09abd141` (`f_page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_website_domainconfig`
--

LOCK TABLES `module_website_domainconfig` WRITE;
/*!40000 ALTER TABLE `module_website_domainconfig` DISABLE KEYS */;
INSERT INTO `module_website_domainconfig` VALUES (12,'2020-05-12 10:10:44.147142','2020-05-12 10:16:25.754523',1,'<script type=\"text/javascript\" src=\"https://v1.cnzz.com/z_stat.php?id=1278889824&web_id=1278894844\"></script>','<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'620162555509267\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=620168555509267&ev=PageView&noscript=1\"\n/></noscript>',85,12,1),(10,'2020-05-12 06:05:00.472175','2020-05-12 06:09:50.140888',0,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278875046&web_id=1278875046\"></script>','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'166983751366833\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=166983751366833&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',45,8,0),(11,'2020-05-12 06:57:38.868189','2020-05-14 12:41:44.516628',1,'<script type=\"text/javascript\" src=\"https://v1.cnzz.com/z_stat.php?id=1278894844&web_id=127\"></script>','<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'620162555509267\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=620162555509267&ev=PageView&noscript=1\"\n/></noscript>ssssssss',107,16,1),(8,'2020-05-09 07:14:02.689115','2020-05-12 06:02:42.069083',1,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278875046&web_id=1278875046\">s</script>','<!-- Facebook Pixel Code -->\n<script>s\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'166983751366833\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=47654564654654874564654&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',46,9,0),(9,'2020-05-09 07:17:18.491566','2020-05-09 10:39:48.062089',1,'','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'166983751366833\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=166983751366833&ev=PsageViewss&noscript=1\"\n/></noscript>1sssss1ssssssssssssssssssssssssssssssss\n<!-- End Facebook Pixel Code -->',44,8,0),(13,'2020-05-13 03:35:47.966996','2020-05-13 10:34:46.097753',1,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278896535&web_id=1278896535\"></script>','',115,11,1),(14,'2020-05-13 03:56:32.469226','2020-05-13 03:59:17.658311',1,'','',65,17,0),(15,'2020-05-13 05:49:35.425226','2020-05-15 01:31:18.750109',1,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278898461&web_id=1278898461\"></script>','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'858747341273227\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=858747341273227&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',124,11,1),(16,'2020-05-13 06:25:19.497117','2020-05-13 06:26:30.718260',1,'','',111,11,1),(17,'2020-05-13 07:00:51.878088','2020-05-14 01:13:15.070874',0,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278898930&web_id=1278898930\"></script>','',102,9,1),(18,'2020-05-13 07:52:33.797898','2020-05-14 07:53:55.711026',0,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278899186&web_id=1278899186\"></script>','',101,9,1),(21,'2020-05-14 01:14:21.152175','2020-05-15 05:48:09.723759',1,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278901045&web_id=1278901045\"></script>','',122,9,1),(19,'2020-05-13 08:21:37.271409','2020-05-14 09:18:01.558337',0,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278893774&web_id=1278893774\"></script>','',112,9,1),(20,'2020-05-13 10:33:04.879448','2020-05-14 01:14:44.411662',0,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278900117&web_id=1278900117\"></script>','',106,17,1),(22,'2020-05-14 01:14:26.293475','2020-05-15 02:01:17.369815',1,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278886601&web_id=1278886601\"></script>','',134,17,1),(23,'2020-05-14 01:40:25.587421','2020-05-14 01:40:26.438885',1,'<script type=\"text/javascript\" src=\"https://v1.cnzz.com/z_stat.php?id=1278901090&web_id=1278901090\"></script>','',90,9,1),(24,'2020-05-14 05:37:19.262987','2020-05-14 05:47:59.150162',1,'<script type=\"text/javascript\" src=\"https://s4.cnzz.com/z_stat.php?id=1278902179&web_id=1278902179\"></script>','',58,17,1),(25,'2020-05-14 08:29:26.609355','2020-05-15 01:50:02.578054',1,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278896012&web_id=1278896012\"></script>','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'1607399916075805\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=1607399916075805&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',113,11,1),(26,'2020-05-14 09:24:32.413702','2020-05-15 04:27:30.493976',0,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278903494&web_id=1278903494\"></script>','',118,11,1),(27,'2020-05-14 09:51:47.937495','2020-05-14 09:58:42.853139',1,'','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'274258593756138\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=274258593756138&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',93,11,1),(28,'2020-05-14 09:58:06.588517','2020-05-14 10:04:29.914935',1,'','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'481176469270445\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=481176469270445&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',136,11,1),(29,'2020-05-14 10:20:51.656827','2020-05-15 02:34:46.020597',1,'','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'1139088066451728\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=1139088066451728&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',75,12,1),(30,'2020-05-14 11:02:42.227116','2020-05-14 12:52:55.514697',1,'<script type=\"text/javascript\" src=\"https://v1.cnzz.com/z_stat.php?id=1278903877&web_id=1278903877\"></script>','',116,12,1),(31,'2020-05-14 11:47:34.403874','2020-05-14 11:48:47.101529',1,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278904012&web_id=1278904012\"></script>','',87,12,1),(32,'2020-05-14 12:41:01.086240','2020-05-14 12:57:08.823529',1,'<script type=\"text/javascript\" src=\"https://s4.cnzz.com/z_stat.php?id=1278904149&web_id=1278904149\"></script>','',83,9,1),(33,'2020-05-15 01:10:36.153623','2020-05-15 03:17:26.976607',1,'','',74,17,1),(34,'2020-05-15 01:22:57.556520','2020-05-15 01:32:33.831088',1,'<script type=\"text/javascript\" src=\"https://s4.cnzz.com/z_stat.php?id=1278872796&web_id=1278872796\"></script>','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'3057745910940108\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=3057745910940108&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',121,9,0),(35,'2020-05-15 03:33:27.027616','2020-05-15 03:48:46.374959',1,'<script type=\"text/javascript\" src=\"https://v1.cnzz.com/z_stat.php?id=1278905500&web_id=1278905500\"></script>','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'679774882593763\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=679774882593763&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',140,17,1),(36,'2020-05-15 03:55:24.442932','2020-05-15 03:55:25.242157',0,'<script type=\"text/javascript\" src=\"https://v1.cnzz.com/z_stat.php?id=1278905598&web_id=1278905598\"></script>','',88,11,1),(37,'2020-05-15 03:56:27.054889','2020-05-15 06:33:31.608828',0,'<script type=\"text/javascript\" src=\"https://s9.cnzz.com/z_stat.php?id=1278905607&web_id=1278905607\"></script>','',129,14,1),(38,'2020-05-15 05:57:24.628614','2020-05-15 06:15:06.017959',1,'','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'678129119708726\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=678129119708726&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',114,11,1),(39,'2020-05-15 06:19:56.214259','2020-05-15 06:19:57.016122',1,'','<!-- Facebook Pixel Code -->\n<script>\n  !function(f,b,e,v,n,t,s)\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\n  \'https://connect.facebook.net/en_US/fbevents.js\');\n  fbq(\'init\', \'238869610546072\');\n  fbq(\'track\', \'PageView\');\n</script>\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\n  src=\"https://www.facebook.com/tr?id=238869610546072&ev=PageView&noscript=1\"\n/></noscript>\n<!-- End Facebook Pixel Code -->',138,17,1);
/*!40000 ALTER TABLE `module_website_domainconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_website_domaincontact`
--

DROP TABLE IF EXISTS `module_website_domaincontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_website_domaincontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `status` varchar(255) NOT NULL,
  `module_info` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postman` varchar(12) NOT NULL,
  `phone` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_website_domaincontact`
--

LOCK TABLES `module_website_domaincontact` WRITE;
/*!40000 ALTER TABLE `module_website_domaincontact` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_website_domaincontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_website_floorpage`
--

DROP TABLE IF EXISTS `module_website_floorpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_website_floorpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_website_floorpage`
--

LOCK TABLES `module_website_floorpage` WRITE;
/*!40000 ALTER TABLE `module_website_floorpage` DISABLE KEYS */;
INSERT INTO `module_website_floorpage` VALUES (14,'2020-05-12 06:24:16.132947','2020-05-12 06:24:16.132947','TW-02','corto.qiandaijiab.com','中文简体'),(13,'2020-05-12 06:24:05.568570','2020-05-12 06:24:05.568570','TW-01','antio.ddaeggal.com','中文简体'),(12,'2020-05-12 06:23:54.146176','2020-05-12 06:23:54.146176','XM-05','ferou.dongying7.com','中文简体'),(11,'2020-05-12 06:21:50.533129','2020-05-12 06:21:50.533129','XM-04','eriut.chinaxpower.com','中文简体'),(10,'2020-05-09 07:06:44.725478','2020-05-09 07:06:44.725478','XM-03','datur.aboutnaicom.com','中文简体'),(9,'2020-05-09 07:06:23.039182','2020-05-09 07:06:23.039182','XM-02','catac.qiandaijiab.com','中文简体'),(8,'2020-05-09 07:06:07.188016','2020-05-09 07:06:07.188016','XM-01','borti.ddaeggal.com','中文简体'),(15,'2020-05-12 06:24:30.549261','2020-05-12 06:24:30.549261','TW-03','diark.aboutnaicom.com','中文简体'),(16,'2020-05-12 06:24:41.478766','2020-05-12 06:24:41.478766','TW-04','eariu.chinaxpower.com','中文简体'),(17,'2020-05-12 06:24:52.022480','2020-05-12 06:24:52.022480','TW-05','fiuot.dongying7.com','中文简体');
/*!40000 ALTER TABLE `module_website_floorpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_website_statistics`
--

DROP TABLE IF EXISTS `module_website_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_website_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_website_statistics`
--

LOCK TABLES `module_website_statistics` WRITE;
/*!40000 ALTER TABLE `module_website_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_website_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_website_websiteserver`
--

DROP TABLE IF EXISTS `module_website_websiteserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_website_websiteserver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `ip` char(39) NOT NULL,
  `ssh_account` varchar(255) NOT NULL,
  `ssh_password` varchar(255) NOT NULL,
  `ssh_port` int(11) NOT NULL,
  `local_host` varchar(255) DEFAULT NULL,
  `server_tag` varchar(255) DEFAULT NULL,
  `www_root` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_website_websiteserver`
--

LOCK TABLES `module_website_websiteserver` WRITE;
/*!40000 ALTER TABLE `module_website_websiteserver` DISABLE KEYS */;
INSERT INTO `module_website_websiteserver` VALUES (1,'2020-05-08 01:32:58.955705','2020-05-15 06:41:44.862774','47.241.128.107','root','B9KaW%xYvTn$2Mm&',22,'172.21.133.21','新加坡-阿里云','/www/wwwroot');
/*!40000 ALTER TABLE `module_website_websiteserver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-15 14:42:25
