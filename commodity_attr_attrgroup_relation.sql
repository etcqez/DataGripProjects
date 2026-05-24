use living_commodity;

create table commodity_attr_attrgroup_relation
(
    id bigint not null auto_increment comment 'id',
    attr_id bigint comment '属性id',
    attr_group_id bigint comment '属性分组id',
    attr_sort int comment '属性组内排序',
    primary key (id)
)charset = utf8mb4 comment = '商品属性和商品属性组的关联表';

delete from commodity_attr_attrgroup_relation where (attr_id=10 and attr_group_id=10) or (attr_id=100 and attr_group_id=100);