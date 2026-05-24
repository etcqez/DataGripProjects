use living_commodity;
create table commodity_brand
(
    id           bigint not null auto_increment comment 'id',
    name         char(50) comment '品牌名',
    logo         varchar(1200) comment 'logo',
    description  longtext comment '说明',
    isShow       tinyint comment '显示',
    first_letter char(1) comment '检索首字母',
    sort         int comment '排序',
    primary key (id)
) charset =     utf8mb4 comment ='家居品牌';

insert into commodity_brand (id, name, logo, description, isShow, first_letter, sort)
values (1, '海信', '', '', 1, '', null);