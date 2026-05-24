create database seckill;
use seckill;

create table seckill_user (
    id bigint(20) not null comment '用户ID, 设为主键, 唯一手机号',
    nickname varchar(255) not null default '',
    password varchar(32) not null default '' comment 'MD5(MD5(pass明文
+固定salt)+salt)',
    salt varchar(10) not null default '',
    head varchar(120) not null default '' comment '头像',
    register_date datetime default null comment '注册时间',
    last_login_date datetime default null comment '最后一次登录时间',
    login_count int(11) default '0' comment '登录次数',
    primary key (id)
) engine = innodb default charset = utf8mb4;

create table t_orde (
    id bigint(20) not null auto_increment,
    user_id bigint(20) not null default 0,
    goods_id bigint(20) not null default 0,
    delivery_addr_id bigint(20) not null default 0,
    goods_name varchar(16) not null default '',
    goods_count int(11) not null default '0',
    goods_price decimal(10,2) not null default '0.00',
    order_channel tinyint(4) not null default '0' comment '订单渠道1pc, 2Android, 3ios',
    status tinyint(4) not null default '0' comment '订单状态: 0新建未支付
1已支付 2已发货 4已退款 5已完成',
    create_date datetime default null,
    pay_date datetime default null,
    primary key (id)
) engine = innodb auto_increment = 600 default charset = utf8mb4;

create table t_seckill_order (
    id bigint(20) not null auto_increment,
    user_id bigint(20) not null default 0,
    order_id bigint(20) not null default 0,
    goods_id bigint(20) not null default 0,
    primary key (id),
    unique key seckill_uid_gid (user_id, goods_id) using btree comment '唯一约束, 解决同一个用户多次抢购问题'
)engine = innodb auto_increment = 300 default charset utf8mb4;