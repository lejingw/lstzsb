# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.14)
# Database: lstzsb_db
# Generation Time: 2013-11-11 11:44:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table jat_bd_orna
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jat_bd_orna`;

CREATE TABLE `jat_bd_orna` (
  `orna_code` varchar(20) NOT NULL DEFAULT '',
  `orna_dsc` varchar(200) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`orna_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jat_bd_orna` WRITE;
/*!40000 ALTER TABLE `jat_bd_orna` DISABLE KEYS */;

INSERT INTO `jat_bd_orna` (`orna_code`, `orna_dsc`, `org_id`, `weight`, `status`)
VALUES
	('0001','Mac一体机',1,10.1,1),
	('0002','Mac笔记本',2,1.1,1),
	('0003','Mac打印机',1,5,1);

/*!40000 ALTER TABLE `jat_bd_orna` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jat_bd_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jat_bd_user`;

CREATE TABLE `jat_bd_user` (
  `userid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usercode` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jat_bd_user` WRITE;
/*!40000 ALTER TABLE `jat_bd_user` DISABLE KEYS */;

INSERT INTO `jat_bd_user` (`userid`, `usercode`, `username`, `password`)
VALUES
	(1,'admin','管理员','1');

/*!40000 ALTER TABLE `jat_bd_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jat_move_head
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jat_move_head`;

CREATE TABLE `jat_move_head` (
  `headid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `billno` varchar(20) DEFAULT NULL,
  `dodate` varchar(20) DEFAULT NULL,
  `in_org_id` int(11) DEFAULT NULL,
  `out_org_id` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sum_count` int(11) DEFAULT NULL,
  `sum_weight` float DEFAULT NULL,
  `memo` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`headid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jat_move_head` WRITE;
/*!40000 ALTER TABLE `jat_move_head` DISABLE KEYS */;

INSERT INTO `jat_move_head` (`headid`, `billno`, `dodate`, `in_org_id`, `out_org_id`, `create_id`, `create_date`, `update_id`, `update_date`, `status`, `sum_count`, `sum_weight`, `memo`)
VALUES
	(11,'111111N','2013-11-11',NULL,NULL,1,'2013-11-11 10:49:16',1,'2013-11-11 10:49:16',1,1,10.1,''),
	(13,NULL,'2013-11-11',NULL,NULL,1,'2013-11-11 11:42:00',1,'2013-11-11 11:42:00',1,1,10.1,''),
	(14,'001','2013-11-11',4,1,1,'2013-11-11 12:55:06',1,'2013-11-11 13:07:48',2,1,5,'aaa11');

/*!40000 ALTER TABLE `jat_move_head` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jat_move_line
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jat_move_line`;

CREATE TABLE `jat_move_line` (
  `lineid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `headid` int(11) DEFAULT NULL,
  `orna_code` varchar(20) DEFAULT NULL,
  `orna_dsc` varchar(200) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `memo` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`lineid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jat_move_line` WRITE;
/*!40000 ALTER TABLE `jat_move_line` DISABLE KEYS */;

INSERT INTO `jat_move_line` (`lineid`, `headid`, `orna_code`, `orna_dsc`, `weight`, `create_id`, `create_date`, `update_id`, `update_date`, `status`, `memo`)
VALUES
	(22,11,'0001','Mac一体机',10.1,NULL,NULL,NULL,NULL,NULL,NULL),
	(24,13,'0001','Mac一体机',10.1,1,'2013-11-11 11:42:00',1,'2013-11-11 11:42:00',1,NULL),
	(27,14,'0003','Mac打印机',5,1,'2013-11-11 13:00:59',1,'2013-11-11 13:00:59',1,NULL);

/*!40000 ALTER TABLE `jat_move_line` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jat_sm_org
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jat_sm_org`;

CREATE TABLE `jat_sm_org` (
  `org_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `org_name` varchar(128) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jat_sm_org` WRITE;
/*!40000 ALTER TABLE `jat_sm_org` DISABLE KEYS */;

INSERT INTO `jat_sm_org` (`org_id`, `parent_id`, `org_name`, `status`)
VALUES
	(1,0,'org1',1),
	(2,1,'org2',1),
	(3,1,'org3',1),
	(4,1,'org4',1),
	(5,3,'org35',1),
	(6,2,'org26',1);

/*!40000 ALTER TABLE `jat_sm_org` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jat_sys_dict_entry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jat_sys_dict_entry`;

CREATE TABLE `jat_sys_dict_entry` (
  `entry_code` varchar(200) NOT NULL DEFAULT '',
  `entry_name` varchar(200) DEFAULT NULL,
  `entry_type` varchar(200) DEFAULT NULL,
  `memo` varchar(1024) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jat_sys_dict_entry` WRITE;
/*!40000 ALTER TABLE `jat_sys_dict_entry` DISABLE KEYS */;

INSERT INTO `jat_sys_dict_entry` (`entry_code`, `entry_name`, `entry_type`, `memo`, `create_date`, `create_id`, `update_date`, `update_id`, `status`)
VALUES
	('hqorgs','总部组织','1',NULL,'2012-01-01 00:00:00',1,'2012-01-01 00:00:00',1,1),
	('status','单据状态','1',NULL,'2012-01-01 00:00:00',1,'2012-01-01 00:00:00',1,1);

/*!40000 ALTER TABLE `jat_sys_dict_entry` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jat_sys_dict_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jat_sys_dict_item`;

CREATE TABLE `jat_sys_dict_item` (
  `item_key` varchar(200) NOT NULL DEFAULT '',
  `entry_code` varchar(200) NOT NULL DEFAULT '',
  `item_value` varchar(200) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `create_date` varchar(20) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `jat_sys_dict_item` WRITE;
/*!40000 ALTER TABLE `jat_sys_dict_item` DISABLE KEYS */;

INSERT INTO `jat_sys_dict_item` (`item_key`, `entry_code`, `item_value`, `item_order`, `create_id`, `update_id`, `create_date`, `update_date`, `status`)
VALUES
	('0','status','停用',0,1,1,'2012-01-01 00:00:00','2012-01-01 00:00:00',1),
	('1','status','保存',1,1,1,'2012-01-01 00:00:00','2012-01-01 00:00:00',1),
	('2','status','记账',2,1,1,'2012-01-01 00:00:00','2012-01-01 00:00:00',1),
	('1','hqorgs','中国配送中心',1,1,1,'2012-01-01 00:00:00','2012-01-01 00:00:00',1);

/*!40000 ALTER TABLE `jat_sys_dict_item` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
