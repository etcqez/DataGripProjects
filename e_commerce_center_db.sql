use e_commerce_center_db;

create table member
(
    id     bigint not null auto_increment,
    name   varchar(64),
    pwd    char(32),
    mobile varchar(20),
    email  varchar(64),
    gender  tinyint,
    primary key (id)
);

insert into member values (null, 'smith', md5('123'), '110110', 'xx@xx.com', 1);
select * from member;

insert into member(name, pwd, mobile, email, gender)
values ( 'smith', md5('123'), '110110', 'xx@xx.com', 1);