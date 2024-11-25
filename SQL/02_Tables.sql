-- Tables
create table employee(
employee_id int,
employee_name varchar(50),
employee_age int,
employee_salary int,
employee_department varchar(50)
);

-- drop table employee;

use my_database;

create table members(
member_id int,
member_name varchar(50),
member_gender varchar(20),
member_age int);

drop table members;

create table player_02(
player_id int,
player_name varchar(50),
player_age int,
player_salary int,
player_team varchar(100)
);

desc player_02;

drop table player_02;

insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Aligail', 'Female', 15);

select *from members;

insert into members(member_id, member_name, member_gender)
values(1, 'Aligail', 'Female');

select *from members;

insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Aligail', 'Female');

show warnings;

insert into members(member_id, member_name, member_gender, member_age)
values(1, 'Aligail', 12, 15);

select *from members;

insert into members(member_id, member_name, member_gender, member_age)
values
(2, 'Maria', 'Female', 21),
(3, 'Gregory', 'Male', 35),
(4, 'Scott', 'Male', 39);
select *from members;

select *from employee;

desc employee;

insert into employee(employee_id, employee_name, employee_age, employee_salary, employee_department)
values
(1, 'Tim', 39, 100000, 'Sales'),
(2, 'Danny', 27, 33000, 'Accounting'),
(3, 'Wilson', 33, 42000, 'Administration'),
(4, 'Elizabeth', 22, 29000, 'Accounting');

select *from employee;

desc members;

select *from members;