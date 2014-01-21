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

drop table if exists `t_xt_sjzdlb`;
create table `t_xt_sjzdlb` (
  `entry_code` varchar(200) collate utf8_bin not null,
  `entry_name` varchar(200) collate utf8_bin not null,
  `entry_type` int(11) not null comment '0 内部不可修改 1可修改',
  `memo` varchar(1024) collate utf8_bin default null,
  `sfsxjg` int(11) not null default '0' comment '0 否  1是',
  `create_id` int(11) not null,
  `create_date` datetime not null,
  `update_id` int(11) not null,
  `update_date` datetime not null,
  `status` int(11) not null,
  primary key (`entry_code`)
) engine=innodb default charset=utf8 collate=utf8_bin row_format=compact;

drop table if exists `t_xt_sjzdsjx`;
create table `t_xt_sjzdsjx` (
  `item_key` varchar(200) collate utf8_bin not null,
  `entry_code` varchar(100) collate utf8_bin not null,
  `item_value` varchar(100) collate utf8_bin not null,
  `item_order` int(11) default null,
  `f_item_key` varchar(200) collate utf8_bin default null,
  `create_id` int(11) not null,
  `create_date` datetime not null,
  `update_id` int(11) not null,
  `update_date` datetime not null,
  `status` int(11) not null,
  primary key (`item_key`,`entry_code`)
) engine=innodb default charset=utf8 collate=utf8_bin row_format=compact;


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
insert into t_sys_org(id, org_name, org_type, status)values(1,'杭州大酒店', 1, 1);