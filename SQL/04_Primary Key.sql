-- Primary Key
use my_database;

-- set primary key

create table cars_04(
car_id int,
car_brand varchar(50) ,
car_color varchar(50) ,
car_sale_price int,
primary key(car_id)
);

insert into cars_04(car_id, car_brand)
values(1, 'Luxgen');

select * from cars_04;

insert into cars_04(car_id, car_brand)
values(1, 'Luxgen');

show warnings;

insert into cars_04(car_id, car_brand)
values(2, 'Luxgen');

select * from cars_04;

-- auto increment

create table cars_05(
car_id int primary key auto_increment,
car_brand varchar(50) ,
car_color varchar(50) ,
car_sale_price int
);

select * from cars_05;

insert into cars_05(car_brand, car_color)
values('Luxgen',150000);

select * from cars_05;

insert into cars_05(car_id, car_brand, car_color)
values(87, 'Luxgen',150000);

select * from cars_05;

insert into cars_05(car_brand, car_color)
values('Luxgen',150000);

select * from cars_05;

-- auto increment customized

create table cars_06(
car_id int primary key auto_increment,
car_brand varchar(50) ,
car_color varchar(50) ,
car_sale_price int
);

alter table cars_06 auto_increment = 100;

desc cars_06;

insert into cars_06(car_brand, car_color)
values('Luxgen',150000);

select * from cars_06;

insert into cars_06(car_brand, car_color)
values('Luxgen','red');

select * from cars_06;

-- unique key
create table user_account(
user_id int primary key auto_increment,
user_name varchar(100) not null unique,
user_password varchar(100) not null
);

desc user_account;

insert into user_account(user_name, user_password)
values('ilove5566', '5566');

select * from user_account;

insert into user_account(user_name, user_password)
values('ilove5566', '5566');

select * from user_account;

insert into user_account(user_name, user_password)
values('ihate5566', '5566');

select * from user_account;

-- 練習

create table my_product(
product_id int primary key auto_increment,
product_name varchar(100),
product_price int
);

alter table my_product auto_increment = 20;

desc my_product;

insert into my_product(product_name, product_price)
values('aaa', 100),
('aaa', 100),
('aaa', 100),
('aaa', 100),
('aaa', 100);

select * from my_product;
