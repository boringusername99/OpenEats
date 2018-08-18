-- MySQL dump 10.16  Distrib 10.2.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: openeats
-- ------------------------------------------------------
-- Server version	10.2.13-MariaDB-10.2.13+maria~jessie

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
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add Token',8,'add_token'),(23,'Can change Token',8,'change_token'),(24,'Can delete Token',8,'delete_token'),(25,'Can add recipe',9,'add_recipe'),(26,'Can change recipe',9,'change_recipe'),(27,'Can delete recipe',9,'delete_recipe'),(28,'Can add sub recipe',10,'add_subrecipe'),(29,'Can change sub recipe',10,'change_subrecipe'),(30,'Can delete sub recipe',10,'delete_subrecipe'),(31,'Can add course',11,'add_course'),(32,'Can change course',11,'change_course'),(33,'Can delete course',11,'delete_course'),(34,'Can add cuisine',12,'add_cuisine'),(35,'Can change cuisine',12,'change_cuisine'),(36,'Can delete cuisine',12,'delete_cuisine'),(37,'Can add tag',13,'add_tag'),(38,'Can change tag',13,'change_tag'),(39,'Can delete tag',13,'delete_tag'),(40,'Can add ingredient',14,'add_ingredient'),(41,'Can change ingredient',14,'change_ingredient'),(42,'Can delete ingredient',14,'delete_ingredient'),(43,'Can add ingredient group',15,'add_ingredientgroup'),(44,'Can change ingredient group',15,'change_ingredientgroup'),(45,'Can delete ingredient group',15,'delete_ingredientgroup'),(46,'Can add news',16,'add_news'),(47,'Can change news',16,'change_news'),(48,'Can delete news',16,'delete_news'),(49,'Can add grocery item',17,'add_groceryitem'),(50,'Can change grocery item',17,'change_groceryitem'),(51,'Can delete grocery item',17,'delete_groceryitem'),(52,'Can add grocery list',18,'add_grocerylist'),(53,'Can change grocery list',18,'change_grocerylist'),(54,'Can delete grocery list',18,'delete_grocerylist'),(55,'Can add grocery recipe',19,'add_groceryrecipe'),(56,'Can change grocery recipe',19,'change_groceryrecipe'),(57,'Can delete grocery recipe',19,'delete_groceryrecipe'),(58,'Can add grocery shared',20,'add_groceryshared'),(59,'Can change grocery shared',20,'change_groceryshared'),(60,'Can delete grocery shared',20,'delete_groceryshared'),(61,'Can add cors model',21,'add_corsmodel'),(62,'Can change cors model',21,'change_corsmodel'),(63,'Can delete cors model',21,'delete_corsmodel'),(64,'Can add menu',22,'add_menu'),(65,'Can change menu',22,'change_menu'),(66,'Can delete menu',22,'delete_menu'),(67,'Can add menu item',23,'add_menuitem'),(68,'Can change menu item',23,'change_menuitem'),(69,'Can delete menu item',23,'delete_menuitem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$N7h40bd4pvk0$Js75axPU84t+kMTBXoTk3T2VZvCX82AHSOp/6oCj76Q=','2018-03-26 23:35:39.779665',1,'jason','','','jyau04@gmail.com',1,1,'2018-03-26 23:34:39.663349');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
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
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-03-26 23:36:15.164739','2','Course object (2)',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',11,1),(2,'2018-03-26 23:36:24.051285','5','Course object (5)',1,'[{\"added\": {}}]',11,1),(3,'2018-03-26 23:36:36.037246','6','Course object (6)',1,'[{\"added\": {}}]',11,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (7,'admin','logentry'),(2,'auth','group'),(1,'auth','permission'),(3,'auth','user'),(8,'authtoken','token'),(4,'contenttypes','contenttype'),(21,'corsheaders','corsmodel'),(14,'ingredient','ingredient'),(15,'ingredient','ingredientgroup'),(17,'list','groceryitem'),(18,'list','grocerylist'),(19,'list','groceryrecipe'),(20,'list','groceryshared'),(22,'menu','menu'),(23,'menu','menuitem'),(16,'news','news'),(9,'recipe','recipe'),(10,'recipe','subrecipe'),(11,'recipe_groups','course'),(12,'recipe_groups','cuisine'),(13,'recipe_groups','tag'),(5,'sessions','session'),(6,'sites','site');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-03-26 23:33:52.480057'),(2,'auth','0001_initial','2018-03-26 23:33:53.174664'),(3,'admin','0001_initial','2018-03-26 23:33:53.413908'),(4,'admin','0002_logentry_remove_auto_add','2018-03-26 23:33:53.442829'),(5,'contenttypes','0002_remove_content_type_name','2018-03-26 23:33:53.690523'),(6,'auth','0002_alter_permission_name_max_length','2018-03-26 23:33:53.792778'),(7,'auth','0003_alter_user_email_max_length','2018-03-26 23:33:53.861564'),(8,'auth','0004_alter_user_username_opts','2018-03-26 23:33:53.929038'),(9,'auth','0005_alter_user_last_login_null','2018-03-26 23:33:54.057450'),(10,'auth','0006_require_contenttypes_0002','2018-03-26 23:33:54.100133'),(11,'auth','0007_alter_validators_add_error_messages','2018-03-26 23:33:54.162718'),(12,'auth','0008_alter_user_username_max_length','2018-03-26 23:33:54.469435'),(13,'auth','0009_alter_user_last_name_max_length','2018-03-26 23:33:54.538072'),(14,'authtoken','0001_initial','2018-03-26 23:33:54.795990'),(15,'authtoken','0002_auto_20160226_1747','2018-03-26 23:33:55.224539'),(16,'recipe_groups','0001_initial','2018-03-26 23:33:55.455921'),(17,'recipe','0001_initial','2018-03-26 23:33:56.498459'),(18,'recipe','0002_remove_recipe_directions','2018-03-26 23:33:56.569902'),(19,'recipe','0003_auto_20161111_1122','2018-03-26 23:33:57.201313'),(20,'recipe','0004_auto_20161126_1758','2018-03-26 23:33:57.323002'),(21,'recipe','0005_recipe_source','2018-03-26 23:33:57.398420'),(22,'recipe','0006_auto_20170127_0905','2018-03-26 23:33:57.432687'),(23,'recipe','0007_auto_20170723_2046','2018-03-26 23:33:57.475235'),(24,'ingredient','0001_initial','2018-03-26 23:33:57.565588'),(25,'ingredient','0002_auto_20170127_2104','2018-03-26 23:33:57.602198'),(26,'ingredient','0003_auto_20170723_2050','2018-03-26 23:33:57.924128'),(27,'ingredient','0004_auto_20170723_2101','2018-03-26 23:33:58.046513'),(28,'ingredient','0005_auto_20170725_1950','2018-03-26 23:33:58.664080'),(29,'ingredient','0006_auto_20170725_1951','2018-03-26 23:33:58.929741'),(30,'ingredient','0007_remove_ingredient_recipe','2018-03-26 23:33:59.110402'),(31,'ingredient','0008_auto_20180129_1456','2018-03-26 23:33:59.480962'),(32,'list','0001_initial','2018-03-26 23:34:00.734350'),(33,'list','0002_groceryitem_complete','2018-03-26 23:34:00.816017'),(34,'list','0003_auto_20170128_2118','2018-03-26 23:34:01.413912'),(35,'list','0004_auto_20170203_1045','2018-03-26 23:34:01.676857'),(36,'list','0005_auto_20170728_2230','2018-03-26 23:34:01.762263'),(37,'list','0006_auto_20170826_0059','2018-03-26 23:34:01.906377'),(38,'list','0007_auto_20180129_1456','2018-03-26 23:34:02.964852'),(39,'news','0001_initial','2018-03-26 23:34:02.988181'),(40,'news','0002_auto_20161125_0846','2018-03-26 23:34:03.123504'),(41,'recipe','0008_auto_20170806_2059','2018-03-26 23:34:03.413179'),(42,'recipe','0009_auto_20171114_1443','2018-03-26 23:34:03.666685'),(43,'recipe','0010_auto_20171114_1443','2018-03-26 23:34:03.771093'),(44,'recipe','0011_auto_20171114_1543','2018-03-26 23:34:03.938693'),(45,'recipe','0012_auto_20180106_1113','2018-03-26 23:34:04.145707'),(46,'recipe','0013_auto_20180129_1456','2018-03-26 23:34:04.813551'),(47,'recipe_groups','0002_remove_tag_author','2018-03-26 23:34:04.906331'),(48,'recipe_groups','0003_auto_20180129_1456','2018-03-26 23:34:05.189311'),(49,'sessions','0001_initial','2018-03-26 23:34:05.227584'),(50,'sites','0001_initial','2018-03-26 23:34:05.247231'),(51,'sites','0002_alter_domain_unique','2018-03-26 23:34:05.268111'),(52,'ingredient','0009_auto_20180330_1055','2018-06-10 21:55:31.064938'),(53,'ingredient','0010_auto_20180330_1058','2018-06-10 21:55:31.272600'),(54,'ingredient','0011_auto_20180415_2352','2018-06-10 21:55:31.291045'),(55,'menu','0001_initial','2018-06-10 21:55:31.544420'),(56,'menu','0002_auto_20180210_1817','2018-06-10 21:55:31.752337'),(57,'menu','0003_auto_20180215_1524','2018-06-10 21:55:32.050407'),(58,'menu','0004_remove_menuitem_occurrence','2018-06-10 21:55:32.210890'),(59,'menu','0005_auto_20180219_2237','2018-06-10 21:55:32.602710'),(60,'menu','0006_menuitem_all_day','2018-06-10 21:55:32.671083');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qemb7tvqn7ptvb5enqvj3uhrgx99wrmg','NGY2M2QzMTUzMjY3MjRkYjJkYTNmN2M4MDhlYmZlZDA5MjdmMDE3NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNTQyMjdmODA3MDY0MGFiZDg2MWJmNzUwOGVhOWJjMzRiMzk2NTk4In0=','2018-04-09 23:35:39.785504');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_ingredient`
--

DROP TABLE IF EXISTS `ingredient_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient_ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `quantity` double NOT NULL,
  `measurement` varchar(200) DEFAULT NULL,
  `ingredient_group_id` int(11) DEFAULT NULL,
  `denominator` double NOT NULL,
  `numerator` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ingredient_ingredien_ingredient_group_id_42a585aa_fk_ingredien` (`ingredient_group_id`),
  CONSTRAINT `ingredient_ingredien_ingredient_group_id_42a585aa_fk_ingredien` FOREIGN KEY (`ingredient_group_id`) REFERENCES `ingredient_ingredientgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_ingredient`
--

LOCK TABLES `ingredient_ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient_ingredient` DISABLE KEYS */;
INSERT INTO `ingredient_ingredient` VALUES (5,'crust',1,'pizza',2,1,1),(6,'1/2 bag shredded mozzarella',0,NULL,2,1,0),(7,'sliced mushrooms',0,NULL,2,1,0),(8,'1/2 jar tomato sauce',0,NULL,2,1,0),(22,'bread',0,NULL,7,1,0),(23,'sliced cheese',0,NULL,7,1,0),(24,'spinach',0,NULL,7,1,0),(25,'spread (pesto, garlic, tapenade)',0,NULL,7,1,0),(26,'fish (mackerel, tuna, salmon, etc.)',1,'can',8,1,1),(27,'avocado',0,NULL,8,1,0),(28,'artichoke hearts',0,NULL,8,1,0),(61,'oats (not quick cooking)',2,'cups',13,1,2),(62,'chopped apples (1-2 apples)',1.5,'cups',13,2,3),(63,'soy or regular milk',2,'cups',13,1,2),(64,'(whole)',1,'egg',13,1,1),(65,'1/2 cup brown sugar or 1/2 cup apple sauce',0,NULL,13,1,0),(66,'cinnamon',1,'tsp',13,1,1),(67,'baking powder',1,'tsp',13,1,1),(68,'1/4 cup raisin',0,NULL,13,1,0),(81,'non-fat milk',1.3,'liters',16,10,13),(82,'5g (one packet) yogurt starter',0,NULL,16,1,0),(83,'Instant coffee crystals (optional)',1,'tbsp',16,1,1),(84,'Organic Chicken or Veggie Broth',1,'box',17,1,1),(85,'Cooked Fresh Lentils',1,'container',17,1,1),(86,'Eggplant/Garlic Spread',1,'jar',17,1,1),(87,'of chicken (drained)',1,'can',17,1,1),(88,'frozen Chimichurri Rice',1,'bag',17,1,1),(89,'red lentils (optional)',2,'cups',17,1,2),(104,'whole rolled oats',1,'cup',20,1,1),(105,'natural peanut butter (or other nut butter)',0.5,'cup',20,2,1),(106,'raisins',0.5,'cup',20,2,1),(107,'sliced almonds',0.25,'cup',20,4,1),(108,'honey',0.25,'cup',20,4,1),(109,'vanilla extract',0.75,'teaspoon',20,4,3),(110,'water, if needed',2,'tablespoons',20,1,2),(111,'Cinnamon (to taste)',0,NULL,20,1,0),(112,'lemon',1,NULL,21,1,1),(113,'chopped lettuce',2,'cups',21,1,2),(114,'spinach',2,'cups',21,1,2),(115,'grapefruit',1,NULL,21,1,1),(204,'Uncooked Elbow Macaroni',0,'Ounces',30,1,16),(205,'Chicken Broth',0,'Cups',30,1,4),(206,'Butter',0,'Tablespoons',30,1,2),(207,'Hot Pepper Sauce',0,'Teaspoon',30,1,1),(208,'Garlic Powder',0,'Teaspoon',30,1,1),(209,'Pepper',0,'Teaspoon',30,2,1),(210,'Salt',0,'Teaspoon',30,2,1),(211,'Shredded Cheddar Cheese',0,'Cups',30,1,2),(212,'Shredded Mozzarella Cheese',0,'Cup',30,1,1),(213,'Shredded Parmesan Cheese',0,'Cup',30,2,1),(214,'Milk',0,'Cup',30,2,1),(224,'pounds sliced carrots (about 6 large carrots)',0,'¼',32,1,1),(225,'sliced celery (about 1 large bunch)',0,'pound',32,1,1),(226,'sliced leeks (about 1 large leek), white and green parts',0,'pound',32,1,1),(227,'chicken breasts, cut into ½-inch pieces',0,'pound',32,1,1),(228,'extra-virgin olive oil',0,'tablespoons',32,1,3),(229,'sea salt',0,'teaspoons',32,1,2),(230,'diced potatoes',0,'cups',32,1,3),(231,'A handful of fresh thyme or chives',0,NULL,32,1,0),(232,'chicken broth',0,'quarts',32,1,2);
/*!40000 ALTER TABLE `ingredient_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient_ingredientgroup`
--

DROP TABLE IF EXISTS `ingredient_ingredientgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient_ingredientgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ingredient_ingredientgroup_title_recipe_id_368426d7_uniq` (`title`,`recipe_id`),
  KEY `ingredient_ingredien_recipe_id_ad054d9e_fk_recipe_re` (`recipe_id`),
  CONSTRAINT `ingredient_ingredien_recipe_id_ad054d9e_fk_recipe_re` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient_ingredientgroup`
--

LOCK TABLES `ingredient_ingredientgroup` WRITE;
/*!40000 ALTER TABLE `ingredient_ingredientgroup` DISABLE KEYS */;
INSERT INTO `ingredient_ingredientgroup` VALUES (7,'',1),(2,'',2),(13,'',4),(17,'',5),(16,'',6),(20,'',7),(21,'',8),(30,'',9),(32,'',10),(8,'Protein options',1);
/*!40000 ALTER TABLE `ingredient_ingredientgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_groceryitem`
--

DROP TABLE IF EXISTS `list_groceryitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_groceryitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `title` varchar(550) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_groceryitem_list_id_391cb674_fk_list_grocerylist_id` (`list_id`),
  CONSTRAINT `list_groceryitem_list_id_391cb674_fk_list_grocerylist_id` FOREIGN KEY (`list_id`) REFERENCES `list_grocerylist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_groceryitem`
--

LOCK TABLES `list_groceryitem` WRITE;
/*!40000 ALTER TABLE `list_groceryitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_groceryitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_grocerylist`
--

DROP TABLE IF EXISTS `list_grocerylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_grocerylist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_grocerylist_slug_620f0a87` (`slug`),
  KEY `list_grocerylist_author_id_edd4c434_fk_auth_user_id` (`author_id`),
  CONSTRAINT `list_grocerylist_author_id_edd4c434_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_grocerylist`
--

LOCK TABLES `list_grocerylist` WRITE;
/*!40000 ALTER TABLE `list_grocerylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_grocerylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_groceryrecipe`
--

DROP TABLE IF EXISTS `list_groceryrecipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_groceryrecipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_groceryrecipe_list_id_7b8a3ea3_fk_list_grocerylist_id` (`list_id`),
  KEY `list_groceryrecipe_recipe_id_108fdb46_fk_recipe_recipe_id` (`recipe_id`),
  CONSTRAINT `list_groceryrecipe_list_id_7b8a3ea3_fk_list_grocerylist_id` FOREIGN KEY (`list_id`) REFERENCES `list_grocerylist` (`id`),
  CONSTRAINT `list_groceryrecipe_recipe_id_108fdb46_fk_recipe_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_groceryrecipe`
--

LOCK TABLES `list_groceryrecipe` WRITE;
/*!40000 ALTER TABLE `list_groceryrecipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_groceryrecipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_groceryshared`
--

DROP TABLE IF EXISTS `list_groceryshared`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_groceryshared` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `shared_by_id` int(11) NOT NULL,
  `shared_to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `list_groceryshared_list_id_47feb2f7_fk_list_grocerylist_id` (`list_id`),
  KEY `list_groceryshared_shared_by_id_b214e597_fk_auth_user_id` (`shared_by_id`),
  KEY `list_groceryshared_shared_to_id_1d668c2f_fk_auth_user_id` (`shared_to_id`),
  CONSTRAINT `list_groceryshared_list_id_47feb2f7_fk_list_grocerylist_id` FOREIGN KEY (`list_id`) REFERENCES `list_grocerylist` (`id`),
  CONSTRAINT `list_groceryshared_shared_by_id_b214e597_fk_auth_user_id` FOREIGN KEY (`shared_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `list_groceryshared_shared_to_id_1d668c2f_fk_auth_user_id` FOREIGN KEY (`shared_to_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_groceryshared`
--

LOCK TABLES `list_groceryshared` WRITE;
/*!40000 ALTER TABLE `list_groceryshared` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_groceryshared` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menu`
--

DROP TABLE IF EXISTS `menu_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_menu_author_id_81de4d8f_fk_auth_user_id` (`author_id`),
  CONSTRAINT `menu_menu_author_id_81de4d8f_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menu`
--

LOCK TABLES `menu_menu` WRITE;
/*!40000 ALTER TABLE `menu_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menuitem`
--

DROP TABLE IF EXISTS `menu_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `all_day` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_menuitem_menu_id_f466b139_fk_menu_menu_id` (`menu_id`),
  KEY `menu_menuitem_recipe_id_7c12dfbd_fk_recipe_recipe_id` (`recipe_id`),
  CONSTRAINT `menu_menuitem_menu_id_f466b139_fk_menu_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menu_menu` (`id`),
  CONSTRAINT `menu_menuitem_recipe_id_7c12dfbd_fk_recipe_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menuitem`
--

LOCK TABLES `menu_menuitem` WRITE;
/*!40000 ALTER TABLE `menu_menuitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_news`
--

DROP TABLE IF EXISTS `news_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `frontpage` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_news`
--

LOCK TABLES `news_news` WRITE;
/*!40000 ALTER TABLE `news_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_groups_course`
--

DROP TABLE IF EXISTS `recipe_groups_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_groups_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  KEY `recipe_groups_course_author_id_e2d6c656_fk_auth_user_id` (`author_id`),
  CONSTRAINT `recipe_groups_course_author_id_e2d6c656_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_groups_course`
--

LOCK TABLES `recipe_groups_course` WRITE;
/*!40000 ALTER TABLE `recipe_groups_course` DISABLE KEYS */;
INSERT INTO `recipe_groups_course` VALUES (1,'Breakfast','breakfast',1),(2,'Lunch','entry',1),(3,'Appetizer','appetizer',1),(4,'Dessert','dessert',1),(5,'Dinner','dinner',1),(6,'Snack','snack',1);
/*!40000 ALTER TABLE `recipe_groups_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_groups_cuisine`
--

DROP TABLE IF EXISTS `recipe_groups_cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_groups_cuisine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`),
  KEY `recipe_groups_cuisine_author_id_704782fa_fk_auth_user_id` (`author_id`),
  CONSTRAINT `recipe_groups_cuisine_author_id_704782fa_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_groups_cuisine`
--

LOCK TABLES `recipe_groups_cuisine` WRITE;
/*!40000 ALTER TABLE `recipe_groups_cuisine` DISABLE KEYS */;
INSERT INTO `recipe_groups_cuisine` VALUES (1,'American','american',1),(2,'Chinese','chinese',1),(3,'French','french',1),(4,'Indian','indian',1),(5,'Italian','italian',1),(6,'Japanese','japanese',1),(7,'Korean','korean',1),(8,'Mexican','mexican',1),(9,'Thai','thai',1);
/*!40000 ALTER TABLE `recipe_groups_cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_groups_tag`
--

DROP TABLE IF EXISTS `recipe_groups_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_groups_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_groups_tag`
--

LOCK TABLES `recipe_groups_tag` WRITE;
/*!40000 ALTER TABLE `recipe_groups_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_groups_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_recipe`
--

DROP TABLE IF EXISTS `recipe_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `info` longtext NOT NULL,
  `prep_time` int(11) NOT NULL,
  `cook_time` int(11) NOT NULL,
  `servings` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `cuisine_id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `directions` longtext NOT NULL,
  `public` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `recipe_recipe_author_id_76879012_fk_auth_user_id` (`author_id`),
  KEY `recipe_recipe_course_id_36ea1d30_fk_recipe_groups_course_id` (`course_id`),
  KEY `recipe_recipe_cuisine_id_74ec31bb_fk_recipe_groups_cuisine_id` (`cuisine_id`),
  CONSTRAINT `recipe_recipe_author_id_76879012_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `recipe_recipe_course_id_36ea1d30_fk_recipe_groups_course_id` FOREIGN KEY (`course_id`) REFERENCES `recipe_groups_course` (`id`),
  CONSTRAINT `recipe_recipe_cuisine_id_74ec31bb_fk_recipe_groups_cuisine_id` FOREIGN KEY (`cuisine_id`) REFERENCES `recipe_groups_cuisine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_recipe`
--

LOCK TABLES `recipe_recipe` WRITE;
/*!40000 ALTER TABLE `recipe_recipe` DISABLE KEYS */;
INSERT INTO `recipe_recipe` VALUES (1,'Lunch Panini','fish-panini','','',5,5,1,0,'2018-03-26 23:38:30.685205','2018-04-06 20:16:22.313472',1,2,1,'','Cook 5 min in panini maker',0),(2,'Mushroom pizza','mushroom-pizza','','',5,20,4,5,'2018-03-26 23:41:01.109437','2018-03-26 23:41:01.109520',1,5,5,'','',1),(4,'Baked Apple Cinnamon Oatmeal','baked-apple-cinnamon-oatmeal-2','upload/recipe_photos/2018-04-08_07.16.14_resize.jpg','',15,40,9,0,'2018-04-08 14:21:02.077259','2018-04-08 14:23:12.925630',1,1,1,'','Spray 8x8 baking dish with oil\nIn bowl #1, whip together egg, milk, brown sugar, cinnamon\nIn separate bowl #2, mix baking powder, oats\nPour bowl #1 into bowl #2 and mix\nPour mixture into pan, and add apples and raisins, evenly distributed\nCook in oven for 40 min, uncovered at 350 deg F',1),(5,'Trader Joe\'s Bulgarian Soup','trader-joes-bulgarian-soup','upload/recipe_photos/2018-04-08_18.44.21_resize.jpg','Hearty soup with only ingredients from Trader Joe\'s',5,15,6,0,'2018-04-09 01:17:52.759817','2018-04-09 17:33:44.999112',1,5,1,'','Combine all five items in saucepan and heat thoroughly\nOptional: Rinse dry red lentils, boil 1 1/2 cups for 12 minutes. Rinse with cold water and add to soup',1),(6,'Homemade Yogurt','homemade-yogurt','','',20,600,6,0,'2018-04-09 04:23:36.426166','2018-04-09 04:23:36.426214',1,6,1,'','Heat milk to 180 degrees F (for creamier texture, heat to 212 while stirring and simmer for 10 min)\nCool milk in ice bath to 108 deg F\nTransfer 1 cup to measuring cup\nAdd yogurt starter and mix well\nAdd instant coffee crystals (optional)\nPour mixture back into pot and mix well\nDistribute to yogurt jars\nLeave tops off, and leave in yogurt cooker for 8-10 hours\nScrew tops on yogurt jars, place in refrigerator until chilled',1),(7,'Peanut Butter Oatmeal Energy Bars','peanut-butter-oatmeal-energy-bars','','When choosing peanut butter, be sure to pick the all-natural version with no added sugar or additives to prevent the oil from separating.',15,30,11,0,'2018-04-21 01:54:09.647213','2018-04-21 03:05:07.629691',1,4,1,'','Combine all ingredients - except for the water - in a large mixing bowl. Cover with plastic wrap and let sit in the refrigerator for at least 30 minutes.\n\nOnce it has chilled, check the consistency; if the mixture seems too try, add the water. The mixture should stick together, but not be too crumbly.\n\nRoll mixture into 22 small, equal-sized balls measuring about 1-1/2 inch diameter. Store in an airtight container, refrigerated for up to 1 week of freeze them.',1),(8,'Green veggie smoothie','green-veggie-smoothie','','',10,1,2,0,'2018-04-23 18:54:24.183283','2018-04-23 18:54:24.184611',1,6,1,'','',1),(9,'Instant Pot Mac & Cheese','instant-pot-mac-cheese','upload/recipe_photos/IMG_2930_Q9Ajc90.JPG','Instant Pot Mac and Cheese - This macaroni and cheese is every family\'s favorite comfort food pasta recipe made easy in the Instant Pot!  You can have creamy, mouthwatering, homemade mac and cheese for dinner in about 10 minutes!',10,10,8,0,'2018-08-15 18:59:53.319002','2018-08-17 04:40:46.567363',1,5,1,'https://thesaltymarshmallow.com/instant-pot-mac-and-cheese/','Add the uncooked macaroni, chicken broth, butter, hot sauce, garlic powder, pepper, and salt to the Instant Pot. \nPlace the lid on the pot and set to sealing.  Cook on manual function, high pressure for 5 minutes.  Then, do a quick release.\nStir in the cheeses and milk until smooth.  Season as necessary to taste.\n\nFor the best flavor, I recommend using chicken broth as your cooking liquid.  I used low sodium chicken broth.  If you don’t have low sodium, leave out the extra addition of salt, then salt as needed when serving.\nUse seasoning!  I add salt, pepper, garlic powder, and hot sauce to this before cooking.  Don’t worry, the hot sauce does not make this spicy at all.  It just adds an additional layer of flavor that’s amazing.\nUse a combination of cheeses for the best taste.  I use a mixture of sharp cheddar, mozzarella.  When you add the cheese, make sure to stir continuously so that it all melts in really well and you aren’t left with clumps.\nDon’t use canned milk.  I used regular 2% milk, and I recommend that or whole milk for best results.  Most of the recipes I saw for Instant Pot mac and cheese used evaporated milk which I am not a fan of at all.\nThe cheeses listed in the recipe have produced the best flavor that I have found.  Feel free to use your family\'s favorite cheese combination.\nFor the milk, start with 1/2 cup and add up to one cup if you find it needs to be thinned out a little bit more.',1),(10,'Instant Pot Chicken Vegetable Soup','instant-pot-chicken-vegetable-soup','upload/recipe_photos/IMG_2931.JPG','',15,20,8,0,'2018-08-17 04:43:46.587037','2018-08-17 04:44:00.584224',1,5,1,'https://asquirrelinthekitchen.com/the-best-pressure-cooker-chicken-vegetable-soup-paleo-aip-instant-pot/','Press the Sauté button on the Instant Pot, bring it to High, and add olive oil. When the pan is hot, add chicken and sauté for 5 minutes, stirring frequently. Cancel the sauté function.\nAdd vegetables, sea salt, thyme, and broth.\nClose and lock the lid. Press Manual for High pressure. Set the cooking time to 15 minutes. Once the time is up, quick release the pressure.\nOpen the lid and discard thyme.\nCheck seasoning and adjust salt to taste. Serve hot. Makes great leftovers!',1);
/*!40000 ALTER TABLE `recipe_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_recipe_tags`
--

DROP TABLE IF EXISTS `recipe_recipe_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_recipe_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `recipe_recipe_tags_recipe_id_tag_id_d5aaba5b_uniq` (`recipe_id`,`tag_id`),
  KEY `recipe_recipe_tags_tag_id_ee78e406_fk_recipe_groups_tag_id` (`tag_id`),
  CONSTRAINT `recipe_recipe_tags_recipe_id_01e493ee_fk_recipe_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipe_recipe` (`id`),
  CONSTRAINT `recipe_recipe_tags_tag_id_ee78e406_fk_recipe_groups_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `recipe_groups_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_recipe_tags`
--

LOCK TABLES `recipe_recipe_tags` WRITE;
/*!40000 ALTER TABLE `recipe_recipe_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_recipe_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_subrecipe`
--

DROP TABLE IF EXISTS `recipe_subrecipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_subrecipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `measurement` longtext DEFAULT NULL,
  `child_recipe_id` int(11) DEFAULT NULL,
  `parent_recipe_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_subrecipe_child_recipe_id_8fd69499_fk_recipe_recipe_id` (`child_recipe_id`),
  KEY `recipe_subrecipe_parent_recipe_id_13084b48_fk_recipe_recipe_id` (`parent_recipe_id`),
  CONSTRAINT `recipe_subrecipe_child_recipe_id_8fd69499_fk_recipe_recipe_id` FOREIGN KEY (`child_recipe_id`) REFERENCES `recipe_recipe` (`id`),
  CONSTRAINT `recipe_subrecipe_parent_recipe_id_13084b48_fk_recipe_recipe_id` FOREIGN KEY (`parent_recipe_id`) REFERENCES `recipe_recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_subrecipe`
--

LOCK TABLES `recipe_subrecipe` WRITE;
/*!40000 ALTER TABLE `recipe_subrecipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_subrecipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-18  4:53:17
