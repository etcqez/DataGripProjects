create database living_commodity;
use living_commodity;

create table commodity_category
(
    id        bigint    not null auto_increment comment 'id',
    name      char(50)  not null comment '名称',
    parent_id bigint    not null comment '父分类id',
    cat_level int       not null comment '层级',
    is_show   tinyint   not null comment '0不显示，1显示',
    sort      int       not null comment '排序',
    icon      char(255) not null comment '图标',
    pro_unit  char(50)  not null comment '统计单位',
    pro_count int       not null comment '商品数量',
    primary key (id)
) charset = utf8mb4 comment = '商品分类表';

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (1, '食品', 0, 1, 1, 0, '', '', 0);

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (21, '粮油调味', 1, 2, 1, 0, '', '', 0);

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (22, '休闲食品', 1, 2, 1, 0, '', '', 0);

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (201, '饼干蛋糕', 22, 3, 1, 0, '', '', 0),(202, '糖果/巧克力', 22, 3, 1, 0, '', '', 0);

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (301, '大米', 21, 3, 1, 0, '', '', 0);

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (3, '电子', 0, 1, 1, 0, '', '', 0);

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (41, '电脑', 3, 2, 1, 0, '', '', 0);

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (42, '配件', 3, 2, 1, 0, '', '', 0);

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (501, '笔记本', 41, 3, 1, 0, '', '', 0);

insert into commodity_category
(id, name, parent_id, cat_level, is_show, sort, icon, pro_unit, pro_count)
values (601, '鼠标', 42, 3, 1, 0, '', '', 0);

