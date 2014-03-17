create database if not exists `lstzsb_db` default character set utf32;

drop table if exists `t_sys_user`;
create table `t_sys_user`(
  `id` int(11) not null,
  `username` varchar(100) collate utf8_bin not null,
  `userlabel` varchar(100) collate utf8_bin not null,
  `password` varchar(200) collate utf8_bin not null,
  `orgid` int(11) not null,
  `create_id` int(11) null,
  `create_date` datetime null,
  `update_id` int(11) null,
  `update_date` datetime null,
  `status` int(11) not null,
  primary key (`id`)
) engine=innodb auto_increment=1 default charset=utf8 collate=utf8_bin row_format=compact;


drop table if exists `t_sys_org`;
create table `t_sys_org`(
  `id` int(11) not null,
  `org_name` varchar(100) collate utf8_bin not null,
  `org_type` varchar(100) collate utf8_bin not null,
  `parent_id` varchar(200) collate utf8_bin null,
  `create_id` int(11) null,
  `create_date` datetime null,
  `update_id` int(11) null,
  `update_date` datetime null,
  `status` int(11) not null,
  primary key (`id`)
) engine=innodb auto_increment=1 default charset=utf8 collate=utf8_bin row_format=compact;

drop table if exists `t_sys_dict`;
create table `t_sys_dict` (
  `entry_code` varchar(200) collate utf8_bin not null,
  `entry_name` varchar(200) collate utf8_bin not null,
  `entry_type` int(11) not null comment '0 内部不可修改 1可修改',
  `memo` varchar(1024) collate utf8_bin default null,
  `tree_flag` int(11) not null default '0' comment '0 否  1是',
  `create_id` int(11) default null,
  `create_date` datetime default null,
  `update_id` int(11) default null,
  `update_date` datetime default null,
  `status` int(11) not null,
  primary key (`entry_code`)
) engine=innodb default charset=utf8 collate=utf8_bin row_format=compact;

drop table if exists `t_sys_dict_item`;
create table `t_sys_dict_item` (
  `item_key` varchar(200) collate utf8_bin not null,
  `entry_code` varchar(100) collate utf8_bin not null,
  `item_value` varchar(100) collate utf8_bin not null,
  `item_order` int(11) default null,
  `parent_key` varchar(200) collate utf8_bin default null,
  `create_id` int(11) default null,
  `create_date` datetime default null,
  `update_id` int(11) default null,
  `update_date` datetime default null,
  `status` int(11) not null,
  primary key (`item_key`,`entry_code`)
) engine=innodb default charset=utf8 collate=utf8_bin row_format=compact;

drop table if exists `t_sys_excel_tmp_data`;
CREATE TABLE `t_sys_excel_tmp_data` (
	`seq_id`		bigint(20) NOT NULL,
	`sheetindex`	int(11) NOT NULL,
	`rowindex`		int(11) NOT NULL,
	`col0`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col1`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col2`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col3`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col4`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col5`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col6`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col7`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col8`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col9`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col10`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col11`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col12`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col13`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col14`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col15`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col16`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col17`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col18`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col19`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col20`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col21`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col22`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col23`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col24`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col25`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col26`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col27`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col28`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col29`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col30`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col31`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col32`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col33`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col34`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col35`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col36`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col37`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col38`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col39`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col40`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col41`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col42`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col43`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col44`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col45`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col46`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col47`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col48`	varchar(128) COLLATE utf8_bin DEFAULT NULL,
	`col49`	varchar(128) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `t_xt_webservice_log`;
CREATE TABLE `t_xt_webservice_log` (
  `id` bigint(20) NOT NULL,
  `inout_flag` int(11) DEFAULT NULL,
  `part_index` int(11) NOT NULL,
  `msg` text COLLATE utf8_bin,
  `req_date` datetime DEFAULT NULL,
  `Resp_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`part_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='WebService日志';

DROP TABLE IF EXISTS `t_sys_attachment`;

CREATE TABLE `t_sys_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_code` varchar(200) COLLATE utf8_bin default NULL,
  `bill_id` int(11) default NULL,
  `sort` int(11) default NULL,
  `file_name` varchar(200) COLLATE utf8_bin NOT NULL,
  `path` varchar(1000) COLLATE utf8_bin NOT NULL,
  `create_id` int(11) default NULL,
  `create_date` datetime default NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

drop table if exists `t_dw_tzsbxkzscwb`;
create table `t_dw_tzsbxkzscwb` (
  `id` int(11) not null auto_increment,
  `dw_id` int(11) not null,
  `sblb` varchar(200) collate utf8_bin not null comment '设备代码表 一级',
  `zsbh` varchar(200) collate utf8_bin not null,
  `dwmc` varchar(200) collate utf8_bin not null,
  `dwdz` varchar(200) collate utf8_bin not null,
  `zzdz` varchar(200) collate utf8_bin not null,
  `pzrq` datetime not null,
  `yxrq` datetime not null,
  `pzjg` varchar(200) collate utf8_bin not null,
  `sfsj` int(11) not null comment '0 否 1 是',
  `sfzz` int(11) not null comment '0 否 1 是',
  `sfaz` int(11) not null comment '0 否 1 是',
  `sfgz` int(11) not null comment '0 否 1 是',
  `sfwx` int(11) not null comment '0 否 1 是',
  `beizhu` varchar(2000) collate utf8_bin default null,
  `create_id` int(11) not null,
  `create_date` datetime not null,
  `update_id` int(11) not null,
  `update_date` datetime not null,
  `status` int(11) not null comment '超期 正常 使用',
  primary key (`id`)
) engine=innodb auto_increment=18 default charset=utf8 collate=utf8_bin row_format=compact;



insert into t_sys_user(id, username, userlabel, password, orgid, status)values(1,'admin', '管理员', '111111', 1, 1);
insert into t_sys_org(id, org_name, org_type, status)values(1,'杭州大酒店', 0, 1);