create table mybatis_user
(
    id   int primary key auto_increment,
    name varchar(32) not null default ''
)char set utf8;

create table mybatis_pet
(
    id int  primary key auto_increment,
    nickname varchar(32) not null default '',
    user_id int,
    foreign key (user_id) references mybatis_user(id)
)char set utf8;

insert into mybatis_user
values(null, '宋江'), (null, '张飞');

insert into mybatis_pet
values (1, '黑背', 1), (2,'小哈', 1);

insert into mybatis_pet
values(3, '波斯猫', 2), (4, '贵妃猫', 2);

select *  From  mybatis_user where id = 1;

select *  From  mybatis_pet where user_id = 1;