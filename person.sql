create table idencard
(
    id      int primary key auto_increment,
    card_sn varchar(32) not null default ''
) char set utf8;

insert into idencard value (1, '1111111111');

drop table person;
create table person
(
    id      int primary key auto_increment,
    name    varchar(32) not null default '',
    card_id int,
    foreign key (card_id) references idencard (id)
) char set utf8;

insert into person value (1, '张三', 1);

select * from person,idencard where person.id = 1 and person.card_id = idencard.id;

SHOW CREATE TABLE person;

ALTER TABLE person DROP FOREIGN KEY person_ibfk_1;

insert into person values (2, '李四', 2);

insert into idencard values (200,'222222222222');
insert into person values (8, '李四', 200);