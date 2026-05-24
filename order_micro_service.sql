create database order_micro_service;

use order_micro_service;

create table `order` (
    id bigint not null auto_increment primary key ,
    user_id bigint default null,
    product_id bigint default null,
    nums int default null,
    money int default null,
    status int default null comment '0: 创建中； 1: 已完结'
);

create database storage_micro_service;
use storage_micro_service;

create table storage (
    id bigint not null auto_increment primary key ,
    product_id bigint default null,
    amount int default null comment '库存量'
);
insert into storage values(null,1,10);

create database account_micro_service;
use account_micro_service;

create table account (
    id bigint not null auto_increment primary key ,
    user_id bigint default null,
    money int default null comment '账户余额'
);

insert into account values (null, 666, 10000);



CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) NOT NULL,
  `context` varchar(128) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
