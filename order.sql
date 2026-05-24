use order_micro_service;
insert into `order` (id, user_id, product_id, nums, money, status)
values (null, 666, 1, 2, 30, 0);

update `order` set status = 1
where user_id = 666 and status = 0;