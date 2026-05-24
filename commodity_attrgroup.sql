use living_commodity;

create table commodity_attrgroup
(
    id bigint not null auto_increment comment 'id',
    name char(20) comment '组名',
    sort int comment '排序',
    description varchar(255) comment '说明',
    icon varchar(255) comment '组图标',
    category_id bigint comment '所属分类id',
    primary key (id)
)charset = utf8mb4 comment = '家居商品属性分组';

insert into commodity_attrgroup (id, name, sort, description, icon, category_id)
VALUES (1, '主体', 0, '主体说明', '', 301);