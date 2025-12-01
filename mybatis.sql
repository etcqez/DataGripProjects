CREATE TABLE `monster` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`age` INT NOT NULL,
	`birthday` DATE DEFAULT NULL,
	`email` VARCHAR(255) NOT NULL,
	`gender`  TINYINT NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`salary` DOUBLE NOT NULL,
	PRIMARY KEY (`id`)
) CHARSET=utf8;

INSERT INTO `monster`
(`age`, `birthday`, `email`, `gender`, `name`, `salary`)
VALUES (10, NULL, 'xx@xx.com', 1, 'kate', 10000);

INSERT INTO `monster`
(`age`, `birthday`, `email`, `gender`, `name`, `salary`)
VALUES (90, NULL, 'xx@xx.com', 1, '牛魔王', 10000);


INSERT INTO `monster`
(`age`, `birthday`, `email`, `gender`, `name`, `salary`)
VALUES (20, NULL, 'text@test.com', 1, 'tom', 1000);

SHOW VARIABLES LIKE '%ssl%';

SELECT * FROM `monster` WHERE age=20

DELETE FROM `monster` WHERE id = 1

UPDATE `monster` SET  `age`=50, `birthday`=NULL, `email`='xx@sohu.com', `gender`=0, `name`='jack', `salary`=300 WHERE id=3

SELECT `id`, `name` FROM `monster` WHERE `id` = 3 AND `name` = 'jack'
-- sql 注入
SELECT `id`, `name` FROM `monster` WHERE `id` = 3 OR '1'='1' OR' AND `name` = 'OR '1' = '1'

DROP TABLE `monster`

SELECT `id`, `name`, `birthday` FROM `monster` WHERE id=1

SELECT `name` FROM `monster` WHERE id=1

select * from monster where age>10

select * from monster where age>50 and name="牛魔王"

select * from monster where id in (10, 12, 14)