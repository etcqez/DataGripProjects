use living_commodity;
create table commodity_attr
(
    attr_id bigint not null auto_increment comment '属性id',
    attr_name char(30) comment '属性名',
    search_type tinyint comment '是否需要检索[0-不需要, 1-需要]',
    icon varchar(255) comment '图标',
    value_select char(255) comment '可选值列表[用逗号分隔]',
    attr_type tinyint comment '属性类型[0-销售属性, 1-基本属性]',
    enable bigint comment '启用状态[0-禁用, 1-启用]',
    category_id bigint comment '所属分类',
    show_desc tinyint comment '快速展示[是否展示在介绍上, 0-否, 1-是]',
    primary key (attr_id)
) charset = utf8mb4 comment = '商品属性表';