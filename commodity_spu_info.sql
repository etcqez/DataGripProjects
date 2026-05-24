use living_commodity;
create table commodity_spu_info
(
    id              bigint not null auto_increment comment '商品id',
    spu_name        varchar(200) comment '商品名称',
    spu_description varchar(1000) comment '商品描述',
    catalog_id      bigint comment '所属分类id',
    brand_id        bigint comment '品牌id',
    weight          decimal(18, 4),
    publish_status   tinyint comment '上架状态[0 - 下架, 1 - 上架]',
    create_time     datetime,
    update_time     datetime,
    primary key (id)
) charset = utf8mb4 comment ='商品spu信息';

create table commodity_spu_info_desc
(
    spu_id  bigint not null comment '商品id',
    decript longtext comment '商品介绍图片',
    primary key (spu_id)
) charset = utf8mb4 comment = '商品spu信息介绍';

create table commodity_spu_images
(
    id          bigint not null auto_increment comment 'id',
    spu_id      bigint comment 'spu_id',
    img_name    varchar(200) comment '图片名',
    img_url     varchar(255) comment '图片地址',
    img_sort    int comment '顺序',
    default_img tinyint comment '是否默认图',
    primary key (id)
) charset = utf8mb4 comment = 'spu图片集';

create table commodity_product_attr_value
(
    id         bigint not null auto_increment comment 'id',
    spu_id     bigint comment '商品id',
    attr_id    bigint comment '属性id',
    attr_name  varchar(200) comment '属性名',
    attr_value varchar(200) comment '属性值',
    attr_sort  int comment '顺序',
    quick_show int comment '快速展示[是否展示在介绍中: 0-否 1-是]',
    primary key (id)
) charset = utf8mb4 comment = 'spu基本属性值';

create table commodity_sku_info
(
    sku_id bigint not null auto_increment comment 'skuId',
    spu_id bigint comment 'spuId',
    sku_name varchar(255) comment 'sku名称',
    sku_desc varchar(2000) comment 'sku介绍描述',
    catalog_id bigint comment '品牌id',
    brand_id bigint comment '品牌id',
    sku_default_img varchar(255) comment '默认图片',
    sku_title varchar(255) comment '标题',
    sku_subtitle varchar(2000) comment '副标题',
    price decimal(10,4) comment '价格',
    sale_count bigint comment '销量',
    primary key (sku_id)
)charset=utf8mb4 comment='spu基本属性值';

create table commodity_sku_images
(
    id bigint not null auto_increment comment 'id',
    sku_id bigint comment 'sku_id',
    img_url varchar(255) comment '图片地址',
    img_sort int comment '排序',
    default_img int comment '默认图[0 - 不是默认图, 1 - 是默认图]',
    primary key (id)
)charset = utf8mb4 comment = 'sku图片'

create table commodity_sku_sale_attr_value
(
    id bigint not null  auto_increment comment 'id',
    sku_id bigint comment 'sku_id',
    attr_id bigint comment 'attr_id',
    attr_name varchar(200) comment '销售属性名',
    attr_value varchar(2000) comment '销售属性值',
    attr_sort int comment '属性',
    primary key (id)
)charset = utf8mb4 comment = 'sku的销售属性/值表';

    update commodity_spu_info
    set public_status=1, update_time=now() where id=100;

ALTER TABLE living_commodity.commodity_spu_info
CHANGE public_status publish_status tinyint COMMENT '上架状态[0 - 下架, 1 - 上架]';