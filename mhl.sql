DROP TABLE employee;

CREATE TABLE employee (
		id INT PRIMARY KEY AUTO_INCREMENT,
		empId VARCHAR(50) UNIQUE NOT NULL DEFAULT '',
		pwd CHAR(32) NOT NULL DEFAULT '',
		name VARCHAR(50) NOT NULL DEFAULT '',
		job VARCHAR(50) NOT NULL DEFAULT ''
) CHARSET=utf8;

INSERT INTO employee VALUES (NULL, '6668611', MD5('123456'), '张三丰', '经理');
INSERT INTO employee VALUES (NUll, '6668612', MD5('123456'), '小龙女', '服务员');
INSERT INTO employee VALUES (NULL, '6668613', MD5('123456'), '张无忌', '收银员');
INSERT INTO employee VALUES (NUll, '6668614', MD5('123456'), '金庸', '经理');



CREATE TABLE diningTable (
	id INT PRIMARY KEY AUTO_INCREMENT,
	state VARCHAR(20) NOT NULL DEFAULT '',
	orderName VARCHAR(50) NOT NULL DEFAULT '',
	orderTel VARCHAR(20) NOT NULL DEFAULT ''
)CHARSET=utf8;

INSERT INTO diningTable VALUES(NULL, '空', '', '');
INSERT INTO diningTable VALUES(NULL, '空', '', '');
INSERT INTO diningTable VALUES(NULL, '空', '', '');

SELECT * FROM diningTable
SELECT id, state FROM diningTable
SELECT id, state FROM diningTable WHERE id 1

UPDATE diningTable SET state='空', orderName='', orderTel='' WHERE id=1

DROP TABLE menu;

CREATE TABLE menu (
	id INT PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL DEFAULT '',
	type VARCHAR(50) NOT NULL DEFAULT '',
	price DOUBLE NOT NULL DEFAULT 0
)CHARSET=utf8;

INSERT INTO menu VALUES(NULL, '八宝饭', '主食', 10);
INSERT INTO menu VALUES(NULL, '叉烧包', '主食', 20);
INSERT INTO menu VALUES(NULL, '宫保鸡丁', '热菜', 30);
INSERT INTO menu VALUES(NULL, '山药拨鱼', '凉菜', 14);
INSERT INTO menu VALUES(NULL, '银丝卷', '甜食', 9);
INSERT INTO menu VALUES(NULL, '水煮鱼', '热菜', 26);
INSERT INTO menu VALUES(NULL, '甲鱼汤', '汤类', 100);
INSERT INTO menu VALUES(NULL, '鸡蛋汤', '汤类', 16);

CREATE TABLE bill (
	id INT PRIMARY KEY AUTO_INCREMENT,
	billId VARCHAR(50) NOT NULL DEFAULT '',
	menuId INT NOT NULL DEFAULT 0,
	nums INT NOT NULL DEFAULT 0,
	money DOUBLE NOT NULL DEFAULT 0,
	diningTableId INT NOT NULL DEFAULT 0,
	billDate DATETIME NOT NULL,
	state VARCHAR(50) NOT NULL DEFAULT ''
)CHARSET=utf8

INSERT INTO bill VALUES (null, null, null, null, null, null, '2000-01-01', null)

SELECT * FROM bill

SELECT * FROM bill WHERE diningTableId=1 AND state='未结账' LIMIT 0, 1

UPDATE bill SET state= WHERE diningTableId= AND  state='未结账'

select bill.*, name from bill, menu WHERE bill.menuId=menu.id