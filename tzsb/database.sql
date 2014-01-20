create database if not exists `lstzsb_db` default character set utf32;

drop table if exists `t_sys_user`;
create table `t_sys_user`(
  `id` int(11) not null,
  `username` varchar(100) collate utf8_bin not null,
  `userlabel` varchar(100) collate utf8_bin not null,
  `password` varchar(200) collate utf8_bin not null,
  `orgid` int(11) not null,
  `create_id` int(11) not null,
  `create_date` datetime not null,
  `update_id` int(11) not null,
  `update_date` datetime not null,
  `status` int(11) not null,
  primary key (`id`)
) engine=innodb auto_increment=1 default charset=utf8 collate=utf8_bin row_format=compact;


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
  primary key (`id`),
  key `fk_reference_356` (`dw_id`) using btree,
  constraint `fk_reference_356` foreign key (`dw_id`) references `t_dw_dwxx` (`id`)
) engine=innodb auto_increment=18 default charset=utf8 collate=utf8_bin row_format=compact;
