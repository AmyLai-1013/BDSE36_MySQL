-- primary key
-- set primary key
create table cars_04(
car_id int,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int,
primary key(car_id)
 );
-- or
create table cars_04(
car_id int primary key,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

-- insert data
insert into cars_04(car_id, car_brand)
values(1, 'Luxgen');

select * from cars_04;

-- insert data with same primary key
insert into cars_04(car_id, car_brand)
values(1, 'Luxgen');
-- failed, duplicate entry
show warnings;

-- insert without primary key value
insert into cars_04(car_brand)
values('Luxgen');
-- failed, primary key column needs value
show warnings;

-- insert new car_id
insert into cars_04(car_id, car_brand)
values(2, 'Luxgen');

select * from cars_04;

-- auto increment
create table cars_05(
car_id int primary key auto_increment, #important
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'pink', 150000);

select * from cars_05;

-- *3
insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'pink', 150000);

select * from cars_05;

-- auto increment interrupted 
insert into cars_05(car_id, car_brand, car_color, car_sale_price)
values(5566, 'Luxgen', 'pink', 150000);

select * from cars_05;

-- try to continue previous setting
insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'pink', 150000);

select * from cars_05;
-- found auto increment changed

insert into cars_05(car_id, car_brand, car_color, car_sale_price)
values(5, 'Luxgen', 'pink', 150000);

select * from cars_05;

insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'pink', 150000);

select * from cars_05;

-- try to alter auto increment value to the previous setting
alter table cars_05 auto_increment = 6;

insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'pink', 150000);
-- failed
select * from cars_05;

-- auto increment can be altered to a bigger number than current value somehow
alter table cars_05 auto_increment = 7788;

insert into cars_05(car_brand, car_color, car_sale_price)
values('Luxgen', 'pink', 150000);

select * from cars_05;

-- auto increment customized
create table cars_06(
car_id int primary key auto_increment,
car_brand varchar(50),
car_color varchar(50),
car_sale_price int
);

desc cars_06;

-- alter the value of auto increment
alter table cars_06 auto_increment = 100;

insert into cars_06(car_brand, car_color, car_sale_price)
values('Luxgen', 'yellow', 15000);

select * from cars_06;

-- *3
insert into cars_06(car_brand, car_color, car_sale_price)
values('Luxgen', 'yellow', 15000);

select * from cars_06;

-- unique key
create table user_account(
user_id int primary key auto_increment,
user_name varchar(100) not null unique,
user_password varchar(100) not null
);

-- insert a row
insert into user_account(user_name, user_password)
values('ilove5566', '5566');

select * from user_account;

-- insert the same data
insert into user_account(user_name, user_password)
values('ilove5566', '5566');
-- failed
show warnings;

-- insert different user_name
insert into user_account(user_name, user_password)
values('ihate5566', '5566');

select * from user_account;
-- why is user_id 3, not 2?

-- p.72 practice
create table my_product(
product_id int primary key auto_increment,
product_name varchar(100),
product_price int
);

desc my_product;

alter table my_product auto_increment = 20;

insert into my_product(product_name, product_price)
values('aaa', 100), ('aaa', 100), ('aaa', 100), ('aaa', 100), ('aaa', 100);

select * from my_product;
