-- Create Read Update Delete
use my_database;

create table player(
player_id int not null primary key auto_increment,
player_name varchar(50),
player_position varchar(50),
player_age int
);

insert into player(player_name, player_position, player_age)
values
('Bobby', 'INF', 23),
('Luis', 'P', 30),
('Jonah', 'C', 28),
('Framber', 'P', 30),
('Pete', 'P', 27),
('Matt', 'INF', 29),
('Corbin', 'OF', 23),
('Juan', 'OF', 28);

select * from player;

select player_name from player;

select player_id, player_name, player_age from player;

select * from player where player_age = 23;

select player_name, player_age from player where player_age = 23;

select * from player where player_age > 28;
select * from player where player_age >= 28;

select * from player where player_age < 28;
select * from player where player_age <= 28;

select * from player where player_name = 'Matt';
select * from player where player_name = 'Corbin';
select * from player where player_name = 'corbin';

select * from player where player_age != 28;

select * from player where player_position = 'p';
select * from player where player_position = 'p' and player_age < 28;

select * from player where player_age between 27 and 29 and player_position = 'p';


-- p.81 practice

create table grocery(
grocery_id int primary key auto_increment,
grocery_name varchar(50),
grocery_category varchar(50),
grocery_reserves int
);

insert into grocery(grocery_name, grocery_category, grocery_reserves)
values
('Beef', 'Meat', 13),
('Milk', 'Dairy', 15),
('Spinach', 'Vegetables', 20),
('Cheese', 'Dairy', 5),
('Pork', 'Meat', 8),
('Beer', 'Beverage', 60),
('Cabbage', 'Vegetables', 21),
('Lamb', 'Meat', 16);

select * from grocery;

#1
select grocery_name, grocery_category, grocery_reserves from grocery;
#2
select grocery_id, grocery_name from grocery where grocery_id between 3 and 7;
#3
select grocery_id, grocery_name, grocery_category from grocery where grocery_category = 'Meat';


-- Aliases別名，改變顯示方式

select player_name, player_position, player_age from player;

select player_name as 球員姓名, player_position as 守備位置, player_age as 球員年齡 from player;

select player_name as '球員 姓名', player_position as '守備 位置', player_age as '球員 年齡' from player;

select player_name as 球員_姓名, player_position as 守備_位置, player_age as 球員_年齡 from player;

select player_name 球員姓名, player_position 守備位置, player_age 球員年齡 from player;

-- rename table & column
-- rename table
alter table employee rename 員工;

select * from employee;
select * from 員工;

-- rename column

desc 員工;
alter table 員工 change column employee_name 員工姓名 varchar(100);

select * from 員工;
desc 員工;

select * from player where player_position = 'P';

update player set player_position = 'Pitcher'
where player_position = 'P';

select * from player;


select * from player where player_name = 'Pete';

update player set player_position = 'OF'
where player_name = 'Pete';

select * from player;

-- 練習
#1 (用id找比較嚴謹)
select * from player;

select * from player where player_id = 1;

update player set player_age = 26 where player_id = 1;

select player_name, player_age from player where  player_id = 1;

#2
select * from player where player_name = 'Jonah';

update player set player_name = 'Jonathan' where player_name = 'Jonah';

select player_name, player_age from player where player_id = 1 or player_id = 11;

-- Delete
select * from player where player_name = 'jonathan';

delete from player where player_name = 'jonathan';

select * from player;








