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
