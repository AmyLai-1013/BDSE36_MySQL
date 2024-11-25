-- null & default
desc employee;

insert into employee(employee_id, employee_name)
values(55, 'Harry');

select * from employee;

-- null
create table cars(
car_brand varchar(50) not null,
car_color varchar(50) not null,
car_sale_price int
);

desc cars;

-- insert with correct column/value count
insert into cars(car_brand, car_sale_price)
values('Luxgen', 500000);
-- failed
show warnings;

select * from cars;

-- multi insertion
insert into cars(car_brand, car_color, car_sale_price)
values
('Luxgen', 'blue', 400000),
('Ford', 'white');
-- failed (column count and value count)
show warnings;

select * from cars;

-- add 'null' manually in the column which can be null
insert into cars(car_brand, car_color, car_sale_price)
values
('Luxgen', 'blue', 400000),
('Ford', 'white', null);

select * from cars;

-- insert null
insert into cars(car_brand, car_color, car_sale_price)
values
('Luxgen', 'blue', 400000),
('Ford', null, 780000);
-- failed

select * from cars;

-- default
create table cars_02(
car_brand varchar(50) not null default '窩不知道',
car_color varchar(50) not null default 'unknown',
car_sale_price int default 50000
);

desc cars_02;

-- insert empty value
insert into cars_02()
values();

select * from cars_02;

-- insert the known value
insert into cars_02(car_color)
values('black');

select * from cars_02;

-- null with default
create table cars_03(
car_brand varchar(50) default '窩不知道',
car_color varchar(50) default 'unknown',
car_sale_price int default 50000
);

desc cars_03;

-- different way to insert data
#1.
insert into cars_03(car_brand, car_color, car_sale_price)
values(null, 'black', null);
#2.
insert into cars_03(car_color)
values('black');

select * from cars_03;

-- p.62 practice
insert into cars_03(car_brand, car_color)
values('Toyota', null), ('Honda', null);

select * from cars_03;

-- insert all 4 rows
insert into cars_03(car_brand, car_color, car_sale_price)
values
(null, 'black', null),
(default, 'black', default),
('Toyota', null, default),
('Honda', null, default);

select * from cars_03;