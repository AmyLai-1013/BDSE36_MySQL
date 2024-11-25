-- tables
use my_database;

-- create table
create table members(
member_id int,
member_name varchar(50),
member_gender varchar(20),
member_age int
);

-- create table naming with stop words
create table member(
member_id int,
member_name varchar(50),
member_gender varchar(20),
member_age int
);

-- can we create table with Chinese?
create table 會員(
member_id int,
會員姓名 varchar(50),
member_gender varchar(20),
member_age int
); #yes, but be careful

-- check table settings (3 ways)
show columns from members;
describe members;
desc members;

-- drop table (dangerous)
drop table members;

-- p.50 practice
create table player_02(
playr_id int,
player_name varchar(50),
player_age int,
player_salary int,
player_team varchar(20)
);

desc player_02;

drop table player_02;

-- insert data
insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Abigail', 'Female', 15);

select * from members;

-- insert data with wrong column/value count
insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Abigail', 'Female');

-- show the last error information
show warnings;

-- insert data with worng datatype('Female' is not numeric) 
insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Abigail', 'Female', 'Female');

show warnings;

-- insert data with worng datatype(15 is not string) 
insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Abigail', 15, 15);
#success however
#datatype transformation

-- same, test with the ''
insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Abigail', '15', 15);

-- column counts should fit value counts
insert into members(member_id, member_name, member_gender)
values(1, 'Abigail', 'Female');

select * from members;

-- multi insertion
insert into members(member_id, member_name, member_gender, member_age)
values
(2, 'Maria', 'Female', 21),
(3, 'Gregory', 'Male', 35),
(4, 'Scott', 'Male', 39);

select * from members;

-- p.53 practice
create table employee(
employee_id int,
employee_name varchar(50),
employee_age int,
employee_salary int,
employee_department varchar(50)
);

desc employee;

insert into employee(employee_id, employee_name, employee_age, employee_salary, employee_department)
values
(1, 'Tim', 39, 100000, 'Sales'),
(2, 'Danny', 27, 33000, 'Accounting'),
(3, 'Wilson', 33, 42000, 'Administration'),
(4, 'Elizabeth', 22, 29000, 'Accounting');

select * from employee;
