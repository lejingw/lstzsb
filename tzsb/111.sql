/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.33 : Database - lstzsb_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lstzsb_db` /*!40100 DEFAULT CHARACTER SET utf32 */;

/*Table structure for table `t_aq_aqfj` */

DROP TABLE IF EXISTS `t_aq_aqfj`;

CREATE TABLE `t_aq_aqfj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sb_id` int(11) DEFAULT NULL,
  `fjmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `zhonglei` varchar(100) COLLATE utf8_bin NOT NULL,
  `xinghao` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `guige` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ccbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzcj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `syzt` int(11) NOT NULL COMMENT '0不在用 1在用',
  `azwz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sfxyjy` int(11) NOT NULL COMMENT '0否 1是',
  `xcjyrq` datetime DEFAULT NULL,
  `bgbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jdzsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `beizhu` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_205` (`sb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_205` FOREIGN KEY (`sb_id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_aq_aqfj` */

insert  into `t_aq_aqfj`(`id`,`sb_id`,`fjmc`,`zhonglei`,`xinghao`,`guige`,`ccbh`,`zzcj`,`syzt`,`azwz`,`sfxyjy`,`xcjyrq`,`bgbh`,`jdzsbh`,`beizhu`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (12,1,'附件名称12','1','型号12','规格12','CCBH00012','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-11-30 11:23:05','BGBH00012','JDZSBH0012','',201305,'2013-11-30 11:23:05',201305,'2013-11-30 11:23:05',0),(13,2,'附件名称13','2','型号13','规格13','CCBH00013','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',0,'2013-11-30 11:27:58','','','备注13',201305,'2013-11-30 11:27:58',201305,'2013-11-30 11:27:58',0),(14,3,'附件名称14','3','型号14','规格14','CCBH00014','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-11-30 11:39:03','','JDZSBH0014','',201305,'2013-11-30 11:39:03',201305,'2013-11-30 11:39:03',0),(15,4,'附件名称15','4','型号15','15','CCBH00015','浙江省丽水市特种设备制造厂',0,'东忠科技园某某楼层',1,'2013-11-30 14:19:30','BGBH00015','','备注15',201305,'2013-11-30 14:19:30',201305,'2013-11-30 14:19:30',0),(16,5,'附件名称16','5','型号16','规格16','CCBH00016','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-11-30 14:25:40','','','',201305,'2013-11-30 14:25:40',201305,'2013-11-30 14:25:40',0),(18,6,'附件名称18','6','X18','18','CCBH00018','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-11-30 14:26:10','BGBH00018','JDZSBH0016','备注18',201305,'2013-11-30 14:26:10',201305,'2013-11-30 14:26:10',0),(19,7,'附件名称19','7','X19','19','CCBH00019','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-02 14:51:45','','','备注19',201305,'2013-12-02 14:51:45',201305,'2013-12-02 14:51:45',0),(20,8,'附件名称20','8','X20','规格20','CCBH00020','浙江省丽水市特种设备制造厂',0,'东忠科技园某某楼层',0,'2013-12-02 14:53:43','BGBH00020','','备注20',201305,'2013-12-03 09:10:32',201305,'2013-12-03 09:10:32',1),(21,9,'附件名称21','9','X21','21','CCBH00021','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-02 16:01:44','','JDZSBH0021','',201305,'2013-12-02 16:01:44',201305,'2013-12-02 16:01:44',0),(24,10,'附件名称24','10','X24','24','CCBH00024','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-03 13:11:20','BGBH00024','','备注24',201305,'2013-12-03 13:11:20',201305,'2013-12-03 13:11:20',0),(25,11,'附件名称25','11','X25','规格25','CCBH00025','浙江省丽水市特种设备制造厂',0,'东忠科技园某某楼层',0,'2013-12-03 13:12:01','','JDZSBH0025','备注25',201305,'2013-12-03 13:12:01',201305,'2013-12-03 13:12:01',0),(26,12,'附件名称26','12','XH2220','26','CCBH00026','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',0,'2013-12-03 14:05:16','','','',201305,'2013-12-03 14:05:16',201305,'2013-12-03 14:05:16',0),(27,13,'附件名称27','13','X27','27','CCBH00027','浙江省丽水市特种设备制造厂',0,'5',0,'2013-12-03 14:08:42','','','',201305,'2013-12-03 14:08:42',201305,'2013-12-03 14:08:42',0),(30,14,'asf','14','1','asf','1','浙江省丽水市特种设备制造厂',1,'1',1,'2013-12-03 14:16:12','1','1','',201305,'2013-12-03 14:16:12',201305,'2013-12-03 14:16:12',0),(31,15,'sadfsd','15','2','sd','2','浙江省丽水市特种设备制造厂',0,'2',0,'2013-12-03 15:46:18','','','',201305,'2013-12-03 15:46:18',201305,'2013-12-03 15:46:18',0),(33,16,'lllll','16','3','1111','3','浙江省丽水市特种设备制造厂',0,'3',0,'2013-12-03 17:15:43','','','',201305,'2013-12-03 17:15:43',201305,'2013-12-03 17:15:43',0),(34,17,'jkjkjkjk','17','4','jk','4','浙江省丽水市特种设备制造厂',0,'4',0,'2013-12-03 17:20:52','','','',201305,'2013-12-03 17:20:52',201305,'2013-12-03 17:20:52',0),(35,18,'ooooooooooooooooo','18','5','00','5','浙江省丽水市特种设备制造厂',0,'东忠科技园某某楼层',0,'2013-12-03 17:22:47','','','',201305,'2013-12-03 17:22:47',201305,'2013-12-03 17:22:47',0),(36,19,'olkj','19','6','ol','6','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-04 10:51:27','','','',5,'2013-12-04 10:51:27',5,'2013-12-04 10:51:27',0),(37,20,'uuuuu','20','7','uu','7','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-04 10:54:41','','','',5,'2013-12-04 10:54:41',5,'2013-12-04 10:54:41',0),(38,21,'ss','21','8','s','8','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-04 11:33:38','','','',5,'2013-12-04 11:33:38',5,'2013-12-04 11:33:38',1),(39,22,'sfsdfsdfs','22','9','sfs','9','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-04 13:11:20','','','',5,'2013-12-04 13:11:20',5,'2013-12-04 13:11:20',1),(41,23,'lkjhgfda','23','10','lkj','10','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-04 13:29:59','','','',5,'2013-12-04 13:29:59',5,'2013-12-04 13:29:59',1),(42,24,'ppppp','24','11','pp','11','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-04 13:32:11','','','',5,'2013-12-04 13:32:11',5,'2013-12-04 13:32:11',1),(43,25,'中文','25','12','C','12','浙江省丽水市特种设备制造厂',1,'东忠科技园某某楼层',1,'2013-12-04 14:08:10','','','',5,'2013-12-04 14:08:10',5,'2013-12-04 14:08:10',1),(44,1,'AA','1',NULL,'1','1',NULL,0,NULL,1,'2013-12-17 13:55:23','1','1','11',1,'2013-12-17 13:55:23',1,'2013-12-17 13:55:23',1),(45,1,'aa','1',NULL,'1','1',NULL,0,NULL,1,'2013-12-17 14:21:35','1','1','11',1,'2013-12-17 14:21:35',1,'2013-12-17 14:21:35',1),(46,1,'11','1',NULL,'1','1',NULL,0,NULL,1,'2013-12-17 14:27:43','1','1','11',1,'2013-12-17 14:27:43',1,'2013-12-17 14:27:43',1),(47,1,'44','1',NULL,'','',NULL,0,NULL,1,'2013-12-17 14:29:43','','','11',1,'2013-12-17 14:29:43',1,'2013-12-17 14:29:43',1),(48,1,'aa','1',NULL,'','',NULL,0,NULL,1,'2013-12-17 14:33:13','','','11',1,'2013-12-17 14:33:13',1,'2013-12-17 14:33:13',1),(49,1,'ss','1',NULL,'','',NULL,0,NULL,1,'2013-12-17 14:35:07','','','11',1,'2013-12-17 14:35:07',1,'2013-12-17 14:35:07',1),(50,1,'ss','1',NULL,'','',NULL,0,NULL,1,'2013-12-17 14:35:23','','','11',1,'2013-12-17 14:35:23',1,'2013-12-17 14:35:23',1),(51,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:35:57','','','11',1,'2013-12-17 14:35:57',1,'2013-12-17 14:35:57',1),(52,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:40:50','','','11',1,'2013-12-17 14:40:50',1,'2013-12-17 14:40:50',1),(53,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:41:38','','','11',1,'2013-12-17 14:41:38',1,'2013-12-17 14:41:38',1),(54,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:46:02','','','11',1,'2013-12-17 14:46:02',1,'2013-12-17 14:46:02',1),(55,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:46:31','','','11',1,'2013-12-17 14:46:31',1,'2013-12-17 14:46:31',1),(56,1,'xx','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:47:28','','','11',1,'2013-12-17 14:47:28',1,'2013-12-17 14:47:28',1),(57,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:50:30','','','11',1,'2013-12-17 14:50:30',1,'2013-12-17 14:50:30',1),(58,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:51:05','','','11',1,'2013-12-17 14:51:05',1,'2013-12-17 14:51:05',1),(59,1,'dd','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:51:36','','','11',1,'2013-12-17 14:51:36',1,'2013-12-17 14:51:36',1),(60,1,'cc','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:52:44','','','11',1,'2013-12-17 14:52:44',1,'2013-12-17 14:52:44',1),(61,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:53:11','','','11',1,'2013-12-17 14:53:11',1,'2013-12-17 14:53:11',1),(62,1,'xx','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:53:36','','','11',1,'2013-12-17 14:53:36',1,'2013-12-17 14:53:36',1),(63,1,'dd','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:54:09','','','11',1,'2013-12-17 14:54:09',1,'2013-12-17 14:54:09',1),(64,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:55:00','','','11',1,'2013-12-17 14:55:00',1,'2013-12-17 14:55:00',1),(65,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 14:55:41','','','11',1,'2013-12-17 14:55:41',1,'2013-12-17 14:55:41',1),(66,1,'aa','1',NULL,'1','1',NULL,1,NULL,1,'2013-12-17 14:59:00','1','1','11',1,'2013-12-17 14:59:00',1,'2013-12-17 14:59:00',1),(67,1,'ss','1',NULL,'1','1',NULL,1,NULL,1,'2013-12-17 14:59:35','1','1','11',1,'2013-12-17 14:59:35',1,'2013-12-17 14:59:35',1),(68,1,'ss','1',NULL,'1','1',NULL,1,NULL,1,'2013-12-17 15:00:27','1','1','11',1,'2013-12-17 15:00:27',1,'2013-12-17 15:00:27',1),(69,1,'dd','1',NULL,'1','1',NULL,1,NULL,1,'2013-12-17 15:11:50','1','1','11',1,'2013-12-17 15:11:50',1,'2013-12-17 15:11:50',1),(70,1,'s','1',NULL,'1','1',NULL,1,NULL,1,'2013-12-17 15:12:54','1','1','11',1,'2013-12-17 15:12:54',1,'2013-12-17 15:12:54',1),(71,1,'1','1',NULL,'1','1',NULL,1,NULL,1,'2013-12-17 15:13:45','1','1','11',1,'2013-12-17 15:13:45',1,'2013-12-17 15:13:45',1),(72,1,'1','1',NULL,'1','1',NULL,1,NULL,1,'2013-12-17 15:15:07','1','1','11',1,'2013-12-17 15:15:07',1,'2013-12-17 15:15:07',1),(73,1,'1','1',NULL,'1','1',NULL,1,NULL,1,'2013-12-17 15:17:58','1','1','11',1,'2013-12-17 15:17:58',1,'2013-12-17 15:17:58',1),(74,1,'1','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:18:46','','','11',1,'2013-12-17 15:18:46',1,'2013-12-17 15:18:46',1),(75,1,'1','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:20:36','','','11',1,'2013-12-17 15:20:36',1,'2013-12-17 15:20:36',1),(76,1,'ee','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:21:53','','','11',1,'2013-12-17 15:21:53',1,'2013-12-17 15:21:53',1),(77,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:26:09','','','11',1,'2013-12-17 15:26:09',1,'2013-12-17 15:26:09',1),(78,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:27:01','','','11',1,'2013-12-17 15:27:01',1,'2013-12-17 15:27:01',1),(79,1,'dd','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:27:32','','','11',1,'2013-12-17 15:27:32',1,'2013-12-17 15:27:32',1),(80,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:28:13','','','11',1,'2013-12-17 15:28:13',1,'2013-12-17 15:28:13',1),(81,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:28:37','','','11',1,'2013-12-17 15:28:37',1,'2013-12-17 15:28:37',1),(82,1,'ss','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:28:56','','','11',1,'2013-12-17 15:28:56',1,'2013-12-17 15:28:56',1),(83,1,'gg','1',NULL,'','',NULL,1,NULL,1,'2013-12-17 15:29:28','','','11',1,'2013-12-17 15:29:28',1,'2013-12-17 15:29:28',1),(87,NULL,'123','321','11',NULL,'3','22',0,'1',0,'2013-10-10 00:00:00','22',NULL,'1',3,'2013-12-17 18:05:39',3,'2013-12-17 18:05:39',1);

/*Table structure for table `t_aq_aqxgry` */

DROP TABLE IF EXISTS `t_aq_aqxgry`;

CREATE TABLE `t_aq_aqxgry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xzzz_id` int(11) NOT NULL,
  `xingming` varchar(100) COLLATE utf8_bin NOT NULL,
  `szbm` varchar(200) COLLATE utf8_bin NOT NULL,
  `shengfengzheng` varchar(100) COLLATE utf8_bin NOT NULL,
  `lxfs` varchar(100) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_90` (`xzzz_id`) USING BTREE,
  CONSTRAINT `FK_Reference_90` FOREIGN KEY (`xzzz_id`) REFERENCES `t_xt_xzzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_aq_aqxgry` */

/*Table structure for table `t_aqjzyhxm` */

DROP TABLE IF EXISTS `t_aqjzyhxm`;

CREATE TABLE `t_aqjzyhxm` (
  `xcjd_id` int(11) NOT NULL,
  `yh_id` int(11) NOT NULL,
  PRIMARY KEY (`xcjd_id`,`yh_id`),
  KEY `FK_Reference_308` (`yh_id`) USING BTREE,
  CONSTRAINT `FK_Reference_308` FOREIGN KEY (`yh_id`) REFERENCES `t_yh_yhxm` (`id`),
  CONSTRAINT `FK_Reference_321` FOREIGN KEY (`xcjd_id`) REFERENCES `t_yh_xcaqjdjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_aqjzyhxm` */

/*Table structure for table `t_bb_hyzgbmtzsbaqgztjb` */

DROP TABLE IF EXISTS `t_bb_hyzgbmtzsbaqgztjb`;

CREATE TABLE `t_bb_hyzgbmtzsbaqgztjb` (
  `id` int(11) NOT NULL,
  `sbpc` int(11) NOT NULL,
  `bmmc` int(11) DEFAULT NULL,
  `jcsydwslbjd` int(11) DEFAULT NULL,
  `jcsydwsldnlj` int(11) DEFAULT NULL,
  `jctzsbslbjd` int(11) DEFAULT NULL,
  `jctzsbsldnlj` int(11) DEFAULT NULL,
  `fxaqyhbjd` int(11) DEFAULT NULL,
  `fxaqyhdnlj` int(11) DEFAULT NULL,
  `qzyzgdnlj` int(11) DEFAULT NULL,
  `yhzglqnzgl` float DEFAULT NULL,
  `tiaobaoren` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fgld` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tbrq` datetime DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_378` (`bmmc`) USING BTREE,
  KEY `FK_Reference_404` (`sbpc`) USING BTREE,
  CONSTRAINT `FK_Reference_378` FOREIGN KEY (`bmmc`) REFERENCES `t_xt_hyzgbmzzjg` (`id`),
  CONSTRAINT `FK_Reference_404` FOREIGN KEY (`sbpc`) REFERENCES `t_bt_bbsb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `t_bb_hyzgbmtzsbaqgztjb` */

/*Table structure for table `t_bb_lsstzsbsydwzczjqkb` */

DROP TABLE IF EXISTS `t_bb_lsstzsbsydwzczjqkb`;

CREATE TABLE `t_bb_lsstzsbsydwzczjqkb` (
  `id` int(11) NOT NULL,
  `sbpc` int(11) NOT NULL,
  `sydw` int(11) NOT NULL,
  `xxdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `zzjgdm` varchar(100) COLLATE utf8_bin NOT NULL,
  `frdb` varchar(100) COLLATE utf8_bin NOT NULL,
  `frdbsj` varchar(100) COLLATE utf8_bin NOT NULL,
  `tzsbaqglfzr` varchar(100) COLLATE utf8_bin NOT NULL,
  `gddh` varchar(100) COLLATE utf8_bin NOT NULL,
  `tzsbaqglfzrsj` varchar(100) COLLATE utf8_bin NOT NULL,
  `grzysbzsl` int(11) NOT NULL,
  `grwyshgsbsl` int(11) NOT NULL,
  `grwblsydjsbsl` int(11) NOT NULL,
  `grwjdqjysbsl` int(11) NOT NULL,
  `grcqwjaqfjsl` int(11) NOT NULL,
  `grtysbzsl` int(11) NOT NULL,
  `grczczrysl` int(11) NOT NULL,
  `grczaqglrysl` int(11) NOT NULL,
  `ylrqzysbzsl` int(11) NOT NULL,
  `ylrqwyshgsbsl` int(11) NOT NULL,
  `ylrqwblsydjsbsl` int(11) NOT NULL,
  `ylrqwjdqjysbfjsl` int(11) NOT NULL,
  `ylrqcqwjaqfjsl` int(11) NOT NULL,
  `ylrqtysbzsl` int(11) NOT NULL,
  `ylrqczzzrysl` int(11) NOT NULL,
  `ylrqczaqglrysl` int(11) NOT NULL,
  `ylgdzysbzsl` int(11) NOT NULL,
  `ylgdwyshgsbsl` int(11) NOT NULL,
  `ylgdwblsydjsbsl` int(11) NOT NULL,
  `ylgdwjdqjysbsl` int(11) NOT NULL,
  `ylgdcqwjaqfjsl` int(11) NOT NULL,
  `ylgdtysbzsl` int(11) NOT NULL,
  `ylgdczzzrysl` int(11) NOT NULL,
  `ylgdczaqglrysl` int(11) NOT NULL,
  `dtzysbzsl` int(11) NOT NULL,
  `dtwyshgsbsl` int(11) NOT NULL,
  `dtwblsydjsbsl` int(11) NOT NULL,
  `dtwjdqjysbsl` int(11) NOT NULL,
  `dtcqwaqfjsl` int(11) NOT NULL,
  `dttysbzsl` int(11) NOT NULL,
  `dtczzzrysl` int(11) NOT NULL,
  `dtczaqglrysl` int(11) NOT NULL,
  `qzjxzysbzsl` int(11) NOT NULL,
  `qzjxwyshgsbsl` int(11) NOT NULL,
  `qzjxwblsydjsbsl` int(11) NOT NULL,
  `qzjxwjdqjysbsl` int(11) NOT NULL,
  `qzjxcqwjaqfjsl` int(11) NOT NULL,
  `qzjxtysbzsl` int(11) NOT NULL,
  `qzjxczzzrysl` int(11) NOT NULL,
  `qzjxczaqglrysl` int(11) NOT NULL,
  `cnzyjdclzysbzsl` int(11) NOT NULL,
  `cnzyjdclwyshgsbsl` int(11) NOT NULL,
  `cnzyjdclwblsydjsbsl` int(11) NOT NULL,
  `cnzyjdclwjdqjysbsl` int(11) NOT NULL,
  `cnzyjdclcqwjaqfjsl` int(11) NOT NULL,
  `cnzyjdcltysbzsl` int(11) NOT NULL,
  `cnzyjdclczzzrysl` int(11) NOT NULL,
  `cnzyjdclczaqglrysl` int(11) NOT NULL,
  `dxylsszysbzsl` int(11) NOT NULL,
  `dxylsswyshgsl` int(11) NOT NULL,
  `dxylsswblsydjsbsl` int(11) NOT NULL,
  `dxylsswjdqjysbsl` int(11) NOT NULL,
  `dxylsscqwjaqfjsl` int(11) NOT NULL,
  `dxylsstysbzsl` int(11) NOT NULL,
  `dxylssczzzrysl` int(11) NOT NULL,
  `dxylssczaqglrysl` int(11) NOT NULL,
  `kysdzysbzsl` int(11) NOT NULL,
  `kysdwyshgsbsl` int(11) NOT NULL,
  `kysdwblsydjsbsl` int(11) NOT NULL,
  `kysdwjdqjysbsl` int(11) NOT NULL,
  `kysdcqwjaqfjsl` int(11) NOT NULL,
  `kysdtysbzsl` int(11) NOT NULL,
  `kysdczzzrysl` int(11) NOT NULL,
  `kysdczaqglrysl` int(11) NOT NULL,
  `gwaqzrzjlqk` varchar(2000) COLLATE utf8_bin NOT NULL,
  `aqglzdjlqk` varchar(2000) COLLATE utf8_bin NOT NULL,
  `zzgcjlqk` varchar(2000) COLLATE utf8_bin NOT NULL,
  `aqjsdajlqk` varchar(2000) COLLATE utf8_bin NOT NULL,
  `sgyjyajylkzqk` varchar(2000) COLLATE utf8_bin NOT NULL,
  `sfagdbltyjbfghdbgsx` int(11) NOT NULL,
  `sfdqjxrcjcwhbyjl` int(11) NOT NULL,
  `sfagdwtyzzdwkzdtwb` int(11) NOT NULL,
  `qytbr` varchar(100) COLLATE utf8_bin NOT NULL,
  `hcrq` datetime NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `billno` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_397` (`sydw`) USING BTREE,
  KEY `FK_Reference_407` (`sbpc`) USING BTREE,
  CONSTRAINT `FK_Reference_397` FOREIGN KEY (`sydw`) REFERENCES `t_dw_dwxx` (`id`),
  CONSTRAINT `FK_Reference_407` FOREIGN KEY (`sbpc`) REFERENCES `t_bt_bbsb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_bb_lsstzsbsydwzczjqkb` */

/*Table structure for table `t_bb_tzsbjnssjtjb` */

DROP TABLE IF EXISTS `t_bb_tzsbjnssjtjb`;

CREATE TABLE `t_bb_tzsbjnssjtjb` (
  `id` int(11) NOT NULL,
  `sbpc` int(11) NOT NULL,
  `dbdw` int(11) NOT NULL,
  `tianbaoren` varchar(100) COLLATE utf8_bin NOT NULL,
  `tbsj` datetime NOT NULL,
  `bndhm` float NOT NULL,
  `glxcnxcs` int(11) NOT NULL,
  `scldb` int(11) NOT NULL,
  `glyrhslyts` int(11) NOT NULL,
  `glyrhslyjbm` int(11) NOT NULL,
  `lyshslyyyts` int(11) NOT NULL,
  `lyshslyyyjbm` float NOT NULL,
  `qtjsmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `qtymts` int(11) NOT NULL,
  `qtjbm` float NOT NULL,
  `zsglgdrygyyts` int(11) NOT NULL,
  `gzqlgdrygjbm` float NOT NULL,
  `ltlgxhlhcglyyts` int(11) NOT NULL,
  `ltlgxhlhcglyyjbm` float NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `billno` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_396` (`dbdw`) USING BTREE,
  KEY `FK_Reference_408` (`sbpc`) USING BTREE,
  CONSTRAINT `FK_Reference_396` FOREIGN KEY (`dbdw`) REFERENCES `t_dw_dwxx` (`id`),
  CONSTRAINT `FK_Reference_408` FOREIGN KEY (`sbpc`) REFERENCES `t_bt_bbsb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_bb_tzsbjnssjtjb` */

/*Table structure for table `t_bb_wbgzfxtjb` */

DROP TABLE IF EXISTS `t_bb_wbgzfxtjb`;

CREATE TABLE `t_bb_wbgzfxtjb` (
  `id` int(11) NOT NULL,
  `sbpc` int(11) NOT NULL,
  `wbdw_id` int(11) NOT NULL,
  `wbdtzl` int(11) NOT NULL,
  `dtgzl` float NOT NULL,
  `krgzl` float NOT NULL,
  `gzmskgmgz` int(11) NOT NULL,
  `gzmscmqwtd` int(11) NOT NULL,
  `gzmswfqdyx` int(11) NOT NULL,
  `gzmsyxzkm` int(11) NOT NULL,
  `gzmscs` int(11) NOT NULL,
  `gzmscdhdd` int(11) NOT NULL,
  `gzmsqt` int(11) NOT NULL,
  `gzyysjzzqx` int(11) NOT NULL,
  `gzyyazqx` int(11) NOT NULL,
  `gzyywbqxtzbd` int(11) NOT NULL,
  `gzyywbqxwbjcwfx` int(11) NOT NULL,
  `gzyywbqxqt` int(11) NOT NULL,
  `gzyysyglbdmbywkz` int(11) NOT NULL,
  `gzyysyglbdrwshwzzhzzbd` int(11) NOT NULL,
  `gzyysyglbdtdtz` int(11) NOT NULL,
  `gzyysyglbdqt` int(11) NOT NULL,
  `tbsj` datetime NOT NULL,
  `tjkssj` datetime NOT NULL,
  `tjjssj` datetime NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `billno` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_380` (`wbdw_id`) USING BTREE,
  KEY `FK_Reference_406` (`sbpc`) USING BTREE,
  CONSTRAINT `FK_Reference_380` FOREIGN KEY (`wbdw_id`) REFERENCES `t_dw_dwxx` (`id`),
  CONSTRAINT `FK_Reference_406` FOREIGN KEY (`sbpc`) REFERENCES `t_bt_bbsb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_bb_wbgzfxtjb` */

/*Table structure for table `t_bb_xztzsbaqjgqkjbb` */

DROP TABLE IF EXISTS `t_bb_xztzsbaqjgqkjbb`;

CREATE TABLE `t_bb_xztzsbaqjgqkjbb` (
  `id` int(11) NOT NULL,
  `sbpc` int(11) NOT NULL,
  `xz_jd` int(11) NOT NULL,
  `xcsydwslbjd` int(11) DEFAULT NULL,
  `xcsydwsldnlj` int(11) DEFAULT NULL,
  `ndxcjhwclqnwcl` float DEFAULT NULL,
  `xctzsbslbjd` int(11) DEFAULT NULL,
  `xctzsbsldnlj` int(11) DEFAULT NULL,
  `fxaqyhbjd` int(11) DEFAULT NULL,
  `fxaqyhdnlj` int(11) DEFAULT NULL,
  `qzyzgdnlj` int(11) DEFAULT NULL,
  `yhzglqnzgl` float DEFAULT NULL,
  `tiaobaoren` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fgld` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tbrq` datetime DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `billno` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_379` (`xz_jd`) USING BTREE,
  KEY `FK_Reference_405` (`sbpc`) USING BTREE,
  CONSTRAINT `FK_Reference_379` FOREIGN KEY (`xz_jd`) REFERENCES `t_xt_xzzzjg` (`id`),
  CONSTRAINT `FK_Reference_405` FOREIGN KEY (`sbpc`) REFERENCES `t_bt_bbsb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_bb_xztzsbaqjgqkjbb` */

/*Table structure for table `t_bg_bgsq` */

DROP TABLE IF EXISTS `t_bg_bgsq`;

CREATE TABLE `t_bg_bgsq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sb_id` int(11) NOT NULL,
  `sqbglb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `bgrq` datetime NOT NULL,
  `shoulihao` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `slry` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `slrq` datetime DEFAULT NULL,
  `sljg_id` int(11) DEFAULT NULL,
  `slrlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `slyj` text COLLATE utf8_bin,
  `sqdw_id` int(11) NOT NULL,
  `sqdwlxr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sqdwlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sqdjrq` datetime DEFAULT NULL,
  `sqxmbg` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `sqbgyy` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `bgcddw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cddwzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cddwxkzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ysydwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ysydwdzbmqx` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ysydwdzbmxz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ysydwdz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ydwzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ydwcqdwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ydwcqdwzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ydwcqdwfzr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ydwcqdwdz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ydwcqdwfzlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xdwsydwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xdwzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xsydwdzbmqx` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xsydwdzbmxz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xsydwdzxx` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xdwcqdwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xdwcqdwzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xdwcqdwfzr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xdwcqdwdz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xdwcqdwfzlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ghhydyzzmbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ghhydyzzmrq` datetime DEFAULT NULL,
  `qrdjcjgmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jgdqdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xazdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azdwzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `szszdq` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '必须到乡镇',
  `slzt` int(11) NOT NULL DEFAULT '0' COMMENT '0待审批 1已同意2已驳回',
  `thyy` text COLLATE utf8_bin,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_203` (`sb_id`) USING BTREE,
  KEY `FK_Reference_351` (`sqdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_203` FOREIGN KEY (`sb_id`) REFERENCES `t_sb_sbxx` (`ID`),
  CONSTRAINT `FK_Reference_316` FOREIGN KEY (`id`) REFERENCES `t_xt_jcdwzzjg` (`id`),
  CONSTRAINT `FK_Reference_351` FOREIGN KEY (`sqdw_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_bg_bgsq` */

insert  into `t_bg_bgsq`(`id`,`sb_id`,`sqbglb`,`bgrq`,`shoulihao`,`slry`,`slrq`,`sljg_id`,`slrlxdh`,`slyj`,`sqdw_id`,`sqdwlxr`,`sqdwlxdh`,`sqdjrq`,`sqxmbg`,`sqbgyy`,`bgcddw`,`cddwzzjgdm`,`cddwxkzbh`,`ysydwmc`,`ysydwdzbmqx`,`ysydwdzbmxz`,`ysydwdz`,`ydwzzjgdm`,`ydwcqdwmc`,`ydwcqdwzzjgdm`,`ydwcqdwfzr`,`ydwcqdwdz`,`ydwcqdwfzlxdh`,`xdwsydwmc`,`xdwzzjgdm`,`xsydwdzbmqx`,`xsydwdzbmxz`,`xsydwdzxx`,`xdwcqdwmc`,`xdwcqdwzzjgdm`,`xdwcqdwfzr`,`xdwcqdwdz`,`xdwcqdwfzlxdh`,`ghhydyzzmbh`,`ghhydyzzmrq`,`qrdjcjgmc`,`jgdqdm`,`xazdw`,`azdwzzjgdm`,`szszdq`,`slzt`,`thyy`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,'6','2013-12-04 16:03:00','','1','2013-12-04 16:03:00',1,'1','MQ==',1,'1','1','2013-12-04 16:03:00','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','','1','1','1','1','1','1','','1','1','1','2013-12-04 16:04:00','1','1','1','1','1',0,'',1,'2013-12-04 16:04:00',1,'2013-12-04 16:04:00',1),(2,1,'2','2013-12-04 16:03:00','','1','2013-12-04 16:03:00',1,'1','MQ==',1,'1','1','2013-12-04 16:03:00','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','','1','1','1','1','1','1','','1','1','1','2013-12-04 16:04:00','1','1','1','1','1',1,'',1,'2013-12-04 16:04:00',1,'2013-12-04 16:04:00',1);

/*Table structure for table `t_bg_tjclqk` */

DROP TABLE IF EXISTS `t_bg_tjclqk`;

CREATE TABLE `t_bg_tjclqk` (
  `bg_id` int(11) NOT NULL,
  `tjcl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`bg_id`,`tjcl`),
  CONSTRAINT `FK_Reference_322` FOREIGN KEY (`bg_id`) REFERENCES `t_bg_bgsq` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_bg_tjclqk` */

/*Table structure for table `t_bt_bbsb` */

DROP TABLE IF EXISTS `t_bt_bbsb`;

CREATE TABLE `t_bt_bbsb` (
  `id` int(11) NOT NULL,
  `tsbt` varchar(200) COLLATE utf8_bin NOT NULL,
  `sbsj` datetime NOT NULL,
  `bblx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `fbjg` int(11) NOT NULL,
  `lianxiren` varchar(100) COLLATE utf8_bin NOT NULL,
  `lxrdh` varchar(100) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_399` (`fbjg`) USING BTREE,
  CONSTRAINT `FK_Reference_399` FOREIGN KEY (`fbjg`) REFERENCES `t_xt_jcdwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_bt_bbsb` */

/*Table structure for table `t_bt_bbsbdw` */

DROP TABLE IF EXISTS `t_bt_bbsbdw`;

CREATE TABLE `t_bt_bbsbdw` (
  `bb_id` int(11) NOT NULL,
  `dwzzjg_id` int(11) NOT NULL,
  `sbzt` int(11) NOT NULL COMMENT '0未上报 1已上报',
  PRIMARY KEY (`bb_id`,`dwzzjg_id`),
  KEY `FK_Reference_180` (`dwzzjg_id`) USING BTREE,
  CONSTRAINT `FK_Reference_179` FOREIGN KEY (`bb_id`) REFERENCES `t_bt_bbsb` (`id`),
  CONSTRAINT `FK_Reference_180` FOREIGN KEY (`dwzzjg_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_bt_bbsbdw` */

/*Table structure for table `t_bzh_qybzhpd` */

DROP TABLE IF EXISTS `t_bzh_qybzhpd`;

CREATE TABLE `t_bzh_qybzhpd` (
  `id` int(11) NOT NULL,
  `bzhpdxxxm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `dw_id` int(11) NOT NULL,
  `sfhg` int(11) NOT NULL COMMENT '0 不合格 1合格',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_362` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_bzh_qybzhpd` */

/*Table structure for table `t_dj_djsb` */

DROP TABLE IF EXISTS `t_dj_djsb`;

CREATE TABLE `t_dj_djsb` (
  `id` int(11) NOT NULL,
  `shebei` int(11) NOT NULL,
  `sbsj` datetime NOT NULL,
  `slzt` int(11) NOT NULL COMMENT '0 待受理 1已受理 2已撤销',
  `jtjg_id` int(11) DEFAULT NULL,
  `jhjyrq` datetime DEFAULT NULL,
  `hfnr` text COLLATE utf8_bin,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_206` (`shebei`) USING BTREE,
  KEY `FK_Reference_309` (`jtjg_id`) USING BTREE,
  CONSTRAINT `FK_Reference_206` FOREIGN KEY (`shebei`) REFERENCES `t_sb_sbxx` (`ID`),
  CONSTRAINT `FK_Reference_309` FOREIGN KEY (`jtjg_id`) REFERENCES `t_xt_jyjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dj_djsb` */

/*Table structure for table `t_dt_dtwbjl` */

DROP TABLE IF EXISTS `t_dt_dtwbjl`;

CREATE TABLE `t_dt_dtwbjl` (
  `ID` int(11) NOT NULL,
  `wbsj` datetime NOT NULL,
  `wbdw` int(11) NOT NULL,
  `wbry` int(11) NOT NULL,
  `dtsb_id` int(11) NOT NULL,
  `dtyxsj` float NOT NULL,
  `dtyxjl` float NOT NULL,
  `ghlbjqt` text CHARACTER SET utf8 COLLATE utf8_bin,
  `wbsjlb` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `azzcspzyq` int(11) NOT NULL COMMENT '0否 1是',
  `bhly` text CHARACTER SET utf8 COLLATE utf8_bin,
  `bhsj` datetime DEFAULT NULL,
  `bhzh` int(11) DEFAULT NULL,
  `wbjlzt` int(11) NOT NULL DEFAULT '0' COMMENT '0待确认 1已同意 2已驳回',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_376` (`wbdw`),
  KEY `FK_Reference_335` (`bhzh`),
  KEY `FK_Reference_370` (`wbry`),
  KEY `FK_Reference_371` (`dtsb_id`),
  CONSTRAINT `FK_Reference_335` FOREIGN KEY (`bhzh`) REFERENCES `t_xt_yonghu` (`id`),
  CONSTRAINT `FK_Reference_370` FOREIGN KEY (`wbry`) REFERENCES `t_dt_wbry` (`ID`),
  CONSTRAINT `FK_Reference_371` FOREIGN KEY (`dtsb_id`) REFERENCES `t_sb_sbxx` (`ID`),
  CONSTRAINT `FK_Reference_376` FOREIGN KEY (`wbdw`) REFERENCES `t_dw_dwxx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

/*Data for the table `t_dt_dtwbjl` */

/*Table structure for table `t_dt_dtxljl` */

DROP TABLE IF EXISTS `t_dt_dtxljl`;

CREATE TABLE `t_dt_dtxljl` (
  `ID` int(11) NOT NULL,
  `xlsj` datetime NOT NULL,
  `shebei` int(11) NOT NULL,
  `xlry` int(11) NOT NULL,
  `wbdw` varchar(100) COLLATE utf8_bin NOT NULL,
  `sfkr` int(11) NOT NULL COMMENT '0否 1是',
  `gzmsqt` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `gzyyqt` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ghlbjqt` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `azzcspzyq` int(11) NOT NULL COMMENT '0否 1是',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_413` (`shebei`) USING BTREE,
  CONSTRAINT `FK_Reference_413` FOREIGN KEY (`shebei`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dt_dtxljl` */

/*Table structure for table `t_dt_dtxljlghlbj` */

DROP TABLE IF EXISTS `t_dt_dtxljlghlbj`;

CREATE TABLE `t_dt_dtxljlghlbj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xlijl_id` int(11) NOT NULL,
  `ghlbj` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_416` (`xlijl_id`) USING BTREE,
  CONSTRAINT `FK_Reference_416` FOREIGN KEY (`xlijl_id`) REFERENCES `t_dt_dtxljl` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dt_dtxljlghlbj` */

/*Table structure for table `t_dt_dtxljlgzms` */

DROP TABLE IF EXISTS `t_dt_dtxljlgzms`;

CREATE TABLE `t_dt_dtxljlgzms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xlijl_id` int(11) NOT NULL,
  `gzms` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_414` (`xlijl_id`) USING BTREE,
  CONSTRAINT `FK_Reference_414` FOREIGN KEY (`xlijl_id`) REFERENCES `t_dt_dtxljl` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dt_dtxljlgzms` */

/*Table structure for table `t_dt_dtxljlgzyy` */

DROP TABLE IF EXISTS `t_dt_dtxljlgzyy`;

CREATE TABLE `t_dt_dtxljlgzyy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xlijl_id` int(11) NOT NULL,
  `gzyy` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_415` (`xlijl_id`) USING BTREE,
  CONSTRAINT `FK_Reference_415` FOREIGN KEY (`xlijl_id`) REFERENCES `t_dt_dtxljl` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dt_dtxljlgzyy` */

/*Table structure for table `t_dt_ghlbj` */

DROP TABLE IF EXISTS `t_dt_ghlbj`;

CREATE TABLE `t_dt_ghlbj` (
  `ID` int(11) NOT NULL,
  `wbjl_id` int(11) NOT NULL,
  `lbj_key` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_24` (`wbjl_id`) USING BTREE,
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`wbjl_id`) REFERENCES `t_dt_dtwbjl` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dt_ghlbj` */

/*Table structure for table `t_dt_wbht` */

DROP TABLE IF EXISTS `t_dt_wbht`;

CREATE TABLE `t_dt_wbht` (
  `ID` int(11) NOT NULL,
  `wbdw` int(11) NOT NULL,
  `sydw` int(11) NOT NULL,
  `htyxqks` datetime NOT NULL,
  `htyxqjs` datetime NOT NULL,
  `lbjbxzd` int(11) NOT NULL COMMENT '0 否 1是',
  `htclrq` datetime NOT NULL,
  `htzt` int(11) NOT NULL COMMENT '0待确认 1 执行中 2已完成 3已取消',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_365` (`wbdw`) USING BTREE,
  KEY `FK_Reference_366` (`sydw`) USING BTREE,
  CONSTRAINT `FK_Reference_365` FOREIGN KEY (`wbdw`) REFERENCES `t_dw_dwxx` (`id`),
  CONSTRAINT `FK_Reference_366` FOREIGN KEY (`sydw`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dt_wbht` */

insert  into `t_dt_wbht`(`ID`,`wbdw`,`sydw`,`htyxqks`,`htyxqjs`,`lbjbxzd`,`htclrq`,`htzt`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,1,'2013-12-30 16:29:16','2013-12-30 16:29:25',1,'2013-12-23 16:29:34',1,1,'2013-12-15 16:29:45',1,'2013-12-17 16:29:53',1),(2,1,1,'2013-12-30 16:29:16','2013-12-30 16:29:25',1,'2013-12-23 16:29:34',1,1,'2013-12-15 16:29:45',1,'2013-12-17 16:29:53',1),(3,1,1,'2013-12-30 16:29:16','2013-12-30 16:29:25',1,'2013-12-23 16:29:34',0,1,'2013-12-15 16:29:45',1,'2013-12-17 16:29:53',1),(4,2,3,'2013-12-30 00:00:00','2015-12-21 00:00:00',1,'2013-12-23 16:29:34',0,1,'2013-12-15 16:29:45',4,'2013-12-17 18:40:15',1);

/*Table structure for table `t_dt_wbhtxm` */

DROP TABLE IF EXISTS `t_dt_wbhtxm`;

CREATE TABLE `t_dt_wbhtxm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ht_id` int(11) NOT NULL,
  `wbzq` int(11) NOT NULL,
  `xmmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `wbsjlb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `paixv` int(11) NOT NULL,
  `sgcj` int(11) NOT NULL DEFAULT '0' COMMENT '0代表否 1代表是',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_18` (`ht_id`) USING BTREE,
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`ht_id`) REFERENCES `t_dt_wbht` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dt_wbhtxm` */

insert  into `t_dt_wbhtxm`(`ID`,`ht_id`,`wbzq`,`xmmc`,`wbsjlb`,`paixv`,`sgcj`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (27,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(28,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(29,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(30,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(31,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(32,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(33,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(34,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(35,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(36,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(37,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(38,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(39,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(40,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(41,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(42,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(43,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(44,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(45,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(46,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(47,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(48,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(49,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(50,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(51,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(52,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(53,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(54,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(55,4,0,'0','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(56,4,0,'8','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(57,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(58,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(59,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(60,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(61,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(62,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(63,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(64,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(65,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(66,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(67,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(68,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(69,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(70,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(71,4,0,'0','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(72,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(73,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(74,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(75,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(76,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(77,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(78,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(79,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(80,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(81,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(82,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(83,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(84,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(85,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(86,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(87,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(88,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(89,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(90,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(91,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(92,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(93,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(94,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(95,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(96,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(97,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(98,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(99,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(100,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(101,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(102,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(103,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(104,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(105,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(106,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(107,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(108,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(109,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(110,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(111,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(112,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(113,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(114,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(115,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(116,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(117,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(118,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(119,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(120,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(121,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(122,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(123,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(124,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(125,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(126,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(127,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(128,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(129,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(130,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(131,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(132,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(133,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(134,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(135,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(136,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(137,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(138,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(139,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(140,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(141,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(142,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(143,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(144,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(145,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(146,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(147,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(148,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(149,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(150,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(151,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(152,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(153,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(154,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(155,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(156,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(157,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(158,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(159,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(160,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(161,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(162,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(163,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(164,4,0,'3','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(165,4,0,'4','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(166,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(167,4,0,'2','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(168,4,0,'3','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(169,4,0,'4','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(170,4,0,'0','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(171,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(172,4,10,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(173,4,10,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(174,4,10,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(175,4,10,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(176,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(177,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(178,4,0,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(179,4,0,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(180,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(181,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(182,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(183,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(184,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(185,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(186,4,10,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(187,4,10,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(188,4,10,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(189,4,10,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(190,4,10,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(191,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(192,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(193,4,0,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(194,4,0,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(195,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(196,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(197,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(198,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(199,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(200,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(201,4,5,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(202,4,5,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(203,4,5,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(204,4,5,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(205,4,5,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(206,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(207,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(208,4,0,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(209,4,0,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(210,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(211,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(212,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(213,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(214,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(215,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(216,4,5,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(217,4,5,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(218,4,5,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(219,4,5,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(220,4,5,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(221,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(222,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(223,4,0,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(224,4,0,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(225,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(226,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(227,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(228,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(229,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(230,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(231,4,5,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(232,4,5,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(233,4,5,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(234,4,5,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(235,4,5,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(236,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(237,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(238,4,0,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(239,4,0,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(240,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(241,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(242,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(243,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(244,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(245,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(246,4,5,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(247,4,5,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(248,4,5,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(249,4,5,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(250,4,5,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(251,4,5,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(252,4,5,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(253,4,5,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(254,4,5,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(255,4,5,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(256,4,5,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(257,4,5,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(258,4,5,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(259,4,5,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(260,4,5,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(261,4,5,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(262,4,5,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(263,4,5,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(264,4,5,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(265,4,5,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(266,4,5,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(267,4,5,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(268,4,5,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(269,4,5,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(270,4,5,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(271,4,5,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(272,4,5,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(273,4,5,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(274,4,5,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(275,4,5,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(276,4,5,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(277,4,5,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(278,4,5,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(279,4,5,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(280,4,5,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(281,4,5,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(282,4,5,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(283,4,5,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(284,4,5,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(285,4,5,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(286,4,5,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(287,4,5,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(288,4,5,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(289,4,5,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(290,4,5,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(291,4,5,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(292,4,5,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(293,4,5,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(294,4,5,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(295,4,5,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(296,4,5,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(297,4,5,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(298,4,5,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(299,4,5,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(300,4,5,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(301,4,5,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(302,4,5,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(303,4,5,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(304,4,5,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(305,4,5,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(306,4,5,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(307,4,5,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(308,4,5,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(309,4,5,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(310,4,5,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(311,4,5,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(312,4,5,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(313,4,5,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(314,4,5,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(315,4,5,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(316,4,5,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(317,4,5,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(318,4,5,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(319,4,5,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(320,4,5,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(321,4,3,'4','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(322,4,3,'0','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(323,4,3,'1','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(324,4,3,'2','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(325,4,3,'3','0',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(326,4,0,'3','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(327,4,0,'4','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(328,4,0,'0','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(329,4,0,'1','1',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(330,4,0,'2','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(331,4,0,'3','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(332,4,0,'4','2',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(333,4,0,'1','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(334,4,0,'2','3',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(335,4,0,'1','4',1,0,1,'2013-12-16 17:02:06',4,'2013-12-17 18:40:15',0),(336,4,3,'4','0',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(337,4,3,'0','0',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(338,4,3,'1','0',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(339,4,3,'2','0',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(340,4,3,'3','0',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(341,4,0,'3','1',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(342,4,0,'4','1',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(343,4,0,'0','1',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(344,4,0,'1','1',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(345,4,0,'2','2',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(346,4,0,'3','2',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(347,4,0,'4','2',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(348,4,0,'1','3',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(349,4,0,'2','3',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(350,4,0,'1','4',1,0,4,'2013-12-17 15:59:23',4,'2013-12-17 18:40:15',0),(351,4,3,'4','0',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(352,4,3,'0','0',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(353,4,3,'1','0',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(354,4,3,'2','0',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(355,4,3,'3','0',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(356,4,0,'3','1',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(357,4,0,'4','1',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(358,4,0,'0','1',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(359,4,0,'1','1',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(360,4,0,'2','2',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(361,4,0,'3','2',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(362,4,0,'4','2',1,0,4,'2013-12-17 16:21:37',4,'2013-12-17 18:40:15',0),(363,4,0,'1','3',1,0,4,'2013-12-17 16:21:38',4,'2013-12-17 18:40:15',0),(364,4,0,'2','3',1,0,4,'2013-12-17 16:21:38',4,'2013-12-17 18:40:15',0),(365,4,0,'1','4',1,0,4,'2013-12-17 16:21:38',4,'2013-12-17 18:40:15',0),(366,4,3,'4','0',1,0,4,'2013-12-17 16:25:25',4,'2013-12-17 18:40:15',0),(367,4,3,'0','0',1,0,4,'2013-12-17 16:25:25',4,'2013-12-17 18:40:15',0),(368,4,3,'1','0',1,0,4,'2013-12-17 16:25:25',4,'2013-12-17 18:40:15',0),(369,4,3,'2','0',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(370,4,3,'3','0',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(371,4,0,'3','1',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(372,4,0,'4','1',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(373,4,0,'0','1',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(374,4,0,'1','1',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(375,4,0,'2','2',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(376,4,0,'3','2',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(377,4,0,'4','2',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(378,4,0,'1','3',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(379,4,0,'2','3',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(380,4,0,'1','4',1,0,4,'2013-12-17 16:25:26',4,'2013-12-17 18:40:15',0),(381,4,3,'4','0',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(382,4,3,'0','0',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(383,4,3,'1','0',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(384,4,3,'2','0',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(385,4,3,'3','0',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(386,4,0,'3','1',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(387,4,0,'4','1',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(388,4,0,'0','1',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(389,4,0,'1','1',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(390,4,0,'2','2',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(391,4,0,'3','2',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(392,4,0,'4','2',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(393,4,0,'1','3',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(394,4,0,'2','3',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(395,4,0,'1','4',1,0,4,'2013-12-17 17:41:36',4,'2013-12-17 18:40:15',0),(396,4,3,'4','0',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(397,4,3,'0','0',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(398,4,3,'1','0',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(399,4,3,'2','0',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(400,4,3,'3','0',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(401,4,0,'3','1',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(402,4,0,'4','1',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(403,4,0,'0','1',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(404,4,0,'1','1',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(405,4,0,'2','2',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(406,4,0,'3','2',1,0,4,'2013-12-17 18:33:04',4,'2013-12-17 18:40:15',0),(407,4,0,'4','2',1,0,4,'2013-12-17 18:33:05',4,'2013-12-17 18:40:15',0),(408,4,0,'1','3',1,0,4,'2013-12-17 18:33:05',4,'2013-12-17 18:40:15',0),(409,4,0,'2','3',1,0,4,'2013-12-17 18:33:05',4,'2013-12-17 18:40:15',0),(410,4,0,'1','4',1,0,4,'2013-12-17 18:33:05',4,'2013-12-17 18:40:15',0),(411,4,3,'4','0',1,0,4,'2013-12-17 18:40:15',4,'2013-12-17 18:40:15',1),(412,4,3,'0','0',1,0,4,'2013-12-17 18:40:15',4,'2013-12-17 18:40:15',1),(413,4,3,'1','0',1,0,4,'2013-12-17 18:40:15',4,'2013-12-17 18:40:15',1),(414,4,3,'2','0',1,0,4,'2013-12-17 18:40:15',4,'2013-12-17 18:40:15',1),(415,4,3,'3','0',1,0,4,'2013-12-17 18:40:15',4,'2013-12-17 18:40:15',1),(416,4,0,'3','1',1,0,4,'2013-12-17 18:40:15',4,'2013-12-17 18:40:15',1),(417,4,0,'4','1',1,0,4,'2013-12-17 18:40:15',4,'2013-12-17 18:40:15',1),(418,4,0,'0','1',1,0,4,'2013-12-17 18:40:15',4,'2013-12-17 18:40:15',1),(419,4,0,'1','1',1,0,4,'2013-12-17 18:40:16',4,'2013-12-17 18:40:16',1),(420,4,0,'2','2',1,0,4,'2013-12-17 18:40:16',4,'2013-12-17 18:40:16',1),(421,4,0,'3','2',1,0,4,'2013-12-17 18:40:16',4,'2013-12-17 18:40:16',1),(422,4,0,'4','2',1,0,4,'2013-12-17 18:40:16',4,'2013-12-17 18:40:16',1),(423,4,0,'1','3',1,0,4,'2013-12-17 18:40:16',4,'2013-12-17 18:40:16',1),(424,4,0,'2','3',1,0,4,'2013-12-17 18:40:16',4,'2013-12-17 18:40:16',1),(425,4,0,'1','4',1,0,4,'2013-12-17 18:40:16',4,'2013-12-17 18:40:16',1);

/*Table structure for table `t_dt_wbry` */

DROP TABLE IF EXISTS `t_dt_wbry`;

CREATE TABLE `t_dt_wbry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `szdw_id` int(11) DEFAULT NULL,
  `xingming` varchar(100) COLLATE utf8_bin NOT NULL,
  `shenfengzheng` varchar(100) COLLATE utf8_bin NOT NULL,
  `xingbie` int(11) NOT NULL COMMENT '0 女 1 男',
  `csny` varchar(100) COLLATE utf8_bin NOT NULL,
  `sjhm` varchar(100) COLLATE utf8_bin NOT NULL,
  `yh_id` int(11) DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_164` (`yh_id`) USING BTREE,
  KEY `FK_Reference_363` (`szdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_164` FOREIGN KEY (`yh_id`) REFERENCES `t_xt_yonghu` (`id`),
  CONSTRAINT `FK_Reference_363` FOREIGN KEY (`szdw_id`) REFERENCES `t_dw_dwxx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dt_wbry` */

/*Table structure for table `t_dt_wbxm` */

DROP TABLE IF EXISTS `t_dt_wbxm`;

CREATE TABLE `t_dt_wbxm` (
  `ID` int(11) NOT NULL,
  `wbhtxm_id` int(11) NOT NULL,
  `dtwbjl_id` int(11) DEFAULT NULL,
  `clfs` int(11) NOT NULL DEFAULT '0' COMMENT '0正常 1润滑 2调整 3修理 4更换',
  `wtms` text COLLATE utf8_bin,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `billno` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_23` (`dtwbjl_id`) USING BTREE,
  KEY `FK_Reference_372` (`wbhtxm_id`) USING BTREE,
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`dtwbjl_id`) REFERENCES `t_dt_dtwbjl` (`ID`),
  CONSTRAINT `FK_Reference_372` FOREIGN KEY (`wbhtxm_id`) REFERENCES `t_dt_wbhtxm` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dt_wbxm` */

/*Table structure for table `t_dw_dwxx` */

DROP TABLE IF EXISTS `t_dw_dwxx`;

CREATE TABLE `t_dw_dwxx` (
  `id` int(11) NOT NULL,
  `cs_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mchxm` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `zzjgdmhsfz` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sfgr` int(11) NOT NULL DEFAULT '0' COMMENT '0单位 1个人',
  `sfsydw` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfwbdw` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfscdw` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfjydw` int(11) NOT NULL COMMENT '0 否 1 是',
  `dwzcdzxx` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `wddwzlsbgdqbqx` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '数据字典，个人',
  `wddwzlsbgdqbmxz` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '数据字典，个人',
  `wddwzlsbgdzxx` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '个人',
  `fuzeren` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `youbian` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '个人邮编',
  `fddbr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fddbrsj` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '个人手机',
  `gddh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '个人固定电话',
  `chuanzhen` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '个人传真',
  `dwdabh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sy_zgbm` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典，使用单位主管部门',
  `sy_aqfzr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sy_aqfzrsj` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sy_aqgljg` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sy_aqfzrdh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `mgs_id` int(11) DEFAULT NULL,
  `sfzddw` int(11) NOT NULL COMMENT '0 否1是',
  `jingbanren` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '经办人',
  `jbrsj` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '经办人手机',
  `jbrdh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '经办人电话',
  `dwxz` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `dwygs` int(11) DEFAULT NULL,
  `zcsj` datetime NOT NULL,
  `dzxx` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `azdwdh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lianxiren` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lxrsj` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `dwwz` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `jgwswmc` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `yyzzdjjg` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `yyzzzch` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sydwfrdjgljg` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sydwfrzsbh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `jjlx` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `clrq` datetime DEFAULT NULL,
  `ksgzrq` datetime DEFAULT NULL,
  `gdzc` float DEFAULT NULL,
  `zczc` float DEFAULT NULL,
  `wbdh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `jjjysj` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `zlbzfzr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `hjrys` int(11) DEFAULT NULL,
  `wsjcrys` int(11) DEFAULT NULL,
  `azgzwxzyrys` int(11) DEFAULT NULL,
  `dqgcsrys` int(11) DEFAULT NULL,
  `sjrys` int(11) DEFAULT NULL,
  `jcrys` int(11) DEFAULT NULL,
  `jxgcsrys` int(11) DEFAULT NULL,
  `qtzyrysl` int(11) DEFAULT NULL,
  `nianchanzhi` float DEFAULT NULL,
  `zdmj` float DEFAULT NULL,
  `cfmj` float DEFAULT NULL,
  `pgsmj` float DEFAULT NULL,
  `ztbgrq` datetime DEFAULT NULL,
  `beizhu` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sj_sjdwsjjsfzr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `sj_sjdwsjrysl` int(11) DEFAULT NULL,
  `sj_sjdwsjsprysl` int(11) DEFAULT NULL,
  `sjnl` int(11) DEFAULT NULL,
  `glzdb` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `glzdbzw` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `qt_cyllxdh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `qt_cylcz` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `qt_cyllxr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `qt_jdllxcz` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `qt_jdllxdh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `qt_jdllxr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rykhlxdh` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rykhlxcz` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `rykhlxr` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `wbdwzgssqqxks` datetime DEFAULT NULL,
  `wbdwzgssqqxjs` datetime DEFAULT NULL,
  `wbdwxzbsszzdwdt` int(11) DEFAULT NULL COMMENT '0否 1是',
  `wbdwx50tyx` int(11) DEFAULT NULL COMMENT '0否 1是',
  `wbxqfw` text CHARACTER SET utf8 COLLATE utf8_bin,
  `wbxsqsfyba` int(11) DEFAULT NULL COMMENT '0否 1是',
  `wbbndba` int(11) DEFAULT NULL COMMENT '0否 1是',
  `dtwbmm` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '0待审批 1待完善 2正常 3停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

/*Data for the table `t_dw_dwxx` */

/*Table structure for table `t_dw_dwxxxg` */

DROP TABLE IF EXISTS `t_dw_dwxxxg`;

CREATE TABLE `t_dw_dwxxxg` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `dw_id` int(11) NOT NULL,
  `xdwmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `lsbgdzdqbmqx` varchar(200) COLLATE utf8_bin NOT NULL,
  `lsbgdzdqbmxz` varchar(200) COLLATE utf8_bin NOT NULL,
  `lsbgdzxx` varchar(200) COLLATE utf8_bin NOT NULL,
  `fddbr` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `fddbrsj` varchar(20) COLLATE utf8_bin NOT NULL,
  `sfsydw` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfwbdw` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfscdw` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfjydw` int(11) NOT NULL COMMENT '0 否 1 是',
  `hhzh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `hhsj` datetime DEFAULT NULL,
  `sfzh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qrzt` int(11) NOT NULL COMMENT '0待确认 1已确认 2已退回',
  `thyy` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_357` (`dw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_357` FOREIGN KEY (`dw_id`) REFERENCES `t_dw_dwxx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dw_dwxxxg` */

/*Table structure for table `t_dw_dwzc` */

DROP TABLE IF EXISTS `t_dw_dwzc`;

CREATE TABLE `t_dw_dwzc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mchxm` varchar(100) COLLATE utf8_bin NOT NULL,
  `zzjgdmhsfz` varchar(100) COLLATE utf8_bin NOT NULL,
  `sfgr` int(11) NOT NULL DEFAULT '0' COMMENT '0单位 1个人',
  `sfsydw` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfwbdw` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfscdw` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfjydw` int(11) NOT NULL COMMENT '0 否 1 是',
  `dwzcdz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `youbian` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '个人邮编',
  `wddwzlsbgdqbmqx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典，个人地址编码',
  `wddwzlsbgdqbmxz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典，个人地址编码',
  `wddwzlsbgdzxx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '个人地址详细',
  `fuzeren` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fddbr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fddbrsj` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '个人手机',
  `gddh` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '个人固定电话',
  `chuanzhen` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '个人传真',
  `sy_zgbm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sy_aqfzr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sy_aqfzrsj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sy_aqgljg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sy_aqfzrdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jingbanren` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '经办人',
  `jbrsj` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '经办人手机',
  `jbrdh` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '经办人电话',
  `dwxz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典，具体值可参照demo',
  `thyy` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `zczt` char(1) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '0待审批 1待完善 2正常 3停用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_2` (`zzjgdmhsfz`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dw_dwzc` */

/*Table structure for table `t_dw_ejdw` */

DROP TABLE IF EXISTS `t_dw_ejdw`;

CREATE TABLE `t_dw_ejdw` (
  `id` int(11) NOT NULL,
  `yjdw_id` int(11) NOT NULL,
  `xsdwmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `fuzeren` varchar(100) COLLATE utf8_bin NOT NULL,
  `lxdh` varchar(100) COLLATE utf8_bin NOT NULL,
  `bgdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `youbian` varchar(100) COLLATE utf8_bin NOT NULL,
  `dgdh` varchar(100) COLLATE utf8_bin NOT NULL,
  `chuanzhen` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `aqfzr` varchar(100) COLLATE utf8_bin NOT NULL,
  `aqfzrsj` varchar(100) COLLATE utf8_bin NOT NULL,
  `aqgljg` varchar(100) COLLATE utf8_bin NOT NULL,
  `aqfzrgddh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dtwbmm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_318` (`yjdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_317` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`),
  CONSTRAINT `FK_Reference_318` FOREIGN KEY (`yjdw_id`) REFERENCES `t_dw_dwxx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dw_ejdw` */

insert  into `t_dw_ejdw`(`id`,`yjdw_id`,`xsdwmc`,`fuzeren`,`lxdh`,`bgdz`,`youbian`,`dgdh`,`chuanzhen`,`aqfzr`,`aqfzrsj`,`aqgljg`,`aqfzrgddh`,`dtwbmm`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (33,1,'1','1','1','1','1','1','1','1','1','1','1','1',1,'2013-12-16 18:26:55',1,'2013-12-16 18:26:57',1);

/*Table structure for table `t_dw_tzsbscxkzbg` */

DROP TABLE IF EXISTS `t_dw_tzsbscxkzbg`;

CREATE TABLE `t_dw_tzsbscxkzbg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xkz_id` int(11) NOT NULL,
  `zsbh` varchar(200) COLLATE utf8_bin NOT NULL,
  `sblb2` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `dwmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `dwdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `zzdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `pzrq` datetime NOT NULL,
  `yxrq` datetime NOT NULL,
  `pzjg` varchar(200) COLLATE utf8_bin NOT NULL,
  `sfsj` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfzz` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfaq` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfgz` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfwx` int(11) NOT NULL COMMENT '0 否 1 是',
  `beizhu` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `qrsj` datetime DEFAULT NULL,
  `qrzh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `thyy` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `xkzzt` varchar(200) COLLATE utf8_bin NOT NULL COMMENT 'int',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_74` (`xkz_id`) USING BTREE,
  CONSTRAINT `FK_Reference_74` FOREIGN KEY (`xkz_id`) REFERENCES `t_dw_tzsbxkzscwb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dw_tzsbscxkzbg` */

/*Table structure for table `t_dw_tzsbxkzscwb` */

DROP TABLE IF EXISTS `t_dw_tzsbxkzscwb`;

CREATE TABLE `t_dw_tzsbxkzscwb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dw_id` int(11) NOT NULL,
  `sblb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `zsbh` varchar(200) COLLATE utf8_bin NOT NULL,
  `dwmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `dwdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `zzdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `pzrq` datetime NOT NULL,
  `yxrq` datetime NOT NULL,
  `pzjg` varchar(200) COLLATE utf8_bin NOT NULL,
  `sfsj` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfzz` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfaz` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfgz` int(11) NOT NULL COMMENT '0 否 1 是',
  `sfwx` int(11) NOT NULL COMMENT '0 否 1 是',
  `beizhu` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '超期 正常 使用',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_356` (`dw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_356` FOREIGN KEY (`dw_id`) REFERENCES `t_dw_dwxx` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_dw_tzsbxkzscwb` */

insert  into `t_dw_tzsbxkzscwb`(`id`,`dw_id`,`sblb`,`zsbh`,`dwmc`,`dwdz`,`zzdz`,`pzrq`,`yxrq`,`pzjg`,`sfsj`,`sfzz`,`sfaz`,`sfgz`,`sfwx`,`beizhu`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,'2','1','1','1','1','2013-11-16 00:00:00','2013-11-16 00:00:00','1',1,1,1,1,1,'1',1,'2013-11-16 17:09:56',1,'2013-12-16 20:01:25',1),(2,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(3,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(4,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(5,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(6,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(7,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(8,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(9,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(10,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(11,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(12,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(13,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(14,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(15,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(16,1,'2','55','','',' 二人','2013-12-02 00:00:00','2013-12-19 00:00:00','热而',0,1,1,0,0,'',1,'2013-12-17 09:15:26',1,'2013-12-17 09:15:26',1),(17,1,'2','45','','1','1','2013-12-03 00:00:00','2014-01-03 00:00:00','1kl',0,0,1,1,0,'',1,'2013-12-17 15:46:15',1,'2013-12-17 15:46:15',1);

/*Table structure for table `t_mh_cjwt` */

DROP TABLE IF EXISTS `t_mh_cjwt`;

CREATE TABLE `t_mh_cjwt` (
  `id` int(11) NOT NULL,
  `paixu` int(11) NOT NULL,
  `wtms` varchar(2000) COLLATE utf8_bin NOT NULL,
  `dfnr` text COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_mh_cjwt` */

/*Table structure for table `t_mh_jubao` */

DROP TABLE IF EXISTS `t_mh_jubao`;

CREATE TABLE `t_mh_jubao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bjbdw` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bjbdwdz` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `jbrxm` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `jbrxb` int(11) NOT NULL COMMENT '0女1男',
  `jbrdh` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `jbqksm` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `jbsh` datetime NOT NULL,
  `cljg` text CHARACTER SET utf8 COLLATE utf8_bin,
  `clzh` int(11) DEFAULT NULL,
  `clsj` datetime DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_45` (`clzh`) USING BTREE,
  CONSTRAINT `FK_Reference_45` FOREIGN KEY (`clzh`) REFERENCES `t_xt_yonghu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

/*Data for the table `t_mh_jubao` */

/*Table structure for table `t_mh_lanmu` */

DROP TABLE IF EXISTS `t_mh_lanmu`;

CREATE TABLE `t_mh_lanmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flm_id` int(11) DEFAULT NULL,
  `mc` varchar(100) COLLATE utf8_bin NOT NULL,
  `sm` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `lmmrwzlx` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_8` (`flm_id`) USING BTREE,
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`flm_id`) REFERENCES `t_mh_lanmu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_mh_lanmu` */

insert  into `t_mh_lanmu`(`id`,`flm_id`,`mc`,`sm`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`lmmrwzlx`) values (1,NULL,'法律',NULL,1,'2013-12-16 16:39:51',1,'2013-12-16 16:39:57',1,'1'),(2,NULL,'汽车','',1,'2013-12-16 16:39:51',1,'2013-12-16 16:39:57',1,'1'),(3,1,'法律基础','',1,'2013-12-16 16:39:51',1,'2013-12-16 16:39:57',1,'1'),(4,1,'法律教育','',1,'2013-12-16 16:39:51',1,'2013-12-16 16:39:57',1,'1'),(5,2,'汽车制造','',1,'2013-12-16 16:39:51',1,'2013-12-16 16:39:57',1,'1'),(6,2,'汽车维修','',1,'2013-12-16 16:39:51',1,'2013-12-16 16:39:57',1,'1');

/*Table structure for table `t_mh_wenda` */

DROP TABLE IF EXISTS `t_mh_wenda`;

CREATE TABLE `t_mh_wenda` (
  `id` int(11) NOT NULL,
  `lxrxm` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lxrxb` int(11) NOT NULL,
  `lxrdh` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lxryjdz` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `wtms` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `twsj` datetime NOT NULL,
  `dfnr` text CHARACTER SET utf8 COLLATE utf8_bin,
  `hfsj` datetime DEFAULT NULL,
  `hfr` int(11) DEFAULT NULL,
  `sfcjwt` int(11) NOT NULL COMMENT '0不常见 1常见',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_46` (`hfr`) USING BTREE,
  CONSTRAINT `FK_Reference_46` FOREIGN KEY (`hfr`) REFERENCES `t_xt_yonghu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

/*Data for the table `t_mh_wenda` */

/*Table structure for table `t_mh_wenzhang` */

DROP TABLE IF EXISTS `t_mh_wenzhang`;

CREATE TABLE `t_mh_wenzhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lmid` int(11) NOT NULL,
  `leibie` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `biaoti` varchar(200) COLLATE utf8_bin NOT NULL,
  `nerong` text COLLATE utf8_bin NOT NULL,
  `laiyuan` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `fbjg` varchar(100) COLLATE utf8_bin NOT NULL,
  `fbsj` datetime NOT NULL,
  `fwcs` int(11) NOT NULL DEFAULT '0',
  `zhiding` int(11) NOT NULL DEFAULT '0' COMMENT '0 不置顶 1置顶',
  `zddqsj` datetime DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_9` (`lmid`) USING BTREE,
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`lmid`) REFERENCES `t_mh_lanmu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_mh_wenzhang` */

/*Table structure for table `t_ry_ryjz` */

DROP TABLE IF EXISTS `t_ry_ryjz`;

CREATE TABLE `t_ry_ryjz` (
  `jzdw_id` int(11) NOT NULL,
  `zyry_id` int(11) DEFAULT NULL,
  `zs_id` int(11) DEFAULT NULL,
  `zyxm_id` int(11) NOT NULL,
  PRIMARY KEY (`jzdw_id`,`zyxm_id`),
  KEY `FK_Reference_173` (`zyxm_id`) USING BTREE,
  KEY `FK_Reference_175` (`zyry_id`) USING BTREE,
  KEY `FK_Reference_176` (`zs_id`) USING BTREE,
  CONSTRAINT `FK_Reference_173` FOREIGN KEY (`zyxm_id`) REFERENCES `t_ry_zyryczxm` (`id`),
  CONSTRAINT `FK_Reference_174` FOREIGN KEY (`jzdw_id`) REFERENCES `t_xt_dwzzjg` (`id`),
  CONSTRAINT `FK_Reference_175` FOREIGN KEY (`zyry_id`) REFERENCES `t_ry_zyry` (`id`),
  CONSTRAINT `FK_Reference_176` FOREIGN KEY (`zs_id`) REFERENCES `t_ry_zyrycz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_ry_ryjz` */

/*Table structure for table `t_ry_scdwzlgltxry` */

DROP TABLE IF EXISTS `t_ry_scdwzlgltxry`;

CREATE TABLE `t_ry_scdwzlgltxry` (
  `id` int(11) NOT NULL,
  `scdw` int(11) NOT NULL,
  `txgwzz` varchar(200) COLLATE utf8_bin NOT NULL,
  `xzzw` varchar(200) COLLATE utf8_bin NOT NULL,
  `xingming` varchar(100) COLLATE utf8_bin NOT NULL,
  `sfzh` varchar(100) COLLATE utf8_bin NOT NULL,
  `xueli` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_332` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_ry_scdwzlgltxry` */

/*Table structure for table `t_ry_tzsbzyrydjb` */

DROP TABLE IF EXISTS `t_ry_tzsbzyrydjb`;

CREATE TABLE `t_ry_tzsbzyrydjb` (
  `id` int(11) NOT NULL,
  `xingming` varchar(100) COLLATE utf8_bin NOT NULL,
  `shengfengzheng` varchar(100) COLLATE utf8_bin NOT NULL,
  `zyzl` varchar(100) COLLATE utf8_bin NOT NULL,
  `zsbh` varchar(100) COLLATE utf8_bin NOT NULL,
  `fzbm` varchar(100) COLLATE utf8_bin NOT NULL,
  `xiangmu` varchar(100) COLLATE utf8_bin NOT NULL,
  `pzrq` varchar(100) COLLATE utf8_bin NOT NULL,
  `yxrq` varchar(100) COLLATE utf8_bin NOT NULL,
  `pydw` varchar(100) COLLATE utf8_bin NOT NULL,
  `pyxm` varchar(100) COLLATE utf8_bin NOT NULL,
  `pyzq` varchar(100) COLLATE utf8_bin NOT NULL,
  `lxdh` varchar(100) COLLATE utf8_bin NOT NULL,
  `dabh` varchar(100) COLLATE utf8_bin NOT NULL,
  `fddbr` varchar(100) COLLATE utf8_bin NOT NULL,
  `ksjg` varchar(100) COLLATE utf8_bin NOT NULL,
  `sfyfb` int(11) NOT NULL DEFAULT '0' COMMENT '0未发布 1已发布',
  `fbsj` datetime DEFAULT NULL,
  `sfysb` int(11) NOT NULL COMMENT '0 未上报 1已上报',
  `faburen` int(11) DEFAULT NULL,
  `sbsj` datetime DEFAULT NULL,
  `sffs` int(11) NOT NULL COMMENT '0 否 1是',
  `yzsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yzyxm` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_367` (`faburen`) USING BTREE,
  CONSTRAINT `FK_Reference_367` FOREIGN KEY (`faburen`) REFERENCES `t_xt_yonghu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_ry_tzsbzyrydjb` */

/*Table structure for table `t_ry_xmdmshsb` */

DROP TABLE IF EXISTS `t_ry_xmdmshsb`;

CREATE TABLE `t_ry_xmdmshsb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zyxmdm` varchar(100) COLLATE utf8_bin NOT NULL,
  `sbzl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `sblb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '设备代码表 二级',
  `sbpz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '设备代码表 三级',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_192` (`zyxmdm`) USING BTREE,
  CONSTRAINT `FK_Reference_192` FOREIGN KEY (`zyxmdm`) REFERENCES `t_xt_xmlx` (`zyxmdm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_ry_xmdmshsb` */

/*Table structure for table `t_ry_xmdmshsbcs` */

DROP TABLE IF EXISTS `t_ry_xmdmshsbcs`;

CREATE TABLE `t_ry_xmdmshsbcs` (
  `id1` int(11) NOT NULL AUTO_INCREMENT,
  `z_id` int(11) NOT NULL,
  `canshu` varchar(100) COLLATE utf8_bin NOT NULL,
  `csbm` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '系统参数获取',
  `csdbfh` int(11) NOT NULL COMMENT '1小于 2小于等于 3大于等于 4大于',
  `cssz` float DEFAULT NULL,
  PRIMARY KEY (`id1`),
  KEY `FK_Reference_193` (`z_id`) USING BTREE,
  CONSTRAINT `FK_Reference_193` FOREIGN KEY (`z_id`) REFERENCES `t_ry_xmdmshsb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_ry_xmdmshsbcs` */

/*Table structure for table `t_ry_zyry` */

DROP TABLE IF EXISTS `t_ry_zyry`;

CREATE TABLE `t_ry_zyry` (
  `id` int(11) NOT NULL,
  `xingming` varchar(100) COLLATE utf8_bin NOT NULL,
  `sfzh` varchar(100) COLLATE utf8_bin NOT NULL,
  `txgwzz` varchar(200) COLLATE utf8_bin NOT NULL,
  `xzzw` varchar(200) COLLATE utf8_bin NOT NULL,
  `xueli` varchar(200) COLLATE utf8_bin NOT NULL,
  `scdw` int(11) NOT NULL,
  `lxdh` varchar(100) COLLATE utf8_bin NOT NULL,
  `pydw_id` int(11) DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `yh_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_190` (`yh_id`) USING BTREE,
  KEY `FK_Reference_319` (`pydw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_190` FOREIGN KEY (`yh_id`) REFERENCES `t_xt_yonghu` (`id`),
  CONSTRAINT `FK_Reference_319` FOREIGN KEY (`pydw_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_ry_zyry` */

insert  into `t_ry_zyry`(`id`,`xingming`,`sfzh`,`txgwzz`,`xzzw`,`xueli`,`scdw`,`lxdh`,`pydw_id`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`yh_id`) values (1,'李四','37000000000','333','处长','本科',1,'13356685677',1,1,'2013-12-01 16:17:13',1,'2013-12-01 16:17:03',1,2),(2,'张三','3700000001','222','职员','本科',2,'123565458666',1,1,'2013-12-30 16:19:55',1,'2013-12-01 16:20:02',1,2),(3,'王五','3700000002','2221','职员','本科',2,'12356669856',1,1,'2013-12-30 16:19:55',1,'2013-12-01 16:20:02',1,2),(4,'张四','3700000004','222','职员','本科',2,'1235654525',1,1,'2013-12-30 16:19:55',1,'2013-12-01 16:20:02',1,2),(5,'王五五','5555555555555','222','职员','本科',2,'123',1,1,'2013-12-30 16:19:55',1,'2013-12-01 16:20:02',1,2),(6,'赵六','3700000006','222','职员','本科',2,'123',1,1,'2013-12-30 16:19:55',1,'2013-12-01 16:20:02',1,2);

/*Table structure for table `t_ry_zyrycz` */

DROP TABLE IF EXISTS `t_ry_zyrycz`;

CREATE TABLE `t_ry_zyrycz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zyry_id` int(11) NOT NULL,
  `zyzl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '新证书不规定种类',
  `zsbh` varchar(100) COLLATE utf8_bin NOT NULL,
  `fzbm` varchar(100) COLLATE utf8_bin NOT NULL,
  `sfbdzj` int(11) NOT NULL DEFAULT '1' COMMENT '0否 1是',
  `dabh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_81` (`zyry_id`) USING BTREE,
  CONSTRAINT `FK_Reference_81` FOREIGN KEY (`zyry_id`) REFERENCES `t_ry_zyry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_ry_zyrycz` */

insert  into `t_ry_zyrycz`(`id`,`zyry_id`,`zyzl`,`zsbh`,`fzbm`,`sfbdzj`,`dabh`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,'1','1','1',1,'1',1,'2013-12-16 16:52:06',1,'2013-12-16 16:52:09',1),(2,2,'1','1','1',1,'1',1,'2013-12-16 16:52:06',1,'2013-12-16 16:52:09',1),(3,3,'1','1','1',1,'1',1,'2013-12-16 16:52:06',1,'2013-12-16 16:52:09',1),(4,4,'1','1','1',1,'1',1,'2013-12-16 16:52:06',1,'2013-12-16 16:52:09',1),(5,5,'1','1','1',1,'1',1,'2013-12-16 16:52:06',1,'2013-12-16 16:52:09',1);

/*Table structure for table `t_ry_zyryczxm` */

DROP TABLE IF EXISTS `t_ry_zyryczxm`;

CREATE TABLE `t_ry_zyryczxm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zsid` int(11) NOT NULL,
  `zyxmdm` varchar(100) COLLATE utf8_bin NOT NULL,
  `pzrq` datetime NOT NULL,
  `yxrq` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_82` (`zsid`) USING BTREE,
  KEY `FK_Reference_83` (`zyxmdm`) USING BTREE,
  CONSTRAINT `FK_Reference_82` FOREIGN KEY (`zsid`) REFERENCES `t_ry_zyrycz` (`id`),
  CONSTRAINT `FK_Reference_83` FOREIGN KEY (`zyxmdm`) REFERENCES `t_xt_xmlx` (`zyxmdm`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_ry_zyryczxm` */

insert  into `t_ry_zyryczxm`(`id`,`zsid`,`zyxmdm`,`pzrq`,`yxrq`) values (1,1,'1','2013-12-16 16:54:09','2013-12-16 16:54:11');

/*Table structure for table `t_ry_zyryczxmwgjl` */

DROP TABLE IF EXISTS `t_ry_zyryczxmwgjl`;

CREATE TABLE `t_ry_zyryczxmwgjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xm_id` int(11) NOT NULL,
  `wgms` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_157` (`xm_id`) USING BTREE,
  CONSTRAINT `FK_Reference_157` FOREIGN KEY (`xm_id`) REFERENCES `t_ry_zyryczxm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_ry_zyryczxmwgjl` */

/*Table structure for table `t_sb_cnjdcl` */

DROP TABLE IF EXISTS `t_sb_cnjdcl`;

CREATE TABLE `t_sb_cnjdcl` (
  `id` int(11) NOT NULL,
  `zgss` float DEFAULT NULL,
  `edzz` float DEFAULT NULL,
  `dlfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `cphm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qudong` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `rlzl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `kczl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yszd` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sftgc` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `dfbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fdjbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qtzgss` float DEFAULT NULL,
  `fdjxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `djccbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jssdy` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `rylx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cllx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxjzt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_1671` FOREIGN KEY (`id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_cnjdcl` */

insert  into `t_sb_cnjdcl`(`id`,`zgss`,`edzz`,`dlfs`,`cphm`,`qudong`,`rlzl`,`kczl`,`yszd`,`sftgc`,`dfbh`,`fdjbh`,`qtzgss`,`fdjxh`,`djccbh`,`jssdy`,`rylx`,`sbxh`,`cllx`,`sjgf`,`zzgf`,`sbxjzt`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (5000,5.1,3.5,'0','5000-001','驱动-001','0','1.2','0',0,'100-001','MSB_001',128.9,'XT_001','DDJBH_001','张三1号','#97','设备型号_001','车辆类型_001','设计规范_001','制造规范_001','0',1,'2013-12-12 16:27:00',3,'2013-12-16 19:26:51',0),(5001,5.2333,3.63333,NULL,'5000-002','驱动-002333',NULL,'1.3333',NULL,NULL,'100-002','MSB_002',128.1,'XT_002','DDJBH_002','张三2号','#98','设备型号_002',NULL,'设计规范_002','制造规范_002','1',2,'2013-12-12 16:27:00',3,'2013-12-17 17:36:32',1),(5002,5.3,3.7,'0','5000-003','驱动-003','2','1.4','2',0,'100-003','MSB_003',128.11,'XT_003','DDJBH_003','张三3号','#99','设备型号_003','车辆类型_003','设计规范_003','制造规范_003','0',3,'2013-12-12 16:27:00',3,'2013-12-12 16:27:00',1),(5003,5.4,3.8,'1','5000-004','驱动-004','3','1.5','0',1,'100-004','MSB_004',128.12,'XT_004','DDJBH_004','张三4号','#100','设备型号_004','车辆类型_004','设计规范_004','制造规范_004','1',4,'2013-12-12 16:27:00',4,'2013-12-12 16:27:00',1),(5004,5.5,3.9,'0','5000-005','驱动-005','4','1.6','1',0,'100-005','MSB_005',128.13,'XT_005','DDJBH_005','张三5号','#101','设备型号_005','车辆类型_005','设计规范_005','制造规范_005','0',5,'2013-12-12 16:27:00',5,'2013-12-12 16:27:00',1),(5005,5.6,3.1,'1','5000-006','驱动-006','5','1.7','2',1,'100-006','MSB_006',128.14,'XT_006','DDJBH_006','张三6号','#102','设备型号_006','车辆类型_006','设计规范_006','制造规范_006','1',6,'2013-12-12 16:27:00',6,'2013-12-12 16:27:00',1),(5006,5.7,3.11,'0','5000-007','驱动-007','6','1.8','0',0,'100-007','MSB_007',128.15,'XT_007','DDJBH_007','张三7号','#103','设备型号_007','车辆类型_007','设计规范_007','制造规范_007','0',7,'2013-12-12 16:27:00',7,'2013-12-12 16:27:00',1),(5007,5.8,3.12,'1','5000-008','驱动-008','7','1.9','1',1,'100-008','MSB_008',128.16,'XT_008','DDJBH_008','张三8号','#104','设备型号_008','车辆类型_008','设计规范_008','制造规范_008','1',8,'2013-12-12 16:27:00',8,'2013-12-12 16:27:00',1),(5008,5.9,3.13,'0','5000-009','驱动-009','8','1.10','2',0,'100-009','MSB_009',128.17,'XT_009','DDJBH_009','张三9号','#105','设备型号_009','车辆类型_009','设计规范_009','制造规范_009','0',9,'2013-12-12 16:27:00',9,'2013-12-12 16:27:00',1),(5009,5.1,3.14,'1','5000-010','驱动-010','0','1.11','0',1,'100-010','MSB_010',128.18,'XT_010','DDJBH_010','张三10号','#106','设备型号_010','车辆类型_010','设计规范_010','制造规范_010','1',10,'2013-12-12 16:27:00',10,'2013-12-12 16:27:00',1),(5010,5.11,3.15,'0','5000-011','驱动-011','1','1.12','1',0,'100-011','MSB_011',128.19,'XT_011','DDJBH_011','张三11号','#107','设备型号_011','车辆类型_011','设计规范_011','制造规范_011','0',11,'2013-12-12 16:27:00',11,'2013-12-12 16:27:00',1),(5011,5.12,3.16,'1','5000-012','驱动-012','2','1.13','2',1,'100-012','MSB_012',128.2,'XT_012','DDJBH_012','张三12号','#108','设备型号_012','车辆类型_012','设计规范_012','制造规范_012','1',12,'2013-12-12 16:27:00',12,'2013-12-12 16:27:00',1),(5012,5.13,3.17,'0','5000-013','驱动-013','3','1.14','0',0,'100-013','MSB_013',128.21,'XT_013','DDJBH_013','张三13号','#109','设备型号_013','车辆类型_013','设计规范_013','制造规范_013','0',13,'2013-12-12 16:27:00',13,'2013-12-12 16:27:00',1),(5013,5.14,3.18,'1','5000-014','驱动-014','4','1.15','1',1,'100-014','MSB_014',128.22,'XT_014','DDJBH_014','张三14号','#110','设备型号_014','车辆类型_014','设计规范_014','制造规范_014','1',14,'2013-12-12 16:27:00',14,'2013-12-12 16:27:00',1),(5014,5.15,3.19,'0','5000-015','驱动-015','5','1.16','2',0,'100-015','MSB_015',128.23,'XT_015','DDJBH_015','张三15号','#111','设备型号_015','车辆类型_015','设计规范_015','制造规范_015','0',15,'2013-12-12 16:27:00',15,'2013-12-12 16:27:00',1),(5015,5.16,3.2,'1','5000-016','驱动-016','6','1.17','0',1,'100-016','MSB_016',128.24,'XT_016','DDJBH_016','张三16号','#112','设备型号_016','车辆类型_016','设计规范_016','制造规范_016','1',16,'2013-12-12 16:27:00',16,'2013-12-12 16:27:00',1),(5016,5.17,3.21,'0','5000-017','驱动-017','7','1.18','1',0,'100-017','MSB_017',128.25,'XT_017','DDJBH_017','张三17号','#113','设备型号_017','车辆类型_017','设计规范_017','制造规范_017','0',17,'2013-12-12 16:27:00',17,'2013-12-12 16:27:00',1),(5017,5.18,3.22,'1','5000-018','驱动-018','8','1.19','2',1,'100-018','MSB_018',128.26,'XT_018','DDJBH_018','张三18号','#114','设备型号_018','车辆类型_018','设计规范_018','制造规范_018','1',18,'2013-12-12 16:27:00',18,'2013-12-12 16:27:00',1),(5018,5.19,3.23,'0','5000-019','驱动-019','0','1.20','0',0,'100-019','MSB_019',128.27,'XT_019','DDJBH_019','张三19号','#115','设备型号_019','车辆类型_019','设计规范_019','制造规范_019','0',19,'2013-12-12 16:27:00',19,'2013-12-12 16:27:00',1),(5019,5.2,3.24,'1','5000-020','驱动-020','1','1.21','1',1,'100-020','MSB_020',128.28,'XT_020','DDJBH_020','张三20号','#116','设备型号_020','车辆类型_020','设计规范_020','制造规范_020','1',20,'2013-12-12 16:27:00',20,'2013-12-12 16:27:00',1),(5020,5.21,3.25,'0','5000-021','驱动-021','2','1.22','2',0,'100-021','MSB_021',128.29,'XT_021','DDJBH_021','张三21号','#117','设备型号_021','车辆类型_021','设计规范_021','制造规范_021','0',21,'2013-12-12 16:27:00',21,'2013-12-12 16:27:00',1),(5021,5.22,3.26,'1','5000-022','驱动-022','3','1.23','0',1,'100-022','MSB_022',128.3,'XT_022','DDJBH_022','张三22号','#118','设备型号_022','车辆类型_022','设计规范_022','制造规范_022','1',22,'2013-12-12 16:27:00',22,'2013-12-12 16:27:00',1),(5022,5.23,3.27,'0','5000-023','驱动-023','4','1.24','1',0,'100-023','MSB_023',128.31,'XT_023','DDJBH_023','张三23号','#119','设备型号_023','车辆类型_023','设计规范_023','制造规范_023','0',23,'2013-12-12 16:27:00',23,'2013-12-12 16:27:00',1),(5023,5.24,3.28,'1','5000-024','驱动-024','5','1.25','2',1,'100-024','MSB_024',128.32,'XT_024','DDJBH_024','张三24号','#120','设备型号_024','车辆类型_024','设计规范_024','制造规范_024','1',24,'2013-12-12 16:27:00',24,'2013-12-12 16:27:00',1),(5024,5.25,3.29,'0','5000-025','驱动-025','6','1.26','0',0,'100-025','MSB_025',128.33,'XT_025','DDJBH_025','张三25号','#121','设备型号_025','车辆类型_025','设计规范_025','制造规范_025','0',25,'2013-12-12 16:27:00',25,'2013-12-12 16:27:00',1),(5025,5.26,3.3,'1','5000-026','驱动-026','7','1.27','1',1,'100-026','MSB_026',128.34,'XT_026','DDJBH_026','张三26号','#122','设备型号_026','车辆类型_026','设计规范_026','制造规范_026','1',26,'2013-12-12 16:27:00',26,'2013-12-12 16:27:00',1),(5026,5.27,3.31,'0','5000-027','驱动-027','8','1.28','2',0,'100-027','MSB_027',128.35,'XT_027','DDJBH_027','张三27号','#123','设备型号_027','车辆类型_027','设计规范_027','制造规范_027','0',27,'2013-12-12 16:27:00',27,'2013-12-12 16:27:00',1),(5027,5.28,3.32,'1','5000-028','驱动-028','0','1.29','0',1,'100-028','MSB_028',128.36,'XT_028','DDJBH_028','张三28号','#124','设备型号_028','车辆类型_028','设计规范_028','制造规范_028','1',28,'2013-12-12 16:27:00',28,'2013-12-12 16:27:00',1),(5028,5.29,3.33,'0','5000-029','驱动-029','1','1.30','1',0,'100-029','MSB_029',128.37,'XT_029','DDJBH_029','张三29号','#125','设备型号_029','车辆类型_029','设计规范_029','制造规范_029','0',29,'2013-12-12 16:27:00',29,'2013-12-12 16:27:00',1),(5029,5.3,3.34,'1','5000-030','驱动-030','2','1.31','2',1,'100-030','MSB_030',128.38,'XT_030','DDJBH_030','张三30号','#126','设备型号_030','车辆类型_030','设计规范_030','制造规范_030','1',30,'2013-12-12 16:27:00',30,'2013-12-12 16:27:00',1),(5030,5.31,3.35,'0','5000-031','驱动-031','3','1.32','0',0,'100-031','MSB_031',128.39,'XT_031','DDJBH_031','张三31号','#127','设备型号_031','车辆类型_031','设计规范_031','制造规范_031','0',31,'2013-12-12 16:27:00',31,'2013-12-12 16:27:00',1),(5031,5.32,3.36,'1','5000-032','驱动-032','4','1.33','1',1,'100-032','MSB_032',128.4,'XT_032','DDJBH_032','张三32号','#128','设备型号_032','车辆类型_032','设计规范_032','制造规范_032','1',32,'2013-12-12 16:27:00',32,'2013-12-12 16:27:00',1),(5032,5.33,3.37,'0','5000-033','驱动-033','5','1.34','2',0,'100-033','MSB_033',128.41,'XT_033','DDJBH_033','张三33号','#129','设备型号_033','车辆类型_033','设计规范_033','制造规范_033','0',33,'2013-12-12 16:27:00',33,'2013-12-12 16:27:00',1);

/*Table structure for table `t_sb_cnjdcl_bg` */

DROP TABLE IF EXISTS `t_sb_cnjdcl_bg`;

CREATE TABLE `t_sb_cnjdcl_bg` (
  `ID` int(11) NOT NULL,
  `zgss` float DEFAULT NULL,
  `edzz` float DEFAULT NULL,
  `dlfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `cphm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qudong` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `rlzl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `kczl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yszd` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sftgc` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `dfbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fdjbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qtzgss` float DEFAULT NULL,
  `fdjxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `djccbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jssdy` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `rylx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cllx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxjzt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Reference_167` FOREIGN KEY (`ID`) REFERENCES `t_sb_sbxx_bg` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_cnjdcl_bg` */

insert  into `t_sb_cnjdcl_bg`(`ID`,`zgss`,`edzz`,`dlfs`,`cphm`,`qudong`,`rlzl`,`kczl`,`yszd`,`sftgc`,`dfbh`,`fdjbh`,`qtzgss`,`fdjxh`,`djccbh`,`jssdy`,`rylx`,`sbxh`,`cllx`,`sjgf`,`zzgf`,`sbxjzt`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (5000,5.1,3.5,'0','5000-001','驱动-001','0','1.2','0',0,'100-001','MSB_001',128.9,'XT_001','DDJBH_001','张三1号','#97','设备型号_001','车辆类型_001','设计规范_001','制造规范_001','0',1,'2013-12-12 16:27:00',3,'2013-12-16 19:26:51',0),(5001,5.2333,3.63333,NULL,'5000-002','驱动-002333',NULL,'1.3333',NULL,NULL,'100-002','MSB_002',128.1,'XT_002','DDJBH_002','张三2号','#98','设备型号_002',NULL,'设计规范_002','制造规范_002','1',2,'2013-12-12 16:27:00',3,'2013-12-17 17:36:30',1),(5002,5.3,3.7,'0','5000-003','驱动-003','2','1.4','2',0,'100-003','MSB_003',128.11,'XT_003','DDJBH_003','张三3号','#99','设备型号_003','车辆类型_003','设计规范_003','制造规范_003','0',3,'2013-12-12 16:27:00',3,'2013-12-12 16:27:00',1),(5003,5.4,3.8,'1','5000-004','驱动-004','3','1.5','0',1,'100-004','MSB_004',128.12,'XT_004','DDJBH_004','张三4号','#100','设备型号_004','车辆类型_004','设计规范_004','制造规范_004','1',4,'2013-12-12 16:27:00',4,'2013-12-12 16:27:00',1),(5004,5.5,3.9,'0','5000-005','驱动-005','4','1.6','1',0,'100-005','MSB_005',128.13,'XT_005','DDJBH_005','张三5号','#101','设备型号_005','车辆类型_005','设计规范_005','制造规范_005','0',5,'2013-12-12 16:27:00',5,'2013-12-12 16:27:00',1),(5005,5.6,3.1,'1','5000-006','驱动-006','5','1.7','2',1,'100-006','MSB_006',128.14,'XT_006','DDJBH_006','张三6号','#102','设备型号_006','车辆类型_006','设计规范_006','制造规范_006','1',6,'2013-12-12 16:27:00',6,'2013-12-12 16:27:00',1),(5006,5.7,3.11,'0','5000-007','驱动-007','6','1.8','0',0,'100-007','MSB_007',128.15,'XT_007','DDJBH_007','张三7号','#103','设备型号_007','车辆类型_007','设计规范_007','制造规范_007','0',7,'2013-12-12 16:27:00',7,'2013-12-12 16:27:00',1),(5007,5.8,3.12,'1','5000-008','驱动-008','7','1.9','1',1,'100-008','MSB_008',128.16,'XT_008','DDJBH_008','张三8号','#104','设备型号_008','车辆类型_008','设计规范_008','制造规范_008','1',8,'2013-12-12 16:27:00',8,'2013-12-12 16:27:00',1),(5008,5.9,3.13,'0','5000-009','驱动-009','8','1.10','2',0,'100-009','MSB_009',128.17,'XT_009','DDJBH_009','张三9号','#105','设备型号_009','车辆类型_009','设计规范_009','制造规范_009','0',9,'2013-12-12 16:27:00',9,'2013-12-12 16:27:00',1),(5009,5.1,3.14,'1','5000-010','驱动-010','0','1.11','0',1,'100-010','MSB_010',128.18,'XT_010','DDJBH_010','张三10号','#106','设备型号_010','车辆类型_010','设计规范_010','制造规范_010','1',10,'2013-12-12 16:27:00',10,'2013-12-12 16:27:00',1),(5010,5.11,3.15,'0','5000-011','驱动-011','1','1.12','1',0,'100-011','MSB_011',128.19,'XT_011','DDJBH_011','张三11号','#107','设备型号_011','车辆类型_011','设计规范_011','制造规范_011','0',11,'2013-12-12 16:27:00',11,'2013-12-12 16:27:00',1),(5011,5.12,3.16,'1','5000-012','驱动-012','2','1.13','2',1,'100-012','MSB_012',128.2,'XT_012','DDJBH_012','张三12号','#108','设备型号_012','车辆类型_012','设计规范_012','制造规范_012','1',12,'2013-12-12 16:27:00',12,'2013-12-12 16:27:00',1),(5012,5.13,3.17,'0','5000-013','驱动-013','3','1.14','0',0,'100-013','MSB_013',128.21,'XT_013','DDJBH_013','张三13号','#109','设备型号_013','车辆类型_013','设计规范_013','制造规范_013','0',13,'2013-12-12 16:27:00',13,'2013-12-12 16:27:00',1),(5013,5.14,3.18,'1','5000-014','驱动-014','4','1.15','1',1,'100-014','MSB_014',128.22,'XT_014','DDJBH_014','张三14号','#110','设备型号_014','车辆类型_014','设计规范_014','制造规范_014','1',14,'2013-12-12 16:27:00',14,'2013-12-12 16:27:00',1),(5014,5.15,3.19,'0','5000-015','驱动-015','5','1.16','2',0,'100-015','MSB_015',128.23,'XT_015','DDJBH_015','张三15号','#111','设备型号_015','车辆类型_015','设计规范_015','制造规范_015','0',15,'2013-12-12 16:27:00',15,'2013-12-12 16:27:00',1),(5015,5.16,3.2,'1','5000-016','驱动-016','6','1.17','0',1,'100-016','MSB_016',128.24,'XT_016','DDJBH_016','张三16号','#112','设备型号_016','车辆类型_016','设计规范_016','制造规范_016','1',16,'2013-12-12 16:27:00',16,'2013-12-12 16:27:00',1),(5016,5.17,3.21,'0','5000-017','驱动-017','7','1.18','1',0,'100-017','MSB_017',128.25,'XT_017','DDJBH_017','张三17号','#113','设备型号_017','车辆类型_017','设计规范_017','制造规范_017','0',17,'2013-12-12 16:27:00',17,'2013-12-12 16:27:00',1),(5017,5.18,3.22,'1','5000-018','驱动-018','8','1.19','2',1,'100-018','MSB_018',128.26,'XT_018','DDJBH_018','张三18号','#114','设备型号_018','车辆类型_018','设计规范_018','制造规范_018','1',18,'2013-12-12 16:27:00',18,'2013-12-12 16:27:00',1),(5018,5.19,3.23,'0','5000-019','驱动-019','0','1.20','0',0,'100-019','MSB_019',128.27,'XT_019','DDJBH_019','张三19号','#115','设备型号_019','车辆类型_019','设计规范_019','制造规范_019','0',19,'2013-12-12 16:27:00',19,'2013-12-12 16:27:00',1),(5019,5.2,3.24,'1','5000-020','驱动-020','1','1.21','1',1,'100-020','MSB_020',128.28,'XT_020','DDJBH_020','张三20号','#116','设备型号_020','车辆类型_020','设计规范_020','制造规范_020','1',20,'2013-12-12 16:27:00',20,'2013-12-12 16:27:00',1),(5020,5.21,3.25,'0','5000-021','驱动-021','2','1.22','2',0,'100-021','MSB_021',128.29,'XT_021','DDJBH_021','张三21号','#117','设备型号_021','车辆类型_021','设计规范_021','制造规范_021','0',21,'2013-12-12 16:27:00',21,'2013-12-12 16:27:00',1),(5021,5.22,3.26,'1','5000-022','驱动-022','3','1.23','0',1,'100-022','MSB_022',128.3,'XT_022','DDJBH_022','张三22号','#118','设备型号_022','车辆类型_022','设计规范_022','制造规范_022','1',22,'2013-12-12 16:27:00',22,'2013-12-12 16:27:00',1),(5022,5.23,3.27,'0','5000-023','驱动-023','4','1.24','1',0,'100-023','MSB_023',128.31,'XT_023','DDJBH_023','张三23号','#119','设备型号_023','车辆类型_023','设计规范_023','制造规范_023','0',23,'2013-12-12 16:27:00',23,'2013-12-12 16:27:00',1),(5023,5.24,3.28,'1','5000-024','驱动-024','5','1.25','2',1,'100-024','MSB_024',128.32,'XT_024','DDJBH_024','张三24号','#120','设备型号_024','车辆类型_024','设计规范_024','制造规范_024','1',24,'2013-12-12 16:27:00',24,'2013-12-12 16:27:00',1),(5024,5.25,3.29,'0','5000-025','驱动-025','6','1.26','0',0,'100-025','MSB_025',128.33,'XT_025','DDJBH_025','张三25号','#121','设备型号_025','车辆类型_025','设计规范_025','制造规范_025','0',25,'2013-12-12 16:27:00',25,'2013-12-12 16:27:00',1),(5025,5.26,3.3,'1','5000-026','驱动-026','7','1.27','1',1,'100-026','MSB_026',128.34,'XT_026','DDJBH_026','张三26号','#122','设备型号_026','车辆类型_026','设计规范_026','制造规范_026','1',26,'2013-12-12 16:27:00',26,'2013-12-12 16:27:00',1),(5026,5.27,3.31,'0','5000-027','驱动-027','8','1.28','2',0,'100-027','MSB_027',128.35,'XT_027','DDJBH_027','张三27号','#123','设备型号_027','车辆类型_027','设计规范_027','制造规范_027','0',27,'2013-12-12 16:27:00',27,'2013-12-12 16:27:00',1),(5027,5.28,3.32,'1','5000-028','驱动-028','0','1.29','0',1,'100-028','MSB_028',128.36,'XT_028','DDJBH_028','张三28号','#124','设备型号_028','车辆类型_028','设计规范_028','制造规范_028','1',28,'2013-12-12 16:27:00',28,'2013-12-12 16:27:00',1),(5028,5.29,3.33,'0','5000-029','驱动-029','1','1.30','1',0,'100-029','MSB_029',128.37,'XT_029','DDJBH_029','张三29号','#125','设备型号_029','车辆类型_029','设计规范_029','制造规范_029','0',29,'2013-12-12 16:27:00',29,'2013-12-12 16:27:00',1),(5029,5.3,3.34,'1','5000-030','驱动-030','2','1.31','2',1,'100-030','MSB_030',128.38,'XT_030','DDJBH_030','张三30号','#126','设备型号_030','车辆类型_030','设计规范_030','制造规范_030','1',30,'2013-12-12 16:27:00',30,'2013-12-12 16:27:00',1),(5030,5.31,3.35,'0','5000-031','驱动-031','3','1.32','0',0,'100-031','MSB_031',128.39,'XT_031','DDJBH_031','张三31号','#127','设备型号_031','车辆类型_031','设计规范_031','制造规范_031','0',31,'2013-12-12 16:27:00',31,'2013-12-12 16:27:00',1),(5031,5.32,3.36,'1','5000-032','驱动-032','4','1.33','1',1,'100-032','MSB_032',128.4,'XT_032','DDJBH_032','张三32号','#128','设备型号_032','车辆类型_032','设计规范_032','制造规范_032','1',32,'2013-12-12 16:27:00',32,'2013-12-12 16:27:00',1),(5032,5.33,3.37,'0','5000-033','驱动-033','5','1.34','2',0,'100-033','MSB_033',128.41,'XT_033','DDJBH_033','张三33号','#129','设备型号_033','车辆类型_033','设计规范_033','制造规范_033','0',33,'2013-12-12 16:27:00',33,'2013-12-12 16:27:00',1);

/*Table structure for table `t_sb_dianti` */

DROP TABLE IF EXISTS `t_sb_dianti`;

CREATE TABLE `t_sb_dianti` (
  `id` int(11) NOT NULL,
  `yxsd` float DEFAULT NULL,
  `edzl` float DEFAULT NULL,
  `dtcs` int(11) DEFAULT NULL,
  `dtzs` int(11) DEFAULT NULL,
  `dtcms` int(11) DEFAULT NULL,
  `dtjms` int(11) DEFAULT NULL,
  `kzfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jiaoxiangchang` float DEFAULT NULL,
  `jiaoxiangkuan` float DEFAULT NULL,
  `jiaoxianggao` float DEFAULT NULL,
  `kmfx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `tsgd` float DEFAULT NULL,
  `tjkd` float DEFAULT NULL,
  `ssnl` float DEFAULT NULL,
  `qxjd` float DEFAULT NULL,
  `djgl` float DEFAULT NULL,
  `syqycd` float DEFAULT NULL,
  `yydtxxsd` float DEFAULT NULL,
  `ygsl` int(11) DEFAULT NULL,
  `dsxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ygxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ckrs` int(11) DEFAULT NULL,
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzbz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kzgwz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kzzz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `yyjwz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `aqms` int(11) DEFAULT NULL,
  `kmfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `tdfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xgzz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xgzzzj` float DEFAULT NULL,
  `xgzzsl` float DEFAULT NULL,
  `yylzj` float DEFAULT NULL,
  `yyxs` float DEFAULT NULL,
  `djxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dcgd` float DEFAULT NULL,
  `dksd` float DEFAULT NULL,
  `jxgj` float DEFAULT NULL,
  `dzgj` float DEFAULT NULL,
  `dzdgxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xfgn` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xsqxyrq` datetime DEFAULT NULL,
  `dcyhcqjzdczjl` float DEFAULT NULL,
  `jfxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ztjgxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sfzzdt` int(11) NOT NULL COMMENT '0 否 1是',
  `sfjxzh` int(11) NOT NULL COMMENT '0 否 1是',
  `fbdj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fbxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yxff` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jifangchang` float DEFAULT NULL,
  `jifangg` float DEFAULT NULL,
  `jifangk` float DEFAULT NULL,
  `phxs` float DEFAULT NULL,
  `dzksl` float DEFAULT NULL,
  `tdgl` float DEFAULT NULL,
  `yysrsfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bcfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `eddy` float DEFAULT NULL,
  `eddl` float DEFAULT NULL,
  `beilv` float DEFAULT NULL,
  `zszj` float DEFAULT NULL,
  `yyxtgzyl` float DEFAULT NULL,
  `zssl` float DEFAULT NULL,
  `yxrl` float DEFAULT NULL,
  `gzll` float DEFAULT NULL,
  `lqfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yxyyph` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xsqdfdzsd` float DEFAULT NULL,
  `zdfthrxdlx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zdfthrxdsyhj` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_1631` FOREIGN KEY (`id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_dianti` */

insert  into `t_sb_dianti`(`id`,`yxsd`,`edzl`,`dtcs`,`dtzs`,`dtcms`,`dtjms`,`kzfs`,`jiaoxiangchang`,`jiaoxiangkuan`,`jiaoxianggao`,`kmfx`,`tsgd`,`tjkd`,`ssnl`,`qxjd`,`djgl`,`syqycd`,`yydtxxsd`,`ygsl`,`dsxs`,`ygxs`,`ckrs`,`sjgf`,`zzbz`,`kzgwz`,`kzzz`,`yyjwz`,`aqms`,`kmfs`,`tdfs`,`xgzz`,`xgzzzj`,`xgzzsl`,`yylzj`,`yyxs`,`djxh`,`dcgd`,`dksd`,`jxgj`,`dzgj`,`dzdgxs`,`xfgn`,`xsqxyrq`,`dcyhcqjzdczjl`,`jfxs`,`ztjgxs`,`sfzzdt`,`sfjxzh`,`fbdj`,`fbxs`,`yxff`,`jifangchang`,`jifangg`,`jifangk`,`phxs`,`dzksl`,`tdgl`,`yysrsfs`,`bcfs`,`eddy`,`eddl`,`beilv`,`zszj`,`yyxtgzyl`,`zssl`,`yxrl`,`gzll`,`lqfs`,`yxyyph`,`xsqdfdzsd`,`zdfthrxdlx`,`zdfthrxdsyhj`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,1,1,1,1,1,'1',1,1,1,'1',1,1,1,1,1,1,1,1,'1','1',1,'1','1','1','1','1',1,'1','1','1',1,1,1,1,'1',1,1,1,1,'1','1','2013-12-17 16:19:56',1,'1','1',1,1,'1','1','1',1,1,1,1,1,1,'1','1',1,1,1,1,1,1,1,1,'1','1',1,'1','1',1,'2013-12-11 16:20:36',1,'2013-12-12 16:20:45',1),(2,2,1,1,1,1,1,'1',1,1,1,'1',1,1,1,1,1,1,1,1,'1','1',1,'1','1','1','1','1',1,'1','1','1',1,1,1,1,'1',1,1,1,1,'1','1','2013-12-17 16:19:56',1,'1','1',1,1,'1','1','1',1,1,1,1,1,1,'1','1',1,1,1,1,1,1,1,1,'1','1',1,'1','1',1,'2013-12-11 16:20:36',1,'2013-12-12 16:20:45',1),(3,3,1,1,1,1,1,'1',1,1,1,'1',1,1,1,1,1,1,1,1,'1','1',1,'1','1','1','1','1',1,'1','1','1',1,1,1,1,'1',1,1,1,1,'1','1','2013-12-17 16:19:56',1,'1','1',1,1,'1','1','1',1,1,1,1,1,1,'1','1',1,1,1,1,1,1,1,1,'1','1',1,'1','1',1,'2013-12-11 16:20:36',1,'2013-12-12 16:20:45',1),(100,1,2,3,4,5,6,'1',7,8,9,'1',10,11,12,13,14,14,16,17,'1','1',18,'19','20','21','1','22',23,'1','1','1',24,25,26,27,'28',29,30,31,32,'1','1','2013-12-16 00:00:00',34,'35','36',1,1,'37','38','39',40,41,42,43,44,45,'46','1',47,48,49,50,51,52,53,54,'55','56',57,'1','1',3,'2013-12-16 17:07:44',3,'2013-12-16 18:42:19',1);

/*Table structure for table `t_sb_dianti_bg` */

DROP TABLE IF EXISTS `t_sb_dianti_bg`;

CREATE TABLE `t_sb_dianti_bg` (
  `ID` int(11) NOT NULL,
  `yxsd` float DEFAULT NULL,
  `edzl` float DEFAULT NULL,
  `dtcs` int(11) DEFAULT NULL,
  `dtzs` int(11) DEFAULT NULL,
  `dtcms` int(11) DEFAULT NULL,
  `dtjms` int(11) DEFAULT NULL,
  `kzfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jiaoxiangchang` float DEFAULT NULL,
  `jiaoxiangkuan` float DEFAULT NULL,
  `jiaoxianggao` float DEFAULT NULL,
  `kmfx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `tsgd` float DEFAULT NULL,
  `tjkd` float DEFAULT NULL,
  `ssnl` float DEFAULT NULL,
  `qxjd` float DEFAULT NULL,
  `djgl` float DEFAULT NULL,
  `syqycd` float DEFAULT NULL,
  `yydtxxsd` float DEFAULT NULL,
  `ygsl` int(11) DEFAULT NULL,
  `dsxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ygxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ckrs` int(11) DEFAULT NULL,
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzbz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kzgwz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kzzz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `yyjwz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `aqms` int(11) DEFAULT NULL,
  `kmfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `tdfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xgzz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xgzzzj` float DEFAULT NULL,
  `xgzzsl` float DEFAULT NULL,
  `yylzj` float DEFAULT NULL,
  `yyxs` float DEFAULT NULL,
  `djxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dcgd` float DEFAULT NULL,
  `dksd` float DEFAULT NULL,
  `jxgj` float DEFAULT NULL,
  `dzgj` float DEFAULT NULL,
  `dzdgxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xfgn` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xsqxyrq` datetime DEFAULT NULL,
  `dcyhcqjzdczjl` float DEFAULT NULL,
  `jfxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ztjgxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sfzzdt` int(11) NOT NULL COMMENT '0 否 1是',
  `sfjxzh` int(11) NOT NULL COMMENT '0 否 1是',
  `fbdj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fbxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yxff` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jifangchang` float DEFAULT NULL,
  `jifangg` float DEFAULT NULL,
  `jifangk` float DEFAULT NULL,
  `phxs` float DEFAULT NULL,
  `dzksl` float DEFAULT NULL,
  `tdgl` float DEFAULT NULL,
  `yysrsfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bcfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `eddy` float DEFAULT NULL,
  `eddl` float DEFAULT NULL,
  `beilv` float DEFAULT NULL,
  `zszj` float DEFAULT NULL,
  `yyxtgzyl` float DEFAULT NULL,
  `zssl` float DEFAULT NULL,
  `yxrl` float DEFAULT NULL,
  `gzll` float DEFAULT NULL,
  `lqfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yxyyph` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xsqdfdzsd` float DEFAULT NULL,
  `zdfthrxdlx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zdfthrxdsyhj` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Reference_163` FOREIGN KEY (`ID`) REFERENCES `t_sb_sbxx_bg` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_dianti_bg` */

insert  into `t_sb_dianti_bg`(`ID`,`yxsd`,`edzl`,`dtcs`,`dtzs`,`dtcms`,`dtjms`,`kzfs`,`jiaoxiangchang`,`jiaoxiangkuan`,`jiaoxianggao`,`kmfx`,`tsgd`,`tjkd`,`ssnl`,`qxjd`,`djgl`,`syqycd`,`yydtxxsd`,`ygsl`,`dsxs`,`ygxs`,`ckrs`,`sjgf`,`zzbz`,`kzgwz`,`kzzz`,`yyjwz`,`aqms`,`kmfs`,`tdfs`,`xgzz`,`xgzzzj`,`xgzzsl`,`yylzj`,`yyxs`,`djxh`,`dcgd`,`dksd`,`jxgj`,`dzgj`,`dzdgxs`,`xfgn`,`xsqxyrq`,`dcyhcqjzdczjl`,`jfxs`,`ztjgxs`,`sfzzdt`,`sfjxzh`,`fbdj`,`fbxs`,`yxff`,`jifangchang`,`jifangg`,`jifangk`,`phxs`,`dzksl`,`tdgl`,`yysrsfs`,`bcfs`,`eddy`,`eddl`,`beilv`,`zszj`,`yyxtgzyl`,`zssl`,`yxrl`,`gzll`,`lqfs`,`yxyyph`,`xsqdfdzsd`,`zdfthrxdlx`,`zdfthrxdsyhj`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (100,1,2,3,4,5,6,'1',7,8,9,'1',10,11,12,13,14,14,16,17,'1','1',18,'19','20','21','1','22',23,'1','1','1',24,25,26,27,'28',29,30,31,32,'1','1','2013-12-16 00:00:00',34,'35','36',1,1,'37','38','39',40,41,42,43,44,45,'46','1',47,48,49,50,51,52,53,54,'55','56',57,'1','1',58,'2013-12-16 00:00:00',3,'2013-12-16 18:42:19',1),(5033,1,2,3,4,5,6,'1',7,8,9,'1',10,11,12,13,14,14,16,17,'1','1',18,'19','20','21','1','22',23,'1','1','1',24,25,26,27,'28',29,30,31,32,'1','1','2013-12-16 00:00:00',34,'35','36',1,1,'37','38','39',40,41,42,43,44,45,'46','1',47,48,49,50,51,52,53,54,'55','56',57,'1','1',58,'2013-12-16 00:00:00',3,'2013-12-16 18:42:19',1);

/*Table structure for table `t_sb_guolu` */

DROP TABLE IF EXISTS `t_sb_guolu`;

CREATE TABLE `t_sb_guolu` (
  `id` int(11) NOT NULL,
  `gljgxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `smqjgxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kqyrqjgxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `glflx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `edzfl` float DEFAULT NULL,
  `gtgzyl` float DEFAULT NULL,
  `edrgl` float DEFAULT NULL,
  `edyl` float DEFAULT NULL,
  `edwd` float DEFAULT NULL,
  `grqckyl` float DEFAULT NULL,
  `grqckwd` float DEFAULT NULL,
  `sjyl` float DEFAULT NULL,
  `zrzqll` float DEFAULT NULL,
  `zrqrkyl` float DEFAULT NULL,
  `zrqrkwd` float DEFAULT NULL,
  `zrqckyl` float DEFAULT NULL,
  `zrqckwd` float DEFAULT NULL,
  `sjrxl` float DEFAULT NULL,
  `jsyl` float DEFAULT NULL,
  `jswd` float DEFAULT NULL,
  `zlglqdyl` float DEFAULT NULL,
  `zlglddll` float DEFAULT NULL,
  `jrfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `rlzl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `rsfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sclfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `cyfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `czfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ccff` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sxxfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `rsqbzfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjrlkrjhff` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjyyjdwfrz` float DEFAULT NULL,
  `sjyyjdwfrzdw` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `bjsclfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `grzqtwfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `qsflfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `gzyl` float DEFAULT NULL,
  `gzwd` float DEFAULT NULL,
  `yxgzyl` float DEFAULT NULL,
  `yxgzwd` float DEFAULT NULL,
  `cswd` float DEFAULT NULL,
  `hswd` float DEFAULT NULL,
  `xthrwd` float DEFAULT NULL,
  `nysyyl` float DEFAULT NULL,
  `rssb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yjrztph` float DEFAULT NULL,
  `syzl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjbz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxjzk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `crxt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `grqjwfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `qjxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sclsb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gnclyj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qylqq` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zqlns` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `bscl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `lscl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `njscl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jsxt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `srj` float DEFAULT NULL,
  `grq` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `glczrysl` int(11) DEFAULT NULL,
  `glsclrysl` int(11) DEFAULT NULL,
  `azjjjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `azjjjianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjbgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjscjyrq` datetime DEFAULT NULL,
  `azjjjyrq` datetime DEFAULT NULL,
  `azjjxcjyrq` datetime DEFAULT NULL,
  `azjjjcjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `azjjsbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbjyjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `wbjyjianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbjybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbjyscjyrq` datetime DEFAULT NULL,
  `wbjyjyrq` datetime DEFAULT NULL,
  `wbjyxcjyrq` datetime DEFAULT NULL,
  `wbjyjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `wbjysbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbjyglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `syjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `syjianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `syscjyrq` datetime DEFAULT NULL,
  `syjyrq` datetime DEFAULT NULL,
  `syxcjyrq` datetime DEFAULT NULL,
  `syjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sysbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `syglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `aqfjyqk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `glszqk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_171` FOREIGN KEY (`id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_guolu` */

insert  into `t_sb_guolu`(`id`,`gljgxs`,`smqjgxs`,`kqyrqjgxs`,`glflx`,`edzfl`,`gtgzyl`,`edrgl`,`edyl`,`edwd`,`grqckyl`,`grqckwd`,`sjyl`,`zrzqll`,`zrqrkyl`,`zrqrkwd`,`zrqckyl`,`zrqckwd`,`sjrxl`,`jsyl`,`jswd`,`zlglqdyl`,`zlglddll`,`jrfs`,`rlzl`,`rsfs`,`sclfs`,`cyfs`,`czfs`,`ccff`,`sxxfs`,`rsqbzfs`,`sjrlkrjhff`,`sjyyjdwfrz`,`sjyyjdwfrzdw`,`bjsclfs`,`grzqtwfs`,`qsflfs`,`gzyl`,`gzwd`,`yxgzyl`,`yxgzwd`,`cswd`,`hswd`,`xthrwd`,`nysyyl`,`rssb`,`yjrztph`,`syzl`,`sjgf`,`zzgf`,`sjbz`,`sbxjzk`,`crxt`,`grqjwfs`,`qjxs`,`sclsb`,`gnclyj`,`qylqq`,`zqlns`,`bscl`,`lscl`,`njscl`,`jsxt`,`srj`,`grq`,`glczrysl`,`glsclrysl`,`azjjjybm`,`azjjjianyanyuan`,`azjjbgsbh`,`azjjscjyrq`,`azjjjyrq`,`azjjxcjyrq`,`azjjjcjl`,`azjjsbwt`,`azjjglwt`,`wbjyjybm`,`wbjyjianyanyuan`,`wbjybgsbh`,`wbjyscjyrq`,`wbjyjyrq`,`wbjyxcjyrq`,`wbjyjyjl`,`wbjysbwt`,`wbjyglwt`,`syjybm`,`syjianyanyuan`,`sybgsbh`,`syscjyrq`,`syjyrq`,`syxcjyrq`,`syjyjl`,`sysbwt`,`syglwt`,`aqfjyqk`,`glszqk`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (5201,'1','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1','1','1',1,'1','1','1','1',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-16 18:22:41',1),(5202,'1','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1','1','1',1,'1','1','1','1',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-16 18:22:41',0),(5203,'1','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1','1','1',1,'1','1','1','1',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-16 18:22:41',1),(5204,'1','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1','1','1',1,'1','1','1','1',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-16 18:22:41',0),(5205,'1','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1','1','1',1,'1','1','1','1',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-16 18:22:41',0);

/*Table structure for table `t_sb_guolu_bg` */

DROP TABLE IF EXISTS `t_sb_guolu_bg`;

CREATE TABLE `t_sb_guolu_bg` (
  `ID` int(11) NOT NULL,
  `gljgxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `smqjgxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kqyrqjgxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `glflx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `edzfl` float DEFAULT NULL,
  `gtgzyl` float DEFAULT NULL,
  `edrgl` float DEFAULT NULL,
  `edyl` float DEFAULT NULL,
  `edwd` float DEFAULT NULL,
  `grqckyl` float DEFAULT NULL,
  `grqckwd` float DEFAULT NULL,
  `sjyl` float DEFAULT NULL,
  `zrzqll` float DEFAULT NULL,
  `zrqrkyl` float DEFAULT NULL,
  `zrqrkwd` float DEFAULT NULL,
  `zrqckyl` float DEFAULT NULL,
  `zrqckwd` float DEFAULT NULL,
  `sjrxl` float DEFAULT NULL,
  `jsyl` float DEFAULT NULL,
  `jswd` float DEFAULT NULL,
  `zlglqdyl` float DEFAULT NULL,
  `zlglddll` float DEFAULT NULL,
  `jrfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `rlzl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `rsfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sclfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `cyfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `czfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ccff` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sxxfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `rsqbzfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjrlkrjhff` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjyyjdwfrz` float DEFAULT NULL,
  `sjyyjdwfrzdw` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `bjsclfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `grzqtwfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `qsflfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `gzyl` float DEFAULT NULL,
  `gzwd` float DEFAULT NULL,
  `yxgzyl` float DEFAULT NULL,
  `yxgzwd` float DEFAULT NULL,
  `cswd` float DEFAULT NULL,
  `hswd` float DEFAULT NULL,
  `xthrwd` float DEFAULT NULL,
  `nysyyl` float DEFAULT NULL,
  `rssb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yjrztph` float DEFAULT NULL,
  `syzl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjbz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxjzk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `crxt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `grqjwfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `qjxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sclsb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gnclyj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qylqq` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zqlns` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `bscl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `lscl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `njscl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jsxt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `srj` float DEFAULT NULL,
  `grq` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `glczrysl` int(11) DEFAULT NULL,
  `glsclrysl` int(11) DEFAULT NULL,
  `azjjjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `azjjjianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjbgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjscjyrq` datetime DEFAULT NULL,
  `azjjjyrq` datetime DEFAULT NULL,
  `azjjxcjyrq` datetime DEFAULT NULL,
  `azjjjcjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `azjjsbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbjyjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `wbjyjianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbjybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbjyscjyrq` datetime DEFAULT NULL,
  `wbjyjyrq` datetime DEFAULT NULL,
  `wbjyxcjyrq` datetime DEFAULT NULL,
  `wbjyjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `wbjysbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbjyglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `syjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `syjianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `syscjyrq` datetime DEFAULT NULL,
  `syjyrq` datetime DEFAULT NULL,
  `syxcjyrq` datetime DEFAULT NULL,
  `syjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sysbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `syglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `aqfjyqk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `glszqk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Reference_1711` FOREIGN KEY (`ID`) REFERENCES `t_sb_sbxx_bg` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_guolu_bg` */

insert  into `t_sb_guolu_bg`(`ID`,`gljgxs`,`smqjgxs`,`kqyrqjgxs`,`glflx`,`edzfl`,`gtgzyl`,`edrgl`,`edyl`,`edwd`,`grqckyl`,`grqckwd`,`sjyl`,`zrzqll`,`zrqrkyl`,`zrqrkwd`,`zrqckyl`,`zrqckwd`,`sjrxl`,`jsyl`,`jswd`,`zlglqdyl`,`zlglddll`,`jrfs`,`rlzl`,`rsfs`,`sclfs`,`cyfs`,`czfs`,`ccff`,`sxxfs`,`rsqbzfs`,`sjrlkrjhff`,`sjyyjdwfrz`,`sjyyjdwfrzdw`,`bjsclfs`,`grzqtwfs`,`qsflfs`,`gzyl`,`gzwd`,`yxgzyl`,`yxgzwd`,`cswd`,`hswd`,`xthrwd`,`nysyyl`,`rssb`,`yjrztph`,`syzl`,`sjgf`,`zzgf`,`sjbz`,`sbxjzk`,`crxt`,`grqjwfs`,`qjxs`,`sclsb`,`gnclyj`,`qylqq`,`zqlns`,`bscl`,`lscl`,`njscl`,`jsxt`,`srj`,`grq`,`glczrysl`,`glsclrysl`,`azjjjybm`,`azjjjianyanyuan`,`azjjbgsbh`,`azjjscjyrq`,`azjjjyrq`,`azjjxcjyrq`,`azjjjcjl`,`azjjsbwt`,`azjjglwt`,`wbjyjybm`,`wbjyjianyanyuan`,`wbjybgsbh`,`wbjyscjyrq`,`wbjyjyrq`,`wbjyxcjyrq`,`wbjyjyjl`,`wbjysbwt`,`wbjyglwt`,`syjybm`,`syjianyanyuan`,`sybgsbh`,`syscjyrq`,`syjyrq`,`syxcjyrq`,`syjyjl`,`sysbwt`,`syglwt`,`aqfjyqk`,`glszqk`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (5201,'','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'','','','','','','','','','1',1,'','1','','',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1',NULL,'','','','1','1','','','','','','',1,'',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-17 10:42:14',1),(5202,'','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'','','','','','','','','','1',1,'','1','','',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','','','','','1','1','','','','','','',1,'',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-17 10:42:14',0),(5203,'','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'','','','','','','','','','1',1,'','1','','',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','','','','','1','1','','','','','','',1,'',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-17 10:42:14',1),(5204,'','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'','','','','','','','','','1',1,'','1','','',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','','','','','1','1','','','','','','',1,'',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-17 10:42:14',0),(5205,'','1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'','','','','','','','','','1',1,'','1','','',1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','','','','','1','1','','','','','','',1,'',1,1,'1','1','1','2013-12-16 18:21:49','2013-12-16 18:21:52','2013-12-16 18:21:57','1','1','1','1','1','1','2013-12-16 18:22:05','2013-12-16 18:22:09','2013-12-16 18:22:13','1','1','1','1','1','1','2013-12-16 18:22:20','2013-12-16 18:22:22','2013-12-16 18:22:25','1','1','1','1','1',1,'2013-12-16 18:22:35',1,'2013-12-17 10:42:14',0);

/*Table structure for table `t_sb_kysd` */

DROP TABLE IF EXISTS `t_sb_kysd`;

CREATE TABLE `t_sb_kysd` (
  `id` int(11) NOT NULL,
  `sdxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pingju` float DEFAULT NULL,
  `gaocha` float DEFAULT NULL,
  `sudu` float DEFAULT NULL,
  `yuliang` int(11) DEFAULT NULL,
  `yunzaisuo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zjsm` int(11) DEFAULT NULL,
  `suoju` float DEFAULT NULL,
  `zhujxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xiechang` float DEFAULT NULL,
  `fjxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qdlzj` float DEFAULT NULL,
  `zhangjxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tqqlx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `djlx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dkzz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kclx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qyzj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `czzj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yxxc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sdlx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cxxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xltd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sdzz` float DEFAULT NULL,
  `sbxjzk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_1681` FOREIGN KEY (`id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_kysd` */

insert  into `t_sb_kysd`(`id`,`sdxs`,`pingju`,`gaocha`,`sudu`,`yuliang`,`yunzaisuo`,`zjsm`,`suoju`,`zhujxs`,`xiechang`,`fjxs`,`qdlzj`,`zhangjxs`,`tqqlx`,`djlx`,`dkzz`,`kclx`,`qyzj`,`czzj`,`yxxc`,`sdlx`,`cxxs`,`sjgf`,`zzgf`,`xltd`,`sdzz`,`sbxjzk`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (17,'17',17,1,17,1,'17',1,17,'1',17,'11',17,'1','17','1','11','1','1','1','1','1','1','1','1','1',1,'',1,'2013-11-20 16:42:00',3,'2013-12-17 16:25:28',1),(18,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',3,'2013-12-17 16:08:09',0),(19,'17',17,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',3,'2013-12-17 16:10:53',0),(20,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',3,'2013-12-17 15:11:20',0),(21,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(22,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(23,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(24,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(25,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(26,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(27,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(28,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(29,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(30,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(31,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(32,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(33,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(34,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(35,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(36,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(37,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(38,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(39,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(40,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(41,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(42,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(43,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(44,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(45,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(46,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(47,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1);

/*Table structure for table `t_sb_kysd_bg` */

DROP TABLE IF EXISTS `t_sb_kysd_bg`;

CREATE TABLE `t_sb_kysd_bg` (
  `ID` int(11) NOT NULL,
  `sdxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pingju` float DEFAULT NULL,
  `gaocha` float DEFAULT NULL,
  `sudu` float DEFAULT NULL,
  `yuliang` int(11) DEFAULT NULL,
  `yunzaisuo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zjsm` int(11) DEFAULT NULL,
  `suoju` float DEFAULT NULL,
  `zhujxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xiechang` float DEFAULT NULL,
  `fjxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qdlzj` float DEFAULT NULL,
  `zhangjxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tqqlx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `djlx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dkzz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kclx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qyzj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `czzj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yxxc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sdlx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cxxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xltd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sdzz` float DEFAULT NULL,
  `sbxjzk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Reference_168` FOREIGN KEY (`ID`) REFERENCES `t_sb_sbxx_bg` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_kysd_bg` */

insert  into `t_sb_kysd_bg`(`ID`,`sdxs`,`pingju`,`gaocha`,`sudu`,`yuliang`,`yunzaisuo`,`zjsm`,`suoju`,`zhujxs`,`xiechang`,`fjxs`,`qdlzj`,`zhangjxs`,`tqqlx`,`djlx`,`dkzz`,`kclx`,`qyzj`,`czzj`,`yxxc`,`sdlx`,`cxxs`,`sjgf`,`zzgf`,`xltd`,`sdzz`,`sbxjzk`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (17,'17',17,1,17,1,'17',1,17,'1',17,'11',17,'1','17','1','11','1','1','1','1','1','1','1','1','1',1,'',1,'2013-11-20 16:42:53',3,'2013-12-17 16:25:28',1),(18,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',3,'2013-12-17 16:08:09',0),(19,'17',17,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',3,'2013-12-17 16:10:53',0),(20,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',3,'2013-12-17 15:11:20',0),(21,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(22,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(23,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(24,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(25,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(26,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(27,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(28,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(29,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(30,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(31,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(32,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(33,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(34,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(35,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(36,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(37,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(38,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(39,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(40,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(41,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(42,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(43,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(44,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(45,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(46,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1),(47,'1',1,1,1,1,'1',1,1,'1',1,'11',1,'1','1','1','11','1','1','1','1','1','1','1','1','1',1,'1',1,'2013-11-20 16:42:00',1,'2013-11-20 16:42:00',1);

/*Table structure for table `t_sb_qzj` */

DROP TABLE IF EXISTS `t_sb_qzj`;

CREATE TABLE `t_sb_qzj` (
  `id` int(11) NOT NULL,
  `qzyj` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `kuadu` float DEFAULT NULL,
  `gzjb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `edqzlzg` float DEFAULT NULL,
  `zdfdqzedqzlzg` float DEFAULT NULL,
  `edqzlfg` float DEFAULT NULL,
  `zdfdqzledqzl` float DEFAULT NULL,
  `zdqzl` float DEFAULT NULL,
  `fudu` float DEFAULT NULL,
  `zdqzlj` float DEFAULT NULL,
  `sqgdzg` float DEFAULT NULL,
  `zdqzljfg` float DEFAULT NULL,
  `qsgdfg` float DEFAULT NULL,
  `xjsdzg` float DEFAULT NULL,
  `sqsdzg` float DEFAULT NULL,
  `xjsdfg` float DEFAULT NULL,
  `qssdfg` float DEFAULT NULL,
  `dcyxsd` float DEFAULT NULL,
  `xcyxsd` float DEFAULT NULL,
  `hzsd` float DEFAULT NULL,
  `bfsd` float DEFAULT NULL,
  `zdfd` float DEFAULT NULL,
  `zxfd` float DEFAULT NULL,
  `zdsqgd` float DEFAULT NULL,
  `zcazzb` float DEFAULT NULL,
  `edtssd` float DEFAULT NULL,
  `zdgzptgd` float DEFAULT NULL,
  `bwstclcc` float DEFAULT NULL,
  `bwsl` int(11) DEFAULT NULL,
  `sqsd` float DEFAULT NULL,
  `xhyxsd` float DEFAULT NULL,
  `hxydsd` float DEFAULT NULL,
  `zxydsd` float DEFAULT NULL,
  `gzhj` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `qzjzzl` float DEFAULT NULL,
  `tslj` float DEFAULT NULL,
  `gzbj` float DEFAULT NULL,
  `qssd` float DEFAULT NULL,
  `guiju` float DEFAULT NULL,
  `xzsd` float DEFAULT NULL,
  `dssd` float DEFAULT NULL,
  `bfxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jsfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ztjgxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tsxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dijxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `diaojxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tdxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dbxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qzlzzl` float DEFAULT NULL,
  `qzqflj` float DEFAULT NULL,
  `yxqzl` float DEFAULT NULL,
  `zjzgl` float DEFAULT NULL,
  `phzdzl` float DEFAULT NULL,
  `aqsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `aqsxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cenzhan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dlgzxz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `edzdzh` float DEFAULT NULL,
  `eddzsd` float DEFAULT NULL,
  `qwzz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jskj` float DEFAULT NULL,
  `zydgd` float DEFAULT NULL,
  `bfqdfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bfphfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `crkfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `czfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `hxqdfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ddfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `bjxtxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `mjxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sjqdfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjsxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xzqdzzxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xzzczzxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `tsszj` float DEFAULT NULL,
  `gdcd` float DEFAULT NULL,
  `xssd` float DEFAULT NULL,
  `jcxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxjqk` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_165` FOREIGN KEY (`id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_qzj` */

insert  into `t_sb_qzj`(`id`,`qzyj`,`kuadu`,`gzjb`,`edqzlzg`,`zdfdqzedqzlzg`,`edqzlfg`,`zdfdqzledqzl`,`zdqzl`,`fudu`,`zdqzlj`,`sqgdzg`,`zdqzljfg`,`qsgdfg`,`xjsdzg`,`sqsdzg`,`xjsdfg`,`qssdfg`,`dcyxsd`,`xcyxsd`,`hzsd`,`bfsd`,`zdfd`,`zxfd`,`zdsqgd`,`zcazzb`,`edtssd`,`zdgzptgd`,`bwstclcc`,`bwsl`,`sqsd`,`xhyxsd`,`hxydsd`,`zxydsd`,`gzhj`,`qzjzzl`,`tslj`,`gzbj`,`qssd`,`guiju`,`xzsd`,`dssd`,`bfxs`,`jsfs`,`ztjgxs`,`tsxs`,`dijxs`,`diaojxs`,`tdxs`,`dbxs`,`qzlzzl`,`qzqflj`,`yxqzl`,`zjzgl`,`phzdzl`,`aqsbh`,`aqsxh`,`cenzhan`,`dlgzxz`,`edzdzh`,`eddzsd`,`qwzz`,`jskj`,`zydgd`,`bfqdfs`,`bfphfs`,`crkfs`,`czfs`,`hxqdfs`,`ddfs`,`bjxtxs`,`mjxs`,`sjqdfs`,`sjsxs`,`xzqdzzxs`,`xzzczzxs`,`tsszj`,`gdcd`,`xssd`,`jcxs`,`sjgf`,`zzgf`,`sbxjqk`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1000,'1',1,'1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1',1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1',1,1,1,1,1,'1','1','1','1',1,1,'1',1,1,'1','1','1','1','1','1','1','1','1','1','1','1',1,1,1,'1','1','1','1',1,'2013-01-01 00:00:00',1,'2013-01-01 00:00:00',1),(1001,'1',1,'1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1',1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1',1,1,1,1,1,'1','1','1','1',1,1,'1',1,1,'1','1','1','1','1','1','1','1','1','1','1','1',1,1,1,'1','1','1','1',1,'2013-01-01 00:00:00',1,'2013-01-01 00:00:00',1),(1002,'2',2,'2',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,'2',2,2,2,2,2,2,2,'2','2','2','2','2','2','2','2',2,2,2,2,2,'2','2','2','2',2,2,'2',2,2,'2','2','2','2','2','2','2','2','2','2','2','2',2,2,2,'2','2','2','2',2,'2013-12-16 16:58:52',1,'2013-12-16 17:08:55',0);

/*Table structure for table `t_sb_qzj_bg` */

DROP TABLE IF EXISTS `t_sb_qzj_bg`;

CREATE TABLE `t_sb_qzj_bg` (
  `ID` int(11) NOT NULL,
  `qzyj` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `kuadu` float DEFAULT NULL,
  `gzjb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `edqzlzg` float DEFAULT NULL,
  `zdfdqzedqzlzg` float DEFAULT NULL,
  `edqzlfg` float DEFAULT NULL,
  `zdfdqzledqzl` float DEFAULT NULL,
  `zdqzl` float DEFAULT NULL,
  `fudu` float DEFAULT NULL,
  `zdqzlj` float DEFAULT NULL,
  `sqgdzg` float DEFAULT NULL,
  `zdqzljfg` float DEFAULT NULL,
  `qsgdfg` float DEFAULT NULL,
  `xjsdzg` float DEFAULT NULL,
  `sqsdzg` float DEFAULT NULL,
  `xjsdfg` float DEFAULT NULL,
  `qssdfg` float DEFAULT NULL,
  `dcyxsd` float DEFAULT NULL,
  `xcyxsd` float DEFAULT NULL,
  `hzsd` float DEFAULT NULL,
  `bfsd` float DEFAULT NULL,
  `zdfd` float DEFAULT NULL,
  `zxfd` float DEFAULT NULL,
  `zdsqgd` float DEFAULT NULL,
  `zcazzb` float DEFAULT NULL,
  `edtssd` float DEFAULT NULL,
  `zdgzptgd` float DEFAULT NULL,
  `bwstclcc` float DEFAULT NULL,
  `bwsl` int(11) DEFAULT NULL,
  `sqsd` float DEFAULT NULL,
  `xhyxsd` float DEFAULT NULL,
  `hxydsd` float DEFAULT NULL,
  `zxydsd` float DEFAULT NULL,
  `gzhj` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `qzjzzl` float DEFAULT NULL,
  `tslj` float DEFAULT NULL,
  `gzbj` float DEFAULT NULL,
  `qssd` float DEFAULT NULL,
  `guiju` float DEFAULT NULL,
  `xzsd` float DEFAULT NULL,
  `dssd` float DEFAULT NULL,
  `bfxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jsfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ztjgxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tsxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dijxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `diaojxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tdxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dbxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qzlzzl` float DEFAULT NULL,
  `qzqflj` float DEFAULT NULL,
  `yxqzl` float DEFAULT NULL,
  `zjzgl` float DEFAULT NULL,
  `phzdzl` float DEFAULT NULL,
  `aqsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `aqsxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cenzhan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dlgzxz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `edzdzh` float DEFAULT NULL,
  `eddzsd` float DEFAULT NULL,
  `qwzz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jskj` float DEFAULT NULL,
  `zydgd` float DEFAULT NULL,
  `bfqdfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bfphfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `crkfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `czfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `hxqdfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ddfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `bjxtxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `mjxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sjqdfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjsxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xzqdzzxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xzzczzxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `tsszj` float DEFAULT NULL,
  `gdcd` float DEFAULT NULL,
  `xssd` float DEFAULT NULL,
  `jcxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxjqk` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Reference_1651` FOREIGN KEY (`ID`) REFERENCES `t_sb_sbxx_bg` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_qzj_bg` */

insert  into `t_sb_qzj_bg`(`ID`,`qzyj`,`kuadu`,`gzjb`,`edqzlzg`,`zdfdqzedqzlzg`,`edqzlfg`,`zdfdqzledqzl`,`zdqzl`,`fudu`,`zdqzlj`,`sqgdzg`,`zdqzljfg`,`qsgdfg`,`xjsdzg`,`sqsdzg`,`xjsdfg`,`qssdfg`,`dcyxsd`,`xcyxsd`,`hzsd`,`bfsd`,`zdfd`,`zxfd`,`zdsqgd`,`zcazzb`,`edtssd`,`zdgzptgd`,`bwstclcc`,`bwsl`,`sqsd`,`xhyxsd`,`hxydsd`,`zxydsd`,`gzhj`,`qzjzzl`,`tslj`,`gzbj`,`qssd`,`guiju`,`xzsd`,`dssd`,`bfxs`,`jsfs`,`ztjgxs`,`tsxs`,`dijxs`,`diaojxs`,`tdxs`,`dbxs`,`qzlzzl`,`qzqflj`,`yxqzl`,`zjzgl`,`phzdzl`,`aqsbh`,`aqsxh`,`cenzhan`,`dlgzxz`,`edzdzh`,`eddzsd`,`qwzz`,`jskj`,`zydgd`,`bfqdfs`,`bfphfs`,`crkfs`,`czfs`,`hxqdfs`,`ddfs`,`bjxtxs`,`mjxs`,`sjqdfs`,`sjsxs`,`xzqdzzxs`,`xzzczzxs`,`tsszj`,`gdcd`,`xssd`,`jcxs`,`sjgf`,`zzgf`,`sbxjqk`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1000,'1',1,'1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1',1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1',1,1,1,1,1,'1','1','1','1',1,1,'1',1,1,'1','1','1','1','1','1','1','1','1','1','1','1',1,1,1,'1','1','1','1',1,'2013-01-01 00:00:00',1,'2013-12-17 17:09:33',0),(1001,'1',1,'1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1',1,1,1,1,1,1,1,'1','1','1','1','1','1','1','1',1,1,1,1,1,'1','1','1','1',1,1,'1',1,1,'1','1','1','1','1','1','1','1','1','1','1','1',1,1,1,'1','1','1','1',1,'2013-01-01 00:00:00',1,'2013-12-17 17:09:33',0),(1002,'2',2,'2',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,'2',2,2,2,2,2,2,2,'2','2','2','2','2','2','2','2',2,2,2,2,2,'2','2','2','2',2,2,'2',2,2,'2','2','2','2','2','2','2','2','2','2','2','2',2,2,2,'2','2','2','2',2,'2013-12-16 16:58:52',1,'2013-12-16 17:08:55',0);

/*Table structure for table `t_sb_sbbg_history` */

DROP TABLE IF EXISTS `t_sb_sbbg_history`;

CREATE TABLE `t_sb_sbbg_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sbxxID2` int(11) DEFAULT NULL,
  `sbxxdfl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxxzfl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bglx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgxm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgq` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `shzt` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_sbbg_history` */

insert  into `t_sb_sbbg_history`(`ID`,`sbxxID2`,`sbxxdfl`,`sbxxzfl`,`bglx`,`bgxm`,`bgq`,`bgh`,`create_id`,`create_date`,`update_id`,`update_date`,`shzt`,`status`) values (1,1,'1','1','11','1','1','1',1,'2013-12-16 16:53:49',1,'2013-12-16 16:53:53',0,1),(2,1,'2','2','2','2','2','2',2,'2013-12-16 16:54:03',1,'2013-12-16 16:54:07',0,1),(3,1,'4','1','11','1','1','1',1,'2013-12-16 16:53:49',1,'2013-12-16 16:53:53',0,1),(4,1,'3','1','11','1','1','1',1,'2013-12-16 16:53:49',1,'2013-12-16 16:53:53',0,1),(5,1,'2','2','2','2','2','2',2,'2013-12-16 16:54:03',1,'2013-12-16 16:54:07',0,1),(6,1,'5','1','11','1','1','1',1,'2013-12-16 16:53:49',1,'2013-12-16 16:53:53',0,1),(7,1,'1','1','11','1','1','1',1,'2013-12-16 16:53:49',1,'2013-12-16 16:53:53',0,1),(8,1,'2','2','2','2','2','2',2,'2013-12-16 16:54:03',1,'2013-12-16 16:54:07',0,1),(9,1,'4','1','11','1','1','1',1,'2013-12-16 16:53:49',1,'2013-12-16 16:53:53',0,1),(10,1,'3','1','11','1','1','1',1,'2013-12-16 16:53:49',1,'2013-12-16 16:53:53',0,1),(11,1,'2','2','2','2','2','2',2,'2013-12-16 16:54:03',1,'2013-12-16 16:54:07',0,1),(12,1,'5','1','11','1','1','1',1,'2013-12-16 16:53:49',1,'2013-12-16 16:53:53',0,1),(13,5202,NULL,NULL,'增加',NULL,NULL,NULL,3,'2013-12-06 19:50:20',3,'2013-12-06 19:50:20',1,1),(14,5203,NULL,NULL,'增加',NULL,NULL,NULL,3,'2013-12-06 19:50:56',3,'2013-12-06 19:50:56',1,1),(15,5033,'5','1','11','1','1','1',1,'2013-12-16 16:53:49',1,'2013-12-16 20:47:19',1,1);

/*Table structure for table `t_sb_sbxx` */

DROP TABLE IF EXISTS `t_sb_sbxx`;

CREATE TABLE `t_sb_sbxx` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `cs_id` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sydwID` int(11) NOT NULL,
  `ejbmID` int(11) DEFAULT NULL,
  `sbdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbzl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sblb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbpz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zongjiazhi` float DEFAULT NULL,
  `sbsbm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbgxxq` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `djlb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zczt` int(11) NOT NULL COMMENT '0 未注册 1已注册',
  `zcdjjg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zcdjrq` datetime DEFAULT NULL,
  `zcdjry` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gxrq` datetime DEFAULT NULL,
  `sydjzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbzcdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `djbbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fzjg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fzlx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `fzrq` datetime DEFAULT NULL,
  `scfzrq` datetime DEFAULT NULL,
  `yxqz` datetime DEFAULT NULL,
  `syzt` int(11) NOT NULL,
  `syztbgrq` datetime DEFAULT NULL,
  `sfzdjk` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `sfrkmjjq` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `sfzzycs` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `sfzytzsb` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `sgyhlb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `aqpddj` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zxjcywzt` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `zxjcywztrq` datetime DEFAULT NULL,
  `sbsydqdmqx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbsydqdmxz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbsyddz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbdwndd` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbsycs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `jingbanren` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `jbrdh` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `jbrsj` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbsyfs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbyt` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbdwnbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbyrq` datetime DEFAULT NULL,
  `zzdwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzdwlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zgzsmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzxkzh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzrq` datetime DEFAULT NULL,
  `ccbh` varchar(100) COLLATE utf8_bin NOT NULL,
  `sfjk` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `zzg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqdwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqszdqdmqx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `cqszdqdmxz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `cqdd` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `cqdwlxr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jingdu` double DEFAULT NULL,
  `cqdwyzbm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `weidu` double DEFAULT NULL,
  `hbgd` double DEFAULT NULL,
  `jyjgmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyzrztzzdy` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jyxz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `scjyrq` datetime DEFAULT NULL,
  `jylb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jybm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyy` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `scjyrqi` datetime DEFAULT NULL,
  `jyrq` datetime DEFAULT NULL,
  `xcjyrq` datetime DEFAULT NULL,
  `jyjl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zywt_sbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zywt_glwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dqywzt_qtjy_xsqjy` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `blzt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `blrq` datetime DEFAULT NULL,
  `azdwID` int(11) DEFAULT NULL,
  `azxmfzr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azxmfzrlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azlb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azdd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azxkzh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azksrq` datetime DEFAULT NULL,
  `azjgrq` datetime DEFAULT NULL,
  `jjksrq` datetime DEFAULT NULL,
  `jjjgrq` datetime DEFAULT NULL,
  `gzslbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azgzrq` datetime DEFAULT NULL,
  `sbazzlzsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xkzyxrq` datetime DEFAULT NULL,
  `tjsgdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tjkssgrq` datetime DEFAULT NULL,
  `tjjgysrq` datetime DEFAULT NULL,
  `tjysdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbsjzzzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjxkzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjrq` datetime DEFAULT NULL,
  `ztth` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjwjjddw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjsynx` int(11) DEFAULT NULL,
  `sdwjjdrq` datetime DEFAULT NULL,
  `xssyjg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xssyjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xssyhzzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xssyrq` datetime DEFAULT NULL,
  `xssybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cpzlzmsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cpjjdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jjdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyhzzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cpjjzsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbzlmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbglzdmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `txry` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `txrq` datetime DEFAULT NULL,
  `bz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbjb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `czry` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjjyhzzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjzsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbdwID` int(11) DEFAULT NULL,
  `wbxkzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbzq_z` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbzq_y` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbzq_n` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jjjydh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbhtyxq` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bxjgmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bxjgzcjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bxxz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bxjz` int(11) DEFAULT NULL,
  `bxf` int(11) DEFAULT NULL,
  `bxje` int(11) DEFAULT NULL,
  `bxbz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sfxyglqd` int(11) NOT NULL DEFAULT '0' COMMENT '0否 1是',
  `sfxygljjb` int(11) NOT NULL DEFAULT '0' COMMENT '0否 1是',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `shzt` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_166` (`ejbmID`) USING BTREE,
  KEY `FK_Reference_337` (`sydwID`) USING BTREE,
  CONSTRAINT `FK_Reference_166` FOREIGN KEY (`ejbmID`) REFERENCES `t_xt_dwzzjg` (`id`),
  CONSTRAINT `FK_Reference_337` FOREIGN KEY (`sydwID`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5206 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_sbxx` */

insert  into `t_sb_sbxx`(`ID`,`cs_id`,`sydwID`,`ejbmID`,`sbdm`,`sbzl`,`sblb`,`sbpz`,`sbxh`,`sbmc`,`zongjiazhi`,`sbsbm`,`sbgxxq`,`djlb`,`zczt`,`zcdjjg`,`zcdjrq`,`zcdjry`,`gxrq`,`sydjzbh`,`sbzcdm`,`djbbh`,`fzjg`,`fzlx`,`fzrq`,`scfzrq`,`yxqz`,`syzt`,`syztbgrq`,`sfzdjk`,`sfrkmjjq`,`sfzzycs`,`sfzytzsb`,`sgyhlb`,`aqpddj`,`zxjcywzt`,`zxjcywztrq`,`sbsydqdmqx`,`sbsydqdmxz`,`sbsyddz`,`sbdwndd`,`sbsycs`,`jingbanren`,`jbrdh`,`jbrsj`,`sbsyfs`,`sbyt`,`sbdwnbh`,`sbyrq`,`zzdwmc`,`zzdwdm`,`zzdwlxdh`,`zgzsmc`,`zzxkzh`,`zzrq`,`ccbh`,`sfjk`,`zzg`,`cqdwmc`,`cqszdqdmqx`,`cqszdqdmxz`,`cqdd`,`cqdwlxr`,`cqlxdh`,`cqzzjgdm`,`jingdu`,`cqdwyzbm`,`weidu`,`hbgd`,`jyjgmc`,`jyzzjgdm`,`jyzrztzzdy`,`jyxz`,`scjyrq`,`jylb`,`jybm`,`bgsbh`,`jyy`,`scjyrqi`,`jyrq`,`xcjyrq`,`jyjl`,`zywt_sbwt`,`zywt_glwt`,`dqywzt_qtjy_xsqjy`,`blzt`,`blrq`,`azdwID`,`azxmfzr`,`azxmfzrlxdh`,`azlb`,`azdd`,`azxkzh`,`azksrq`,`azjgrq`,`jjksrq`,`jjjgrq`,`gzslbh`,`azgzrq`,`sbazzlzsbh`,`xkzyxrq`,`tjsgdw`,`tjkssgrq`,`tjjgysrq`,`tjysdw`,`sjdw`,`sbsjzzzzjgdm`,`sjxkzbh`,`sjrq`,`ztth`,`sjwjjddw`,`sjsynx`,`sdwjjdrq`,`xssyjg`,`xssyjgdm`,`xssyhzzbh`,`xssyrq`,`xssybgsbh`,`cpzlzmsbh`,`cpjjdw`,`jjdwdm`,`jyhzzbh`,`cpjjzsbh`,`sbzlmc`,`sbglzdmc`,`txry`,`txrq`,`bz`,`sbjb`,`czry`,`azjjdw`,`azjjdwdm`,`azjjjyhzzbh`,`azjjzsbh`,`wbdwID`,`wbxkzbh`,`wbzq_z`,`wbzq_y`,`wbzq_n`,`jjjydh`,`wbhtyxq`,`bxjgmc`,`bxjgzcjgdm`,`bxxz`,`bxjz`,`bxf`,`bxje`,`bxbz`,`sfxyglqd`,`sfxygljjb`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`shzt`) values (1,'1',1,1,'123123','1','1','1','1111','承压蒸汽锅炉1',1201,'11','1','',0,'1','2013-12-03 00:00:00','1','2013-12-03 00:00:00','1','1','1','1','','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00',0,'2013-12-03 00:00:00',NULL,NULL,NULL,NULL,'',NULL,'','2013-12-03 00:00:00','1','1','1','1','1','1','1','1','','','1','2013-12-03 00:00:00','1','1','1','1','1','2013-12-03 00:00:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-12 09:38:00','2013-12-12 09:38:00','0','1','1','1','1','2013-12-03 09:38:00',1,'1','1',NULL,NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00',NULL,NULL,'1','2013-12-03 00:00:00','1',NULL,NULL,NULL,NULL,NULL,'1','1','','2013-12-03 00:00:00','1','1',1,'2013-12-03 00:00:00','1','1','1','2013-12-03 00:00:00','','1','1','1','1','1','1','1','1','2013-12-03 00:00:00','1',NULL,NULL,'1','1','1','1',1,NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,NULL,NULL,'',0,0,1,'2013-12-17 10:42:14',1,'2013-12-17 10:42:14',1,0),(2,'1',2,1,'1111','0','0','1','1111','承压蒸汽锅炉2',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',1,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-14 09:38:00','2013-12-11 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:55:50',0,'2013-12-16 18:57:03',1,0),(3,'1',3,1,'1111','0','0','1','1111','承压蒸汽锅炉3',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',2,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-16 09:38:00','2013-12-15 09:38:00','2','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:55:53',0,'2013-12-16 18:57:06',1,0),(4,'1',1,1,'1111','1','1','1','1111','承压热水锅炉4',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-20 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:55:57',0,'2013-12-16 18:57:09',1,0),(5,'1',2,1,'1111','0','0','1','1111','承压热水锅炉5',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',4,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-20 09:38:00','2013-12-20 09:38:00','0','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:00',0,'2013-12-16 18:57:11',1,0),(6,'1',3,1,'1111','2','0','1','1111','承压热水锅炉6',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',5,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:02',0,'2013-12-16 18:57:14',1,0),(7,'1',1,1,'1111','1','1','1','1111','有机热载体锅炉7',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:05',0,'2013-12-16 18:57:16',1,0),(8,'1',2,1,'1111','3','1','1','1111','有机热载体锅炉8',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',1,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:07',0,'2013-12-16 18:57:20',1,0),(9,'1',3,1,'222','4','1','1','222','有机热载体锅炉9',222,'222','1','2',1,'222','2013-12-03 00:00:00','222','2013-12-03 00:00:00','222','1','222','222','2','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00',2,'2013-12-03 00:00:00',1,1,1,1,'1',NULL,'1','2013-12-03 00:00:00','1','1','222','222','222','222','222','222',NULL,NULL,'222','2013-12-03 00:00:00','222','222','222','222','222','2013-12-03 00:00:00','222','0','222','222','1','1','222','222','222','222',99,'222',99,99,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','0','1','1','1','1','2013-12-03 09:38:00',1,'222','222','222','222','222','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00','222','2013-12-03 00:00:00','222','2013-12-03 00:00:00',NULL,NULL,NULL,NULL,'222','222','222','2013-12-03 00:00:00','222','222',222,NULL,NULL,'222','222',NULL,NULL,'222','222','222','222','222','222','222','222','2013-12-03 00:00:00','222','222',NULL,'222','222','222','222',1,'222','222','222',NULL,'222',NULL,'99','99','99',99,99,99,'999999999999999999999999999999999999999999999999999999999999999999',0,0,2,'2013-12-13 18:29:36',2,'2013-12-13 18:29:36',1,0),(10,'1',1,1,'1111','1','2','1','1111','有机热载体锅炉10',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:10',2,'2013-12-12 13:38:00',0,0),(11,'1',2,1,'1111','0','2','1','1111','有机热载体锅炉11',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',4,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:12',2,'2013-12-12 13:38:00',1,0),(12,'1',3,1,'1111','3','2','1','1111','有机热载体锅炉12',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',5,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:15',0,'2013-12-16 18:57:22',1,0),(13,'1',1,1,'1111','3','2','1','1111','有机热载体锅炉13',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',1,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:18',0,'2013-12-16 18:57:25',1,0),(14,'1',2,1,'1111','4','2','1','1111','有机热载体锅炉14',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',1,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:21',0,'2013-12-16 18:57:28',1,0),(15,'1',1,1,'1111','4','0','1','1111','承压蒸汽锅炉15',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',1,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:23',0,'2013-12-16 18:57:30',1,0),(16,'1',3,1,'222','5','0','9220','1111','承压蒸汽锅炉16',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',1,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 18:56:25',2,'2013-12-13 15:46:19',1,0),(17,'1',1,1,'171','9000','9200','9220','CNJDCL_016','索道17',1216,'11','1','',1,'1','2013-12-03 00:00:00','1','2013-12-03 00:00:00',NULL,'1','1','1','','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00',3,'2013-12-03 00:00:00',0,NULL,NULL,NULL,'',NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','1','1','1',NULL,NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','2013-12-03 00:00:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1',NULL,NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00',NULL,NULL,'1','2013-12-03 00:00:00','1',NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00','1','1','1','','2013-12-03 00:00:00','1','1',1,'2013-12-03 00:00:00','1','1','1','2013-12-03 00:00:00','','1','1','1','1','1','1','1','1','2013-12-03 00:00:00','1',NULL,'1','1','1','1','1',1,'1',NULL,'1','1','1',NULL,'','','',NULL,NULL,NULL,'',0,0,3,'2013-12-17 16:25:28',3,'2013-12-17 16:25:28',1,0),(18,'1',1,1,'17','9000','9200','9220','CNJDCL_016','索道18',1216,'11','1','',1,'1','2013-12-03 00:00:00','1','2013-12-03 00:00:00',NULL,'1','1','1','','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00',3,'2013-12-03 00:00:00',1,NULL,NULL,NULL,'',NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','1','1','1',NULL,NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','2013-12-03 00:00:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1',NULL,NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00',NULL,NULL,'1','2013-12-03 00:00:00','1',NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00','1','1','1','','2013-12-03 00:00:00','1','1',1,'2013-12-03 00:00:00','1','1','1','2013-12-03 00:00:00','','1','1','1','1','1','1','1','1','2013-12-03 00:00:00','1',NULL,'1','1','1','1','1',1,'1',NULL,'1','1','1',NULL,'','','',NULL,NULL,NULL,'',0,0,3,'2013-12-17 16:08:09',3,'2013-12-17 16:23:12',1,0),(19,'1',1,1,'17','9000','9200','9220','CNJDCL_016','索道19',1216,'11','1','',1,'1','2013-12-03 00:00:00','1','2013-12-03 00:00:00',NULL,'1','1','1','','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00',3,'2013-12-03 00:00:00',1,NULL,NULL,NULL,'',NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','1','1','1',NULL,NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','2013-12-03 00:00:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1',NULL,NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00',NULL,NULL,'1','2013-12-03 00:00:00','1',NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00','1','1','1','','2013-12-03 00:00:00','1','1',1,'2013-12-03 00:00:00','1','1','1','2013-12-03 00:00:00','','1','1','1','1','1','1','1','1','2013-12-03 00:00:00','1',NULL,'1','1','1','1','1',1,'1',NULL,'1','1','1',NULL,'','','',NULL,NULL,NULL,'',0,0,3,'2013-12-17 16:10:53',3,'2013-12-17 16:23:12',1,0),(20,'1',1,1,'1111','9000','9100','9110','CNJDCL_016','索道20',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-17 15:30:20',1,0),(21,'1',1,1,'1111','9000','9100','9110','CNJDCL_016','索道21',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-17 15:17:55',1,0),(22,'1',1,1,'1111','9000','9100','9110','CNJDCL_016','索道22',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-17 15:21:02',1,0),(23,'1',1,1,'1111','9000','9100','9110','CNJDCL_016','索道23',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-17 15:21:02',1,0),(24,'1',1,1,'1111','9000','9100','9110','CNJDCL_016','索道24',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-17 15:21:02',1,0),(25,'1',1,1,'1111','9000','9100','9110','CNJDCL_016','索道25',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(26,'1',1,1,'1111','9000','9200','9110','CNJDCL_016','索道26',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(27,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道27',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(28,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道28',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(29,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道29',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(30,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道30',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(31,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道31',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(32,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道32',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(33,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道33',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(34,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道34',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(35,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道35',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(36,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道36',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(37,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道37',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(38,'1',1,1,'1111','9000','9200','9210','CNJDCL_016','索道38',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(39,'1',1,1,'1111','9000','9300','9310','CNJDCL_016','索道39',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(40,'1',1,1,'1111','9000','9300','9310','CNJDCL_016','索道40',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(41,'1',1,1,'1111','9000','9300','9310','CNJDCL_016','索道41',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(42,'1',1,1,'1111','2000','9300','9310','CNJDCL_016','索道42',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(43,'1',1,1,'1111','9000','9300','9310','CNJDCL_016','索道43',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(44,'1',1,1,'1111','9000','9300','9310','CNJDCL_016','索道44',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(45,'1',1,1,'1111','9000','9300','9310','CNJDCL_016','索道45',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(46,'1',1,1,'1111','9000','9300','9310','CNJDCL_016','索道46',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(47,'1',1,1,'1111','9000','9300','9310','CNJDCL_016','索道47',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-11 17:03:00',1,0),(50,'1',1,1,'1111','2000','5100','5110','CNJDCL_001','冲浪旋艇',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(51,'1',1,1,'1111','2000','5100','5110','CNJDCL_001','弹跳飞人',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(52,'2',1,1,'1111','2000','5100','5110','CNJDCL_001','摩天环车',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(53,'3',1,1,'1111','2000','5100','5110','CNJDCL_001','海盗船',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(54,'4',1,1,'1111','2000','5100','5110','CNJDCL_001','碰碰车',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(55,'5',1,1,'1111','2000','5100','5110','CNJDCL_001','冲浪旋艇',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(56,'6',1,1,'1111','2000','5100','5110','CNJDCL_001','弹跳飞人',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(57,'7',1,1,'1111','2000','5100','5110','CNJDCL_001','摩天环车',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(58,'8',1,1,'1111','2000','5100','5110','CNJDCL_001','冲浪旋艇1',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(60,'1',1,1,'1111','7','5100','5110','CNJDCL_001','冲浪旋艇',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(61,'1',1,1,'1111','7','5100','5110','CNJDCL_001','弹跳飞人',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(62,'2',1,1,'1111','7','5100','5110','CNJDCL_001','摩天环车',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(63,'3',1,1,'1111','7','5100','5110','CNJDCL_001','海盗船',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(64,'4',1,1,'1111','7','5100','5110','CNJDCL_001','碰碰车',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(65,'5',1,1,'1111','7','5100','5110','CNJDCL_001','冲浪旋艇',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(66,'6',1,1,'1111','7','5100','5110','CNJDCL_001','弹跳飞人',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(67,'7',1,1,'1111','7','5100','5110','CNJDCL_001','摩天环车',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(68,'8',1,1,'1111','7','5100','5110','CNJDCL_001','冲浪旋艇',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(100,'1',1,1,'1111','3000','3100','3110','1111','电梯1',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-11 17:03:00',1,'2013-12-11 17:03:00',0,0),(101,'1',1,1,'1111','3000','3100','3110','1111','电梯2',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:19',1,'2013-12-11 17:50:00',1,0),(102,'1',1,1,'1111','3000','3100','3110','1111','电梯3',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:22',1,'2013-12-11 17:49:00',1,0),(103,'1',1,1,'1111','3000','3100','3110','1111','电梯4',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:26',1,'2013-12-11 17:49:00',1,0),(104,'1',1,1,'1111','3000','3100','3110','1111','电梯5',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:29',1,'2013-12-11 17:49:00',1,0),(105,'1',1,1,'1111','3000','3100','3110','1111','电梯6',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:33',1,'2013-12-11 17:49:00',1,0),(106,'1',1,1,'1111','3000','3100','3110','1111','电梯7',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:35',1,'2013-12-11 17:49:00',1,0),(107,'1',1,1,'1111','3000','3100','3110','1111','电梯8',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-11 17:03:00',1,'2013-12-11 17:49:00',1,0),(108,'1',1,1,'1111','3000','3100','3110','1111','电梯9',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:43',1,'2013-12-11 17:49:00',1,0),(109,'1',1,1,'1111','3000','3100','3110','1111','电梯10',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:45',1,'2013-12-11 17:49:00',1,0),(110,'1',1,1,'1111','3000','3100','3110','1111','电梯11',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:47',1,'2013-12-11 17:49:00',1,0),(111,'1',1,1,'1111','3000','3100','3110','1111','电梯12',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-11 17:03:00',1,'2013-12-11 17:49:00',1,0),(112,'1',1,1,'1111','3000','3100','3110','1111','电梯13',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:50',1,'2013-12-11 17:49:00',1,0),(113,'1',1,1,'1111','3000','3100','3110','1111','电梯14',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:52',1,'2013-12-11 17:49:00',1,0),(114,'1',1,1,'1111','3000','3100','3110','1111','电梯15',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-11 17:03:00',1,'2013-12-11 17:49:00',1,0),(115,'1',1,1,'1111','3000','3100','3110','1111','电梯16',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:56',1,'2013-12-11 17:49:00',1,0),(116,'1',1,1,'1111','3000','3100','3110','1111','电梯17',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:57',0,'2013-12-11 17:03:00',1,0),(117,'1',1,1,'1111','3000','3100','3110','1111','电梯18',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:59',0,'2013-12-11 17:03:00',1,0),(1000,'1',1,1,'1111','4000','4100','4110','CNJDCL_001','起重机械1000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(1001,'1',1,1,'1111','4000','4100','4110','CNJDCL_001','起重机械1000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(1002,'1',2,2,'2222','4000','4200','4220','CNJDCL_002','起重机械1002',2202,'22','2','2',2,'2','2013-12-03 09:36:00','2','2013-12-03 09:37:00','2','2','2','2','2','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,2,2,2,'2','2','2','2013-12-03 09:37:00','2','2','2','2','2','2','2','2','','2','2','2013-12-03 09:37:00','2','2','2','2','2','2013-12-03 09:37:00','2','0','2','2','2','2','2','2','2','2',2,'2',2,2,'22','','2','2','2013-12-03 09:38:00','0','2','2','2','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','2','2','2','2','2013-12-03 09:38:00',2,'2','2','2','2','2','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2','2013-12-03 09:38:00','2','2013-12-03 09:38:00','2','2013-12-03 09:39:00','2013-12-03 09:39:00','2','2','2','','2013-12-03 09:39:00','2','2',2,'2013-12-03 09:39:00','2','2','2','2013-12-03 09:39:00','','2','2','2','2','2','2','2','2','2013-12-03 09:39:00','2','2','2','2','2','2','2',2,'2','2','2','2','2','2','','','',NULL,NULL,NULL,'',2,0,0,'2013-12-16 16:58:30',3,'2013-12-16 19:54:35',1,0),(5000,'1',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-16 19:26:51',0,0),(5001,'1',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-16 19:14:52',1,0),(5002,'2',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-16 19:19:38',1,0),(5003,'3',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-16 19:30:50',1,0),(5004,'4',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-16 19:24:49',1,0),(5005,'5',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-16 19:23:50',1,0),(5006,'6',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-16 20:06:34',1,0),(5007,'7',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5008,'8',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5009,'9',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5010,'10',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5011,'11',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5012,'12',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5013,'13',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5014,'14',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5015,'15',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5016,'16',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5017,'17',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5018,'18',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5019,'19',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5020,'20',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5021,'21',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5022,'22',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5023,'23',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5024,'24',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5025,'25',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5026,'26',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5027,'27',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5028,'28',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5029,'29',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5030,'30',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5031,'31',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5032,'32',1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5201,'32',1,1,'1111','1000','1100','1110','CNJDCL_001','承压蒸汽锅炉',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5202,'32',1,1,'1111','1000','1100','1120','CNJDCL_001','承压蒸汽锅炉',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-17 13:03:10',1,0),(5203,'32',1,1,'1111','1000','1300','1110','CNJDCL_001','承压蒸汽锅炉',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-12 16:27:00',1,0),(5204,'32',1,1,'1111','1000','1100','1110','CNJDCL_001','承压蒸汽锅炉',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-17 13:03:10',1,0),(5205,'32',1,1,'1111','1000','1100','1310','CNJDCL_001','承压蒸汽锅炉',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:39:00','2013-12-03 09:39:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-17 13:03:10',1,0);

/*Table structure for table `t_sb_sbxx_bg` */

DROP TABLE IF EXISTS `t_sb_sbxx_bg`;

CREATE TABLE `t_sb_sbxx_bg` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `sydwID` int(11) NOT NULL,
  `ejbmID` int(11) NOT NULL,
  `sbdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbzl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sblb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbpz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbxh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zongjiazhi` float DEFAULT NULL,
  `sbsbm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbgxxq` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `djlb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zczt` int(11) NOT NULL COMMENT '0 未注册 1已注册',
  `zcdjjg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zcdjrq` datetime DEFAULT NULL,
  `zcdjry` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gxrq` datetime DEFAULT NULL,
  `sydjzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbzcdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `djbbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fzjg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fzlx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `fzrq` datetime DEFAULT NULL,
  `scfzrq` datetime DEFAULT NULL,
  `yxqz` datetime DEFAULT NULL,
  `syzt` int(11) NOT NULL,
  `syztbgrq` datetime DEFAULT NULL,
  `sfzdjk` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `sfrkmjjq` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `sfzzycs` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `sfzytzsb` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `sgyhlb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `aqpddj` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zxjcywzt` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `zxjcywztrq` datetime DEFAULT NULL,
  `sbsydqdmqx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbsydqdmxz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbsyddz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbdwndd` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbsycs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `jingbanren` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `jbrdh` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `jbrsj` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbsyfs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbyt` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sbdwnbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbyrq` datetime DEFAULT NULL,
  `zzdwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzdwlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zgzsmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzxkzh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzrq` datetime DEFAULT NULL,
  `ccbh` varchar(100) COLLATE utf8_bin NOT NULL,
  `sfjk` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `zzg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqdwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqszdqdmqx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `cqszdqdmxz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `cqdd` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `cqdwlxr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jingdu` double DEFAULT NULL,
  `cqdwyzbm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `weidu` double DEFAULT NULL,
  `hbgd` double DEFAULT NULL,
  `jyjgmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyzrztzzdy` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jyxz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `scjyrq` datetime DEFAULT NULL,
  `jylb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jybm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyy` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `scjyrqi` datetime DEFAULT NULL,
  `jyrq` datetime DEFAULT NULL,
  `xcjyrq` datetime DEFAULT NULL,
  `jyjl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zywt_sbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zywt_glwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dqywzt_qtjy_xsqjy` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `blzt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `blrq` datetime DEFAULT NULL,
  `azdwID` int(11) DEFAULT NULL,
  `azxmfzr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azxmfzrlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azlb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azdd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azxkzh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azksrq` datetime DEFAULT NULL,
  `azjgrq` datetime DEFAULT NULL,
  `jjksrq` datetime DEFAULT NULL,
  `jjjgrq` datetime DEFAULT NULL,
  `gzslbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azgzrq` datetime DEFAULT NULL,
  `sbazzlzsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xkzyxrq` datetime DEFAULT NULL,
  `tjsgdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tjkssgrq` datetime DEFAULT NULL,
  `tjjgysrq` datetime DEFAULT NULL,
  `tjysdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbsjzzzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjxkzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjrq` datetime DEFAULT NULL,
  `ztth` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjwjjddw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sjsynx` int(11) DEFAULT NULL,
  `sdwjjdrq` datetime DEFAULT NULL,
  `xssyjg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xssyjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xssyhzzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xssyrq` datetime DEFAULT NULL,
  `xssybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cpzlzmsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cpjjdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jjdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyhzzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cpjjzsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbzlmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbglzdmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `txry` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `txrq` datetime DEFAULT NULL,
  `bz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbjb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `czry` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjjyhzzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azjjzsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbdwID` int(11) DEFAULT NULL,
  `wbxkzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbzq_z` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbzq_y` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbzq_n` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jjjydh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbhtyxq` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bxjgmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bxjgzcjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bxxz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bxjz` int(11) DEFAULT NULL,
  `bxf` int(11) DEFAULT NULL,
  `bxje` int(11) DEFAULT NULL,
  `bxbz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sfxyglqd` int(11) NOT NULL DEFAULT '0' COMMENT '0否 1是',
  `sfxygljjb` int(11) NOT NULL DEFAULT '0' COMMENT '0否 1是',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `shzt` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6024 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_sbxx_bg` */

insert  into `t_sb_sbxx_bg`(`ID`,`sydwID`,`ejbmID`,`sbdm`,`sbzl`,`sblb`,`sbpz`,`sbxh`,`sbmc`,`zongjiazhi`,`sbsbm`,`sbgxxq`,`djlb`,`zczt`,`zcdjjg`,`zcdjrq`,`zcdjry`,`gxrq`,`sydjzbh`,`sbzcdm`,`djbbh`,`fzjg`,`fzlx`,`fzrq`,`scfzrq`,`yxqz`,`syzt`,`syztbgrq`,`sfzdjk`,`sfrkmjjq`,`sfzzycs`,`sfzytzsb`,`sgyhlb`,`aqpddj`,`zxjcywzt`,`zxjcywztrq`,`sbsydqdmqx`,`sbsydqdmxz`,`sbsyddz`,`sbdwndd`,`sbsycs`,`jingbanren`,`jbrdh`,`jbrsj`,`sbsyfs`,`sbyt`,`sbdwnbh`,`sbyrq`,`zzdwmc`,`zzdwdm`,`zzdwlxdh`,`zgzsmc`,`zzxkzh`,`zzrq`,`ccbh`,`sfjk`,`zzg`,`cqdwmc`,`cqszdqdmqx`,`cqszdqdmxz`,`cqdd`,`cqdwlxr`,`cqlxdh`,`cqzzjgdm`,`jingdu`,`cqdwyzbm`,`weidu`,`hbgd`,`jyjgmc`,`jyzzjgdm`,`jyzrztzzdy`,`jyxz`,`scjyrq`,`jylb`,`jybm`,`bgsbh`,`jyy`,`scjyrqi`,`jyrq`,`xcjyrq`,`jyjl`,`zywt_sbwt`,`zywt_glwt`,`dqywzt_qtjy_xsqjy`,`blzt`,`blrq`,`azdwID`,`azxmfzr`,`azxmfzrlxdh`,`azlb`,`azdd`,`azxkzh`,`azksrq`,`azjgrq`,`jjksrq`,`jjjgrq`,`gzslbh`,`azgzrq`,`sbazzlzsbh`,`xkzyxrq`,`tjsgdw`,`tjkssgrq`,`tjjgysrq`,`tjysdw`,`sjdw`,`sbsjzzzzjgdm`,`sjxkzbh`,`sjrq`,`ztth`,`sjwjjddw`,`sjsynx`,`sdwjjdrq`,`xssyjg`,`xssyjgdm`,`xssyhzzbh`,`xssyrq`,`xssybgsbh`,`cpzlzmsbh`,`cpjjdw`,`jjdwdm`,`jyhzzbh`,`cpjjzsbh`,`sbzlmc`,`sbglzdmc`,`txry`,`txrq`,`bz`,`sbjb`,`czry`,`azjjdw`,`azjjdwdm`,`azjjjyhzzbh`,`azjjzsbh`,`wbdwID`,`wbxkzbh`,`wbzq_z`,`wbzq_y`,`wbzq_n`,`jjjydh`,`wbhtyxq`,`bxjgmc`,`bxjgzcjgdm`,`bxxz`,`bxjz`,`bxf`,`bxje`,`bxbz`,`sfxyglqd`,`sfxygljjb`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`shzt`) values (1,1,1,'1126','1','5200','5220','CNJDCL_016','锅炉1',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','1','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(17,1,1,'171','9000','9200','9220','CNJDCL_016','索道17',1216,'11','1','',1,'1','2013-12-03 00:00:00','1','2013-12-03 00:00:00',NULL,'1','1','1','','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00',3,'2013-12-03 00:00:00',0,NULL,NULL,NULL,'',NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','1','1','1',NULL,NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','2013-12-03 00:00:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','17','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1',NULL,NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00',NULL,NULL,'1','2013-12-03 00:00:00','1',NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00','1','1','1','','2013-12-03 00:00:00','1','1',1,'2013-12-03 00:00:00','1','1','1','2013-12-03 00:00:00','','1','1','1','1','1','1','1','1','2013-12-03 00:00:00','1',NULL,'1','1','1','1','1',1,'1',NULL,'1','1','1',NULL,'','','',NULL,NULL,NULL,'',16,0,3,'2013-12-17 16:25:28',3,'2013-12-17 16:25:28',1,0),(18,1,1,'17','9000','9200','9220','CNJDCL_016','索道18',1216,'11','1','',1,'1','2013-12-03 00:00:00','1','2013-12-03 00:00:00',NULL,'1','1','1','','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00',3,'2013-12-03 00:00:00',1,NULL,NULL,NULL,'',NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','1','1','1',NULL,NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','2013-12-03 00:00:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-04 09:38:00','2013-12-05 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1',NULL,NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00',NULL,NULL,'1','2013-12-03 00:00:00','1',NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00','1','1','1','','2013-12-03 00:00:00','1','1',1,'2013-12-03 00:00:00','1','1','1','2013-12-03 00:00:00','','1','1','1','1','1','1','1','1','2013-12-03 00:00:00','1',NULL,'1','1','1','1','1',1,'1',NULL,'1','1','1',NULL,'','','',NULL,NULL,NULL,'',16,0,3,'2013-12-17 16:08:09',3,'2013-12-17 16:23:12',1,0),(19,1,1,'17','9000','9200','9220','CNJDCL_016','索道19',1216,'11','1','',1,'1','2013-12-03 00:00:00','1','2013-12-03 00:00:00',NULL,'1','1','1','','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00',3,'2013-12-03 00:00:00',1,NULL,NULL,NULL,'',NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','1','1','1',NULL,NULL,'1','2013-12-03 00:00:00','1','1','1','1','1','2013-12-03 00:00:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1',NULL,NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00',NULL,NULL,'1','2013-12-03 00:00:00','1',NULL,'1','2013-12-03 00:00:00','2013-12-03 00:00:00','1','1','1','','2013-12-03 00:00:00','1','1',1,'2013-12-03 00:00:00','1','1','1','2013-12-03 00:00:00','','1','1','1','1','1','1','1','1','2013-12-03 00:00:00','1',NULL,'1','1','1','1','1',1,'1',NULL,'1','1','1',NULL,'','','',NULL,NULL,NULL,'',16,0,3,'2013-12-17 16:10:53',3,'2013-12-17 16:23:12',1,0),(20,1,1,'17','9000','9100','9110','CNJDCL_016','索道20',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-17 15:30:20',1,0),(21,1,1,'17','9000','9100','9110','CNJDCL_016','索道21',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-17 15:17:55',1,0),(22,1,1,'17','9000','9100','9110','CNJDCL_016','索道22',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-17 15:21:02',1,0),(23,1,1,'17','9000','9100','9110','CNJDCL_016','索道23',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-17 15:21:02',1,0),(24,1,1,'17','9000','9100','9110','CNJDCL_016','索道24',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-17 15:21:02',1,0),(25,1,1,'17','9000','9100','9110','CNJDCL_016','索道25',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(26,1,1,'17','9000','9200','9110','CNJDCL_016','索道26',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(27,1,1,'17','9000','9200','9210','CNJDCL_016','索道27',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(28,1,1,'17','9000','9200','9210','CNJDCL_016','索道28',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(29,1,1,'17','9000','9200','9210','CNJDCL_016','索道29',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(30,1,1,'17','9000','9200','9210','CNJDCL_016','索道30',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(31,1,1,'17','9000','9200','9210','CNJDCL_016','索道31',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(32,1,1,'17','9000','9200','9210','CNJDCL_016','索道32',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(33,1,1,'17','9000','9200','9210','CNJDCL_016','索道33',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(34,1,1,'17','9000','9200','9210','CNJDCL_016','索道34',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(35,1,1,'17','9000','9200','9210','CNJDCL_016','索道35',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(36,1,1,'17','9000','9200','9210','CNJDCL_016','索道36',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(37,1,1,'17','9000','9200','9210','CNJDCL_016','索道37',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(38,1,1,'17','9000','9200','9210','CNJDCL_016','索道38',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(39,1,1,'17','9000','9300','9310','CNJDCL_016','索道39',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(40,1,1,'17','9000','9300','9310','CNJDCL_016','索道40',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(41,1,1,'17','9000','9300','9310','CNJDCL_016','索道41',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(42,1,1,'17','9000','9300','9310','CNJDCL_016','索道42',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(43,1,1,'17','9000','9300','9310','CNJDCL_016','索道43',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(44,1,1,'17','9000','9300','9310','CNJDCL_016','索道44',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(45,1,1,'17','9000','9300','9310','CNJDCL_016','索道45',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(46,1,1,'17','9000','9300','9310','CNJDCL_016','索道46',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(47,1,1,'17','9000','9300','9310','CNJDCL_016','索道47',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(100,1,1,'1111','3000','3100','3110','1111','电梯1',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-11 17:03:00',1,'2013-12-03 09:39:00',1,0),(101,1,1,'1111','3000','3100','3120','1111','电梯2',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(102,1,1,'1111','3000','3200','3210','1111','电梯3',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(103,1,1,'1111','3000','3200','3220','1111','电梯4',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(104,1,1,'1111','3000','3100','3110','1111','电梯5',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(105,1,1,'1111','3000','3100','3110','1111','电梯6',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(106,1,1,'1111','3000','3100','3110','1111','电梯7',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(107,1,1,'1111','3000','3100','3110','1111','电梯8',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-11 17:03:00',1,'2013-12-03 09:39:00',1,0),(108,1,1,'1111','3000','3100','3110','1111','电梯9',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(109,1,1,'1111','3000','3100','3110','1111','电梯10',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(110,1,1,'1111','3000','3100','3110','1111','电梯11',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(111,1,1,'1111','3000','3100','3110','1111','电梯12',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-11 17:03:00',1,'2013-12-03 09:39:00',1,0),(112,1,1,'1111','3000','3100','3110','1111','电梯13',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(113,1,1,'1111','3000','3100','3110','1111','电梯14',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(114,1,1,'1111','3000','3100','3110','1111','电梯15',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-11 17:03:00',1,'2013-12-03 09:39:00',1,0),(115,1,1,'1111','3000','3100','3110','1111','电梯16',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','123','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',1,'2013-12-03 09:39:00',1,0),(116,1,1,'1111','3000','3100','3110','1111','电梯17',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',0,'2013-12-03 09:39:00',1,0),(117,1,1,'1111','3000','3100','3110','1111','电梯18',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,0,'2013-12-16 16:44:00',0,'2013-12-03 09:39:00',1,0),(1000,1,1,'1111','4000','4100','4110','CNJDCL_001','起重机械1000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-01 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-10 09:38:00','0','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-17 17:09:26',0,1),(1001,1,1,'1111','4000','4100','4110','CNJDCL_001','起重机械1000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-02 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-15 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-17 17:09:26',0,0),(1002,2,2,'2222','4000','4200','4220','CNJDCL_002','起重机械1002',2202,'22','2','2',2,'2','2013-12-03 09:36:00','2','2013-12-03 09:37:00','2','2','2','2','2','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,2,2,2,'2','2','2','2013-12-03 09:37:00','2','2','2','2','2','2','2','2','','2','2','2013-12-03 09:37:00','2','2','2','2','2','2013-12-03 09:37:00','2','0','2','2','2','2','2','2','2','2',2,'2',2,2,'22','','2','2','2013-12-03 09:38:00','0','2','2','2','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-07 09:38:00','2','2','2','2','2','2013-12-03 09:38:00',2,'2','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',2,0,0,'2013-12-16 16:58:30',3,'2013-12-03 09:39:00',1,2),(3001,1,1,'123123','6000','6100','6110','23424','大型游乐设施',1234,'32','1','1',1,'','2013-12-01 00:00:00','1','2013-12-16 00:00:00','1','8','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','168','2013-12-08 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1234','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-11 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-11 09:37:00','2013-12-12 09:37:00','0','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3002,1,1,'32432','6000','6100','6110','5645','观览车类',1234,'32','1','1',1,'','2013-12-02 00:00:00','1','2013-12-16 00:00:00','1','9','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',1,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1988','2013-12-09 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1345','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-12 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-04 09:37:00','2013-12-12 09:37:00','1','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3003,1,1,'34534','6000','6100','6120','3454654','观览车系列',1234,'32','1','1',1,'','2013-12-03 00:00:00','1','2013-12-16 00:00:00','1','10','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',2,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1098','2013-12-10 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','156','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-12 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-06 09:37:00','2013-12-12 09:37:00','2','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3004,1,1,'45654','6000','6200','6210','4234234','飞毯系列',1234,'32','1','1',1,'','2013-12-03 00:00:00','1','2013-12-16 00:00:00','1','11','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','9808','2013-12-08 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','154456','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-13 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-12 09:37:00','2013-12-04 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3005,1,1,'3424','6000','6200','6210','001','太空船',1234,'32','1','1',0,'','2013-12-03 00:00:00','1','2013-12-16 00:00:00','1','12','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',4,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','sdf','2013-12-08 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1567','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-13 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-12 09:37:00','2013-12-04 09:37:00','4','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3006,1,1,'1','6000','6200','6210','CNJDCL','游乐设施6',1234,'32','1','1',0,'','2013-12-04 00:00:00','1','2013-12-16 00:00:00','1','13','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',5,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','353f','2013-12-09 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','167','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-12 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-13 09:37:00','2013-12-05 09:37:00','5','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3007,1,1,'1','6000','6300','6310','CNJDCL_001','游乐设施7',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','14','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','35','2013-12-11 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1678','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-14 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-06 09:37:00','0','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3008,1,1,'1','6000','6300','6320','CNJDCL_001','游乐设施8',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','15','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',1,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1567657','2013-12-12 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1678','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-05 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-07 09:37:00','1','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3009,1,1,'1','6000','6300','6330','CNJDCL_001','游乐设施9',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','16','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1678','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-06 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-08 09:37:00','2','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3010,1,1,'1','6000','6300','6340','CNJDCL_001','游乐设施10',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','17','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',4,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1678','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-07 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3011,1,1,'1','6000','6400','6410','CNJDCL_001','游乐设施11',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','18','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',5,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','4','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3012,1,1,'1','6000','6400','6420','CNJDCL_001','游乐设施12',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','19','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','5','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3013,1,1,'1','6000','6500','6510','CNJDCL_001','游乐设施13',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','20','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',1,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','0','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3014,1,1,'1','6000','6500','6520','CNJDCL_001','游乐设施14',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','21','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',2,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3015,1,1,'1','6000','6100','6610','CNJDCL_001','游乐设施15',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','22','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','2','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3016,1,1,'1','6000','4100','6610','CNJDCL_001','游乐设施16',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','23','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',4,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3017,1,1,'1','6000','4100','6610','CNJDCL_001','游乐设施17',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','24','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',5,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(3018,1,1,'1111','6000','B600','B610','CNJDCL_001','游乐设施18',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-01 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-10 09:38:00','0','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,1),(3019,1,1,'1111','6000','6E00','6E10','CNJDCL_001','游乐设施19',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',0,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-02 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-15 09:38:00','1','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(3020,2,2,'2222','6000','6E00','6E20','CNJDCL_002','游乐设施20',2202,'22','2','2',2,'2','2013-12-03 09:36:00','2','2013-12-03 09:37:00','2','2','2','2','2','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,2,2,2,'2','2','2','2013-12-03 09:37:00','2','2','2','2','2','2','2','2','','2','2','2013-12-03 09:37:00','2','2','2','2','2','2013-12-03 09:37:00','2','0','2','2','2','2','2','2','2','2',2,'2',2,2,'22','','2','2','2013-12-03 09:38:00','0','2','2','2','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-07 09:38:00','2','2','2','2','2','2013-12-03 09:38:00',2,'2','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',2,0,0,'2013-12-16 16:58:30',3,'2013-12-03 09:39:00',1,2),(5000,1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',3,'2013-12-03 09:39:00',0,0),(5001,1,1,'1112','5000','5100','5110','CNJDCL_002','厂内机动车辆5001',1202,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',2,0,0,'2013-12-12 16:27:00',3,'2013-12-03 09:39:00',1,0),(5002,1,1,'1113','5000','5100','5110','CNJDCL_003','厂内机动车辆5002',1203,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',3,0,0,'2013-12-12 16:27:00',3,'2013-12-03 09:39:00',1,0),(5003,1,1,'1114','5000','5100','5120','CNJDCL_004','厂内机动车辆5003',1204,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',4,0,0,'2013-12-12 16:27:00',3,'2013-12-03 09:39:00',1,0),(5004,1,1,'1115','5000','5100','5120','CNJDCL_005','厂内机动车辆5004',1205,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',5,0,0,'2013-12-12 16:27:00',3,'2013-12-03 09:39:00',1,0),(5005,1,1,'1116','5000','5100','5120','CNJDCL_006','厂内机动车辆5005',1206,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',6,0,0,'2013-12-12 16:27:00',3,'2013-12-03 09:39:00',1,0),(5006,1,1,'1117','5000','5100','5130','CNJDCL_007','厂内机动车辆5006',1207,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',7,0,0,'2013-12-12 16:27:00',3,'2013-12-03 09:39:00',1,0),(5007,1,1,'1118','5000','5100','5130','CNJDCL_008','厂内机动车辆5007',1208,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',8,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5008,1,1,'1119','5000','5100','5130','CNJDCL_009','厂内机动车辆5008',1209,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',9,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5009,1,1,'1120','5000','5200','5210','CNJDCL_010','厂内机动车辆5009',1210,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',10,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5010,1,1,'1121','5000','5200','5210','CNJDCL_011','厂内机动车辆5010',1211,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',11,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5011,1,1,'1122','5000','5200','5210','CNJDCL_012','厂内机动车辆5011',1212,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',12,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5012,1,1,'1123','5000','5200','5210','CNJDCL_013','厂内机动车辆5012',1213,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',13,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5013,1,1,'1124','5000','5200','5220','CNJDCL_014','厂内机动车辆5013',1214,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',14,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5014,1,1,'1125','5000','5200','5220','CNJDCL_015','厂内机动车辆5014',1215,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',15,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5015,1,1,'1126','5000','5200','5220','CNJDCL_016','厂内机动车辆5015',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5016,1,1,'1127','5000','5200','5220','CNJDCL_017','厂内机动车辆5016',1217,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',17,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5017,1,1,'1111','5000','5100','5110','CNJDCL_001','厂内机动车辆5000',1201,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',1,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5018,1,1,'1112','5000','5100','5110','CNJDCL_002','厂内机动车辆5001',1202,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',2,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5019,1,1,'1113','5000','5100','5110','CNJDCL_003','厂内机动车辆5002',1203,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',3,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5020,1,1,'1114','5000','5100','5120','CNJDCL_004','厂内机动车辆5003',1204,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',4,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5021,1,1,'1115','5000','5100','5120','CNJDCL_005','厂内机动车辆5004',1205,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',5,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5022,1,1,'1116','5000','5100','5120','CNJDCL_006','厂内机动车辆5005',1206,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',6,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5023,1,1,'1117','5000','5100','5130','CNJDCL_007','厂内机动车辆5006',1207,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',7,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5024,1,1,'1118','5000','5100','5130','CNJDCL_008','厂内机动车辆5007',1208,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',8,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5025,1,1,'1119','5000','5100','5130','CNJDCL_009','厂内机动车辆5008',1209,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',9,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5026,1,1,'1120','5000','5200','5210','CNJDCL_010','厂内机动车辆5009',1210,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',10,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5027,1,1,'1121','5000','5200','5210','CNJDCL_011','厂内机动车辆5010',1211,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',11,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5028,1,1,'1122','5000','5200','5210','CNJDCL_012','厂内机动车辆5011',1212,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',12,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5029,1,1,'1123','5000','5200','5210','CNJDCL_013','厂内机动车辆5012',1213,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',13,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5030,1,1,'1124','5000','5200','5220','CNJDCL_014','厂内机动车辆5013',1214,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',14,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5031,1,1,'1125','5000','5200','5220','CNJDCL_015','厂内机动车辆5014',1215,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',15,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5032,1,1,'1126','5000','5200','5220','CNJDCL_016','厂内机动车辆5015',1216,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',16,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5033,1,1,'1127','5000','5200','5220','CNJDCL_017','厂内机动车辆5016',1217,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',17,0,0,'2013-12-12 16:27:00',1,'2013-12-03 09:39:00',1,0),(5034,1,1,'1127','5000','5200','5220','345345','厂内机动车辆5016',1217,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',17,0,0,'2013-12-12 16:27:00',1,'2013-12-17 13:12:30',0,0),(5200,1,1,'1127','5000','5200','5220','CNJDCL_017','厂内机动车辆5016',1217,'11','1','1',1,'1','2013-12-03 09:36:00','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00',3,'2013-12-03 09:37:00',1,1,1,1,'1','1','1','2013-12-03 09:37:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:38:00','0','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','3','1','1','1','1','2013-12-03 09:38:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',17,0,0,'2013-12-12 16:27:00',1,'2013-12-17 13:08:00',0,0),(5201,1,1,'1','1000','1100','1110','CNJDCL_001','承压蒸汽锅炉',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','123','1','1','1','2013-12-07 11:18:33','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',0,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11',NULL,'1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:48:03',3,'2013-12-03 09:39:00',1,1),(5202,1,1,'1','1000','1100','1120','CNJDCL_001','承压蒸汽锅炉',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','123','1','1','1','2013-12-07 11:18:35','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',0,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11',NULL,'1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:13',3,'2013-12-17 13:03:10',1,1),(5203,1,1,'1','1000','1300','1110','CNJDCL_001','游乐设施',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','123','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11',NULL,'1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(5204,1,1,'1','1000','1100','1110','CNJDCL_001','游乐设施',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','123','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(5205,1,1,'1','1000','1100','1310','CNJDCL_001','承压蒸汽锅炉',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','123','1','1','1','2013-12-07 11:18:35','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',0,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:13',3,'2013-12-17 13:03:10',1,1),(6000,1,1,'1','4000','4100','4130','CNJDCL_001','起重机械1',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','1','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',1,'2013-12-17 18:26:24',0,1),(6001,1,1,'1','4000','4200','4220','CNJDCL_001','起重机械2',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','2','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',1,'2013-12-17 18:26:24',0,1),(6002,1,1,'1','4000','4300','4310','CNJDCL_001','起重机械3',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','3','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',1,'2013-12-17 18:30:57',0,1),(6003,1,1,'1','4000','4100','4400','CNJDCL_001','起重机械4',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','4','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',1,'2013-12-17 18:31:52',0,1),(6004,1,1,'1','4000','4200','4490','CNJDCL_001','起重机械5',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','5','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6005,1,1,'1','4000','4300','4580','CNJDCL_001','起重机械6',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','6','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6006,1,1,'1','4000','4100','4670','CNJDCL_001','起重机械7',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','7','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6007,1,1,'1','4000','4200','4760','CNJDCL_001','起重机械8',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','8','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6008,1,1,'1','4000','4300','4850','CNJDCL_001','起重机械9',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','9','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6009,1,1,'1','4000','4100','4940','CNJDCL_001','起重机械10',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','10','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6010,1,1,'1','4000','4200','5030','CNJDCL_001','起重机械11',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','11','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6011,1,1,'1','4000','4300','5120','CNJDCL_001','起重机械12',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','12','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6012,1,1,'1','4000','4100','5210','CNJDCL_001','起重机械13',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','13','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6013,1,1,'1','4000','4200','5300','CNJDCL_001','起重机械14',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','14','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6014,1,1,'1','4000','4300','5390','CNJDCL_001','起重机械15',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','15','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6015,1,1,'1','4000','4100','5480','CNJDCL_001','起重机械16',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','16','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6016,1,1,'1','4000','4200','5570','CNJDCL_001','起重机械17',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','17','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6017,1,1,'1','4000','4300','5660','CNJDCL_001','起重机械18',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','18','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6018,1,1,'1','4000','4100','5750','CNJDCL_001','起重机械19',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','19','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6019,1,1,'1','4000','4200','5840','CNJDCL_001','起重机械20',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','20','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6020,1,1,'1','4000','4300','5930','CNJDCL_001','起重机械21',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','21','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6021,1,1,'1','4000','4100','6020','CNJDCL_001','起重机械22',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','22','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6022,1,1,'1','4000','4200','6110','CNJDCL_001','起重机械23',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','23','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1),(6023,1,1,'1','4000','4300','6200','CNJDCL_001','起重机械24',1234,'32','1','1',0,'','2013-12-06 00:00:00','1','2013-12-16 00:00:00','1','24','1','1','1','2013-12-07 11:18:38','2013-12-03 09:37:00','2013-12-03 09:37:00',0,'2013-12-10 00:00:00',1,1,1,1,'1','1','0','2013-12-18 00:00:00','1','1','1','1','1','1','1','1','','1','1','2013-12-03 09:37:00','1','1','1','1','1','2013-12-03 09:37:00','1','0','1','1','1','1','1','1','1','1',1,'1',1,1,'11','','1','1','2013-12-03 09:37:00','0','1','1','1','2013-12-03 09:37:00','2013-12-03 09:37:00','2013-12-03 09:37:00','3','1','1','1','1','2013-12-03 09:37:00',1,'1','1','1','1','1','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','1','2013-12-03 09:38:00','2013-12-03 09:38:00','1','1','1','','2013-12-03 09:39:00','1','1',1,'2013-12-03 09:39:00','1','1','1','2013-12-03 09:39:00','','1','1','1','1','1','1','1','1','2013-12-03 09:39:00','1','1','1','1','1','1','1',1,'1','1','1','1','1','1','','','',NULL,NULL,NULL,'',0,0,3,'2013-12-06 19:50:53',3,'2013-12-03 09:39:00',1,1);

/*Table structure for table `t_sb_ylgddy` */

DROP TABLE IF EXISTS `t_sb_ylgddy`;

CREATE TABLE `t_sb_ylgddy` (
  `id` int(11) NOT NULL,
  `gc_id` int(11) NOT NULL,
  `gdmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `gdjb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `gdbh` varchar(200) COLLATE utf8_bin NOT NULL,
  `gdlb1` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `gdlb2` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `gdlb3` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `gdqd` varchar(200) COLLATE utf8_bin NOT NULL,
  `gdzd` varchar(200) COLLATE utf8_bin NOT NULL,
  `gdgczj` float NOT NULL,
  `gdgcbn` float NOT NULL,
  `gdcd` float DEFAULT NULL,
  `gdcz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sjyl` float NOT NULL,
  `sjwd` float NOT NULL,
  `sjjz` varchar(200) COLLATE utf8_bin NOT NULL,
  `zggzyl` float NOT NULL,
  `gzjz` varchar(200) COLLATE utf8_bin NOT NULL,
  `zggzwd` float NOT NULL,
  `sjdwmc` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sjdwzcjgdm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `azdwmc` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `azdwzcjgdm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `cqdwmc` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `cqdwzcjgdm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `jyjgmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `jyzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyzrztzzdy` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jyxz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `scjyrq` datetime DEFAULT NULL,
  `jybm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyy` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `scjyrqi` datetime DEFAULT NULL,
  `jyrq` datetime DEFAULT NULL,
  `xcjyrq` datetime DEFAULT NULL,
  `jyjl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zywt_sbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zywt_glwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jingdu` double DEFAULT NULL,
  `weidu` double DEFAULT NULL,
  `hbgd` double DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_267` (`gc_id`) USING BTREE,
  CONSTRAINT `FK_Reference_267` FOREIGN KEY (`gc_id`) REFERENCES `t_sb_ylgdgc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_ylgddy` */

/*Table structure for table `t_sb_ylgddy_bg` */

DROP TABLE IF EXISTS `t_sb_ylgddy_bg`;

CREATE TABLE `t_sb_ylgddy_bg` (
  `id` int(11) NOT NULL,
  `gc_id` int(11) NOT NULL,
  `gdmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `gdjb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `gdbh` varchar(200) COLLATE utf8_bin NOT NULL,
  `gdlb1` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `gdlb2` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `gdlb3` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `gdqd` varchar(200) COLLATE utf8_bin NOT NULL,
  `gdzd` varchar(200) COLLATE utf8_bin NOT NULL,
  `gdgczj` float NOT NULL,
  `gdgcbn` float NOT NULL,
  `gdcd` float DEFAULT NULL,
  `gdcz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sjyl` float NOT NULL,
  `sjwd` float NOT NULL,
  `sjjz` varchar(200) COLLATE utf8_bin NOT NULL,
  `zggzyl` float NOT NULL,
  `gzjz` varchar(200) COLLATE utf8_bin NOT NULL,
  `zggzwd` float NOT NULL,
  `sjdwmc` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sjdwzcjgdm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `azdwmc` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `azdwzcjgdm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `cqdwmc` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `cqdwzcjgdm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `jyjgmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `jyzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyzrztzzdy` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jyxz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `scjyrq` datetime DEFAULT NULL,
  `jybm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jyy` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `scjyrqi` datetime DEFAULT NULL,
  `jyrq` datetime DEFAULT NULL,
  `xcjyrq` datetime DEFAULT NULL,
  `jyjl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zywt_sbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zywt_glwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jingdu` double DEFAULT NULL,
  `weidu` double DEFAULT NULL,
  `hbgd` double DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_2671` (`gc_id`) USING BTREE,
  CONSTRAINT `FK_Reference_2671` FOREIGN KEY (`gc_id`) REFERENCES `t_sb_ylgdgc_bg` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_ylgddy_bg` */

/*Table structure for table `t_sb_ylgdgc` */

DROP TABLE IF EXISTS `t_sb_ylgdgc`;

CREATE TABLE `t_sb_ylgdgc` (
  `id` int(11) NOT NULL,
  `gddys` int(11) DEFAULT NULL,
  `gdzcd` float DEFAULT NULL,
  `shrq` datetime DEFAULT NULL,
  `sfzygd` int(11) NOT NULL DEFAULT '0' COMMENT '0 否 1是',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_1721` FOREIGN KEY (`id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_ylgdgc` */

/*Table structure for table `t_sb_ylgdgc_bg` */

DROP TABLE IF EXISTS `t_sb_ylgdgc_bg`;

CREATE TABLE `t_sb_ylgdgc_bg` (
  `ID` int(11) NOT NULL,
  `gddys` int(11) DEFAULT NULL,
  `gdzcd` float DEFAULT NULL,
  `shrq` datetime DEFAULT NULL,
  `sfzygd` int(11) NOT NULL DEFAULT '0' COMMENT '0 否 1是',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Reference_172` FOREIGN KEY (`ID`) REFERENCES `t_sb_sbxx_bg` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_ylgdgc_bg` */

/*Table structure for table `t_sb_ylrq` */

DROP TABLE IF EXISTS `t_sb_ylrq`;

CREATE TABLE `t_sb_ylrq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rqlb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `yllb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `fzfccj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `czrysl` int(11) DEFAULT NULL,
  `sbyt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ztjgxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `azxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `baowen` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `rqnj` float DEFAULT NULL,
  `ttcl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ftcl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nccl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jtcl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tthd` float DEFAULT NULL,
  `fthd` float DEFAULT NULL,
  `nchd` float DEFAULT NULL,
  `jthd` float DEFAULT NULL,
  `rqrl` float DEFAULT NULL,
  `rqcg` float DEFAULT NULL,
  `qtzl` float DEFAULT NULL,
  `njzl` float DEFAULT NULL,
  `czzl` float DEFAULT NULL,
  `ywbnjr` int(11) DEFAULT NULL,
  `qcsjyl` float DEFAULT NULL,
  `qcsjwd` float DEFAULT NULL,
  `qczgyxgzyl` float DEFAULT NULL,
  `gcsjyl` float DEFAULT NULL,
  `gcsjwd` float DEFAULT NULL,
  `gczgyxgzyl` float DEFAULT NULL,
  `jtsjyl` float DEFAULT NULL,
  `jtsjwd` float DEFAULT NULL,
  `jtzgyxgzyl` float DEFAULT NULL,
  `qcjz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gcjz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jtjz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qcsygzyl` float DEFAULT NULL,
  `gcsygzyl` float DEFAULT NULL,
  `jtsygzyl` float DEFAULT NULL,
  `hrmj` float DEFAULT NULL,
  `qcgzwd` float DEFAULT NULL,
  `jtgzwd` float DEFAULT NULL,
  `rclwd` float DEFAULT NULL,
  `gcgzwd` float DEFAULT NULL,
  `qctt` float DEFAULT NULL,
  `jttt` float DEFAULT NULL,
  `gctt` float DEFAULT NULL,
  `qcft` float DEFAULT NULL,
  `jtft` float DEFAULT NULL,
  `gcft` float DEFAULT NULL,
  `hrgcl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `hrghd` float DEFAULT NULL,
  `wsjcff` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wsjcbl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nysyzl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jzzxfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ylblc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ylbjd` float DEFAULT NULL,
  `ftxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zzxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sfkkm` int(11) DEFAULT NULL,
  `jjxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxjzk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `nysyyl` float DEFAULT NULL,
  `xlsyzl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xlsyyl` float DEFAULT NULL,
  `aqfjyqk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jcdwmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `jcdwzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jcdwjcxkzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qmjyjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `qmjyjyr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qmjybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qmjyscjyrq` datetime DEFAULT NULL,
  `qmjyjyrq` datetime DEFAULT NULL,
  `qmjyxcjyrq` datetime DEFAULT NULL,
  `qmjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `qmjyzywtsbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qmjyzywtglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ndjyjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ndjyjyr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ndjybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ndjyscjyrq` datetime DEFAULT NULL,
  `ndjyjyrq` datetime DEFAULT NULL,
  `ndjyxcjyrq` datetime DEFAULT NULL,
  `ndjyjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ndjyzywtsbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ndjyzywtglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nyjysyjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `nyjysyjianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nyjysybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nyjysyscjyrq` datetime DEFAULT NULL,
  `nyjysyjyrq` datetime DEFAULT NULL,
  `nyjysyxcjyrq` datetime DEFAULT NULL,
  `nyjysyjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `nyjysysbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nyjysyglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_1701` FOREIGN KEY (`id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_ylrq` */

insert  into `t_sb_ylrq`(`id`,`rqlb`,`yllb`,`fzfccj`,`czrysl`,`sbyt`,`ztjgxs`,`azxs`,`baowen`,`rqnj`,`ttcl`,`ftcl`,`nccl`,`jtcl`,`tthd`,`fthd`,`nchd`,`jthd`,`rqrl`,`rqcg`,`qtzl`,`njzl`,`czzl`,`ywbnjr`,`qcsjyl`,`qcsjwd`,`qczgyxgzyl`,`gcsjyl`,`gcsjwd`,`gczgyxgzyl`,`jtsjyl`,`jtsjwd`,`jtzgyxgzyl`,`qcjz`,`gcjz`,`jtjz`,`qcsygzyl`,`gcsygzyl`,`jtsygzyl`,`hrmj`,`qcgzwd`,`jtgzwd`,`rclwd`,`gcgzwd`,`qctt`,`jttt`,`gctt`,`qcft`,`jtft`,`gcft`,`hrgcl`,`hrghd`,`wsjcff`,`wsjcbl`,`nysyzl`,`jzzxfs`,`ylblc`,`ylbjd`,`ftxs`,`zzxs`,`sfkkm`,`jjxs`,`sjgf`,`zzgf`,`sbxjzk`,`nysyyl`,`xlsyzl`,`xlsyyl`,`aqfjyqk`,`jcdwmc`,`jcdwzzjgdm`,`jcdwjcxkzbh`,`qmjyjybm`,`qmjyjyr`,`qmjybgsbh`,`qmjyscjyrq`,`qmjyjyrq`,`qmjyxcjyrq`,`qmjyjl`,`qmjyzywtsbwt`,`qmjyzywtglwt`,`ndjyjybm`,`ndjyjyr`,`ndjybgsbh`,`ndjyscjyrq`,`ndjyjyrq`,`ndjyxcjyrq`,`ndjyjyjl`,`ndjyzywtsbwt`,`ndjyzywtglwt`,`nyjysyjybm`,`nyjysyjianyanyuan`,`nyjysybgsbh`,`nyjysyscjyrq`,`nyjysyjyrq`,`nyjysyxcjyrq`,`nyjysyjyjl`,`nyjysysbwt`,`nyjysyglwt`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (42,'1','1','1',1,'1','1','1','1',1,'1','1','1','1',1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,'1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','1',1,'1','1',1,'1','1','1','1',1,'1',1,'1','1','1','1','1','1','1','2013-12-17 16:26:04','2013-12-17 16:26:08','2013-12-17 16:26:13','1','1','1','1','1','1','2013-12-17 16:26:31','2013-12-17 16:26:34','2013-12-17 16:26:39','1','1','1','1','1','1','2013-12-17 16:26:57','2013-12-17 16:26:59','2013-12-17 16:27:03','1','1','1',1,'2013-12-17 16:24:41',1,'2013-12-17 16:24:36',1);

/*Table structure for table `t_sb_ylrq_bg` */

DROP TABLE IF EXISTS `t_sb_ylrq_bg`;

CREATE TABLE `t_sb_ylrq_bg` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `rqlb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `yllb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `fzfccj` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `czrysl` int(11) DEFAULT NULL,
  `sbyt` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ztjgxs` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `azxs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `baowen` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `rqnj` float DEFAULT NULL,
  `ttcl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ftcl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nccl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jtcl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tthd` float DEFAULT NULL,
  `fthd` float DEFAULT NULL,
  `nchd` float DEFAULT NULL,
  `jthd` float DEFAULT NULL,
  `rqrl` float DEFAULT NULL,
  `rqcg` float DEFAULT NULL,
  `qtzl` float DEFAULT NULL,
  `njzl` float DEFAULT NULL,
  `czzl` float DEFAULT NULL,
  `ywbnjr` int(11) DEFAULT NULL,
  `qcsjyl` float DEFAULT NULL,
  `qcsjwd` float DEFAULT NULL,
  `qczgyxgzyl` float DEFAULT NULL,
  `gcsjyl` float DEFAULT NULL,
  `gcsjwd` float DEFAULT NULL,
  `gczgyxgzyl` float DEFAULT NULL,
  `jtsjyl` float DEFAULT NULL,
  `jtsjwd` float DEFAULT NULL,
  `jtzgyxgzyl` float DEFAULT NULL,
  `qcjz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gcjz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jtjz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qcsygzyl` float DEFAULT NULL,
  `gcsygzyl` float DEFAULT NULL,
  `jtsygzyl` float DEFAULT NULL,
  `hrmj` float DEFAULT NULL,
  `qcgzwd` float DEFAULT NULL,
  `jtgzwd` float DEFAULT NULL,
  `rclwd` float DEFAULT NULL,
  `gcgzwd` float DEFAULT NULL,
  `qctt` float DEFAULT NULL,
  `jttt` float DEFAULT NULL,
  `gctt` float DEFAULT NULL,
  `qcft` float DEFAULT NULL,
  `jtft` float DEFAULT NULL,
  `gcft` float DEFAULT NULL,
  `hrgcl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `hrghd` float DEFAULT NULL,
  `wsjcff` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wsjcbl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nysyzl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jzzxfs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ylblc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ylbjd` float DEFAULT NULL,
  `ftxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `zzxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sfkkm` int(11) DEFAULT NULL,
  `jjxs` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbxjzk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `nysyyl` float DEFAULT NULL,
  `xlsyzl` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xlsyyl` float DEFAULT NULL,
  `jcdwmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `jcdwzzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jcdwjcxkzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qmjyjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `qmjyjyr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qmjybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qmjyscjyrq` datetime DEFAULT NULL,
  `qmjyjyrq` datetime DEFAULT NULL,
  `qmjyxcjyrq` datetime DEFAULT NULL,
  `qmjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `qmjyzywtsbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `qmjyzywtglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ndjyjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ndjyjyr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ndjybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ndjyscjyrq` datetime DEFAULT NULL,
  `ndjyjyrq` datetime DEFAULT NULL,
  `ndjyxcjyrq` datetime DEFAULT NULL,
  `ndjyjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ndjyzywtsbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ndjyzywtglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nyjysyjybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `nyjysyjianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nyjysybgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nyjysyscjyrq` datetime DEFAULT NULL,
  `nyjysyjyrq` datetime DEFAULT NULL,
  `nyjysyxcjyrq` datetime DEFAULT NULL,
  `nyjysyjyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `nyjysysbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nyjysyglwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Reference_170` FOREIGN KEY (`ID`) REFERENCES `t_sb_sbxx_bg` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_ylrq_bg` */

insert  into `t_sb_ylrq_bg`(`ID`,`rqlb`,`yllb`,`fzfccj`,`czrysl`,`sbyt`,`ztjgxs`,`azxs`,`baowen`,`rqnj`,`ttcl`,`ftcl`,`nccl`,`jtcl`,`tthd`,`fthd`,`nchd`,`jthd`,`rqrl`,`rqcg`,`qtzl`,`njzl`,`czzl`,`ywbnjr`,`qcsjyl`,`qcsjwd`,`qczgyxgzyl`,`gcsjyl`,`gcsjwd`,`gczgyxgzyl`,`jtsjyl`,`jtsjwd`,`jtzgyxgzyl`,`qcjz`,`gcjz`,`jtjz`,`qcsygzyl`,`gcsygzyl`,`jtsygzyl`,`hrmj`,`qcgzwd`,`jtgzwd`,`rclwd`,`gcgzwd`,`qctt`,`jttt`,`gctt`,`qcft`,`jtft`,`gcft`,`hrgcl`,`hrghd`,`wsjcff`,`wsjcbl`,`nysyzl`,`jzzxfs`,`ylblc`,`ylbjd`,`ftxs`,`zzxs`,`sfkkm`,`jjxs`,`sjgf`,`zzgf`,`sbxjzk`,`nysyyl`,`xlsyzl`,`xlsyyl`,`jcdwmc`,`jcdwzzjgdm`,`jcdwjcxkzbh`,`qmjyjybm`,`qmjyjyr`,`qmjybgsbh`,`qmjyscjyrq`,`qmjyjyrq`,`qmjyxcjyrq`,`qmjyjl`,`qmjyzywtsbwt`,`qmjyzywtglwt`,`ndjyjybm`,`ndjyjyr`,`ndjybgsbh`,`ndjyscjyrq`,`ndjyjyrq`,`ndjyxcjyrq`,`ndjyjyjl`,`ndjyzywtsbwt`,`ndjyzywtglwt`,`nyjysyjybm`,`nyjysyjianyanyuan`,`nyjysybgsbh`,`nyjysyscjyrq`,`nyjysyjyrq`,`nyjysyxcjyrq`,`nyjysyjyjl`,`nyjysysbwt`,`nyjysyglwt`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (42,'1','1','1',1,'1','1','1','1',1,'1','1','1','1',1,1,1,1,1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,'1','1','1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,'1',1,'1','1','1','1','1',1,'1','1',1,'1','1','1','1',1,'1',1,'1','1','1','1','1','1','2013-12-17 16:33:09','2013-12-17 16:26:04','2013-12-17 16:26:08','1','1','1','1','1','1','2013-12-17 16:32:22','2013-12-17 16:26:31','2013-12-17 16:26:34','1','1','1','1','1','1','2013-12-17 16:32:34','2013-12-17 16:26:57','2013-12-17 16:26:59','1','1','1',1,'2013-12-17 16:32:49',1,'2013-12-17 16:32:53',1);

/*Table structure for table `t_sb_yyjjylss` */

DROP TABLE IF EXISTS `t_sb_yyjjylss`;

CREATE TABLE `t_sb_yyjjylss` (
  `id` int(11) NOT NULL,
  `aqpddj` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `czry` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ydtd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gdjt` float DEFAULT NULL,
  `yxgd` float DEFAULT NULL,
  `hzzjjt` float DEFAULT NULL,
  `sudu` float DEFAULT NULL,
  `dcbj` float DEFAULT NULL,
  `dingyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dbzdqj` float DEFAULT NULL,
  `chengke` int(11) DEFAULT NULL,
  `gdgd` float DEFAULT NULL,
  `guiju` float DEFAULT NULL,
  `gdcd` float DEFAULT NULL,
  `cdcd` float DEFAULT NULL,
  `ccmj` float DEFAULT NULL,
  `htlx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xhfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `htkd` float DEFAULT NULL,
  `htgd` float DEFAULT NULL,
  `sclx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `scsd` float DEFAULT NULL,
  `hsxlcd` float DEFAULT NULL,
  `hsxlsxzgc` float DEFAULT NULL,
  `pingju` float DEFAULT NULL,
  `hdcd` float DEFAULT NULL,
  `hdgc` float DEFAULT NULL,
  `pjpd` float DEFAULT NULL,
  `xiansu` float DEFAULT NULL,
  `zxpd` float DEFAULT NULL,
  `tsdcd` float DEFAULT NULL,
  `tsdpd` float DEFAULT NULL,
  `wtydzdpd` float DEFAULT NULL,
  `hcsl` int(11) DEFAULT NULL,
  `tydzdpd` float DEFAULT NULL,
  `hdzxqlbj` float DEFAULT NULL,
  `hcdy` float DEFAULT NULL,
  `hdlx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `hdztcl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `hctssssb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjsysm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ytlx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ytsl` int(11) DEFAULT NULL,
  `sbsl` int(11) DEFAULT NULL,
  `xhsd` float DEFAULT NULL,
  `ylssxsd` float DEFAULT NULL,
  `edzh` float DEFAULT NULL,
  `fsd` float DEFAULT NULL,
  `qdzgl` float DEFAULT NULL,
  `dianya` float DEFAULT NULL,
  `fugonglv` float DEFAULT NULL,
  `zcgd` float DEFAULT NULL,
  `htsl` float DEFAULT NULL,
  `guidaoshu` int(11) DEFAULT NULL,
  `gjcd` float DEFAULT NULL,
  `banjing` float DEFAULT NULL,
  `shendu` float DEFAULT NULL,
  `zhibanjing` float DEFAULT NULL,
  `yzsd` float DEFAULT NULL,
  `gsszj` float DEFAULT NULL,
  `sbxjzk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbdwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xkzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbfzr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wblxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbzq` int(11) DEFAULT NULL,
  `dxzq` int(11) DEFAULT NULL,
  `jjjydh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `scjyrq` datetime DEFAULT NULL,
  `jyrq` datetime DEFAULT NULL,
  `xcjyrq` datetime DEFAULT NULL,
  `jyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `glwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xsqjyqk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `azdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azksrq` datetime DEFAULT NULL,
  `azxmfzr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fzrlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `frdb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yzbm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_1691` FOREIGN KEY (`id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_yyjjylss` */

insert  into `t_sb_yyjjylss`(`id`,`aqpddj`,`czry`,`ydtd`,`gdjt`,`yxgd`,`hzzjjt`,`sudu`,`dcbj`,`dingyuan`,`dbzdqj`,`chengke`,`gdgd`,`guiju`,`gdcd`,`cdcd`,`ccmj`,`htlx`,`xhfs`,`htkd`,`htgd`,`sclx`,`scsd`,`hsxlcd`,`hsxlsxzgc`,`pingju`,`hdcd`,`hdgc`,`pjpd`,`xiansu`,`zxpd`,`tsdcd`,`tsdpd`,`wtydzdpd`,`hcsl`,`tydzdpd`,`hdzxqlbj`,`hcdy`,`hdlx`,`hdztcl`,`hctssssb`,`sjsysm`,`ytlx`,`ytsl`,`sbsl`,`xhsd`,`ylssxsd`,`edzh`,`fsd`,`qdzgl`,`dianya`,`fugonglv`,`zcgd`,`htsl`,`guidaoshu`,`gjcd`,`banjing`,`shendu`,`zhibanjing`,`yzsd`,`gsszj`,`sbxjzk`,`sjgf`,`zzgf`,`wbdwmc`,`wbdwdm`,`xkzbh`,`wbfzr`,`wblxdh`,`wbzq`,`dxzq`,`jjjydh`,`jybm`,`jianyanyuan`,`bgsbh`,`scjyrq`,`jyrq`,`xcjyrq`,`jyjl`,`sbwt`,`glwt`,`xsqjyqk`,`azdw`,`azdwdm`,`azksrq`,`azxmfzr`,`fzrlxdh`,`cqdwdm`,`frdb`,`yzbm`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (60,'高','aa','快',10,11,12,1.2,30,'我们',60,9,8,6,13,100,50,'1','水',3,5,'游乐水池',2,20,3,2.5,3.5,2.6,20,30,15,3.1,2,3,2,5,1.8,3,'aa','滑道主体材料','滑车提升输送设备','100','游艇类型',120,15,1,2,200,2,15,220,10,1,3,5,50,3,2,1,3,10,'1','设计规范','制造规范','维保单位名称1528469555','','','维保负责人','15895214567',1,3,'58956485','检验部门','检验员','v255','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00','1','2','3','4','安装单位','dddd','2013-12-03 00:00:00','dd','55555555','f4545','fff','2589966',1,'2013-12-06 10:53:00',1,'2013-12-06 10:53:00',1),(62,'高2','aa2','快2',10,11,12,1.2,30,'我们2',60,9,8,6,13,100,50,'速滑','水',3,5,'游乐水池',2,20,3,2.5,3.5,2.6,20,30,15,3.1,2,3,2,5,1.8,3,'aa','滑道主体材料','滑车提升输送设备','100','游艇类型',120,15,1,2,200,2,15,220,10,1,3,5,50,3,2,1,3,10,'1','设计规范','制造规范','维保单位名称1528469555','','','维保负责人','15895214567',1,3,'58956485','检验部门','检验员','v255','2013-12-03 00:00:00','2013-12-03 00:00:00','2013-12-03 00:00:00','1','2','3','4','安装单位','dddd','2013-12-03 00:00:00','dd','55555555','f4545','fff','2589966',1,'2013-12-06 10:53:00',1,'2013-12-06 10:53:00',1);

/*Table structure for table `t_sb_yyjjylss_bg` */

DROP TABLE IF EXISTS `t_sb_yyjjylss_bg`;

CREATE TABLE `t_sb_yyjjylss_bg` (
  `ID` int(11) NOT NULL,
  `aqpddj` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `czry` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ydtd` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gdjt` float DEFAULT NULL,
  `yxgd` float DEFAULT NULL,
  `hzzjjt` float DEFAULT NULL,
  `sudu` float DEFAULT NULL,
  `dcbj` float DEFAULT NULL,
  `dingyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dbzdqj` float DEFAULT NULL,
  `chengke` int(11) DEFAULT NULL,
  `gdgd` float DEFAULT NULL,
  `guiju` float DEFAULT NULL,
  `gdcd` float DEFAULT NULL,
  `cdcd` float DEFAULT NULL,
  `ccmj` float DEFAULT NULL,
  `htlx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `xhfs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `htkd` float DEFAULT NULL,
  `htgd` float DEFAULT NULL,
  `sclx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `scsd` float DEFAULT NULL,
  `hsxlcd` float DEFAULT NULL,
  `hsxlsxzgc` float DEFAULT NULL,
  `pingju` float DEFAULT NULL,
  `hdcd` float DEFAULT NULL,
  `hdgc` float DEFAULT NULL,
  `pjpd` float DEFAULT NULL,
  `xiansu` float DEFAULT NULL,
  `zxpd` float DEFAULT NULL,
  `tsdcd` float DEFAULT NULL,
  `tsdpd` float DEFAULT NULL,
  `wtydzdpd` float DEFAULT NULL,
  `hcsl` int(11) DEFAULT NULL,
  `tydzdpd` float DEFAULT NULL,
  `hdzxqlbj` float DEFAULT NULL,
  `hcdy` float DEFAULT NULL,
  `hdlx` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `hdztcl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `hctssssb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjsysm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ytlx` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ytsl` int(11) DEFAULT NULL,
  `sbsl` int(11) DEFAULT NULL,
  `xhsd` float DEFAULT NULL,
  `ylssxsd` float DEFAULT NULL,
  `edzh` float DEFAULT NULL,
  `fsd` float DEFAULT NULL,
  `qdzgl` float DEFAULT NULL,
  `dianya` float DEFAULT NULL,
  `fugonglv` float DEFAULT NULL,
  `zcgd` float DEFAULT NULL,
  `htsl` float DEFAULT NULL,
  `guidaoshu` int(11) DEFAULT NULL,
  `gjcd` float DEFAULT NULL,
  `banjing` float DEFAULT NULL,
  `shendu` float DEFAULT NULL,
  `zhibanjing` float DEFAULT NULL,
  `yzsd` float DEFAULT NULL,
  `gsszj` float DEFAULT NULL,
  `sbxjzk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sjgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zzgf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbdwmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xkzbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbfzr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wblxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wbzq` int(11) DEFAULT NULL,
  `dxzq` int(11) DEFAULT NULL,
  `jjjydh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jybm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `jianyanyuan` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bgsbh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `scjyrq` datetime DEFAULT NULL,
  `jyrq` datetime DEFAULT NULL,
  `xcjyrq` datetime DEFAULT NULL,
  `jyjl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sbwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `glwt` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xsqjyqk` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `azdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `azksrq` datetime DEFAULT NULL,
  `azxmfzr` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fzrlxdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cqdwdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `frdb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `yzbm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Reference_169` FOREIGN KEY (`ID`) REFERENCES `t_sb_sbxx_bg` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_yyjjylss_bg` */

/*Table structure for table `t_sb_zxjcjl` */

DROP TABLE IF EXISTS `t_sb_zxjcjl`;

CREATE TABLE `t_sb_zxjcjl` (
  `id` int(11) NOT NULL,
  `sydw_id` int(11) NOT NULL,
  `sbzl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `jcsj` datetime NOT NULL,
  `jcry` int(11) NOT NULL,
  `jcnrqt` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `fxwtqt` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `clqk` text COLLATE utf8_bin,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `beizhu` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_148` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sb_zxjcjl` */

/*Table structure for table `t_sg_sggl` */

DROP TABLE IF EXISTS `t_sg_sggl`;

CREATE TABLE `t_sg_sggl` (
  `ID` int(11) NOT NULL,
  `fssj` datetime NOT NULL,
  `sgdw_id` int(11) DEFAULT NULL,
  `sgdwmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `dmjg` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `zgbm` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `qyxz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `sgdzbmqx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sgdzbmxz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sgddxx` varchar(200) COLLATE utf8_bin NOT NULL,
  `sglb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sgxx` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `jjss` varchar(200) COLLATE utf8_bin NOT NULL,
  `swqk` varchar(2000) COLLATE utf8_bin NOT NULL,
  `sgcljyjgms` text COLLATE utf8_bin,
  `sgxcjsbphqk` text COLLATE utf8_bin,
  `tbdw` varchar(200) COLLATE utf8_bin NOT NULL,
  `tianbaoren` varchar(100) COLLATE utf8_bin NOT NULL,
  `dianhua` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `qzrq` datetime DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_161` (`sgdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_161` FOREIGN KEY (`sgdw_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sg_sggl` */

insert  into `t_sg_sggl`(`ID`,`fssj`,`sgdw_id`,`sgdwmc`,`dmjg`,`zgbm`,`qyxz`,`sgdzbmqx`,`sgdzbmxz`,`sgddxx`,`sglb`,`sgxx`,`jjss`,`swqk`,`sgcljyjgms`,`sgxcjsbphqk`,`tbdw`,`tianbaoren`,`dianhua`,`qzrq`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (0,'2013-12-16 00:00:00',NULL,'1',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村1号','1',NULL,'1','1',NULL,NULL,'1','1',NULL,NULL,3,'2013-12-16 16:51:43',3,'2013-12-17 16:36:48',1),(1,'2013-12-16 00:00:00',NULL,'2',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村2号','2',NULL,'2','2',NULL,NULL,'2','2',NULL,NULL,3,'2013-12-16 16:53:11',3,'2013-12-16 18:18:27',1),(2,'2013-12-16 00:00:00',NULL,'3',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村3号','3',NULL,'3','3',NULL,NULL,'3','3',NULL,NULL,3,'2013-12-16 18:44:17',3,'2013-12-17 13:11:15',1),(3,'2013-12-17 10:17:56',NULL,'4',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村4号','4',NULL,'4','4',NULL,NULL,'4','4',NULL,NULL,3,'2013-12-17 10:18:54',3,'2013-12-17 10:19:00',1),(4,'2013-12-17 00:00:00',NULL,'5',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村5号','5',NULL,'5','5',NULL,NULL,'5','5',NULL,NULL,3,'2013-12-17 14:23:39',3,'2013-12-17 14:23:39',1),(5,'2013-12-17 00:00:00',NULL,'6',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村6号','6',NULL,'6','6',NULL,NULL,'6','6',NULL,NULL,3,'2013-12-17 14:24:00',3,'2013-12-17 14:24:00',1),(6,'2013-12-17 00:00:00',NULL,'7',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村7号','7',NULL,'7','7',NULL,NULL,'7','7',NULL,NULL,3,'2013-12-17 14:24:30',3,'2013-12-17 14:24:30',1),(7,'2013-12-17 00:00:00',NULL,'8',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村8号','8',NULL,'8','8',NULL,NULL,'8','8',NULL,NULL,3,'2013-12-17 14:24:52',3,'2013-12-17 14:24:52',1),(8,'2013-12-17 00:00:00',NULL,'9',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村9号','9',NULL,'9','9',NULL,NULL,'9','9',NULL,NULL,3,'2013-12-17 14:25:15',3,'2013-12-17 14:25:15',1),(9,'2013-12-17 00:00:00',NULL,'10',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村10号','10',NULL,'10','10',NULL,NULL,'10','10',NULL,NULL,3,'2013-12-17 14:25:42',3,'2013-12-17 14:25:42',1),(10,'2013-12-17 00:00:00',NULL,'11',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村11号','11',NULL,'11','11',NULL,NULL,'11','11',NULL,NULL,3,'2013-12-17 14:26:04',3,'2013-12-17 14:26:04',1),(11,'2013-12-17 00:00:00',NULL,'12',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村12号','12',NULL,'12','12',NULL,NULL,'12','12',NULL,NULL,3,'2013-12-17 14:26:18',3,'2013-12-17 14:26:18',1),(12,'2013-12-17 00:00:00',NULL,'13',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村13号','13',NULL,'13','13',NULL,NULL,'13','13',NULL,NULL,3,'2013-12-17 14:26:44',3,'2013-12-17 14:26:44',1),(13,'2013-12-17 00:00:00',NULL,'14',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村14号','14',NULL,'14','14',NULL,NULL,'14','14',NULL,NULL,3,'2013-12-17 14:26:58',3,'2013-12-17 14:27:07',1),(14,'2013-12-17 00:00:00',NULL,'15',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村15号','15',NULL,'15','15',NULL,NULL,'15','15',NULL,NULL,3,'2013-12-17 14:27:22',3,'2013-12-17 14:27:22',1),(15,'2013-12-17 00:00:00',NULL,'16',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村16号','16',NULL,'16','16',NULL,NULL,'16','16',NULL,NULL,3,'2013-12-17 14:27:37',3,'2013-12-17 14:27:37',1),(16,'2013-12-17 00:00:00',NULL,'17',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村17号','17',NULL,'17','17',NULL,NULL,'17','17',NULL,NULL,3,'2013-12-17 14:27:55',3,'2013-12-17 14:27:55',1),(17,'2013-12-17 00:00:00',NULL,'18',NULL,NULL,NULL,'莲花区莲花县','莲花乡莲花镇','莲花村18号','18',NULL,'18','18',NULL,NULL,'18','18',NULL,NULL,3,'2013-12-17 16:37:25',3,'2013-12-17 16:37:25',1);

/*Table structure for table `t_sg_sggz` */

DROP TABLE IF EXISTS `t_sg_sggz`;

CREATE TABLE `t_sg_sggz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_id` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sfyapjy` int(11) DEFAULT NULL COMMENT '0 否 1是',
  `shzh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `shsj` datetime DEFAULT NULL,
  `hknr` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `gcsbmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `gzdbm` varchar(100) COLLATE utf8_bin NOT NULL,
  `sbxxml` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `sglb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典 0安装 1改造 2 维修',
  `sbxhjzycs` varchar(200) COLLATE utf8_bin NOT NULL,
  `ccbh` varchar(100) COLLATE utf8_bin NOT NULL,
  `sbazddqx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbazddxz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `sbdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sbzzdwmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `xkzbh1` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '制造单位许可证',
  `azkgrq` datetime NOT NULL,
  `azjgrq` datetime NOT NULL,
  `sgdw` int(11) NOT NULL,
  `zzjgdm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xkzbh2` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '安装单位许可证',
  `xkzyxq` datetime DEFAULT NULL,
  `sgdwlxr` varchar(100) COLLATE utf8_bin NOT NULL,
  `sgdwyb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sgdwdh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sgdwlxrsjh` varchar(100) COLLATE utf8_bin NOT NULL,
  `sgdwcz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sgdwdz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sydwmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `sydwzzjgdm` varchar(10) COLLATE utf8_bin NOT NULL,
  `sydwlxr` varchar(100) COLLATE utf8_bin NOT NULL,
  `sydwdh` varchar(100) COLLATE utf8_bin NOT NULL,
  `sydwcz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `sydwdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `sydwyb` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `gzrq` datetime NOT NULL,
  `gcsjdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `slt` int(11) NOT NULL DEFAULT '0' COMMENT '0未受理 1同意 2驳回 3已安排检验',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_198` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sg_sggz` */

insert  into `t_sg_sggz`(`id`,`cs_id`,`sfyapjy`,`shzh`,`shsj`,`hknr`,`gcsbmc`,`gzdbm`,`sbxxml`,`sglb`,`sbxhjzycs`,`ccbh`,`sbazddqx`,`sbazddxz`,`sbdm`,`sbzzdwmc`,`xkzbh1`,`azkgrq`,`azjgrq`,`sgdw`,`zzjgdm`,`xkzbh2`,`xkzyxq`,`sgdwlxr`,`sgdwyb`,`sgdwdh`,`sgdwlxrsjh`,`sgdwcz`,`sgdwdz`,`sydwmc`,`sydwzzjgdm`,`sydwlxr`,`sydwdh`,`sydwcz`,`sydwdz`,`sydwyb`,`gzrq`,`gcsjdw`,`slt`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,NULL,0,NULL,NULL,NULL,'11111','11111111','1','0','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 17:09:42','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-16 00:00:00','1',4,1,'2013-12-16 17:20:40',1,'2013-12-16 17:20:40',1),(2,NULL,0,NULL,NULL,NULL,'11111','11111111','1','1','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 17:09:42','111111111','1','1','111111111','1','1','1','1','1','1','1','1','1','2013-12-16 00:00:00','1',1,1,'2013-12-16 17:44:30',1,'2013-12-16 17:44:30',1),(3,NULL,0,NULL,NULL,NULL,'11111','11111111','1','0','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 17:09:42','111111111','1','1','111111111','1','1','1','1','1','1','1','1','1','2013-12-16 00:00:00','1',1,1,'2013-12-16 17:48:35',1,'2013-12-16 17:48:35',1),(4,NULL,0,NULL,NULL,NULL,'11111','11111111','1','1','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 17:09:42','111111111','1','1','111111111','1','1','111','1','1','1','1','1','1','2013-12-16 00:00:00','1',1,1,'2013-12-16 17:50:53',1,'2013-12-16 17:50:53',1),(5,NULL,0,NULL,NULL,NULL,'11111','11111111','1','0','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 17:09:42','11111','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-16 00:00:00','1',2,1,'2013-12-16 17:54:15',1,'2013-12-16 17:54:15',1),(6,NULL,0,NULL,NULL,NULL,'111112','11111111','1','1','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 17:09:42','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-16 00:00:00','1',3,1,'2013-12-16 17:59:55',1,'2013-12-16 17:59:55',1),(7,NULL,0,NULL,NULL,NULL,'11111','11111111','1','0','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 17:09:42','111111111','1','1','111111111','1','1','1','1','1','1','1','1','1','2013-12-16 00:00:00','1',2,1,'2013-12-16 18:07:03',1,'2013-12-16 18:07:03',1),(8,NULL,0,NULL,NULL,NULL,'11111','11111111','1','1','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 17:09:42','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-16 00:00:00','1',1,1,'2013-12-16 18:09:48',1,'2013-12-16 18:09:48',1),(9,NULL,0,NULL,NULL,NULL,'11111','11111111','1','0','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 17:09:42','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-16 00:00:00','1',0,1,'2013-12-16 18:10:35',1,'2013-12-16 18:10:35',1),(10,NULL,0,NULL,NULL,'','11111','11111111','0','','1','1','','','1111','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',20,'20','1','2013-11-16 00:00:00','111111111','1','1','111111111','1','1','1','1','1','1','1','1','1','2013-12-16 00:00:00','1',1,1,'2013-12-16 18:15:47',3,'2013-12-17 17:19:28',1),(11,NULL,0,NULL,NULL,'','11111223','22222','0','','1','1','','','1111','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 00:00:00','11111111','1','1','111111111','1','1','1','1','1','1','1','1','1','2013-12-17 00:00:00','1',1,1,'2013-12-17 10:17:34',3,'2013-12-17 14:23:52',0),(12,NULL,NULL,NULL,NULL,'','111112','11111111','0','','1','1','','','1111','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 00:00:00','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-17 00:00:00','1',1,1,'2013-12-17 10:44:42',3,'2013-12-17 14:06:43',0),(13,NULL,NULL,NULL,NULL,'','11111223','11111111','0','','1','1','','','1111','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 00:00:00','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-17 00:00:00','1',1,1,'2013-12-17 10:49:55',3,'2013-12-17 11:24:06',0),(14,NULL,NULL,NULL,NULL,NULL,'11111222','11111111','全部','全部','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 00:00:00','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-17 00:00:00','1',0,1,'2013-12-17 11:18:09',1,'2013-12-17 11:18:09',0),(15,NULL,NULL,NULL,NULL,NULL,'111112221','11111111','全部','全部','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 00:00:00','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-17 00:00:00','1',0,1,'2013-12-17 11:26:05',1,'2013-12-17 11:26:05',0),(16,NULL,NULL,NULL,NULL,NULL,'1111122211','11111111','全部','全部','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 00:00:00','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-17 00:00:00','1',0,1,'2013-12-17 11:29:11',1,'2013-12-17 11:29:11',0),(17,NULL,NULL,NULL,NULL,NULL,'11111222111','11111111','全部','全部','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 00:00:00','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-17 00:00:00','1',0,1,'2013-12-17 11:30:36',1,'2013-12-17 11:30:36',0),(18,NULL,NULL,NULL,NULL,NULL,'111112221111','11111111','全部','全部','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 00:00:00','1','1','1','1','1','1','1','1','1','1','1','1','1','2013-12-17 00:00:00','1',0,1,'2013-12-17 11:37:29',1,'2013-12-17 11:37:29',0),(19,NULL,NULL,NULL,NULL,NULL,'11111222','11111111','全部','全部','1','1','区县','乡镇','1','1','1','2013-12-01 00:00:00','2013-12-02 00:00:00',1,'1','1','2013-11-16 00:00:00','111111111','1','1','111111111','1','1','1','1','1','1','1','1','1','2013-12-17 00:00:00','1',0,1,'2013-12-17 14:58:13',1,'2013-12-17 15:08:17',0),(20,NULL,NULL,NULL,NULL,'','工程1','111111111122','0','','1111111111','111111111','','','1111','111111111','1','2013-12-02 00:00:00','2013-12-18 00:00:00',1,'1','111111111','2013-11-16 00:00:00','11111111','1','1','1111111111','1','1','11111111','111111111','1111111111','111111','1111111','11111111','111111111111','2013-12-17 00:00:00','111111111',1,1,'2013-12-17 15:36:03',3,'2013-12-17 16:38:19',1);

/*Table structure for table `t_sg_sgsb` */

DROP TABLE IF EXISTS `t_sg_sgsb`;

CREATE TABLE `t_sg_sgsb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sg_id` int(11) NOT NULL,
  `sb_id` int(11) DEFAULT NULL,
  `sbzl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '无法选择，直接录入',
  `sblb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '无法选择，直接录入',
  `sbpz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '无法选择，直接录入',
  `sbdm` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '无法选择，直接录入',
  `sbyt` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '无法选择，直接录入',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_160` (`sg_id`) USING BTREE,
  KEY `FK_Reference_162` (`sb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_160` FOREIGN KEY (`sg_id`) REFERENCES `t_sg_sggl` (`ID`),
  CONSTRAINT `FK_Reference_162` FOREIGN KEY (`sb_id`) REFERENCES `t_sb_sbxx` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sg_sgsb` */

insert  into `t_sg_sgsb`(`id`,`sg_id`,`sb_id`,`sbzl`,`sblb`,`sbpz`,`sbdm`,`sbyt`) values (1,0,1,'1','1','1','1','1'),(2,1,2,'2','2','2','2','2'),(3,2,3,'3','3','3','3','3'),(4,2,1,'1','1','1','1','1'),(6,4,5,'5','5','5','5','5'),(7,5,6,'6','6','6','6','6'),(8,6,7,'7','7','7','7','7'),(9,7,8,'8','7','8','8','8'),(10,8,9,'9','1','9','9','9'),(11,9,10,'10','2','10','10','10'),(12,10,11,'11','3','11','11','11'),(13,11,12,'12','4','12','12','12'),(14,12,13,'13','5','13','13','13'),(15,13,14,'14','6','14','14','14'),(16,14,15,'15','7','15','15','15'),(17,15,16,'16','7','16','16','16'),(18,16,17,'17','1','17','17','17'),(19,17,18,'18','1','18','18','18');

/*Table structure for table `t_sy_sysz` */

DROP TABLE IF EXISTS `t_sy_sysz`;

CREATE TABLE `t_sy_sysz` (
  `id` int(11) NOT NULL,
  `lanmu` varchar(200) COLLATE utf8_bin NOT NULL,
  `shunxu` int(11) NOT NULL,
  `wenben` varchar(200) COLLATE utf8_bin NOT NULL,
  `tubiao` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `lianjie` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_sy_sysz` */

/*Table structure for table `t_tx_txlb` */

DROP TABLE IF EXISTS `t_tx_txlb`;

CREATE TABLE `t_tx_txlb` (
  `id` int(11) NOT NULL,
  `miaoshu` varchar(200) COLLATE utf8_bin NOT NULL,
  `wfaqftk` varchar(200) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_tx_txlb` */

insert  into `t_tx_txlb`(`id`,`miaoshu`,`wfaqftk`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,'提醒类别','设备检验到期',1,'2013-12-17 10:25:16',1,'2013-12-17 10:25:20',1),(2,'提醒类别','许可证到期',1,'2013-12-17 10:25:46',1,'2013-12-17 10:25:56',1);

/*Table structure for table `t_wb_wbhtdt` */

DROP TABLE IF EXISTS `t_wb_wbhtdt`;

CREATE TABLE `t_wb_wbhtdt` (
  `ht_id` int(11) NOT NULL,
  `sb_id` int(11) NOT NULL,
  PRIMARY KEY (`ht_id`,`sb_id`),
  KEY `FK_Reference_368` (`sb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_368` FOREIGN KEY (`sb_id`) REFERENCES `t_sb_sbxx` (`ID`),
  CONSTRAINT `FK_Reference_369` FOREIGN KEY (`ht_id`) REFERENCES `t_dt_wbht` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_wb_wbhtdt` */

insert  into `t_wb_wbhtdt`(`ht_id`,`sb_id`) values (1,1),(2,2),(3,3),(4,101),(4,102);

/*Table structure for table `t_wb_wbrycz` */

DROP TABLE IF EXISTS `t_wb_wbrycz`;

CREATE TABLE `t_wb_wbrycz` (
  `id` int(11) NOT NULL,
  `wbry_id` int(11) NOT NULL,
  `zsbh` varchar(100) COLLATE utf8_bin NOT NULL,
  `zyzl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `fzbm` varchar(100) COLLATE utf8_bin NOT NULL,
  `dabh` varchar(100) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_412` (`wbry_id`) USING BTREE,
  CONSTRAINT `FK_Reference_412` FOREIGN KEY (`wbry_id`) REFERENCES `t_dt_wbry` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_wb_wbrycz` */

/*Table structure for table `t_wb_wbryczxm` */

DROP TABLE IF EXISTS `t_wb_wbryczxm`;

CREATE TABLE `t_wb_wbryczxm` (
  `id` int(11) NOT NULL,
  `zsid` int(11) NOT NULL,
  `zyxmdm` varchar(100) COLLATE utf8_bin NOT NULL,
  `pzrq` datetime NOT NULL,
  `yxrq` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_269` (`zsid`) USING BTREE,
  CONSTRAINT `FK_Reference_269` FOREIGN KEY (`zsid`) REFERENCES `t_wb_wbrycz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_wb_wbryczxm` */

/*Table structure for table `t_wj_dxtzjs` */

DROP TABLE IF EXISTS `t_wj_dxtzjs`;

CREATE TABLE `t_wj_dxtzjs` (
  `duanxin_id` int(11) NOT NULL,
  `danwei_id` int(11) NOT NULL,
  `fsdx` text COLLATE utf8_bin NOT NULL,
  `sfyd` int(11) NOT NULL DEFAULT '0' COMMENT '0 未发 1已发',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`danwei_id`,`duanxin_id`),
  KEY `FK_Reference_182` (`duanxin_id`) USING BTREE,
  CONSTRAINT `FK_Reference_181` FOREIGN KEY (`duanxin_id`) REFERENCES `t_xt_dwzzjg` (`id`),
  CONSTRAINT `FK_Reference_182` FOREIGN KEY (`duanxin_id`) REFERENCES `t_xt_duanxin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_wj_dxtzjs` */

/*Table structure for table `t_wj_wjtz` */

DROP TABLE IF EXISTS `t_wj_wjtz`;

CREATE TABLE `t_wj_wjtz` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(200) COLLATE utf8_bin NOT NULL,
  `neirong` text COLLATE utf8_bin NOT NULL,
  `fbsj` datetime NOT NULL,
  `fbjg` int(11) NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_183` (`fbjg`) USING BTREE,
  CONSTRAINT `FK_Reference_183` FOREIGN KEY (`fbjg`) REFERENCES `t_xt_jcdwzzjg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_wj_wjtz` */

insert  into `t_wj_wjtz`(`ID`,`biaoti`,`neirong`,`fbsj`,`fbjg`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,'冬季锅炉养护','冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意冬季锅炉养护注意','2013-12-01 16:22:29',1,1,'2013-12-02 16:22:46',2,'2013-12-03 16:22:53',1),(2,'电梯定期检查','电梯定期检查问题电梯定期检查问题电梯定期检查问题','2013-12-03 16:29:06',1,2,'2013-12-04 16:29:20',3,'2013-12-05 16:29:25',1),(3,'电梯维护','定期电梯维护定期电梯维护定期电梯维护','2013-12-09 16:32:47',1,4,'2013-12-05 16:32:58',5,'2013-12-09 16:33:06',1);

/*Table structure for table `t_wj_wjtzjs` */

DROP TABLE IF EXISTS `t_wj_wjtzjs`;

CREATE TABLE `t_wj_wjtzjs` (
  `danwei_id` int(11) NOT NULL,
  `wenjian_id` int(11) NOT NULL,
  `sfyd` int(11) NOT NULL DEFAULT '0' COMMENT '0 未读 1已读',
  `jssj` datetime DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`danwei_id`,`wenjian_id`),
  KEY `FK_Reference_13` (`wenjian_id`) USING BTREE,
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`wenjian_id`) REFERENCES `t_wj_wjtz` (`ID`),
  CONSTRAINT `FK_Reference_320` FOREIGN KEY (`danwei_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_wj_wjtzjs` */

insert  into `t_wj_wjtzjs`(`danwei_id`,`wenjian_id`,`sfyd`,`jssj`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,0,'2013-12-06 16:29:59',1,'2013-12-07 16:30:06',2,'2013-12-08 16:30:10',1),(1,2,0,'2013-12-07 16:30:39',2,'2013-12-08 16:30:46',3,'2013-12-09 16:30:50',1),(1,3,1,'2013-12-09 16:31:07',3,'2013-12-09 16:31:12',4,'2013-12-10 16:31:17',1);

/*Table structure for table `t_xt_caidan` */

DROP TABLE IF EXISTS `t_xt_caidan`;

CREATE TABLE `t_xt_caidan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cdlb` int(11) NOT NULL COMMENT '0单位 1监察 2 乡镇 3行业主管',
  `caidan` varchar(100) COLLATE utf8_bin NOT NULL,
  `bianma` varchar(100) COLLATE utf8_bin NOT NULL,
  `f_id` int(11) DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_caidan` */

/*Table structure for table `t_xt_cyry` */

DROP TABLE IF EXISTS `t_xt_cyry`;

CREATE TABLE `t_xt_cyry` (
  `id` int(11) NOT NULL,
  `dwbmid` int(11) NOT NULL,
  `cyrylb` varchar(200) COLLATE utf8_bin NOT NULL,
  `cyryxm` varchar(100) COLLATE utf8_bin NOT NULL,
  `paixu` int(11) DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_315` (`dwbmid`) USING BTREE,
  CONSTRAINT `FK_Reference_315` FOREIGN KEY (`dwbmid`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_cyry` */

/*Table structure for table `t_xt_duanxin` */

DROP TABLE IF EXISTS `t_xt_duanxin`;

CREATE TABLE `t_xt_duanxin` (
  `id` int(11) NOT NULL,
  `fssj` datetime NOT NULL,
  `fsnr` varchar(1000) COLLATE utf8_bin NOT NULL,
  `fbjg` int(11) NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_184` FOREIGN KEY (`id`) REFERENCES `t_xt_jcdwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_duanxin` */

/*Table structure for table `t_xt_dwzzjg` */

DROP TABLE IF EXISTS `t_xt_dwzzjg`;

CREATE TABLE `t_xt_dwzzjg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leibie` int(11) NOT NULL COMMENT '0单位 1监察 2乡镇 3行业主管 4二级单位',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201312 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_dwzzjg` */

insert  into `t_xt_dwzzjg`(`id`,`leibie`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,1,'2013-12-16 16:11:29',1,'2013-12-16 16:11:32',1),(2,1,1,'2013-12-16 16:21:15',1,'2013-12-16 16:21:18',1),(3,1,2,'2013-12-16 16:21:15',2,'2013-12-16 16:21:18',1),(4,1,2,'2013-12-16 16:21:15',2,'2013-12-16 16:21:18',1),(5,1,201311,'2013-11-22 18:09:00',0,'2013-11-22 18:09:00',0),(6,1,201311,'2013-11-22 18:20:00',0,'2013-11-22 18:20:00',0),(7,1,201311,'2013-11-22 18:21:00',0,'2013-11-22 18:21:00',0),(8,1,201311,'2013-11-22 18:23:00',0,'2013-11-22 18:23:00',0),(9,1,201311,'2013-11-22 20:08:00',0,'2013-11-22 20:08:00',0),(10,1,201311,'2013-11-22 20:09:00',0,'2013-11-22 20:09:00',0),(11,1,201311,'2013-11-22 20:11:00',0,'2013-11-22 20:11:00',0),(12,1,201311,'2013-11-22 20:13:00',0,'2013-11-22 20:13:00',0),(13,1,201311,'2013-11-23 10:32:00',0,'2013-11-23 10:32:00',0),(14,1,201311,'2013-11-23 10:55:00',0,'2013-11-23 10:55:00',0),(15,1,201311,'2013-11-23 16:57:00',0,'2013-11-23 16:57:00',0),(16,1,201311,'2013-11-25 09:29:00',0,'2013-11-25 09:29:00',0),(17,1,201311,'2013-11-25 09:39:00',0,'2013-11-25 09:39:00',0),(18,1,201311,'2013-11-25 10:51:00',0,'2013-11-25 10:51:00',0),(19,1,201311,'2013-11-26 18:40:00',0,'2013-11-26 18:40:00',0),(20,1,201311,'2013-11-26 20:51:00',0,'2013-11-26 20:51:00',0),(21,1,201311,'2013-11-26 20:57:00',0,'2013-11-26 20:57:00',0),(22,1,201311,'2013-11-26 20:59:00',0,'2013-11-26 20:59:00',0),(23,1,201311,'2013-11-27 09:43:00',0,'2013-11-27 09:43:00',0),(24,1,201311,'2013-11-27 09:44:00',0,'2013-11-27 09:44:00',0),(25,1,201311,'2013-11-27 09:46:00',0,'2013-11-27 09:46:00',0),(26,1,201311,'2013-11-27 09:49:00',0,'2013-11-27 09:49:00',0),(27,1,201311,'2013-11-29 19:57:00',0,'2013-11-29 19:57:00',0),(28,1,201311,'2013-11-29 20:35:00',0,'2013-11-29 20:35:00',0),(29,1,201311,'2013-12-09 16:43:00',0,'2013-12-09 16:43:00',0),(30,1,201311,'2013-12-09 16:43:00',0,'2013-12-09 16:43:00',0),(31,1,201311,'2013-12-09 17:25:00',0,'2013-12-09 17:25:00',0),(32,1,201311,'2013-12-09 18:17:00',0,'2013-12-09 18:17:00',0),(33,1,201311,'2013-12-09 18:21:00',0,'2013-12-09 18:21:00',0),(201311,1,201311,'2013-11-22 15:56:00',0,'2013-11-22 15:56:00',0);

/*Table structure for table `t_xt_fujian` */

DROP TABLE IF EXISTS `t_xt_fujian`;

CREATE TABLE `t_xt_fujian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laiyuan` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `nbfl` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `lyid` int(11) NOT NULL,
  `shunxu` int(11) NOT NULL,
  `mingcheng` varchar(200) COLLATE utf8_bin NOT NULL,
  `path` varchar(1000) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_fujian` */

insert  into `t_xt_fujian`(`id`,`laiyuan`,`nbfl`,`lyid`,`shunxu`,`mingcheng`,`path`,`create_id`,`create_date`,`status`) values (1,'文件通知',NULL,1,1,'冬季锅炉养护注意问题.doc','e:/冬季锅炉养护注意问题.doc',1,'2013-12-02 10:45:35',1),(15,'aaa',NULL,2,0,'Winter.jpg','2013/12/17/1387276953446_Winter.jpg',1,'2013-12-17 18:42:35',1),(16,'aaa',NULL,2,1,'Blue hills.jpg','2013/12/17/1387276958805_Blue hills.jpg',1,'2013-12-17 18:42:40',1);

/*Table structure for table `t_xt_hyzgbmzzjg` */

DROP TABLE IF EXISTS `t_xt_hyzgbmzzjg`;

CREATE TABLE `t_xt_hyzgbmzzjg` (
  `id` int(11) NOT NULL,
  `hylb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `jcdw_id` int(11) NOT NULL,
  `gxdqbm` varchar(200) COLLATE utf8_bin NOT NULL,
  `hyzgbmmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `dizhi` varchar(200) COLLATE utf8_bin NOT NULL,
  `youbian` varchar(20) COLLATE utf8_bin NOT NULL,
  `aqfgbmmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `aqfgld` varchar(100) COLLATE utf8_bin NOT NULL,
  `aqfgldgddh` varchar(20) COLLATE utf8_bin NOT NULL,
  `aqfgldsj` varchar(20) COLLATE utf8_bin NOT NULL,
  `aqjgry` varchar(100) COLLATE utf8_bin NOT NULL,
  `aqjgrygddh` varchar(20) COLLATE utf8_bin NOT NULL,
  `aqjgrysj` varchar(20) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_1` (`hyzgbmmc`) USING BTREE,
  KEY `FK_Reference_60` (`jcdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_313` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`),
  CONSTRAINT `FK_Reference_60` FOREIGN KEY (`jcdw_id`) REFERENCES `t_xt_jcdwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_hyzgbmzzjg` */

/*Table structure for table `t_xt_jcdwzzjg` */

DROP TABLE IF EXISTS `t_xt_jcdwzzjg`;

CREATE TABLE `t_xt_jcdwzzjg` (
  `id` int(11) NOT NULL,
  `gxdqbm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `jcjgmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `xianjiqu` int(11) NOT NULL COMMENT '0市级 1区县级',
  `dz` varchar(200) COLLATE utf8_bin NOT NULL,
  `yb` varchar(20) COLLATE utf8_bin NOT NULL,
  `lxdh` varchar(20) COLLATE utf8_bin NOT NULL,
  `djsblxr` varchar(100) COLLATE utf8_bin NOT NULL,
  `djsblxrdh` varchar(100) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_311` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_jcdwzzjg` */

insert  into `t_xt_jcdwzzjg`(`id`,`gxdqbm`,`jcjgmc`,`xianjiqu`,`dz`,`yb`,`lxdh`,`djsblxr`,`djsblxrdh`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,'1','丽水质检部门',0,'南京路60号','10000','422422422','1','2',1,'2013-12-01 16:26:26',2,'2013-12-02 16:26:32',1),(2,'01','丽水办公室',1,'上海路50号','41561','2323232','1','1',55,'2013-12-01 16:28:18',6,'2013-12-02 16:28:25',1),(3,'3','丽水办公室3',2,'上海路50号','41561','2323232','1','1',55,'2013-12-01 16:28:18',6,'2013-12-02 16:28:25',1);

/*Table structure for table `t_xt_jsqx` */

DROP TABLE IF EXISTS `t_xt_jsqx`;

CREATE TABLE `t_xt_jsqx` (
  `js_id` int(11) NOT NULL,
  `qx_id` int(11) NOT NULL,
  PRIMARY KEY (`js_id`,`qx_id`),
  KEY `FK_Reference_2` (`qx_id`) USING BTREE,
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`qx_id`) REFERENCES `t_xt_quanxian` (`id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`js_id`) REFERENCES `t_xt_juese` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_jsqx` */

/*Table structure for table `t_xt_juese` */

DROP TABLE IF EXISTS `t_xt_juese`;

CREATE TABLE `t_xt_juese` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cdlb` int(11) NOT NULL COMMENT '0监察 1乡镇 2行业主管 3单位 4使用单位 5二级单位 6生产单位 7维保单位 8维保人员 9安装单位 10母公司 11个人',
  `mingcheng` varchar(100) COLLATE utf8_bin NOT NULL,
  `shuoming` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_juese` */

/*Table structure for table `t_xt_jyjg` */

DROP TABLE IF EXISTS `t_xt_jyjg`;

CREATE TABLE `t_xt_jyjg` (
  `id` int(11) NOT NULL,
  `jyjgmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_314` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_jyjg` */

/*Table structure for table `t_xt_quanxian` */

DROP TABLE IF EXISTS `t_xt_quanxian`;

CREATE TABLE `t_xt_quanxian` (
  `id` int(11) NOT NULL,
  `cdid` int(11) DEFAULT NULL,
  `czlx` int(11) NOT NULL,
  `bianma` varchar(100) COLLATE utf8_bin NOT NULL,
  `shuoming` varchar(1000) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_47` (`cdid`) USING BTREE,
  CONSTRAINT `FK_Reference_47` FOREIGN KEY (`cdid`) REFERENCES `t_xt_caidan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_quanxian` */

/*Table structure for table `t_xt_rizhi` */

DROP TABLE IF EXISTS `t_xt_rizhi`;

CREATE TABLE `t_xt_rizhi` (
  `id` bigint(20) NOT NULL,
  `cdid` varchar(200) COLLATE utf8_bin NOT NULL,
  `czlx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '权限名称',
  `czsj` datetime NOT NULL,
  `czms` varchar(2000) COLLATE utf8_bin NOT NULL,
  `yhzh` varchar(100) COLLATE utf8_bin NOT NULL,
  `ip` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_rizhi` */

/*Table structure for table `t_xt_sjzdlb` */

DROP TABLE IF EXISTS `t_xt_sjzdlb`;

CREATE TABLE `t_xt_sjzdlb` (
  `entry_code` varchar(200) COLLATE utf8_bin NOT NULL,
  `entry_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `entry_type` int(11) NOT NULL COMMENT '0 内部不可修改 1可修改',
  `memo` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `sfsxjg` int(11) NOT NULL DEFAULT '0' COMMENT '0 否  1是',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`entry_code`),
  KEY `AK_Key_2` (`entry_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_sjzdlb` */

insert  into `t_xt_sjzdlb`(`entry_code`,`entry_name`,`entry_type`,`memo`,`sfsxjg`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values ('bgsqfs','变更申请方式1',1,'112',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('bgsqzt','变更申请状态',1,'1',0,1,'2013-12-17 11:19:22',1,'2013-12-17 11:19:25',1),('bnwbjbxm','半年维保基本项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('bnwbxm','半年维保项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('bywbjbxm','半月维保基本项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('bywbxm','半月维保项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('cllx','车辆类型',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('dqbm','地区编码',1,'丽水市及一下地区编码',1,1,'2013-12-16 18:39:56',1,'2013-12-16 18:39:59',1),('dwsshy','单位所属行业',1,'单位所属行业',0,1,'2013-12-16 19:31:04',1,'2013-12-16 19:31:10',1),('gdjb','管道级别',1,'1',0,1,'2013-12-17 18:33:56',1,'2013-12-17 18:33:58',1),('gllb','锅炉类别',1,'1',0,1,'2013-12-17 16:57:03',1,'2013-12-17 16:57:11',1),('jdwbjbxm','季度维保基本项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('jdwbxm','季度维保项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('jrfs','加热方式',1,'1',0,1,'2013-12-16 19:32:29',1,'2013-12-16 19:32:35',1),('jyjl','检验结论',1,'1',0,1,'2013-12-17 11:20:09',1,'2013-12-17 11:20:12',1),('ndwbjbxm','年度维保基本项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('ndwbxm','年度维保项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('qdzt','是否签到',1,'1',0,1,'2013-12-16 17:22:11',1,'2013-12-16 17:22:14',1),('qzjxlb','起重机械类别',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('rcwbjbxm','日常维保基本项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('rcwbxm','日常维保项目',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('rlzl','燃料种类',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('sblx','设备类型',1,'1',0,1,'2013-12-16 18:31:25',1,'2013-12-16 18:31:29',1),('sbsh','设备审核状态',1,'1',0,1,'2013-12-17 11:03:30',1,'2013-12-17 11:03:33',1),('sbxjzk','设备新旧状况',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('sbyjzk','设备新旧状况',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('sftgc','是否拖挂车',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('syzt','使用状态',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('wbhtzt','维保合同状态',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('wbjlzt','维保记录状态',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('wbsjlb','维保时间类别',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('wzlb','文章类别',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('yesorno','是否',1,NULL,0,1,'2013-12-16 18:58:38',1,'2013-12-16 18:58:41',1),('yszd','颜色(字典)',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('zczt','注册状态',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1),('zxjcsblx','设备类型',1,'自行检查使用',1,1,'2013-12-17 13:24:02',1,'2013-12-17 13:24:08',1),('zxjcywzt','最新监察业务状态',1,'1',0,1,'2013-11-29 14:09:00',1,'2013-11-29 14:09:00',1);

/*Table structure for table `t_xt_sjzdsjx` */

DROP TABLE IF EXISTS `t_xt_sjzdsjx`;

CREATE TABLE `t_xt_sjzdsjx` (
  `item_key` varchar(200) COLLATE utf8_bin NOT NULL,
  `entry_code` varchar(100) COLLATE utf8_bin NOT NULL,
  `item_value` varchar(100) COLLATE utf8_bin NOT NULL,
  `item_order` int(11) DEFAULT NULL,
  `f_item_key` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`item_key`,`entry_code`),
  KEY `FK_Reference_11` (`entry_code`) USING BTREE,
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`entry_code`) REFERENCES `t_xt_sjzdlb` (`entry_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_sjzdsjx` */

insert  into `t_xt_sjzdsjx`(`item_key`,`entry_code`,`item_value`,`item_order`,`f_item_key`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values ('0','bgsqfs','报停',0,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('0','bgsqzt','未审核',0,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('0','bnwbjbxm','电动机与减速机联轴器螺栓',0,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','bnwbxm','电动机与减速机联轴器螺栓',0,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','bywbjbxm','机房、滑轮间环境',0,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','bywbxm','机房、滑轮间环境',0,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','gllb','承压蒸汽锅炉',0,'1',1,'2013-12-17 17:02:41',1,'2013-12-17 17:02:45',1),('0','jdwbjbxm','减速机润滑油',0,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','jdwbxm','减速机润滑油',0,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','jyjl','合格',0,'1',1,'2013-12-17 11:04:50',1,'2013-12-17 11:04:53',1),('0','ndwbjbxm','减速机润滑油',0,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','ndwbxm','减速机润滑油',0,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','qdzt','正常',0,'1',1,'2013-12-16 17:23:49',1,'2013-12-16 17:23:55',1),('0','qzjxlb','桥式起重机',0,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('0','rcwbjbxm','机房、滑轮间环境',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','rcwbxm','机房、滑轮间环境',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','sblx','电梯',0,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('0','sbsh','待审批',0,'1',1,'2013-12-17 11:04:02',1,'2013-12-17 11:04:05',1),('0','sbxjzk','新',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','syzt','在用',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','wbhtzt','未提交',1,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('0','wbjlzt','待确认',1,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('0','wbsjlb','日常维保',1,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('0','yesorno','否',0,'1',1,'2013-12-16 18:59:47',1,'2013-12-16 18:59:50',1),('0','zczt','已注册',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('0','zxjcywzt','使用登记',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('01','dqbm','丽水市',0,NULL,1,'2013-12-16 18:41:42',1,'2013-12-16 18:41:44',1),('01','zxjcsblx','电梯',0,NULL,1,'2013-12-17 13:28:27',1,'2013-12-17 13:28:30',1),('0101','dqbm','莲都区',1,'01',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0101','zxjcsblx','垂直电梯',1,'01',1,'2013-12-17 13:29:44',1,'2013-12-17 13:29:47',1),('010101','dqbm','峰源乡',2,'0101',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010102','dqbm','黄村乡',2,'0101',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010103','dqbm','太平乡',2,'0101',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010104','dqbm','雅溪镇',2,'0101',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010105','dqbm','立富岭街道办事处',2,'0101',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0102','dqbm','青田县',1,'01',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0102','zxjcsblx','自动扶梯和自动人行道',1,'01',1,'2013-12-17 13:30:49',1,'2013-12-17 13:30:52',1),('010201','dqbm','高市乡',2,'0102',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010202','dqbm','仁富乡',2,'0102',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010203','dqbm','巨浦乡',2,'0102',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010204','dqbm','石溪乡',2,'0102',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010205','dqbm','船寮镇',2,'0102',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0103','dqbm','云和县',1,'01',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010301','dqbm','云坛乡',1,'0103',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010302','dqbm','崇头镇',1,'0103',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010303','dqbm','赤石乡',1,'0103',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0104','dqbm','景宁畲族自治县',1,'01',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010401','dqbm','沙湾镇',1,'0104',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010402','dqbm','梧桐乡',1,'0104',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010403','dqbm','大均乡',1,'0104',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010404','dqbm','澄照乡',1,'0104',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0105','dqbm','缙云县',1,'01',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010501','dqbm','七里乡',1,'0105',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010502','dqbm','舒洪镇',1,'0105',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010503','dqbm','胡源乡',1,'0105',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010504','dqbm','三溪乡',1,'0105',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010505','dqbm','大源镇',1,'0105',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010506','dqbm','新建镇',1,'0105',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010507','dqbm','仙都乡',1,'0105',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010508','dqbm','溶江乡',1,'0105',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010509','dqbm','东渡乡',1,'0105',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0106','dqbm','遂昌县',1,'01',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010601','dqbm','湖山乡',1,'0106',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010602','dqbm','石练乡',1,'0106',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010603','dqbm','大拓乡',1,'0106',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010604','dqbm','焦滩乡',1,'0106',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010605','dqbm','三仁畲族乡',1,'0106',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0107','dqbm','庆元县',1,'01',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010701','dqbm','五大堡乡',1,'0107',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010702','dqbm','贤良镇',1,'0107',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010703','dqbm','岭头乡',1,'0107',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010704','dqbm','淤上乡',1,'0107',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010705','dqbm','荷地镇',1,'0107',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010706','dqbm','张村乡',1,'0107',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0108','dqbm','松阳县',1,'01',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010801','dqbm','竹源乡',1,'0108',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010802','dqbm','大东坝镇',1,'0108',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010803','dqbm','新处乡',1,'0108',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010804','dqbm','象溪镇',1,'0108',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010805','dqbm','斋坛乡',1,'0108',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010806','dqbm','五岩镇',1,'0108',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('0109','dqbm','龙泉市',1,'01',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010901','dqbm','八都镇',1,'0109',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010902','dqbm','塔石乡',1,'0109',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010903','dqbm','兰巨乡',1,'0109',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('010904','dqbm','锦溪镇',1,'0109',1,'2013-12-16 18:44:21',1,'2013-12-16 18:44:23',1),('02','zxjcsblx','起重机械',0,NULL,1,'2013-12-17 13:31:56',1,'2013-12-17 13:32:00',1),('03','zxjcsblx','锅炉',0,NULL,1,'2013-12-17 13:32:30',1,'2013-12-17 13:32:35',1),('04','zxjcsblx','场（厂）内专用机动车辆',0,NULL,1,'2013-12-17 13:33:58',1,'2013-12-17 13:34:01',1),('05','zxjcsblx','客运索道',0,NULL,1,'2013-12-17 13:34:32',1,'2013-12-17 13:34:34',1),('06','zxjcsblx','压力容器',0,NULL,1,'2013-12-17 13:35:25',1,'2013-12-17 13:35:29',1),('07','zxjcsblx','压力管道',0,NULL,1,'2013-12-17 13:36:03',1,'2013-12-17 13:36:06',1),('08','zxjcsblx','大型游乐设施',0,NULL,1,'2013-12-17 13:36:30',1,'2013-12-17 13:36:32',1),('0801','zxjcsblx','普通大型游乐设施',1,'08',1,'2013-12-17 13:36:56',1,'2013-12-17 13:36:58',1),('0802','zxjcsblx','水上大型游乐设施',1,'08',1,'2013-12-17 13:37:24',1,'2013-12-17 13:37:26',1),('1','bgsqfs','重新启用',1,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('1','bgsqzt','同意',1,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('1','bnwbjbxm','曳引轮、导向轮轴承部',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','bnwbxm','曳引轮、导向轮轴承部',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','bywbjbxm','手动紧急操作装置',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','bywbxm','手动紧急操作装置',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','dwsshy','教育',0,NULL,1,'2013-12-16 19:32:31',1,'2013-12-16 19:32:36',1),('1','gdjb','GA1',1,'1',1,'2013-12-17 18:35:58',1,'2013-12-17 18:36:01',1),('1','gllb','承压热水锅炉',1,'1',1,'2013-12-17 17:03:24',1,'2013-12-17 17:03:28',1),('1','jdwbjbxm','制动衬',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','jdwbxm','制动衬',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','jyjl','不合格',1,'1',1,'2013-12-17 11:04:50',1,'2013-12-17 11:04:53',1),('1','ndwbjbxm','控制柜接触器，继电器触点',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','ndwbxm','控制柜接触器，继电器触点',1,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','qdzt','异常',1,'1',1,'2013-12-16 17:24:21',1,'2013-12-16 17:24:24',1),('1','qzjxlb','门式起重机',1,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('1','rcwbjbxm','手动紧急操作装置',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','rcwbxm','手动紧急操作装置',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','sblx','锅炉',1,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('1','sbsh','正常',1,'1',1,'2013-12-17 11:04:29',1,'2013-12-17 11:04:31',1),('1','sbxjzk','旧',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','syzt','停用',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','wbhtzt','待确认',2,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('1','wbjlzt','驳回',2,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('1','wbsjlb','半月维保',2,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('1','wzlb','法律',1,'1',1,'2013-12-16 17:03:07',1,'2013-12-16 17:03:11',1),('1','yesorno','是',1,'1',1,'2013-12-16 19:00:13',1,'2013-12-16 19:00:17',1),('1','zczt','未注册',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('1','zxjcywzt','安全检查',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('10','bnwbxm','层门、轿门门扇',10,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('10','bywbxm','对重块及其压板',10,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('10','jdwbxm','消防开关',10,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('10','ndwbxm','随行电缆',10,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('10','qzjxlb','轻小型起重设备',10,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('10','rcwbxm','对重块及其压板',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('11','bnwbxm','对重缓冲距',11,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('11','bywbxm','井道照明',11,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('11','jdwbxm','耗能缓冲器',11,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('11','ndwbxm','层门装置和地坎',11,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('11','qzjxlb','机械式停车设备',11,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('11','rcwbxm','井道照明',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('12','bnwbxm','补偿链（绳）与轿厢、对重接合处',12,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('12','bywbxm','轿厢照明、风扇、应急照明',12,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('12','jdwbxm','限速器张紧轮装置和电气安全装置',12,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('12','ndwbxm','轿厢称重装置',12,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('12','rcwbxm','轿厢照明、风扇、应急照明',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('13','bnwbxm','上下极限开关',13,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('13','bywbxm','轿厢检修开关、急停开关',13,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('13','ndwbxm','安全钳钳座',13,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('13','rcwbxm','轿厢检修开关、急停开关',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('14','bywbxm','轿内报警装置、对讲系统',14,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('14','ndwbxm','轿底各安装螺栓',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('14','rcwbxm','轿内报警装置、对讲系统',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('15','bywbxm','轿内显示、指令按钮',15,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('15','ndwbxm','缓冲器',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('15','rcwbxm','轿内显示、指令按钮',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('16','bywbxm','轿门安全装置（安全触板，光幕、光电等）',16,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('16','rcwbxm','轿门安全装置（安全触板，光幕、光电等）',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('17','bywbxm','轿门门锁电气触点',17,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('17','rcwbxm','轿门门锁电气触点',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('18','bywbxm','轿门运行',18,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('18','rcwbxm','轿门运行',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('19','bywbxm','轿厢平层精度',19,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('19','rcwbxm','轿厢平层精度',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','bgsqfs','过户',2,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('2','bgsqzt','驳回',2,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('2','bnwbjbxm','曳引轮槽',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','bnwbxm','曳引轮槽',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','bywbjbxm','曳引机',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','bywbxm','曳引机',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','dwsshy','卫生',1,NULL,1,'2013-12-16 19:34:07',1,'2013-12-16 19:34:11',1),('2','gdjb','GA2',2,'1',1,'2013-12-17 18:36:16',1,'2013-12-17 18:36:18',1),('2','gllb','有机热载体锅炉',2,'1',1,'2013-12-17 17:04:31',1,'2013-12-17 17:04:36',1),('2','jdwbjbxm','位置脉冲发生器',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','jdwbxm','位置脉冲发生器',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','jyjl','复检合格',2,'1',1,'2013-12-17 11:04:50',1,'2013-12-17 11:04:53',1),('2','ndwbjbxm','制动器铁芯（柱塞）',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','ndwbxm','制动器铁芯（柱塞）',2,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','qzjxlb','塔式起重机',2,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('2','rcwbjbxm','曳引机',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','rcwbxm','曳引机',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','sblx','压力容器',2,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('2','sbsh','驳回',1,'1',1,'2013-12-17 11:04:50',1,'2013-12-17 11:04:53',1),('2','syzt','报废',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('2','wbhtzt','已成立',3,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('2','wbjlzt','已确认',3,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('2','wbsjlb','季度维保',3,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('2','wzlb','汽车',2,'1',1,'2013-12-16 17:04:20',1,'2013-12-16 17:04:23',1),('2','zxjcywzt','已检验未注册',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('20','bywbxm','层站召唤、层楼显示',20,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('20','rcwbxm','层站召唤、层楼显示',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('21','bywbxm','层门地坎',21,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('21','rcwbxm','层门地坎',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('22','bywbxm','层门自动关门装置',22,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('22','rcwbxm','层门自动关门装置',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('23','bywbxm','层门门锁自动复位',23,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('23','rcwbxm','层门门锁自动复位',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('24','bywbxm','层门门锁电气触点',24,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('24','rcwbxm','层门门锁电气触点',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('25','bywbxm','层门锁紧元件啮合长度',25,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('25','rcwbxm','层门锁紧元件啮合长度',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('26','bywbxm','底坑环境',26,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('26','rcwbxm','底坑环境',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('27','bywbxm','底坑急停开关',27,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('27','rcwbxm','底坑急停开关',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','bgsqfs','注销登记',3,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('3','bnwbjbxm','制动器上检测开关',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','bnwbxm','制动器上检测开关',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','bywbjbxm','制动器各销轴部位',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','bywbxm','制动器各销轴部位',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','dwsshy','建设',3,NULL,1,'2013-12-16 19:35:30',1,'2013-12-16 19:35:34',1),('3','gdjb','GB1',3,'1',1,'2013-12-17 18:37:17',1,'2013-12-17 18:37:20',1),('3','gllb','锅炉部件',3,'1',1,'2013-12-17 17:05:11',1,'2013-12-17 17:05:27',1),('3','jdwbjbxm','选层器动静触点',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','jdwbxm','选层器动静触点',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','jyjl','复检不合格',3,'1',1,'2013-12-17 11:04:50',1,'2013-12-17 11:04:53',1),('3','ndwbjbxm','制动器制动弹簧压缩量',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','ndwbxm','制动器制动弹簧压缩量',3,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','qzjxlb','流动式起重机',3,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('3','rcwbjbxm','制动器各销轴部位',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','rcwbxm','制动器各销轴部位',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','sblx','压力管道',3,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('3','syzt','拆除',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('3','wbhtzt','已取消',4,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('3','wbsjlb','半年维保',4,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('3','wzlb','考古',3,'1',1,'2013-12-16 17:04:20',1,'2013-12-16 17:04:23',1),('3','zxjcywzt','已首验未注册',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','bgsqfs','移装',4,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('4','bnwbjbxm','控制柜内各接线端子',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','bnwbxm','控制柜内各接线端子',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','bywbjbxm','制动器间隙',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','bywbxm','制动器间隙',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','dwsshy','交通',4,NULL,1,'2013-12-16 19:36:00',1,'2013-12-16 19:36:04',1),('4','gdjb','GB2',4,'1',1,'2013-12-17 18:37:40',1,'2013-12-17 18:37:43',1),('4','gllb','锅炉材料',4,'1',1,'2013-12-17 17:05:56',1,'2013-12-17 17:06:01',1),('4','jdwbjbxm','曳引轮槽、曳引钢丝绳',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','jdwbxm','曳引轮槽、曳引钢丝绳',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','jyjl','监护使用',4,'1',1,'2013-12-17 11:04:50',1,'2013-12-17 11:04:53',1),('4','ndwbjbxm','导电回路绝缘性能测试',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','ndwbxm','导电回路绝缘性能测试',4,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','qzjxlb','铁路起重机',4,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('4','rcwbjbxm','制动器间隙',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','rcwbxm','制动器间隙',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','sblx','起重机械',4,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('4','syzt','注销',5,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('4','wbhtzt','提出合同中止',5,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('4','wbsjlb','年度维保',5,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('5','bgsqfs','更名',5,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('5','bnwbxm','控制柜各仪表',5,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('5','bywbxm','编码器',5,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('5','dwsshy','旅游',5,NULL,1,'2013-12-16 19:36:26',1,'2013-12-16 19:36:30',1),('5','gdjb','GC1',5,'1',1,'2013-12-17 18:38:08',1,'2013-12-17 18:38:12',1),('5','jdwbxm','限速器轮槽、限速器钢丝绳',5,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('5','ndwbxm','限速器安全钳联动试验（每2年进行一次限速器动作速度校验）',5,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('5','qzjxlb','门座起重机',5,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('5','rcwbxm','编码器',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('5','sblx','场内机动车辆',5,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('5','syzt','变更',6,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('5','wbhtzt','合同已中止',6,'1',1,'2013-11-26 16:01:00',1,'2013-11-26 16:01:00',1),('6','bgsqfs','报废',6,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('6','bnwbxm','井道、对重、轿顶各反绳轮轴承部',6,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('6','bywbxm','限速器各销轴部位',6,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('6','dwsshy','其他',6,NULL,1,'2013-12-16 19:36:49',1,'2013-12-16 19:36:53',1),('6','gdjb','GC2',6,'1',1,'2013-12-17 18:38:33',1,'2013-12-17 18:38:36',1),('6','jdwbxm','靴衬、滚轮',6,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('6','ndwbxm','上行超速保护装置动作试验',6,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('6','qzjxlb','升降机',6,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('6','rcwbxm','限速器各销轴部位',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('6','sblx','客运索道',6,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('7','bgsqfs','拆除',7,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('7','bnwbxm','曳引绳、补偿绳',7,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('7','bywbxm','轿顶',7,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('7','gdjb','GC3',7,'1',1,'2013-12-17 18:38:55',1,'2013-12-17 18:38:58',1),('7','jdwbxm','验证轿门关闭的电气安全装置',7,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('7','ndwbxm','轿顶、轿厢架、轿门及其附件安装螺栓',7,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('7','qzjxlb','缆索起重机',7,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('7','rcwbxm','轿顶',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('7','sblx','游艺机及游乐设施',7,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('8','bgsqfs','设备基本情况变更',8,'1',1,'2013-12-17 10:12:59',1,'2013-12-17 10:13:01',1),('8','bnwbxm','曳引绳绳头组合',8,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('8','bywbxm','轿顶检修开关、急停开关',8,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('8','gdjb','GD1',8,'1',1,'2013-12-17 18:39:23',1,'2013-12-17 18:39:27',1),('8','jdwbxm','层门、轿门系统中传动钢丝绳、链条、胶带',8,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('8','ndwbxm','轿厢和对重的导轨支架',8,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('8','qzjxlb','桅杆起重机',8,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('8','rcwbxm','轿顶检修开关、急停开关',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('9','bnwbxm','限速器钢丝绳',9,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('9','bywbxm','导靴上油杯',9,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('9','gdjb','GD2',9,'1',1,'2013-12-17 18:39:44',1,'2013-12-17 18:39:48',1),('9','jdwbxm','层门门导靴',9,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('9','ndwbxm','轿厢和对重的导轨',9,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1),('9','qzjxlb','旋臂式起重机',9,'1',1,'2013-12-16 18:33:36',1,'2013-12-16 18:33:38',1),('9','rcwbxm','导靴上油杯',NULL,'1',1,'2013-12-13 09:23:58',1,'2013-12-13 09:24:02',1);

/*Table structure for table `t_xt_sydwpfdjsz` */

DROP TABLE IF EXISTS `t_xt_sydwpfdjsz`;

CREATE TABLE `t_xt_sydwpfdjsz` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `zgfs` int(11) NOT NULL,
  `zdfs` int(11) NOT NULL,
  `djmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_sydwpfdjsz` */

/*Table structure for table `t_xt_tzsbfldmb` */

DROP TABLE IF EXISTS `t_xt_tzsbfldmb`;

CREATE TABLE `t_xt_tzsbfldmb` (
  `daima` varchar(200) COLLATE utf8_bin NOT NULL,
  `mingcheng` varchar(200) COLLATE utf8_bin NOT NULL,
  `shuoming` varchar(200) COLLATE utf8_bin NOT NULL,
  `fjdm` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `dmjb` int(11) NOT NULL COMMENT '1种类 2类别 3品类4级别',
  PRIMARY KEY (`daima`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_tzsbfldmb` */

insert  into `t_xt_tzsbfldmb`(`daima`,`mingcheng`,`shuoming`,`fjdm`,`dmjb`) values ('1000','锅炉','锅炉',NULL,1),('1100','承压蒸汽锅炉','承压蒸汽锅炉','1000',2),('1110','电站锅炉','电站锅炉','1100',3),('1120','工业锅炉','工业锅炉','1100',3),('1130','生活锅炉','生活锅炉','1100',3),('1200','承压热水锅炉','承压热水锅炉','1000',2),('1300','有机热载体锅炉','有机热载体锅炉','1000',2),('1310','有机热载体气相炉','有机热载体气相炉','1300',3),('1320','有机热载体液相炉','有机热载体液相炉','1300',3),('2000','压力容器','压力容器',NULL,1),('2100','固定式压力容器','固定式压力容器','2000',2),('2110','超高压容器','超高压容器','2100',3),('2120','高压容器','高压容器','2100',3),('2130','第三类中压容器','第三类中压容器','2100',3),('2140','第三类低压容器','第三类低压容器','2100',3),('2150','第二类中压容器','第二类中压容器','2100',3),('2160','第二类低压容器','第二类低压容器','2100',3),('2170','第一类压力容器','第一类压力容器','2100',3),('2200','移动式压力容器','移动式压力容器','2000',2),('2210','铁路罐车','铁路罐车','2200',3),('2220','汽车罐车','汽车罐车','2200',3),('2230','长管拖车','长管拖车','2200',3),('2240','罐式集装箱','罐式集装箱','2200',3),('2300','气瓶','气瓶','2000',2),('2310','无缝气瓶','无缝气瓶','2300',3),('2320','焊接气瓶','焊接气瓶','2300',3),('2330','液化石油气钢瓶','液化石油气钢瓶','2300',3),('2340','溶解乙炔气瓶','溶解乙炔气瓶','2300',3),('2350','车用气瓶','车用气瓶','2300',3),('2360','低温绝热气瓶','低温绝热气瓶','2300',3),('2370','缠绕气瓶','缠绕气瓶','2300',3),('2380','非重复充装气瓶','非重复充装气瓶','2300',3),('23T0','特种气瓶','特种气瓶','2300',3),('2400','氧舱','氧舱','2000',2),('2410','医用氧舱','医用氧舱','2400',3),('2420','高气压舱','高气压舱','2400',3),('2430','再压舱','再压舱','2400',3),('2440','高海拔试验舱','高海拔试验舱','2400',3),('2450','潜水钟','潜水钟','2400',3),('3000','电梯','电梯',NULL,1),('3100','乘客电梯','乘客电梯','3000',2),('3110','曳引式客梯','曳引式客梯','3100',3),('3120','强制式客梯','强制式客梯','3100',3),('3200','载货电梯','载货电梯','3000',2),('3210','曳引式货梯','曳引式货梯','3200',3),('3220','强制式货梯','强制式货梯','3200',3),('4000','起重机械','起重机械','',1),('4100','桥式起重机','桥式起重机','4000',2),('4110','通用桥式起重机','通用桥式起重机','4100',3),('4120','电站桥式起重机','电站桥式起重机','4100',3),('4130','防爆桥式起重机','防爆桥式起重机','4100',3),('4140','绝缘桥式起重机','绝缘桥式起重机','4100',3),('4150','冶金桥式起重机','冶金桥式起重机','4100',3),('4160','架桥机','架桥机','4100',3),('4170','电动单梁起重机','电动单梁起重机','4100',3),('4180','电动单梁悬挂起重机','电动单梁悬挂起重机','4100',3),('4190','电动葫芦桥式起重机','电动葫芦桥式起重机','4100',3),('41A0','防爆梁式起重机','防爆梁式起重机','4100',3),('4200','门式起重机','门式起重机','4000',2),('4210','通用门式起重机','通用门式起重机','4200',3),('4220','水电站门式起重机','水电站门式起重机','4200',3),('4230','轨道式集装箱门式起重机','轨道式集装箱门式起重机','4200',3),('4240','万能杠件拼装式龙门起重机','万能杠件拼装式龙门起重机','4200',3),('4250','岸边集装箱起重机','岸边集装箱起重机','4200',3),('4260','造船门式起重机','造船门式起重机','4200',3),('4270','电动葫芦门式起重机','电动葫芦门式起重机','4200',3),('4280','装卸桥','装卸桥','4200',3),('4300','塔式起重机','塔式起重机','4000',2),('4310','普通塔式起重机','普通塔式起重机','4300',3),('4320','电站塔式起重机','电站塔式起重机','4300',3),('4330','塔式皮带布料机','塔式皮带布料机','4300',3),('4400','流动式起重机','流动式起重机','4000',2),('4410','轮胎起重机','轮胎起重机','4400',3),('4420','履带起重机','履带起重机','4400',3),('4430','全路面起重机','全路面起重机','4400',3),('4440','集装箱正面吊运起重机','集装箱正面吊运起重机','4400',3),('4450','集装箱侧面吊运起重机','集装箱侧面吊运起重机','4400',3),('4460','集装箱跨运车','集装箱跨运车','4400',3),('4470','轮胎式集装箱门式起重机','轮胎式集装箱门式起重机','4400',3),('4480','汽车起重机','汽车起重机','4400',3),('4490','随车起重机','随车起重机','4400',3),('4600','铁路起重机','铁路起重机','4000',2),('4610','蒸汽铁路起重机','蒸汽铁路起重机','4600',3),('4620','内燃铁路起重机','内燃铁路起重机','4600',3),('4630','电力铁路起重机','电力铁路起重机','4600',3),('4700','门座起重机','门座起重机','4000',2),('4710','港口门座起重机','港口门座起重机','4700',3),('4720','船厂门座起重机','船厂门座起重机','4700',3),('4730','带斗门座式起重机','带斗门座式起重机','4700',3),('4740','电站门座起重机','电站门座起重机','4700',3),('4750','港口台架起重机','港口台架起重机','4700',3),('4760','固定式起重机','固定式起重机','4700',3),('4770','液压折臂起重机','液压折臂起重机','4700',3),('4800','升降机','升降机','4000',2),('4810','曲线施工升降机','曲线施工升降机','4800',3),('4820','锅炉炉膛检修平台','锅炉炉膛检修平台','4800',3),('4830','钢索式液压提升装置','钢索式液压提升装置','4800',3),('4840','电站提滑模装置','电站提滑模装置','4800',3),('4850','升船机','升船机','4800',3),('4860','施工升降机','施工升降机','4800',3),('4870','简易升降机','简易升降机','4800',3),('4880','升降作业平台','升降作业平台','4800',3),('4890','高空作业车','高空作业车','4800',3),('4900','缆索起重机','缆索起重机','4000',2),('4910','固定式缆索起重机','固定式缆索起重机','4900',3),('4920','摇摆式缆索起重机','摇摆式缆索起重机','4900',3),('4930','平移式缆索起重机','平移式缆索起重机','4900',3),('4940','辐射式缆索起重机','辐射式缆索起重机','4900',3),('4A00','桅杆起重机','桅杆起重机','4000',2),('4A10','固定式桅杆起重机','固定式桅杆起重机','4A00',3),('4A20','移动式桅杆起重机','移动式桅杆起重机','4A01',3),('4B00','旋臂式起重机','旋臂式起重机','4000',2),('4B10','柱式旋臂式起重机','柱式旋臂式起重机','4B00',3),('4B20','壁式旋臂式起重机','壁式旋臂式起重机','4B00',3),('4B30','平衡悬臂式起重机','平衡悬臂式起重机','4B00',3),('4C00','轻小型起重设备','轻小型起重设备','4000',2),('4C10','输变电施工用抱杆','输变电施工用抱杆','4C00',3),('4C20','电站牵张设备','电站牵张设备','4C00',3),('4C30','内燃平衡重式叉车','内燃平衡重式叉车','4C00',3),('4C40','蓄电池平衡重式叉车','蓄电池平衡重式叉车','4C00',3),('4C50','内燃侧面叉车','内燃侧面叉车','4C00',3),('4C60','插腿式叉车','插腿式叉车','4C00',3),('4C70','前移式叉车','前移式叉车','4C00',3),('4C80','三向堆垛叉车','三向堆垛叉车','4C00',3),('4C90','托盘堆垛车','托盘堆垛车','4C00',3),('4CA0','防爆叉车','防爆叉车','4C00',3),('4CB0','钢丝绳电动葫芦','钢丝绳电动葫芦','4C00',3),('4CC0','防爆钢丝绳电动葫芦','防爆钢丝绳电动葫芦','4C00',3),('4CD0','环链电动葫芦','环链电动葫芦','4C00',3),('4CE0','气动葫芦','气动葫芦','4C00',3),('4CF0','防爆气动葫芦','防爆气动葫芦','4C00',3),('4CG0','带式电动葫芦','带式电动葫芦','4C00',3),('4D00','机械式停车设备','机械式停车设备','4000',2),('4D10','升降横移类机械式停车设备','升降横移类机械式停车设备','4D00',3),('4D20','垂直循环类机械式停车设备','垂直循环类机械式停车设备','4D00',3),('4D30','多层循环类机械式停车设备','多层循环类机械式停车设备','4D00',3),('4D40','平面移动类机械式停车设备','平面移动类机械式停车设备','4D00',3),('4D50','巷道堆垛类机械式停车设备','巷道堆垛类机械式停车设备','4D00',3),('4D60','水平循环类机械式停车设备','水平循环类机械式停车设备','4D00',3),('4D70','垂直升降类机械式停车设备','垂直升降类机械式停车设备','4D00',3),('4D80','简易升降类机械式停车设备','简易升降类机械式停车设备','4D00',3),('4D90','汽车专用升降机类停车设备','汽车专用升降机类停车设备','4D00',3),('9000','客运索道','客运索道',NULL,1),('9100','客运架空索道','客运架空索道','9000',2),('9110','往复式客运架空索道','往复式客运架空索道','9100',3),('9120','循环式客运架空索道','循环式客运架空索道','9100',3),('9200','客运缆车','客运缆车','9000',2),('9210','往复式客运缆车','往复式客运缆车','9200',3),('9220','循环式客运缆车','循环式客运缆车','9200',3),('9300','客运拖牵索道','客运拖牵索道','9000',2),('9310','低位客运拖牵索道','低位客运拖牵索道','9300',3),('B100','锅炉部件','锅炉部件','1000',2),('B110','锅筒','锅筒','B100',3),('B120','集箱','集箱','B100',3),('B130','锅炉过热器','锅炉过热器','B100',3),('B140','锅炉再热器','锅炉再热器','B100',3),('B150','锅炉省煤器','锅炉省煤器','B100',3),('B160','锅炉膜式水冷壁','锅炉膜式水冷壁','B100',3),('B210','封头','封头','B100',3),('C100','锅炉材料','锅炉材料','1000',2),('C110','锅炉用钢板','锅炉用钢板','C100',3),('C120','锅炉用钢管','锅炉用钢管','C100',3),('C130','特种设备用焊接材料','特种设备用焊接材料','C100',3);

/*Table structure for table `t_xt_wbdwdjsz` */

DROP TABLE IF EXISTS `t_xt_wbdwdjsz`;

CREATE TABLE `t_xt_wbdwdjsz` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `zgfs` int(11) NOT NULL,
  `zdfs` int(11) NOT NULL,
  `djmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_wbdwdjsz` */

insert  into `t_xt_wbdwdjsz`(`ID`,`zgfs`,`zdfs`,`djmc`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,22,'1',1,'2013-11-16 16:47:42',3,'2013-12-17 17:04:18',1),(2,2,2,'稽查',2,'2013-11-16 16:48:33',2,'2013-11-16 16:48:38',2),(3,3,4,'1',3,'2013-11-16 16:49:09',3,'2013-12-17 16:36:08',1),(4,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(5,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(6,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(7,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(8,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(9,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(10,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(11,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(12,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(13,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(14,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(15,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(16,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(17,4,4,'用户',4,'2013-11-14 16:49:46',4,'2013-11-16 16:49:54',9),(18,12,23,'1',3,'2013-12-17 14:02:34',3,'2013-12-17 14:02:34',1),(19,11,22,'1',3,'2013-12-17 15:26:12',3,'2013-12-17 15:26:12',1);

/*Table structure for table `t_xt_wbdwpfsd` */

DROP TABLE IF EXISTS `t_xt_wbdwpfsd`;

CREATE TABLE `t_xt_wbdwpfsd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jcxm` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `shuoming` varchar(2000) COLLATE utf8_bin NOT NULL,
  `koufenzhi` int(11) NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_wbdwpfsd` */

/*Table structure for table `t_xt_xmlx` */

DROP TABLE IF EXISTS `t_xt_xmlx`;

CREATE TABLE `t_xt_xmlx` (
  `zyxmdm` varchar(100) COLLATE utf8_bin NOT NULL,
  `xmrylx` int(11) NOT NULL COMMENT '0作业 1管理 2水介质',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`zyxmdm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_xmlx` */

insert  into `t_xt_xmlx`(`zyxmdm`,`xmrylx`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values ('1',1,1,'2013-12-16 16:57:40',1,'2013-12-16 16:57:43',1);

/*Table structure for table `t_xt_xtcs` */

DROP TABLE IF EXISTS `t_xt_xtcs`;

CREATE TABLE `t_xt_xtcs` (
  `xt_key` varchar(200) COLLATE utf8_bin NOT NULL,
  `xt_val` varchar(200) COLLATE utf8_bin NOT NULL,
  `shuoming` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `val_type` int(11) NOT NULL DEFAULT '0' COMMENT '0文本 1数字 2日期 ',
  PRIMARY KEY (`xt_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_xtcs` */

insert  into `t_xt_xtcs`(`xt_key`,`xt_val`,`shuoming`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`val_type`) values ('1','08:00:00','1自动识别检测时间（时间）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',0,0),('10','1','10作业人员证件到期预警时间（月）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('11','1','11设备检验到期预警时间（月）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('12','30','12维保人员证件到期预警时间（天）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('13','30','13设备维保到期预警时间（天）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('14','1','14管理人员证件到期预警时间（月）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('15','08:00:00','15自动识别检测时间（时间）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',0,0),('16','08:00:00','16自动识别检测时间（时间）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',0,0),('17','08:00:00','15自动识别检测时间（时间）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',0,0),('2','2','2生产设备预警时间（月）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('3','1','3作业人员证件到期预警时间（月）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('4','1','4设备检验到期预警时间（月）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('5','11','5维保人员证件到期预警时间（天）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('6','30','6设备维保到期预警时间（天）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('7','1','7管理人员证件到期预警时间（月）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1),('8','08:00:00','8自动识别检测时间（时间）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',0,0),('9','2','9生产设备预警时间（月）',1001,'2013-12-15 16:37:53',2001,'2013-12-16 16:38:04',1,1);

/*Table structure for table `t_xt_xzzzjg` */

DROP TABLE IF EXISTS `t_xt_xzzzjg`;

CREATE TABLE `t_xt_xzzzjg` (
  `id` int(11) NOT NULL,
  `gxdqbmqx` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `gxdqbmxz` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `jgdw_id` int(11) NOT NULL,
  `xzbmmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `dizhi` varchar(200) COLLATE utf8_bin NOT NULL,
  `youbian` varchar(20) COLLATE utf8_bin NOT NULL,
  `aqfgbmmc` varchar(100) COLLATE utf8_bin NOT NULL,
  `aqdgld` varchar(100) COLLATE utf8_bin NOT NULL,
  `aqfgldgddh` varchar(20) COLLATE utf8_bin NOT NULL,
  `aqfgldsj` varchar(20) COLLATE utf8_bin NOT NULL,
  `aqjgry` varchar(100) COLLATE utf8_bin NOT NULL,
  `aqjgrygddh` varchar(20) COLLATE utf8_bin NOT NULL,
  `aqjgrysj` varchar(20) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_1` (`gxdqbmxz`) USING BTREE,
  KEY `FK_Reference_59` (`jgdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_312` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`),
  CONSTRAINT `FK_Reference_59` FOREIGN KEY (`jgdw_id`) REFERENCES `t_xt_jcdwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_xzzzjg` */

insert  into `t_xt_xzzzjg`(`id`,`gxdqbmqx`,`gxdqbmxz`,`jgdw_id`,`xzbmmc`,`dizhi`,`youbian`,`aqfgbmmc`,`aqdgld`,`aqfgldgddh`,`aqfgldsj`,`aqjgry`,`aqjgrygddh`,`aqjgrysj`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,'dqbm','dqbm',1,'jiancha','丽水市。。道','123456','阿斯顿','西欧昂','055151212112','12345645645','asd','02511111111','13545154515',1,'2013-12-17 16:39:54',123,'2013-12-17 16:40:04',1),(2,'dqbm1','dqbm1',2,'jiancha','丽水市。。道','123456','阿斯顿','西欧昂','055151212112','12345645645','asd','02511111111','13545154515',1,'2013-12-17 16:39:54',123,'2013-12-17 16:40:04',1),(3,'dqbm2','dqbm2',3,'jiancha','丽水市。。道','123456','阿斯顿','西欧昂','055151212112','12345645645','asd','02511111111','13545154515',1,'2013-12-17 16:39:54',123,'2013-12-17 16:40:04',1);

/*Table structure for table `t_xt_yhjs` */

DROP TABLE IF EXISTS `t_xt_yhjs`;

CREATE TABLE `t_xt_yhjs` (
  `yh_id` int(11) NOT NULL,
  `js_id` int(11) NOT NULL,
  PRIMARY KEY (`yh_id`,`js_id`),
  KEY `FK_Reference_6` (`js_id`) USING BTREE,
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`yh_id`) REFERENCES `t_xt_yonghu` (`id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`js_id`) REFERENCES `t_xt_juese` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_yhjs` */

/*Table structure for table `t_xt_yonghu` */

DROP TABLE IF EXISTS `t_xt_yonghu`;

CREATE TABLE `t_xt_yonghu` (
  `id` int(11) NOT NULL,
  `zhanghao` varchar(100) COLLATE utf8_bin NOT NULL,
  `mima` varchar(200) COLLATE utf8_bin NOT NULL,
  `xingming` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dwbm_id` int(11) NOT NULL,
  `shoujihao` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_1` (`zhanghao`) USING BTREE,
  CONSTRAINT `FK_Reference_310` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_yonghu` */

insert  into `t_xt_yonghu`(`id`,`zhanghao`,`mima`,`xingming`,`dwbm_id`,`shoujihao`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,'20130101','20130101','admin',1,'138',1,'2013-12-16 16:10:38',1,'2013-12-16 16:10:40',1),(2,'qwe','qwe','qwe',1,'138',1,'2013-12-16 16:19:15',1,'2013-12-17 16:20:55',1),(3,'20130201','20130201','admin',1,'138',1,'2013-12-16 16:10:38',1,'2013-12-16 16:10:40',1),(4,'may','may','may',2,'138',1,'2013-12-16 16:19:15',1,'2013-12-16 16:19:18',1),(8,'77777','77777','',1,NULL,1,'2013-12-12 15:11:00',1,'2013-12-12 15:11:00',1),(9,'555','555','',1,NULL,1,'2013-12-12 16:29:00',1,'2013-12-12 16:29:00',1),(10,'20130102','20130102','dsgf',1,'646',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(12,'20130103','20130103','dgf',1,'648',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(13,'20130104','20130104','sg',1,'649',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(14,'20130105','20130105','dsgv',1,'650',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(15,'20130106','20130106','sg',1,'651',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(16,'20130107','20130107','dsgv',1,'652',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(17,'20130108','20130108','sdgfsdgf',1,'653',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(18,'20130109','20130109','dsgv',1,'654',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(19,'20130110','20130110','dsgv',1,'655',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(20,'20130111','20130111','fgsdfsddf',1,'656',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(21,'20130112','20130112','s',1,'657',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(22,'20130113','20130113','sdgfsdgf',1,'658',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(23,'20130114','20130114','dsgv',1,'659',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(24,'20130115','20130115','dsgv',1,'660',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(25,'20130116','20130116','s',1,'661',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(26,'20130117','20130117','dsgv',1,'662',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(27,'20130118','20130118','fs',1,'663',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(28,'20130119','20130119','fs',1,'664',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(29,'20130120','20130120','dsgv',1,'665',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(30,'20130121','20130121','dsgv',1,'666',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(31,'20130122','20130122','dsgv',1,'667',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1),(32,'20130123','20130123','dsgv',1,'668',1,'2013-12-12 15:11:00',1,'2013-11-16 00:00:00',1),(33,'20130124','20130124','dsgv',1,'669',1,'2013-12-12 16:29:00',1,'2013-11-16 00:00:00',1);

/*Table structure for table `t_xt_zzjgdm` */

DROP TABLE IF EXISTS `t_xt_zzjgdm`;

CREATE TABLE `t_xt_zzjgdm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jgdm` varchar(200) COLLATE utf8_bin NOT NULL,
  `jglx` char(1) COLLATE utf8_bin NOT NULL COMMENT '代码	类别\r\n            1	企业法人\r\n            2	企业非法人\r\n            3	事业法人\r\n            4	事业非法人\r\n            5	团体法人\r\n            6	团体非法人\r\n            7	机关法人\r\n            8	机关非法人\r\n            9	其他机构\r\n            A	民办非企业\r\n            B	个体\r\n            C	工会法人\r\n            ',
  `jgmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `fddbr` varchar(200) COLLATE utf8_bin NOT NULL,
  `zgbm` varchar(200) COLLATE utf8_bin NOT NULL,
  `clrq` varchar(200) COLLATE utf8_bin NOT NULL,
  `zczj` varchar(200) COLLATE utf8_bin NOT NULL,
  `xzhq` varchar(200) COLLATE utf8_bin NOT NULL,
  `jgdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `yzbm` varchar(200) COLLATE utf8_bin NOT NULL,
  `dhhm` varchar(200) COLLATE utf8_bin NOT NULL,
  `email` varchar(200) COLLATE utf8_bin NOT NULL,
  `jbrxm` varchar(200) COLLATE utf8_bin NOT NULL,
  `jbrsj` varchar(200) COLLATE utf8_bin NOT NULL,
  `jydz` varchar(200) COLLATE utf8_bin NOT NULL,
  `jxyb` varchar(200) COLLATE utf8_bin NOT NULL,
  `jydh` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_xt_zzjgdm` */

/*Table structure for table `t_yh_aqyhtbjl` */

DROP TABLE IF EXISTS `t_yh_aqyhtbjl`;

CREATE TABLE `t_yh_aqyhtbjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbdw_id` int(11) NOT NULL,
  `twzh_id` varchar(100) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `sfysb` int(11) DEFAULT NULL COMMENT '0否 1是',
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `xyzgrq` datetime NOT NULL,
  `sbsj` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_328` (`tbdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_328` FOREIGN KEY (`tbdw_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_aqyhtbjl` */

/*Table structure for table `t_yh_aqyhtbxm` */

DROP TABLE IF EXISTS `t_yh_aqyhtbxm`;

CREATE TABLE `t_yh_aqyhtbxm` (
  `tbjl_id` int(11) NOT NULL,
  `yh_id` int(11) NOT NULL,
  `sfysb` int(11) NOT NULL COMMENT '0否 1是 2监察发现',
  PRIMARY KEY (`tbjl_id`,`yh_id`),
  KEY `FK_Reference_327` (`yh_id`) USING BTREE,
  CONSTRAINT `FK_Reference_324` FOREIGN KEY (`tbjl_id`) REFERENCES `t_yh_aqyhtbjl` (`id`),
  CONSTRAINT `FK_Reference_327` FOREIGN KEY (`yh_id`) REFERENCES `t_yh_yhxm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_aqyhtbxm` */

/*Table structure for table `t_yh_bjcdwlb` */

DROP TABLE IF EXISTS `t_yh_bjcdwlb`;

CREATE TABLE `t_yh_bjcdwlb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jld_id` int(11) NOT NULL,
  `dwlb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_140` (`jld_id`) USING BTREE,
  CONSTRAINT `FK_Reference_140` FOREIGN KEY (`jld_id`) REFERENCES `t_yh_xcaqjdjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_bjcdwlb` */

/*Table structure for table `t_yh_cfzxqk` */

DROP TABLE IF EXISTS `t_yh_cfzxqk`;

CREATE TABLE `t_yh_cfzxqk` (
  `zls_id` int(11) NOT NULL,
  `cftzsbh` varchar(200) COLLATE utf8_bin NOT NULL,
  `cftzsnr` text COLLATE utf8_bin NOT NULL,
  `cfje` float NOT NULL DEFAULT '0',
  `mssb` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `cftzsfcnr` datetime NOT NULL,
  `jaqk` int(11) NOT NULL COMMENT '0未结案 1已结案',
  `jinbanren` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `jarq` datetime DEFAULT NULL,
  `beizhu` text COLLATE utf8_bin,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '未归档 已归档',
  PRIMARY KEY (`zls_id`),
  CONSTRAINT `FK_Reference_409` FOREIGN KEY (`zls_id`) REFERENCES `t_yh_jczl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_cfzxqk` */

/*Table structure for table `t_yh_jczl` */

DROP TABLE IF EXISTS `t_yh_jczl`;

CREATE TABLE `t_yh_jczl` (
  `id` int(11) NOT NULL,
  `jczlsbh` varchar(200) COLLATE utf8_bin NOT NULL,
  `zljsdw_id` int(11) NOT NULL,
  `jcrq` datetime NOT NULL,
  `xyzgrq` datetime NOT NULL,
  `zlfbjg` int(11) NOT NULL,
  `jcry` varchar(200) COLLATE utf8_bin NOT NULL,
  `sfla` int(11) NOT NULL COMMENT '0否 1是',
  `xcaqjdjcjl_id` int(11) DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '0未发布 1未归档 2已归档',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_1` (`jczlsbh`) USING BTREE,
  KEY `FK_Reference_307` (`xcaqjdjcjl_id`) USING BTREE,
  KEY `FK_Reference_330` (`zljsdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_307` FOREIGN KEY (`xcaqjdjcjl_id`) REFERENCES `t_yh_xcaqjdjcjl` (`id`),
  CONSTRAINT `FK_Reference_330` FOREIGN KEY (`zljsdw_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_jczl` */

/*Table structure for table `t_yh_jczlyhxm` */

DROP TABLE IF EXISTS `t_yh_jczlyhxm`;

CREATE TABLE `t_yh_jczlyhxm` (
  `jczl_id` int(11) NOT NULL,
  `yh_id` int(11) NOT NULL,
  PRIMARY KEY (`yh_id`,`jczl_id`),
  KEY `FK_Reference_38` (`jczl_id`) USING BTREE,
  CONSTRAINT `FK_Reference_37` FOREIGN KEY (`yh_id`) REFERENCES `t_yh_yhxm` (`id`),
  CONSTRAINT `FK_Reference_38` FOREIGN KEY (`jczl_id`) REFERENCES `t_yh_jczl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_jczlyhxm` */

/*Table structure for table `t_yh_xcaqjdjcjl` */

DROP TABLE IF EXISTS `t_yh_xcaqjdjcjl`;

CREATE TABLE `t_yh_xcaqjdjcjl` (
  `id` int(11) NOT NULL,
  `jclb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `jcrqks` datetime NOT NULL,
  `jcrqjs` datetime NOT NULL,
  `bjcdw` int(11) NOT NULL,
  `bjcdwdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `bjcdwlxr` varchar(200) COLLATE utf8_bin NOT NULL,
  `bjcdwlxrzw` varchar(200) COLLATE utf8_bin NOT NULL,
  `bjcdwlxrlxdh` varchar(200) COLLATE utf8_bin NOT NULL,
  `jcdw` int(11) NOT NULL,
  `jczynrqt` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `clcsqt` text COLLATE utf8_bin,
  `bjcdwyj` text COLLATE utf8_bin NOT NULL,
  `bjcdwqrrq` datetime NOT NULL,
  `bjcdwyjfzr` varchar(200) COLLATE utf8_bin NOT NULL,
  `tzsbaqjcy` varchar(200) COLLATE utf8_bin NOT NULL,
  `jiluyuan` varchar(200) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_138` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_xcaqjdjcjl` */

/*Table structure for table `t_yh_xcaqjdjcjlclcs` */

DROP TABLE IF EXISTS `t_yh_xcaqjdjcjlclcs`;

CREATE TABLE `t_yh_xcaqjdjcjlclcs` (
  `id` int(11) NOT NULL,
  `jld_id` int(11) NOT NULL,
  `clcs` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_145` (`jld_id`) USING BTREE,
  CONSTRAINT `FK_Reference_145` FOREIGN KEY (`jld_id`) REFERENCES `t_yh_xcaqjdjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_xcaqjdjcjlclcs` */

/*Table structure for table `t_yh_xcaqjdjcjljcy` */

DROP TABLE IF EXISTS `t_yh_xcaqjdjcjljcy`;

CREATE TABLE `t_yh_xcaqjdjcjljcy` (
  `id` int(11) NOT NULL,
  `jld_id` int(11) NOT NULL,
  `jcy` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_141` (`jld_id`) USING BTREE,
  CONSTRAINT `FK_Reference_141` FOREIGN KEY (`jld_id`) REFERENCES `t_yh_xcaqjdjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_xcaqjdjcjljcy` */

/*Table structure for table `t_yh_xcaqjdjcjljczynr` */

DROP TABLE IF EXISTS `t_yh_xcaqjdjcjljczynr`;

CREATE TABLE `t_yh_xcaqjdjcjljczynr` (
  `id` int(11) NOT NULL,
  `jld_id` int(11) NOT NULL,
  `jczynr` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_143` (`jld_id`) USING BTREE,
  CONSTRAINT `FK_Reference_143` FOREIGN KEY (`jld_id`) REFERENCES `t_yh_xcaqjdjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_xcaqjdjcjljczynr` */

/*Table structure for table `t_yh_xcaqjdjcjlptry` */

DROP TABLE IF EXISTS `t_yh_xcaqjdjcjlptry`;

CREATE TABLE `t_yh_xcaqjdjcjlptry` (
  `id` int(11) NOT NULL,
  `jld_id` int(11) NOT NULL,
  `ptry` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_142` (`jld_id`) USING BTREE,
  CONSTRAINT `FK_Reference_142` FOREIGN KEY (`jld_id`) REFERENCES `t_yh_xcaqjdjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_xcaqjdjcjlptry` */

/*Table structure for table `t_yh_xcaqjdjcjlsbsl` */

DROP TABLE IF EXISTS `t_yh_xcaqjdjcjlsbsl`;

CREATE TABLE `t_yh_xcaqjdjcjlsbsl` (
  `id` int(11) NOT NULL,
  `jld_id` int(11) NOT NULL,
  `sblb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `sbsl` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_144` (`jld_id`) USING BTREE,
  CONSTRAINT `FK_Reference_144` FOREIGN KEY (`jld_id`) REFERENCES `t_yh_xcaqjdjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_xcaqjdjcjlsbsl` */

/*Table structure for table `t_yh_xcjd` */

DROP TABLE IF EXISTS `t_yh_xcjd`;

CREATE TABLE `t_yh_xcjd` (
  `id` int(11) NOT NULL,
  `dw_id` int(11) DEFAULT NULL,
  `dwmc` varchar(200) COLLATE utf8_bin NOT NULL,
  `dizhi` varchar(200) COLLATE utf8_bin NOT NULL,
  `frdb` varchar(200) COLLATE utf8_bin NOT NULL,
  `frdblxdh` varchar(200) COLLATE utf8_bin NOT NULL,
  `aqglry` varchar(200) COLLATE utf8_bin NOT NULL,
  `aqglrylxdh` varchar(200) COLLATE utf8_bin NOT NULL,
  `clyj` varchar(200) COLLATE utf8_bin NOT NULL,
  `xcry` varchar(200) COLLATE utf8_bin NOT NULL,
  `jcsj` datetime NOT NULL,
  `bxcdwyj` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `bxcdwfzr` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `zgjgqryj` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `zgjgqrfzr` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xclx` int(11) NOT NULL COMMENT '1乡镇 2 行业主管',
  `xcdw` int(11) NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_329` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_xcjd` */

/*Table structure for table `t_yh_xcjdsbsl` */

DROP TABLE IF EXISTS `t_yh_xcjdsbsl`;

CREATE TABLE `t_yh_xcjdsbsl` (
  `id` int(11) NOT NULL,
  `xcjd_id` int(11) NOT NULL,
  `sblb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `sbsl` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_334` (`xcjd_id`) USING BTREE,
  CONSTRAINT `FK_Reference_334` FOREIGN KEY (`xcjd_id`) REFERENCES `t_yh_xcjd` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_xcjdsbsl` */

/*Table structure for table `t_yh_xcjdyhxm` */

DROP TABLE IF EXISTS `t_yh_xcjdyhxm`;

CREATE TABLE `t_yh_xcjdyhxm` (
  `xcjd_id` int(11) NOT NULL,
  `yh_id` int(11) NOT NULL,
  `sfysb` int(11) NOT NULL DEFAULT '0' COMMENT '0否 1是',
  PRIMARY KEY (`xcjd_id`,`yh_id`),
  KEY `FK_Reference_36` (`yh_id`) USING BTREE,
  CONSTRAINT `FK_Reference_34` FOREIGN KEY (`xcjd_id`) REFERENCES `t_yh_xcjd` (`id`),
  CONSTRAINT `FK_Reference_36` FOREIGN KEY (`yh_id`) REFERENCES `t_yh_yhxm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_xcjdyhxm` */

/*Table structure for table `t_yh_yhgzkf` */

DROP TABLE IF EXISTS `t_yh_yhgzkf`;

CREATE TABLE `t_yh_yhgzkf` (
  `id` int(11) NOT NULL,
  `aqyh` varchar(200) COLLATE utf8_bin NOT NULL,
  `wfaqftk` varchar(200) COLLATE utf8_bin NOT NULL,
  `cftk` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `sfzdsb` int(11) DEFAULT NULL COMMENT '0否 1是',
  `zdsbgz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `xczdpd` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `koufenzhi` int(11) NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `yhyzcd` int(11) NOT NULL DEFAULT '0' COMMENT '0一般 1严重 2非常严重',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_yhgzkf` */

/*Table structure for table `t_yh_yhxm` */

DROP TABLE IF EXISTS `t_yh_yhxm`;

CREATE TABLE `t_yh_yhxm` (
  `id` int(11) NOT NULL,
  `sydw_id` int(11) NOT NULL,
  `yhlb_id` int(11) NOT NULL,
  `yhly` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典 0自动识别 1监察发现2乡镇发现 3行业主管发现',
  `sbzl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  `ccbh` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `qtyhms` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `zgzt` int(11) NOT NULL COMMENT '0未整改 1已整改',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_199` (`sydw_id`) USING BTREE,
  KEY `FK_Reference_323` (`yhlb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_199` FOREIGN KEY (`sydw_id`) REFERENCES `t_xt_dwzzjg` (`id`),
  CONSTRAINT `FK_Reference_323` FOREIGN KEY (`yhlb_id`) REFERENCES `t_yh_yhgzkf` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_yhxm` */

/*Table structure for table `t_yh_yhzgyfkyj` */

DROP TABLE IF EXISTS `t_yh_yhzgyfkyj`;

CREATE TABLE `t_yh_yhzgyfkyj` (
  `id` int(11) NOT NULL,
  `yhxm_id` int(11) NOT NULL,
  `fkhscdw_id` int(11) NOT NULL,
  `fkhscxx` text COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_194` (`yhxm_id`) USING BTREE,
  KEY `FK_Reference_195` (`fkhscdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_194` FOREIGN KEY (`yhxm_id`) REFERENCES `t_yh_yhxm` (`id`),
  CONSTRAINT `FK_Reference_195` FOREIGN KEY (`fkhscdw_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yh_yhzgyfkyj` */

/*Table structure for table `t_yj_jsdw` */

DROP TABLE IF EXISTS `t_yj_jsdw`;

CREATE TABLE `t_yj_jsdw` (
  `ID` int(11) NOT NULL,
  `jsdw` int(11) NOT NULL,
  `fsfs` int(11) NOT NULL DEFAULT '0' COMMENT '0网页 1网页+短信',
  `sfyd` int(11) NOT NULL COMMENT '0未读 1已读',
  `ydsj` datetime DEFAULT NULL,
  `xinxi_id` int(11) NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_22` (`xinxi_id`) USING BTREE,
  KEY `FK_Reference_325` (`jsdw`) USING BTREE,
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`xinxi_id`) REFERENCES `t_yj_yjxx` (`ID`),
  CONSTRAINT `FK_Reference_325` FOREIGN KEY (`jsdw`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yj_jsdw` */

/*Table structure for table `t_yj_tztx` */

DROP TABLE IF EXISTS `t_yj_tztx`;

CREATE TABLE `t_yj_tztx` (
  `id` int(11) NOT NULL,
  `txlb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `glxgjz` varchar(100) COLLATE utf8_bin NOT NULL,
  `tzjsdw` int(11) NOT NULL,
  `yxqx` datetime NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_326` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yj_tztx` */

/*Table structure for table `t_yj_yjcyry` */

DROP TABLE IF EXISTS `t_yj_yjcyry`;

CREATE TABLE `t_yj_yjcyry` (
  `yjfq_id` int(11) NOT NULL,
  `yjry_id` int(11) NOT NULL,
  PRIMARY KEY (`yjfq_id`,`yjry_id`),
  KEY `FK_Reference_39` (`yjry_id`) USING BTREE,
  CONSTRAINT `FK_Reference_39` FOREIGN KEY (`yjry_id`) REFERENCES `t_yj_yjgl` (`ID`),
  CONSTRAINT `t_yj_yjcyry_ibfk_1` FOREIGN KEY (`yjfq_id`) REFERENCES `t_yj_yjgl` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yj_yjcyry` */

insert  into `t_yj_yjcyry`(`yjfq_id`,`yjry_id`) values (5,1),(11,1),(16,1),(17,1),(3,2),(9,2),(15,2),(21,2),(7,4),(13,4),(19,4),(8,5),(14,5),(20,5),(4,7),(10,7),(16,7),(22,7),(6,8),(12,8),(18,8),(19,9),(20,9),(10,10),(14,10),(22,12),(4,20),(8,21);

/*Table structure for table `t_yj_yjfq` */

DROP TABLE IF EXISTS `t_yj_yjfq`;

CREATE TABLE `t_yj_yjfq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fqdw_id` int(11) NOT NULL,
  `sydwid` int(11) DEFAULT NULL,
  `didian` varchar(200) COLLATE utf8_bin NOT NULL,
  `lianxiren` varchar(100) COLLATE utf8_bin NOT NULL,
  `lxdh` varchar(100) COLLATE utf8_bin NOT NULL,
  `shuoming` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_178` (`fqdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_178` FOREIGN KEY (`fqdw_id`) REFERENCES `t_xt_jcdwzzjg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yj_yjfq` */

insert  into `t_yj_yjfq`(`id`,`fqdw_id`,`sydwid`,`didian`,`lianxiren`,`lxdh`,`shuoming`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,3,1,'山东省济南市','孙琛斌1','0535-5769632','4565464',1,'2013-12-17 15:50:55',3,'2013-12-17 17:01:47',0),(2,3,1,'山东省济南市','孙琛斌2','0535-5769632','7585675',1,'2013-12-17 15:50:55',3,'2013-12-17 17:03:25',0),(3,3,3,'山东省济南市','孙琛斌4','0535-5769632','8888888888888',1,'2013-12-17 15:50:55',3,'2013-12-17 17:46:37',1),(4,3,4,'山东省济南市','孙琛斌3','0535-5769632','34234234',1,'2013-12-17 15:50:55',3,'2013-12-17 17:42:12',1),(5,3,5,'山东省济南市','孙琛斌5','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(6,3,1,'山东省济南市','孙琛斌6','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(7,3,1,'山东省济南市','孙琛斌7','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(8,3,1,'山东省济南市','孙琛斌8','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(9,3,6,'山东省济南市','孙琛斌9','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(10,3,6,'山东省济南市','孙琛斌10','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(11,3,1,'山东省济南市','孙琛斌11','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(12,3,8,'山东省济南市','孙琛斌12','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(13,3,1,'山东省济南市','孙琛斌13','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(14,3,7,'山东省济南市','孙琛斌14','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(15,3,1,'山东省济南市','孙琛斌15','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(16,3,9,'山东省济南市','孙琛斌16','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(17,3,10,'山东省济南市','孙琛斌17','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(18,3,1,'山东省济南市','孙琛斌18','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(19,3,1,'山东省济南市','孙琛斌19','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(20,3,1,'山东省济南市','孙琛斌20','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(21,3,1,'山东省济南市','孙琛斌21','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(22,3,1,'山东省济南市','孙琛斌22','0535-5769632','说明内容',1,'2013-12-17 15:50:55',1,'2013-12-17 15:50:58',1),(23,3,1,'山东省济南市','孙琛斌2','0535-5769632','34453543',3,'2013-12-17 17:05:37',3,'2013-12-17 17:05:37',0);

/*Table structure for table `t_yj_yjfqsb` */

DROP TABLE IF EXISTS `t_yj_yjfqsb`;

CREATE TABLE `t_yj_yjfqsb` (
  `tzsb_id` int(11) NOT NULL,
  `yjfq_id` int(11) NOT NULL,
  PRIMARY KEY (`tzsb_id`,`yjfq_id`),
  KEY `FK_Reference_42` (`yjfq_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yj_yjfqsb` */

insert  into `t_yj_yjfqsb`(`tzsb_id`,`yjfq_id`) values (1,1),(2,2),(4,2),(6,3),(7,4),(5,5),(11,5),(6,6),(13,6),(7,7),(15,7),(8,8),(17,8),(1,9),(3,9),(2,10),(18,10),(3,11),(4,12),(5,13),(6,14),(7,15),(8,16),(1,17),(2,18),(3,19),(4,20),(5,21),(6,22),(4,23);

/*Table structure for table `t_yj_yjgl` */

DROP TABLE IF EXISTS `t_yj_yjgl`;

CREATE TABLE `t_yj_yjgl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `lsjcjg_id` int(11) NOT NULL,
  `mingcheng` varchar(100) COLLATE utf8_bin NOT NULL,
  `shouji` varchar(100) COLLATE utf8_bin NOT NULL,
  `lxdh` varchar(100) COLLATE utf8_bin NOT NULL,
  `bgdz` varchar(200) COLLATE utf8_bin NOT NULL,
  `yjlb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `beizhu` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_177` (`lsjcjg_id`) USING BTREE,
  CONSTRAINT `FK_Reference_177` FOREIGN KEY (`lsjcjg_id`) REFERENCES `t_xt_jcdwzzjg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yj_yjgl` */

insert  into `t_yj_yjgl`(`ID`,`lsjcjg_id`,`mingcheng`,`shouji`,`lxdh`,`bgdz`,`yjlb`,`beizhu`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,2,'孙琛斌1','18365478965','0535-3658965','山东省济南市','1','1',1,'2013-12-16 16:47:11',1,'2013-12-16 16:47:14',1),(2,3,'孙琛斌2','13526547856','0535-5769632','山东省济南市','紧急','111',3,'2013-12-17 09:31:42',3,'2013-12-17 09:31:42',1),(3,3,'孙琛斌3','13569636958','0535-5769632','烟台市','紧急','3432',3,'2013-12-17 09:37:33',3,'2013-12-17 09:37:33',1),(4,3,'孙琛斌4','18365478965','0535-3658965','山东省济南市','1','1',1,'2013-12-16 16:47:11',1,'2013-12-16 16:47:14',1),(5,3,'孙琛斌5','13526547856','0535-5769632','山东省济南市','紧急','111',3,'2013-12-17 09:31:42',3,'2013-12-17 09:31:42',1),(6,3,'孙琛斌6','13569636958','0535-5769632','烟台市','紧急','3432',3,'2013-12-17 09:37:33',3,'2013-12-17 09:37:33',1),(7,3,'孙琛斌7','13526547856','0535-5769632','山东省济南市','紧急','111',3,'2013-12-17 09:31:42',3,'2013-12-17 09:31:42',1),(8,3,'孙琛斌8','13569636958','0535-5769632','烟台市','紧急','3432',3,'2013-12-17 09:37:33',3,'2013-12-17 09:37:33',1),(9,3,'孙琛斌9','18365478965','0535-3658965','山东省济南市','1','1',1,'2013-12-16 16:47:11',1,'2013-12-16 16:47:14',1),(10,3,'孙琛斌10','13526547856','0535-5769632','山东省济南市','紧急','111',3,'2013-12-17 09:31:42',3,'2013-12-17 09:31:42',1),(11,3,'孙琛斌11','13569636958','0535-5769632','烟台市','紧急','3432',3,'2013-12-17 09:37:33',3,'2013-12-17 09:37:33',1),(12,3,'孙琛斌12','13526547856','0535-5769632','山东省济南市','紧急','111',3,'2013-12-17 09:31:42',3,'2013-12-17 09:31:42',1),(13,3,'孙琛斌13','13569636958','0535-5769632','烟台市','紧急','3432',3,'2013-12-17 09:37:33',3,'2013-12-17 09:37:33',1),(14,3,'孙琛斌14','18365478965','0535-3658965','山东省济南市','1','1',1,'2013-12-16 16:47:11',1,'2013-12-16 16:47:14',1),(15,3,'孙琛斌15','13526547856','0535-5769632','山东省济南市','紧急','111',3,'2013-12-17 09:31:42',3,'2013-12-17 09:31:42',1),(16,3,'孙琛斌16','13569636958','0535-5769632','烟台市','紧急','3432',3,'2013-12-17 09:37:33',3,'2013-12-17 09:37:33',1),(17,3,'孙琛斌17','13526547856','0535-5769632','山东省济南市','紧急','111',3,'2013-12-17 09:31:42',3,'2013-12-17 09:31:42',1),(18,3,'孙琛斌18','13569636958','0535-5769632','烟台市','紧急','3432',3,'2013-12-17 09:37:33',3,'2013-12-17 09:37:33',1),(19,3,'孙琛斌19','18365478965','0535-3658965','山东省济南市','1','1',1,'2013-12-16 16:47:11',1,'2013-12-16 16:47:14',1),(20,3,'孙琛斌20','13526547856','0535-5769632','山东省济南市','紧急','111',3,'2013-12-17 09:31:42',3,'2013-12-17 09:31:42',1),(21,3,'孙琛斌21','13569636958','0535-5769632','烟台市','紧急','3432',3,'2013-12-17 09:37:33',3,'2013-12-17 09:37:33',1),(22,3,'孙琛斌22','13569636958','0535-5769632','烟台市','紧急','3432',3,'2013-12-17 09:37:33',3,'2013-12-17 09:37:33',1),(23,3,'孙天峰','13569636958','0535-5769632','蓬莱市','紧急','111',3,'2013-12-17 13:48:05',3,'2013-12-17 13:48:05',1),(24,3,'孙梓祺','13596874563','0535-5769632','贵州','紧急','11222',3,'2013-12-17 14:10:12',3,'2013-12-17 14:10:12',1);

/*Table structure for table `t_yj_yjxx` */

DROP TABLE IF EXISTS `t_yj_yjxx`;

CREATE TABLE `t_yj_yjxx` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `fsdw_id` int(11) NOT NULL,
  `txlb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `txnr` varchar(2000) COLLATE utf8_bin NOT NULL,
  `txrq` datetime NOT NULL,
  `glx_id` int(11) NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_156` (`fsdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_156` FOREIGN KEY (`fsdw_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yj_yjxx` */

/*Table structure for table `t_yx_glsjzcljl` */

DROP TABLE IF EXISTS `t_yx_glsjzcljl`;

CREATE TABLE `t_yx_glsjzcljl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sydw` int(11) NOT NULL,
  `sjzclry` varchar(200) COLLATE utf8_bin NOT NULL,
  `sfsjzcl` int(11) NOT NULL COMMENT '0否 1是',
  `riqi` datetime NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `beizhu` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_159` (`sydw`) USING BTREE,
  CONSTRAINT `FK_Reference_159` FOREIGN KEY (`sydw`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yx_glsjzcljl` */

/*Table structure for table `t_yx_lxjcjlfxdwt` */

DROP TABLE IF EXISTS `t_yx_lxjcjlfxdwt`;

CREATE TABLE `t_yx_lxjcjlfxdwt` (
  `jl_id` int(11) NOT NULL,
  `xm_id` int(11) NOT NULL,
  PRIMARY KEY (`jl_id`,`xm_id`),
  KEY `FK_Reference_154` (`xm_id`) USING BTREE,
  CONSTRAINT `FK_Reference_154` FOREIGN KEY (`xm_id`) REFERENCES `t_yx_lxjcxmwt` (`id`),
  CONSTRAINT `FK_Reference_155` FOREIGN KEY (`jl_id`) REFERENCES `t_sb_zxjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yx_lxjcjlfxdwt` */

/*Table structure for table `t_yx_lxjcjljcdxm` */

DROP TABLE IF EXISTS `t_yx_lxjcjljcdxm`;

CREATE TABLE `t_yx_lxjcjljcdxm` (
  `jl_id` int(11) NOT NULL,
  `xm_id` int(11) NOT NULL,
  PRIMARY KEY (`jl_id`,`xm_id`),
  KEY `FK_Reference_153` (`xm_id`) USING BTREE,
  CONSTRAINT `FK_Reference_152` FOREIGN KEY (`xm_id`) REFERENCES `t_yx_lxjcxm` (`id`),
  CONSTRAINT `FK_Reference_153` FOREIGN KEY (`xm_id`) REFERENCES `t_sb_zxjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yx_lxjcjljcdxm` */

/*Table structure for table `t_yx_lxjcxm` */

DROP TABLE IF EXISTS `t_yx_lxjcxm`;

CREATE TABLE `t_yx_lxjcxm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sbzl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `sblb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '不是设备代码表 二级',
  `bianma` varchar(200) COLLATE utf8_bin NOT NULL,
  `xiangmu` varchar(200) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_1` (`sbzl`,`sblb`,`bianma`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yx_lxjcxm` */

/*Table structure for table `t_yx_lxjcxmwt` */

DROP TABLE IF EXISTS `t_yx_lxjcxmwt`;

CREATE TABLE `t_yx_lxjcxmwt` (
  `id` int(11) NOT NULL,
  `wtlb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '先数据字典,不需要标识检查项目编号',
  `wtbm` varchar(200) COLLATE utf8_bin NOT NULL,
  `jcxm_bm` int(11) NOT NULL,
  `wtms` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_1` (`jcxm_bm`,`wtlb`,`wtbm`) USING BTREE,
  CONSTRAINT `FK_Reference_151` FOREIGN KEY (`id`) REFERENCES `t_yx_lxjcxm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yx_lxjcxmwt` */

/*Table structure for table `t_yx_ydwbjljcdxm` */

DROP TABLE IF EXISTS `t_yx_ydwbjljcdxm`;

CREATE TABLE `t_yx_ydwbjljcdxm` (
  `jl_id` int(11) NOT NULL,
  `xm_id` int(11) NOT NULL,
  PRIMARY KEY (`jl_id`,`xm_id`),
  KEY `FK_Reference_ydwbxm` (`xm_id`) USING BTREE,
  CONSTRAINT `FK_Reference_158` FOREIGN KEY (`jl_id`) REFERENCES `t_yy_tzsbydwbjl` (`id`),
  CONSTRAINT `FK_Reference_ydwbxm` FOREIGN KEY (`xm_id`) REFERENCES `t_yx_ydwbxm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yx_ydwbjljcdxm` */

insert  into `t_yx_ydwbjljcdxm`(`jl_id`,`xm_id`) values (18,1),(18,2),(18,3),(18,4);

/*Table structure for table `t_yx_ydwbxm` */

DROP TABLE IF EXISTS `t_yx_ydwbxm`;

CREATE TABLE `t_yx_ydwbxm` (
  `id` int(11) NOT NULL,
  `sbzl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `xiangmu` varchar(200) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `beizhu` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yx_ydwbxm` */

insert  into `t_yx_ydwbxm`(`id`,`sbzl`,`xiangmu`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`beizhu`) values (1,'7','修理',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1'),(2,'7','拆除',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1'),(3,'7','破坏',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1'),(4,'7','无视',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1'),(5,'7','修理',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1'),(6,'7','拆除',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1'),(7,'7','破坏',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1'),(8,'7','无视',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1'),(9,'7','修理',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1'),(10,'7','拆除',1,'2013-12-18 18:07:00',1,'2013-12-31 18:07:00',1,'1');

/*Table structure for table `t_yy_dqjyjl` */

DROP TABLE IF EXISTS `t_yy_dqjyjl`;

CREATE TABLE `t_yy_dqjyjl` (
  `id` int(11) NOT NULL,
  `sydw` int(11) NOT NULL,
  `pxsj` datetime NOT NULL,
  `cyry` varchar(2000) COLLATE utf8_bin NOT NULL,
  `pxnr` text COLLATE utf8_bin NOT NULL,
  `pxdd` varchar(200) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `beizhu` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_338` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yy_dqjyjl` */

/*Table structure for table `t_yy_lxjcjlsb` */

DROP TABLE IF EXISTS `t_yy_lxjcjlsb`;

CREATE TABLE `t_yy_lxjcjlsb` (
  `sb_id` int(11) NOT NULL,
  `sl_id` int(11) NOT NULL,
  PRIMARY KEY (`sb_id`,`sl_id`),
  KEY `FK_Reference_150` (`sl_id`) USING BTREE,
  CONSTRAINT `FK_Reference_149` FOREIGN KEY (`sb_id`) REFERENCES `t_sb_sbxx` (`ID`),
  CONSTRAINT `FK_Reference_150` FOREIGN KEY (`sl_id`) REFERENCES `t_sb_zxjcjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yy_lxjcjlsb` */

/*Table structure for table `t_yy_tzsbydwbjl` */

DROP TABLE IF EXISTS `t_yy_tzsbydwbjl`;

CREATE TABLE `t_yy_tzsbydwbjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sydw` int(11) NOT NULL,
  `wbyf` datetime NOT NULL,
  `wbzrr` varchar(100) COLLATE utf8_bin NOT NULL,
  `wbkssj` datetime NOT NULL,
  `wbjssj` datetime NOT NULL,
  `sbzl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `wbnr` text COLLATE utf8_bin,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `beizhu` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_343` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yy_tzsbydwbjl` */

insert  into `t_yy_tzsbydwbjl`(`id`,`sydw`,`wbyf`,`wbzrr`,`wbkssj`,`wbjssj`,`sbzl`,`wbnr`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`beizhu`) values (1,1,'2013-12-09 16:56:00','1货','2013-12-10 16:56:00','2013-12-26 16:56:00','1','修理',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(2,1,'2013-12-10 16:56:00','2货','2013-12-11 16:56:00','2013-12-27 16:56:00','2','破坏',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(3,1,'2013-12-11 16:56:00','3货','2013-12-12 16:56:00','2013-12-28 16:56:00','3','拆卸',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(4,1,'2013-12-12 16:56:00','4货','2013-12-13 16:56:00','2013-12-29 16:56:00','4','修理',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(5,1,'2013-12-13 16:56:00','5货','2013-12-14 16:56:00','2013-12-30 16:56:00','5','破坏',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(6,1,'2013-12-14 16:56:00','6货','2013-12-15 16:56:00','2013-12-31 16:56:00','6','拆卸',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(7,1,'2013-12-15 16:56:00','7货','2013-12-16 16:56:00','2014-01-01 16:56:00','7','修理',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(8,1,'2013-12-16 16:56:00','8货','2013-12-17 16:56:00','2014-01-02 16:56:00','1','破坏',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(9,1,'2013-12-17 16:56:00','9货','2013-12-18 16:56:00','2014-01-03 16:56:00','2','拆卸',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(10,1,'2013-12-18 16:56:00','10货','2013-12-19 16:56:00','2014-01-04 16:56:00','3','修理',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(11,1,'2013-12-19 16:56:00','11货','2013-12-20 16:56:00','2014-01-05 16:56:00','4','破坏',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(12,1,'2013-12-20 16:56:00','12货','2013-12-21 16:56:00','2014-01-06 16:56:00','5','拆卸',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(13,1,'2013-12-21 16:56:00','13货','2013-12-22 16:56:00','2014-01-07 16:56:00','6','修理',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(14,1,'2013-12-22 16:56:00','14货','2013-12-23 16:56:00','2014-01-08 16:56:00','7','破坏',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(15,1,'2013-12-23 16:56:00','15货','2013-12-24 16:56:00','2014-01-09 16:56:00','4','拆卸',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(16,1,'2013-12-24 16:56:00','16货','2013-12-25 16:56:00','2014-01-10 16:56:00','5','修理',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(17,1,'2013-12-25 16:56:00','17货','2013-12-26 16:56:00','2014-01-11 16:56:00','6','破坏',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(18,1,'2013-12-26 16:56:00','18货','2013-12-27 16:56:00','2014-01-12 16:56:00','7','拆卸',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',1,'a'),(19,1,'2013-12-27 16:56:00','19货','2013-12-28 16:56:00','2014-01-13 16:56:00','8','修理',1,'2013-12-16 16:57:00',1,'2013-12-17 16:57:00',0,'a');

/*Table structure for table `t_yy_tzsbydwbjlsb` */

DROP TABLE IF EXISTS `t_yy_tzsbydwbjlsb`;

CREATE TABLE `t_yy_tzsbydwbjlsb` (
  `sb_id` int(11) NOT NULL,
  `sl_id` int(11) NOT NULL,
  PRIMARY KEY (`sb_id`,`sl_id`),
  KEY `FK_Reference_346` (`sl_id`) USING BTREE,
  CONSTRAINT `FK_Reference_345` FOREIGN KEY (`sb_id`) REFERENCES `t_sb_sbxx` (`ID`),
  CONSTRAINT `FK_Reference_346` FOREIGN KEY (`sl_id`) REFERENCES `t_yy_tzsbydwbjl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yy_tzsbydwbjlsb` */

insert  into `t_yy_tzsbydwbjlsb`(`sb_id`,`sl_id`) values (2,1),(3,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(1,18),(4,18);

/*Table structure for table `t_yy_xljl` */

DROP TABLE IF EXISTS `t_yy_xljl`;

CREATE TABLE `t_yy_xljl` (
  `xlsj` datetime NOT NULL,
  `xlsb` int(11) NOT NULL,
  `xlry` varchar(200) COLLATE utf8_bin NOT NULL,
  `gzqkms` text COLLATE utf8_bin NOT NULL,
  `xlqkms` text COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `sydw` int(11) NOT NULL,
  `beizhu` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_339` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yy_xljl` */

insert  into `t_yy_xljl`(`xlsj`,`xlsb`,`xlry`,`gzqkms`,`xlqkms`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`id`,`sydw`,`beizhu`) values ('2013-12-16 00:00:00',1,'丽水大酒店','1','1',1,'2013-12-15 17:00:50',3,'2013-12-17 17:35:26',1,1,1,'1'),('2013-12-07 00:00:00',2,'1','2','1',3,'2013-12-16 18:45:26',3,'2013-12-17 10:49:54',1,2,1,NULL),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,3,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,4,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,5,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,6,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,7,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,8,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,9,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,10,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,11,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,12,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,13,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,14,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,15,1,''),('2013-12-07 00:00:00',2,'1','1','1',3,'2013-12-16 18:45:26',3,'2013-12-16 19:34:54',1,16,1,''),('2013-12-16 00:00:00',1,'1','1','1',1,'2013-12-16 00:00:00',1,'2013-12-16 00:00:00',1,17,1,NULL),('2013-12-03 00:00:00',1,'1','1','1',3,'2013-12-17 18:10:28',3,'2013-12-17 18:10:28',1,18,1,NULL);

/*Table structure for table `t_yy_yhpczz` */

DROP TABLE IF EXISTS `t_yy_yhpczz`;

CREATE TABLE `t_yy_yhpczz` (
  `id` int(11) NOT NULL,
  `pcsj` datetime NOT NULL,
  `pcry` varchar(1000) COLLATE utf8_bin NOT NULL,
  `pcnr` text COLLATE utf8_bin NOT NULL,
  `fxwt` text COLLATE utf8_bin,
  `clqk` text COLLATE utf8_bin,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `sydw` int(11) NOT NULL,
  `beizhu` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_Reference_333` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yy_yhpczz` */

insert  into `t_yy_yhpczz`(`id`,`pcsj`,`pcry`,`pcnr`,`fxwt`,`clqk`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`sydw`,`beizhu`) values (1,'2013-12-16 00:00:00','黄孝坤','有没有bug','好大一个bugsds','改代码',123,'2013-12-15 16:51:49',1,'2013-12-16 17:33:34',0,1,'ok'),(2,'2013-12-16 00:00:00','王大勇','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',3,'2013-12-17 17:08:04',1,2,'ok'),(3,'2013-12-16 16:49:54','啊棍','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,3,'ok'),(4,'2013-12-16 16:49:54','陈宏','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,4,'ok'),(5,'2013-12-16 16:49:54','戎科迪','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,5,'ok'),(6,'2013-12-16 16:49:54','马全','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,6,'ok'),(7,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,7,'ok'),(8,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,8,'ok'),(9,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,9,'ok'),(10,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,10,'ok'),(11,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,11,'ok'),(12,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,12,'ok'),(13,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,13,'ok'),(14,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,14,'ok'),(15,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,15,'ok'),(16,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,16,'ok'),(17,'2013-12-16 00:00:00','黄孝坤','有没有bugfggsdg','好大一个bug','该代码',123,'2013-12-15 16:51:49',1,'2013-12-17 10:24:34',1,17,'ok'),(18,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,18,'ok'),(19,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,19,'ok'),(20,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,20,'ok'),(21,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,21,'ok'),(22,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,22,'ok'),(23,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,23,'ok'),(24,'2013-12-16 16:49:54','黄孝坤','有没有bug','好大一个bug','该代码',123,'2013-12-15 16:51:49',456,'2013-12-17 16:51:56',1,24,'ok');

/*Table structure for table `t_yy_yjyljl` */

DROP TABLE IF EXISTS `t_yy_yjyljl`;

CREATE TABLE `t_yy_yjyljl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sydw` int(11) NOT NULL,
  `ylsj` datetime NOT NULL,
  `cyry` varchar(2000) COLLATE utf8_bin NOT NULL,
  `ylnr` text COLLATE utf8_bin NOT NULL,
  `yldd` varchar(200) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `beizhu` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yy_yjyljl` */

insert  into `t_yy_yjyljl`(`id`,`sydw`,`ylsj`,`cyry`,`ylnr`,`yldd`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`beizhu`) values (6,1,'2013-12-05 00:00:00','aa','aa','aa',3,'2013-12-16 18:41:24',3,'2013-12-16 18:41:24',0,NULL),(7,1,'2013-12-04 00:00:00','参与人员一','演练内容一','演练地点一',1,'2013-12-16 18:43:02',1,'2013-12-16 18:43:02',1,NULL),(8,1,'2013-12-13 00:00:00','参与人员二','演练内容二','演练地点二',1,'2013-12-16 18:43:20',1,'2013-12-16 18:43:20',1,NULL),(9,1,'2013-12-19 00:00:00','参与人员三','演练内容三','演练地点三',1,'2013-12-16 18:43:38',1,'2013-12-16 18:43:38',1,NULL),(10,1,'2013-12-26 00:00:00','参与人员四','演练内容四','演练地点四',3,'2013-12-16 18:46:33',3,'2013-12-16 18:46:33',0,NULL),(11,1,'2013-12-18 00:00:00','参与人员四','演练内容四','演练地点四',1,'2013-12-16 18:56:42',1,'2013-12-16 18:56:42',1,NULL),(12,1,'2013-12-04 00:00:00','参与人员五','演练内容五','演练地点五',1,'2013-12-16 19:42:20',1,'2013-12-16 19:42:20',1,NULL);

/*Table structure for table `t_yy_zyjjbjl` */

DROP TABLE IF EXISTS `t_yy_zyjjbjl`;

CREATE TABLE `t_yy_zyjjbjl` (
  `id` int(11) NOT NULL,
  `sydw` int(11) NOT NULL,
  `sb_id` int(11) NOT NULL,
  `xbry_id` int(11) NOT NULL,
  `sbry_id` int(11) NOT NULL,
  `tpck` varchar(1024) COLLATE utf8_bin NOT NULL,
  `jzzyzbx` double NOT NULL,
  `jzzyzby` double NOT NULL,
  `jjqdzbx` double NOT NULL,
  `jjqdzby` double NOT NULL,
  `jjsj` datetime NOT NULL,
  `qdzt` int(11) NOT NULL COMMENT '0正常 1异常',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `beizhu` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_196` (`sb_id`) USING BTREE,
  KEY `FK_Reference_200` (`sbry_id`) USING BTREE,
  KEY `FK_Reference_201` (`xbry_id`) USING BTREE,
  CONSTRAINT `FK_Reference_196` FOREIGN KEY (`sb_id`) REFERENCES `t_sb_sbxx` (`ID`),
  CONSTRAINT `FK_Reference_200` FOREIGN KEY (`sbry_id`) REFERENCES `t_ry_zyry` (`id`),
  CONSTRAINT `FK_Reference_201` FOREIGN KEY (`xbry_id`) REFERENCES `t_ry_zyry` (`id`),
  CONSTRAINT `FK_Reference_341` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yy_zyjjbjl` */

insert  into `t_yy_zyjjbjl`(`id`,`sydw`,`sb_id`,`xbry_id`,`sbry_id`,`tpck`,`jzzyzbx`,`jzzyzby`,`jjqdzbx`,`jjqdzby`,`jjsj`,`qdzt`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`beizhu`) values (1,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(2,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(3,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(4,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(5,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(6,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(7,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(8,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(9,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(10,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(11,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(12,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(13,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(14,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(15,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(16,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(17,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',0,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(18,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',0,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(19,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',0,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(20,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',0,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(21,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(22,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',0,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(23,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(24,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',0,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(25,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',0,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(26,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',0,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(27,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(28,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1'),(29,1,1,1,2,'2013/12/13/1386926283387_Wmmms.jpg',12,12,12,12,'2013-12-17 10:11:25',1,1,'2013-12-17 10:11:30',1,'2013-12-17 10:11:37',1,'1');

/*Table structure for table `t_yy_zyqdjl` */

DROP TABLE IF EXISTS `t_yy_zyqdjl`;

CREATE TABLE `t_yy_zyqdjl` (
  `id` int(11) NOT NULL,
  `sydw` int(11) NOT NULL,
  `zyry_id` varchar(100) COLLATE utf8_bin NOT NULL,
  `jzzyzbx` double NOT NULL,
  `jzzyzby` double NOT NULL,
  `sjqdzbx` double NOT NULL,
  `sjqdzby` double NOT NULL,
  `tpck` varchar(1024) COLLATE utf8_bin NOT NULL,
  `qdsj` datetime NOT NULL,
  `qdzt` int(11) NOT NULL COMMENT '0正常 1异常',
  `sb_id` int(11) NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_197` (`sb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_197` FOREIGN KEY (`sb_id`) REFERENCES `t_sb_sbxx` (`ID`),
  CONSTRAINT `FK_Reference_342` FOREIGN KEY (`id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_yy_zyqdjl` */

insert  into `t_yy_zyqdjl`(`id`,`sydw`,`zyry_id`,`jzzyzbx`,`jzzyzby`,`sjqdzbx`,`sjqdzby`,`tpck`,`qdsj`,`qdzt`,`sb_id`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',0,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(2,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',0,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(3,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',0,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(4,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',0,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(5,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',0,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(6,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',0,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(7,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',0,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(8,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',0,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(9,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',0,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(10,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(11,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(12,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(13,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(14,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(15,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(16,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(17,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(18,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(19,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(20,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(21,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(22,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(23,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(24,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(25,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(26,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(27,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(28,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1),(29,1,'1',12,12,12,12,'2013/12/13/1386926283387_Wmmms.jpg','2013-12-16 16:18:26',1,1,1,'2013-12-16 16:18:35',1,'2013-12-16 16:18:39',1);

/*Table structure for table `t_zd_zdsbsz` */

DROP TABLE IF EXISTS `t_zd_zdsbsz`;

CREATE TABLE `t_zd_zdsbsz` (
  `id` int(11) NOT NULL,
  `txlb_id` int(11) NOT NULL,
  `zddw` int(11) NOT NULL DEFAULT '0' COMMENT '0全部 1是 2否',
  `sgqr` int(11) NOT NULL COMMENT '0否1是',
  `sfyhtx` int(11) NOT NULL COMMENT '0否1是',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `tzsbssdw` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_191` (`txlb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_191` FOREIGN KEY (`txlb_id`) REFERENCES `t_tx_txlb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_zd_zdsbsz` */

insert  into `t_zd_zdsbsz`(`id`,`txlb_id`,`zddw`,`sgqr`,`sfyhtx`,`create_id`,`create_date`,`update_id`,`update_date`,`status`,`tzsbssdw`) values (1,1,1,1,1,1,'2013-12-17 10:22:52',1,'2013-12-17 10:23:01',1,1),(2,2,1,1,1,1,'2013-12-17 10:22:52',1,'2013-12-17 10:23:01',1,1);

/*Table structure for table `t_zd_zdsbszhy` */

DROP TABLE IF EXISTS `t_zd_zdsbszhy`;

CREATE TABLE `t_zd_zdsbszhy` (
  `ID` char(10) COLLATE utf8_bin NOT NULL,
  `zdsb_id` int(11) NOT NULL,
  `hangye` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`ID`),
  KEY `FK_Reference_390` (`zdsb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_390` FOREIGN KEY (`zdsb_id`) REFERENCES `t_zd_zdsbsz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_zd_zdsbszhy` */

insert  into `t_zd_zdsbszhy`(`ID`,`zdsb_id`,`hangye`) values ('1',1,'1');

/*Table structure for table `t_zd_zdsbszqy` */

DROP TABLE IF EXISTS `t_zd_zdsbszqy`;

CREATE TABLE `t_zd_zdsbszqy` (
  `id` int(11) NOT NULL,
  `zdsb_id` int(11) NOT NULL,
  `quyu` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  `qyxz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '数据字典',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_388` (`zdsb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_388` FOREIGN KEY (`zdsb_id`) REFERENCES `t_zd_zdsbsz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_zd_zdsbszqy` */

insert  into `t_zd_zdsbszqy`(`id`,`zdsb_id`,`quyu`,`qyxz`) values (1,1,'0102','010205');

/*Table structure for table `t_zd_zdsbszsblb` */

DROP TABLE IF EXISTS `t_zd_zdsbszsblb`;

CREATE TABLE `t_zd_zdsbszsblb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zdsb_id` int(11) NOT NULL,
  `sblb` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '设备代码表 一级',
  `sbl` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '设备代码表 二级',
  `sbpz` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '设备代码表 三级',
  `sbjb` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '设备代码表 四级',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_386` (`zdsb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_386` FOREIGN KEY (`zdsb_id`) REFERENCES `t_zd_zdsbsz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_zd_zdsbszsblb` */

insert  into `t_zd_zdsbszsblb`(`id`,`zdsb_id`,`sblb`,`sbl`,`sbpz`,`sbjb`) values (1,1,'1','1','1','1');

/*Table structure for table `t_zd_zdsbsztxsj` */

DROP TABLE IF EXISTS `t_zd_zdsbsztxsj`;

CREATE TABLE `t_zd_zdsbsztxsj` (
  `id` int(11) NOT NULL,
  `zdsb_id` int(11) NOT NULL,
  `tqts` int(11) NOT NULL,
  `dwfsfs` int(11) NOT NULL COMMENT '0网页 1短信 2网页和短信 3无',
  `jcfsfs` int(11) NOT NULL COMMENT '0网页 1短信 2网页和短信 3无',
  `xzsfs` int(11) NOT NULL COMMENT '0网页 1短信 2网页和短信 3无',
  `hyzgfs` int(11) NOT NULL COMMENT '0网页 1短信 2网页和短信 3无',
  `dwfscx` int(11) NOT NULL COMMENT '0不可 1可 ',
  `jcfscx` int(11) NOT NULL COMMENT '0不可 1可 ',
  `xzscx` int(11) NOT NULL COMMENT '0不可 1可 ',
  `hyzgcx` int(11) NOT NULL COMMENT '0不可 1可 ',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_392` (`zdsb_id`) USING BTREE,
  CONSTRAINT `FK_Reference_392` FOREIGN KEY (`zdsb_id`) REFERENCES `t_zd_zdsbsz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_zd_zdsbsztxsj` */

insert  into `t_zd_zdsbsztxsj`(`id`,`zdsb_id`,`tqts`,`dwfsfs`,`jcfsfs`,`xzsfs`,`hyzgfs`,`dwfscx`,`jcfscx`,`xzscx`,`hyzgcx`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,15,1,1,1,1,1,1,1,1,1,'2013-12-17 10:29:59',1,'2013-12-17 10:30:03',1);

/*Table structure for table `t_zd_zdwd` */

DROP TABLE IF EXISTS `t_zd_zdwd`;

CREATE TABLE `t_zd_zdwd` (
  `sydw_id` int(11) NOT NULL,
  `gwzrzd` int(11) NOT NULL COMMENT '0无 1有',
  `aqczgc` int(11) NOT NULL COMMENT '0无 1有',
  `rcjchwhbyzd` int(11) NOT NULL COMMENT '0无 1有',
  `sbdaglzd` int(11) NOT NULL COMMENT '0无 1有',
  `zyryjypxglzd` int(11) NOT NULL COMMENT '0无 1有',
  `yhpczlzd` int(11) NOT NULL COMMENT '0无 1有',
  `t_yhpczlncs` int(11) DEFAULT NULL COMMENT '1一年一次 2 半年 3每季',
  `yjjyzd` int(11) NOT NULL COMMENT '0无 1有',
  `yjya` int(11) NOT NULL COMMENT '0无 1有',
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`sydw_id`),
  CONSTRAINT `FK_Reference_361` FOREIGN KEY (`sydw_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_zd_zdwd` */

insert  into `t_zd_zdwd`(`sydw_id`,`gwzrzd`,`aqczgc`,`rcjchwhbyzd`,`sbdaglzd`,`zyryjypxglzd`,`yhpczlzd`,`t_yhpczlncs`,`yjjyzd`,`yjya`,`create_id`,`create_date`,`update_id`,`update_date`,`status`) values (1,1,0,1,1,1,1,1,1,0,1,'2013-12-16 17:55:37',1,'2013-12-16 17:55:37',0);

/*Table structure for table `t_zh_sydwkfjl` */

DROP TABLE IF EXISTS `t_zh_sydwkfjl`;

CREATE TABLE `t_zh_sydwkfjl` (
  `id` int(11) NOT NULL,
  `sydw_id` int(11) NOT NULL,
  `wgxwsm` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `kfgz_id` int(11) NOT NULL,
  `kfrq` datetime NOT NULL,
  `pingfenzhi` int(11) NOT NULL,
  `jiancharen` varchar(200) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '0未撤销 1撤销',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_185` (`kfgz_id`) USING BTREE,
  KEY `FK_Reference_188` (`sydw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_185` FOREIGN KEY (`kfgz_id`) REFERENCES `t_yh_yhgzkf` (`id`),
  CONSTRAINT `FK_Reference_188` FOREIGN KEY (`sydw_id`) REFERENCES `t_xt_dwzzjg` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_zh_sydwkfjl` */

/*Table structure for table `t_zh_wbdwkfjl` */

DROP TABLE IF EXISTS `t_zh_wbdwkfjl`;

CREATE TABLE `t_zh_wbdwkfjl` (
  `id` int(11) NOT NULL,
  `wbdw_id` int(11) NOT NULL,
  `pflx_id` int(11) NOT NULL,
  `pfx_` int(11) DEFAULT NULL,
  `pingfenzhi` int(11) NOT NULL,
  `pfrq` datetime NOT NULL,
  `wgxwsm` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `jiancharen` varchar(200) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_id` int(11) NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL COMMENT '0未撤销 1撤销',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_186` (`pflx_id`) USING BTREE,
  KEY `FK_Reference_187` (`wbdw_id`) USING BTREE,
  CONSTRAINT `FK_Reference_186` FOREIGN KEY (`pflx_id`) REFERENCES `t_xt_wbdwpfsd` (`id`),
  CONSTRAINT `FK_Reference_187` FOREIGN KEY (`wbdw_id`) REFERENCES `t_dw_dwxx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `t_zh_wbdwkfjl` */

/*Table structure for table `view_dwzzjg` */

DROP TABLE IF EXISTS `view_dwzzjg`;

/*!50001 DROP VIEW IF EXISTS `view_dwzzjg` */;
/*!50001 DROP TABLE IF EXISTS `view_dwzzjg` */;

/*!50001 CREATE TABLE  `view_dwzzjg`(
 `id` int(11) NOT NULL  default '0' ,
 `name` varchar(100) NOT NULL  default '' ,
 `qxCode` varchar(200) NOT NULL  default '' ,
 `xzCode` varchar(200) NOT NULL  default '' ,
 `addr` varchar(200) NOT NULL  default '' ,
 `zipCode` varchar(100) NOT NULL  default '' ,
 `phone` varchar(100) NULL ,
 `leibie` bigint(20) NOT NULL  default '0' ,
 `parentId` int(11) NULL 
)*/;

/*Table structure for table `view_sydwxx` */

DROP TABLE IF EXISTS `view_sydwxx`;

/*!50001 DROP VIEW IF EXISTS `view_sydwxx` */;
/*!50001 DROP TABLE IF EXISTS `view_sydwxx` */;

/*!50001 CREATE TABLE  `view_sydwxx`(
 `dw_id` int(11) NOT NULL ,
 `dw_cs_id` varchar(200) NULL ,
 `dw_mchxm` varchar(100) NOT NULL ,
 `dw_zzjgdmhsfz` varchar(100) NOT NULL ,
 `dw_sfgr` int(11) NOT NULL  default '0' ,
 `dw_sfsydw` int(11) NOT NULL ,
 `dw_sfwbdw` int(11) NOT NULL ,
 `dw_sfscdw` int(11) NOT NULL ,
 `dw_sfjydw` int(11) NOT NULL ,
 `dw_dwzcdzxx` varchar(200) NULL ,
 `dw_wddwzlsbgdqbqx` varchar(200) NOT NULL ,
 `dw_wddwzlsbgdqbmxz` varchar(200) NOT NULL ,
 `dw_wddwzlsbgdzxx` varchar(200) NOT NULL ,
 `dw_fuzeren` varchar(100) NULL ,
 `dw_youbian` varchar(100) NOT NULL ,
 `dw_fddbr` varchar(100) NULL ,
 `dw_fddbrsj` varchar(100) NOT NULL ,
 `dw_gddh` varchar(100) NOT NULL ,
 `dw_chuanzhen` varchar(100) NULL ,
 `dw_dwdabh` varchar(100) NULL ,
 `dw_sy_zgbm` varchar(100) NULL ,
 `dw_sy_aqfzr` varchar(100) NULL ,
 `dw_sy_aqfzrsj` varchar(100) NULL ,
 `dw_sy_aqgljg` varchar(100) NULL ,
 `dw_sy_aqfzrdh` varchar(100) NULL ,
 `dw_mgs_id` int(11) NULL ,
 `dw_sfzddw` int(11) NOT NULL ,
 `dw_jingbanren` varchar(100) NOT NULL ,
 `dw_jbrsj` varchar(100) NOT NULL ,
 `dw_jbrdh` varchar(100) NULL ,
 `dw_dwxz` varchar(200) NULL ,
 `dw_dwygs` int(11) NULL ,
 `dw_zcsj` datetime NOT NULL ,
 `dw_dzxx` varchar(100) NULL ,
 `dw_jcrys` int(11) NULL ,
 `dw_jxgcsrys` int(11) NULL ,
 `dw_qtzyrysl` int(11) NULL ,
 `dw_nianchanzhi` float NULL ,
 `dw_zdmj` float NULL ,
 `dw_cfmj` float NULL ,
 `dw_pgsmj` float NULL ,
 `dw_ztbgrq` datetime NULL ,
 `bm_bmid` int(11) NOT NULL ,
 `bm_yjdw_id` int(11) NOT NULL ,
 `bm_xsdwmc` varchar(100) NOT NULL ,
 `bm_fuzeren` varchar(100) NOT NULL ,
 `bm_lxdh` varchar(100) NOT NULL ,
 `bm_bgdz` varchar(200) NOT NULL ,
 `bm_youbian` varchar(100) NOT NULL ,
 `bm_dgdh` varchar(100) NOT NULL ,
 `bm_chuanzhen` varchar(100) NULL ,
 `bm_aqfzr` varchar(100) NOT NULL ,
 `bm_aqfzrsj` varchar(100) NOT NULL ,
 `bm_aqgljg` varchar(100) NOT NULL ,
 `bm_aqfzrgddh` varchar(100) NULL ,
 `bm_dtwbmm` varchar(100) NULL 
)*/;

/*View structure for view view_dwzzjg */

/*!50001 DROP TABLE IF EXISTS `view_dwzzjg` */;
/*!50001 DROP VIEW IF EXISTS `view_dwzzjg` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`lstzsb1`@`%` SQL SECURITY DEFINER VIEW `view_dwzzjg` AS select `t1`.`id` AS `id`,`t1`.`jcjgmc` AS `name`,`t1`.`gxdqbm` AS `qxCode`,'' AS `xzCode`,`t1`.`dz` AS `addr`,`t1`.`yb` AS `zipCode`,`t1`.`lxdh` AS `phone`,1 AS `leibie`,NULL AS `parentId` from `t_xt_jcdwzzjg` `t1` union all select `t2`.`id` AS `id`,`t2`.`xzbmmc` AS `name`,`t2`.`gxdqbmqx` AS `qxCode`,`t2`.`gxdqbmxz` AS `xzCode`,`t2`.`dizhi` AS `addr`,`t2`.`youbian` AS `zipCode`,`t2`.`aqjgrysj` AS `phone`,2 AS `leibie`,NULL AS `parentId` from `t_xt_xzzzjg` `t2` union all select `t3`.`id` AS `id`,`t3`.`hyzgbmmc` AS `name`,`t3`.`gxdqbm` AS `qxCode`,'' AS `xzCode`,`t3`.`dizhi` AS `addr`,`t3`.`youbian` AS `zipCode`,`t3`.`aqjgrysj` AS `phone`,3 AS `leibie`,NULL AS `parentId` from `t_xt_hyzgbmzzjg` `t3` union all select `t4`.`id` AS `id`,`t4`.`mchxm` AS `name`,`t4`.`wddwzlsbgdqbqx` AS `qxCode`,`t4`.`wddwzlsbgdqbmxz` AS `xzCode`,`t4`.`wddwzlsbgdzxx` AS `addr`,`t4`.`youbian` AS `zipCode`,`t4`.`sy_aqfzrsj` AS `phone`,0 AS `leibie`,NULL AS `parentId` from `t_dw_dwxx` `t4` union all select `t5`.`id` AS `id`,`t5`.`xsdwmc` AS `name`,`t6`.`wddwzlsbgdqbqx` AS `qxCode`,`t6`.`wddwzlsbgdqbmxz` AS `xzCode`,`t5`.`bgdz` AS `addr`,`t5`.`youbian` AS `zipCode`,`t5`.`dgdh` AS `phone`,4 AS `leibie`,`t5`.`yjdw_id` AS `parentId` from (`t_dw_ejdw` `t5` join `t_dw_dwxx` `t6`) where (`t5`.`yjdw_id` = `t6`.`id`) */;

/*View structure for view view_sydwxx */

/*!50001 DROP TABLE IF EXISTS `view_sydwxx` */;
/*!50001 DROP VIEW IF EXISTS `view_sydwxx` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`lstzsb`@`%` SQL SECURITY DEFINER VIEW `view_sydwxx` AS select `dw`.`id` AS `dw_id`,`dw`.`cs_id` AS `dw_cs_id`,`dw`.`mchxm` AS `dw_mchxm`,`dw`.`zzjgdmhsfz` AS `dw_zzjgdmhsfz`,`dw`.`sfgr` AS `dw_sfgr`,`dw`.`sfsydw` AS `dw_sfsydw`,`dw`.`sfwbdw` AS `dw_sfwbdw`,`dw`.`sfscdw` AS `dw_sfscdw`,`dw`.`sfjydw` AS `dw_sfjydw`,`dw`.`dwzcdzxx` AS `dw_dwzcdzxx`,`dw`.`wddwzlsbgdqbqx` AS `dw_wddwzlsbgdqbqx`,`dw`.`wddwzlsbgdqbmxz` AS `dw_wddwzlsbgdqbmxz`,`dw`.`wddwzlsbgdzxx` AS `dw_wddwzlsbgdzxx`,`dw`.`fuzeren` AS `dw_fuzeren`,`dw`.`youbian` AS `dw_youbian`,`dw`.`fddbr` AS `dw_fddbr`,`dw`.`fddbrsj` AS `dw_fddbrsj`,`dw`.`gddh` AS `dw_gddh`,`dw`.`chuanzhen` AS `dw_chuanzhen`,`dw`.`dwdabh` AS `dw_dwdabh`,`dw`.`sy_zgbm` AS `dw_sy_zgbm`,`dw`.`sy_aqfzr` AS `dw_sy_aqfzr`,`dw`.`sy_aqfzrsj` AS `dw_sy_aqfzrsj`,`dw`.`sy_aqgljg` AS `dw_sy_aqgljg`,`dw`.`sy_aqfzrdh` AS `dw_sy_aqfzrdh`,`dw`.`mgs_id` AS `dw_mgs_id`,`dw`.`sfzddw` AS `dw_sfzddw`,`dw`.`jingbanren` AS `dw_jingbanren`,`dw`.`jbrsj` AS `dw_jbrsj`,`dw`.`jbrdh` AS `dw_jbrdh`,`dw`.`dwxz` AS `dw_dwxz`,`dw`.`dwygs` AS `dw_dwygs`,`dw`.`zcsj` AS `dw_zcsj`,`dw`.`dzxx` AS `dw_dzxx`,`dw`.`jcrys` AS `dw_jcrys`,`dw`.`jxgcsrys` AS `dw_jxgcsrys`,`dw`.`qtzyrysl` AS `dw_qtzyrysl`,`dw`.`nianchanzhi` AS `dw_nianchanzhi`,`dw`.`zdmj` AS `dw_zdmj`,`dw`.`cfmj` AS `dw_cfmj`,`dw`.`pgsmj` AS `dw_pgsmj`,`dw`.`ztbgrq` AS `dw_ztbgrq`,`bm`.`id` AS `bm_bmid`,`bm`.`yjdw_id` AS `bm_yjdw_id`,`bm`.`xsdwmc` AS `bm_xsdwmc`,`bm`.`fuzeren` AS `bm_fuzeren`,`bm`.`lxdh` AS `bm_lxdh`,`bm`.`bgdz` AS `bm_bgdz`,`bm`.`youbian` AS `bm_youbian`,`bm`.`dgdh` AS `bm_dgdh`,`bm`.`chuanzhen` AS `bm_chuanzhen`,`bm`.`aqfzr` AS `bm_aqfzr`,`bm`.`aqfzrsj` AS `bm_aqfzrsj`,`bm`.`aqgljg` AS `bm_aqgljg`,`bm`.`aqfzrgddh` AS `bm_aqfzrgddh`,`bm`.`dtwbmm` AS `bm_dtwbmm` from (`t_dw_dwxx` `dw` join `t_dw_ejdw` `bm` on((`bm`.`yjdw_id` = `dw`.`id`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
