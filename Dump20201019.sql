-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: Attendance
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add s information',1,'add_sinformation'),(2,'Can change s information',1,'change_sinformation'),(3,'Can delete s information',1,'delete_sinformation'),(4,'Can view s information',1,'view_sinformation'),(5,'Can add s attendance',2,'add_sattendance'),(6,'Can change s attendance',2,'change_sattendance'),(7,'Can delete s attendance',2,'delete_sattendance'),(8,'Can view s attendance',2,'view_sattendance'),(9,'Can add t information',3,'add_tinformation'),(10,'Can change t information',3,'change_tinformation'),(11,'Can delete t information',3,'delete_tinformation'),(12,'Can view t information',3,'view_tinformation'),(13,'Can add t login',4,'add_tlogin'),(14,'Can change t login',4,'change_tlogin'),(15,'Can delete t login',4,'delete_tlogin'),(16,'Can view t login',4,'view_tlogin'),(17,'Can add log entry',5,'add_logentry'),(18,'Can change log entry',5,'change_logentry'),(19,'Can delete log entry',5,'delete_logentry'),(20,'Can view log entry',5,'view_logentry'),(21,'Can add permission',6,'add_permission'),(22,'Can change permission',6,'change_permission'),(23,'Can delete permission',6,'delete_permission'),(24,'Can view permission',6,'view_permission'),(25,'Can add group',7,'add_group'),(26,'Can change group',7,'change_group'),(27,'Can delete group',7,'delete_group'),(28,'Can view group',7,'view_group'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add content type',9,'add_contenttype'),(34,'Can change content type',9,'change_contenttype'),(35,'Can delete content type',9,'delete_contenttype'),(36,'Can view content type',9,'view_contenttype'),(37,'Can add session',10,'add_session'),(38,'Can change session',10,'change_session'),(39,'Can delete session',10,'delete_session'),(40,'Can view session',10,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$hch3I1stre95$3w2WVQXEP1Dm9Euf/U4oG4b0E7YNQLHSJNgUdz3FRn0=','2020-10-13 23:53:37.499869',1,'kyb','','','kyb@attendance.com',1,1,'2020-09-10 16:36:16.582293');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-09-10 16:39:08.597007','1','Rajneesh',1,'[{\"added\": {}}]',3,1),(2,'2020-09-10 16:39:31.912875','1','Rajneesh',1,'[{\"added\": {}}]',4,1),(3,'2020-09-10 16:40:06.628845','1','Bauddhik',1,'[{\"added\": {}}]',1,1),(4,'2020-09-10 16:40:33.962527','1','Bauddhik',2,'[]',1,1),(5,'2020-09-10 16:41:04.880108','2','Yajurva',1,'[{\"added\": {}}]',1,1),(6,'2020-09-10 16:46:37.537989','2','SAttendance object (2)',1,'[{\"added\": {}}]',2,1),(7,'2020-09-10 16:46:59.611888','3','SAttendance object (3)',1,'[{\"added\": {}}]',2,1),(8,'2020-09-10 16:47:08.073557','3','SAttendance object (3)',3,'',2,1),(9,'2020-09-10 16:47:19.894365','2','SAttendance object (2)',2,'[]',2,1),(10,'2020-09-10 16:47:43.410454','2','SAttendance object (2)',3,'',2,1),(11,'2020-09-10 16:47:57.790674','4','SAttendance object (4)',1,'[{\"added\": {}}]',2,1),(12,'2020-09-10 16:51:08.147629','5','Yajurva',1,'[{\"added\": {}}]',2,1),(13,'2020-10-13 23:54:15.062873','6','Bauddhik',1,'[{\"added\": {}}]',2,1),(14,'2020-10-15 07:38:13.392868','3','Dinesh',1,'[{\"added\": {}}]',1,1),(15,'2020-10-15 07:38:39.802732','4','Atharva',1,'[{\"added\": {}}]',1,1),(16,'2020-10-15 07:41:57.643049','5','Kusha',1,'[{\"added\": {}}]',1,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (5,'admin','logentry'),(7,'auth','group'),(6,'auth','permission'),(8,'auth','user'),(9,'contenttypes','contenttype'),(3,'homepage','tinformation'),(4,'homepage','tlogin'),(10,'sessions','session'),(2,'studentpage','sattendance'),(1,'studentpage','sinformation');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-09-10 16:33:10.995843'),(2,'auth','0001_initial','2020-09-10 16:33:11.198213'),(3,'admin','0001_initial','2020-09-10 16:33:11.574072'),(4,'admin','0002_logentry_remove_auto_add','2020-09-10 16:33:11.771318'),(5,'admin','0003_logentry_add_action_flag_choices','2020-09-10 16:33:11.789282'),(6,'contenttypes','0002_remove_content_type_name','2020-09-10 16:33:11.930122'),(7,'auth','0002_alter_permission_name_max_length','2020-09-10 16:33:11.999321'),(8,'auth','0003_alter_user_email_max_length','2020-09-10 16:33:12.056091'),(9,'auth','0004_alter_user_username_opts','2020-09-10 16:33:12.083347'),(10,'auth','0005_alter_user_last_login_null','2020-09-10 16:33:12.180753'),(11,'auth','0006_require_contenttypes_0002','2020-09-10 16:33:12.185515'),(12,'auth','0007_alter_validators_add_error_messages','2020-09-10 16:33:12.205544'),(13,'auth','0008_alter_user_username_max_length','2020-09-10 16:33:12.330402'),(14,'auth','0009_alter_user_last_name_max_length','2020-09-10 16:33:12.430497'),(15,'auth','0010_alter_group_name_max_length','2020-09-10 16:33:12.477439'),(16,'auth','0011_update_proxy_permissions','2020-09-10 16:33:12.502689'),(17,'auth','0012_alter_user_first_name_max_length','2020-09-10 16:33:12.618438'),(18,'classselect','0001_initial','2020-09-10 16:33:12.687909'),(19,'classselect','0002_auto_20200901_1649','2020-09-10 16:33:12.815794'),(20,'homepage','0001_initial','2020-09-10 16:33:12.893810'),(21,'homepage','0002_auto_20200901_1652','2020-09-10 16:33:13.015310'),(22,'homepage','0003_tinformation_tlogin','2020-09-10 16:33:13.077548'),(23,'homepage','0004_auto_20200901_1711','2020-09-10 16:33:13.172413'),(24,'homepage','0005_auto_20200901_1713','2020-09-10 16:33:13.286989'),(25,'homepage','0006_auto_20200901_1715','2020-09-10 16:33:13.334343'),(26,'homepage','0007_auto_20200902_1633','2020-09-10 16:33:13.433036'),(27,'homepage','0008_auto_20200902_1636','2020-09-10 16:33:13.526998'),(28,'homepage','0009_delete_tlogin','2020-09-10 16:33:13.542884'),(29,'homepage','0010_tlogin','2020-09-10 16:33:13.593357'),(30,'sessions','0001_initial','2020-09-10 16:33:13.701308'),(31,'studentpage','0001_initial','2020-09-10 16:33:13.807028'),(32,'studentpage','0002_sinformation_sclassandsec','2020-10-13 17:52:51.266773'),(33,'studentpage','0003_remove_sinformation_sclassandsec','2020-10-13 17:52:51.364590');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('dank49md99cwne8tmr97h7p31v3dx11n','.eJxVjEEOwiAQRe_C2pAZYShx6d4zkIEBqRqalHbVeHdt0oVu_3vvbyrwutSw9jyHUdRFoTr9bpHTM7cdyIPbfdJpass8Rr0r-qBd3ybJr-vh_h1U7vVbG8qD4-JEBJGSMEosaYBCjiyAJ2eFjPGZLVkUD2B9OqNxUKBYE9X7A-fCN14:1kSU6r:ZdqCpRKUeD2TQ6zrEandXhWCmRe6IKVAc68oJshVvZc','2020-10-27 23:53:37.502841'),('rnjiijof2safu4tp4c1g2kyjvizm42dp','.eJxVjEEOwiAQRe_C2pAZYShx6d4zkIEBqRqalHbVeHdt0oVu_3vvbyrwutSw9jyHUdRFoTr9bpHTM7cdyIPbfdJpass8Rr0r-qBd3ybJr-vh_h1U7vVbG8qD4-JEBJGSMEosaYBCjiyAJ2eFjPGZLVkUD2B9OqNxUKBYE9X7A-fCN14:1kGPZ7:BZhZJY9V2VIyBj6ng9JKJ_OETbk5tMAxazgLTvyLO3s','2020-09-24 16:36:53.728718');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_tinformation`
--

DROP TABLE IF EXISTS `homepage_tinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepage_tinformation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TCode` varchar(4) NOT NULL,
  `TFirstName` varchar(50) NOT NULL,
  `TMiddleName` varchar(50) DEFAULT NULL,
  `TLastName` varchar(50) NOT NULL,
  `TClass` int NOT NULL,
  `TSection` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_tinformation`
--

LOCK TABLES `homepage_tinformation` WRITE;
/*!40000 ALTER TABLE `homepage_tinformation` DISABLE KEYS */;
INSERT INTO `homepage_tinformation` VALUES (1,'RJS','Rajneesh',NULL,'Sharma',12,'D'),(2,'RJS','Rajneesh',NULL,'Sharma',11,'C');
/*!40000 ALTER TABLE `homepage_tinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_tlogin`
--

DROP TABLE IF EXISTS `homepage_tlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepage_tlogin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `TFirstName` varchar(50) NOT NULL,
  `TUsername` varchar(50) NOT NULL,
  `TPassword` varchar(50) NOT NULL,
  `TCode_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `homepage_tlogin_TCode_id_a20dd20a_fk_homepage_tinformation_id` (`TCode_id`),
  CONSTRAINT `homepage_tlogin_TCode_id_a20dd20a_fk_homepage_tinformation_id` FOREIGN KEY (`TCode_id`) REFERENCES `homepage_tinformation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_tlogin`
--

LOCK TABLES `homepage_tlogin` WRITE;
/*!40000 ALTER TABLE `homepage_tlogin` DISABLE KEYS */;
INSERT INTO `homepage_tlogin` VALUES (1,'Rajneesh','Rajneesh','rajneesh',1);
/*!40000 ALTER TABLE `homepage_tlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentpage_sattendance`
--

DROP TABLE IF EXISTS `studentpage_sattendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentpage_sattendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SFirstName` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Attendance` varchar(4) NOT NULL,
  `HouseNumber_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `studentpage_sattenda_HouseNumber_id_824e3c7a_fk_studentpa` (`HouseNumber_id`),
  CONSTRAINT `studentpage_sattenda_HouseNumber_id_824e3c7a_fk_studentpa` FOREIGN KEY (`HouseNumber_id`) REFERENCES `studentpage_sinformation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentpage_sattendance`
--

LOCK TABLES `studentpage_sattendance` WRITE;
/*!40000 ALTER TABLE `studentpage_sattendance` DISABLE KEYS */;
INSERT INTO `studentpage_sattendance` VALUES (6,'Bauddhik','2020-10-13','P',1),(7,'test','2003-08-24','P',2),(8,'test','2003-08-24','P',2);
/*!40000 ALTER TABLE `studentpage_sattendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentpage_sinformation`
--

DROP TABLE IF EXISTS `studentpage_sinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentpage_sinformation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `HouseInitial` varchar(3) NOT NULL,
  `HouseNumber` int NOT NULL,
  `SFirstName` varchar(50) NOT NULL,
  `SMiddleName` varchar(50) DEFAULT NULL,
  `SLastName` varchar(50) NOT NULL,
  `SClass` int NOT NULL,
  `SSection` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentpage_sinformation`
--

LOCK TABLES `studentpage_sinformation` WRITE;
/*!40000 ALTER TABLE `studentpage_sinformation` DISABLE KEYS */;
INSERT INTO `studentpage_sinformation` VALUES (1,'T',10876,'Bauddhik',NULL,'Pokharna',12,'D'),(2,'J',10906,'Yajurva',NULL,'Shrotriya',11,'C'),(3,'V',10849,'Dinesh',NULL,'Kumar',12,'D'),(4,'R',10843,'Atharva',NULL,'Kumar',12,'D'),(5,'T',10846,'Kusha',NULL,'Mittal',11,'C');
/*!40000 ALTER TABLE `studentpage_sinformation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-19 10:19:25
