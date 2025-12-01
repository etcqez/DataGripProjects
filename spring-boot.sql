create table furn
(
    id       int(11) primary key auto_increment,
    name     varchar(64)    not null,
    maker    varchar(64)    not null,
    price    decimal(11, 2) not null,
    sales    int(11)        not null,
    stock    int(11)        not null,
    img_path varchar(256)   not null
);

insert into furn(id, name, maker, price, sales, stock, img_path)
values (null, '桌子', '熊猫家居', 180, 666, 7,   'assets/img1');
insert into furn(id, name, maker, price, sales, stock, img_path)
values (null, '椅子', '熊猫家居', 180, 666, 7,   'assets/img2');
insert into furn(id, name, maker, price, sales, stock, img_path)
values (null, '台灯', '蚂蚁家居', 180, 666, 7,   'assets/img3');
insert into furn(id, name, maker, price, sales, stock, img_path)
values (null, '盆景', '蚂蚁家居', 180, 666, 7,   'assets/img4');