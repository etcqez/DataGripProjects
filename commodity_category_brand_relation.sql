use living_commodity;

create table commodity_category_brand_relation
(
    id bigint not null auto_increment,
    brand_id bigint comment '品牌',
    category_id bigint comment '分类id',
    brand_name varchar(255) comment '品牌名称',
    category_name varchar(255) comment '分类名称',
    primary key (id)
)charset = utf8mb4 comment = '品牌分类关联表';