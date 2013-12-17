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

/*Table structure for table `t_bg_tjclqk` */

DROP TABLE IF EXISTS `t_bg_tjclqk`;

CREATE TABLE `t_bg_tjclqk` (
  `bg_id` int(11) NOT NULL,
  `tjcl` varchar(200) COLLATE utf8_bin NOT NULL COMMENT '数据字典',
  PRIMARY KEY (`bg_id`,`tjcl`),
  CONSTRAINT `FK_Reference_322` FOREIGN KEY (`bg_id`) REFERENCES `t_bg_bgsq` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

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

/*Table structure for table `t_yj_yjfqsb` */

DROP TABLE IF EXISTS `t_yj_yjfqsb`;

CREATE TABLE `t_yj_yjfqsb` (
  `tzsb_id` int(11) NOT NULL,
  `yjfq_id` int(11) NOT NULL,
  PRIMARY KEY (`tzsb_id`,`yjfq_id`),
  KEY `FK_Reference_42` (`yjfq_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

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
