-- null & default
use my_database;

-- null
create table cars(
car_brand varchar(50) not null,
car_color varchar(50) not null,
car_sale_price int
);

insert into cars(car_brand, car_sale_price)
values('Luxgen',550000);

select * from cars;

insert into cars(car_brand, car_color, car_sale_price)
values
('Luxgen','blue', 400000),
('Ford','white', null);

-- default
create table cars_02(
car_brand varchar(50) not null default '我不知道',
car_color varchar(50) not null default 'unknown',
car_sale_price int default 50000
);

desc cars_02;

insert into cars_02()
values();

select * from cars_02;

insert into cars_02(car_color)
values('black');

select * from cars_02;

create table cars_03(
car_brand varchar(50) default '我不知道',
car_color varchar(50) default 'unknown',
car_sale_price int default 50000
);

desc cars_03;

select * from cars_03;

insert into cars_03(car_brand, car_color, car_sale_price)
values(null, 'black', null);

insert into cars_03(car_color)
values('black');

select * from cars_03;

insert into cars_03(car_brand, car_color)
values
('Toyota', null),
('Honda', null);

select * from cars_03;

insert into cars_03(car_brand, car_color, car_sale_price)
values
(null,'black', null),
(default, 'black', default),
('Toyota', null, default),
('Honda', null, default);

select * from cars_03;
