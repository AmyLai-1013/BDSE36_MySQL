-- CRUD
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

-- select all
select * from player;

-- select single column
select player_name from player;
select player_age from player;

-- select multiple columns in one query 
select player_name, player_age from player;
select player_age, player_name from player;

-- compare these two, which is better when we need the 'age' info?
select player_position, player_age, player_name from player;
-- or
select player_id, player_name, player_age from player;

-- where clause
select * from player;

select * from player 
where player_age = 23;

select player_name, player_age from player 
where player_age = 23;

-- >,<,=
select * from player where player_age > 28;
select * from player where player_age >= 28;

select * from player where player_age < 28;
select * from player where player_age <= 28;

select * from player where player_name = 'Corbin';
select * from player where player_name = 'Matt';

-- case insensitive
select * from player where player_name = 'corbin';
select * from player where player_name = 'mATT';

-- where clause with multiple conditions
select * from player where player_position = 'P';
select * from player where player_age < 28;

select * from player where player_position = 'P' and player_age < 28;

select * from player where player_age >= 27;
select * from player where player_age <= 29;

select * from player where player_age >= 27 and player_age <= 29;
select * from player where player_age >= 27 and player_age <= 29 and player_position = 'P';

-- between
select * from player where player_age between 27 and 29;
select * from player where player_age between 29 and 27; #(X)

select * from player where player_age between 27 and 29 and player_position = 'P';

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

-- solution
#1.
select grocery_name, grocery_category, grocery_reserves from grocery;
#2.
select grocery_id, grocery_name from grocery where grocery_id >= 3 and grocery_id <= 7;
select grocery_id, grocery_name from grocery where grocery_id between 3 and 7;
#3.
select grocery_id, grocery_name, grocery_category from grocery where grocery_category = 'meat';
select grocery_id, grocery_name, grocery_category from grocery where grocery_id = 1 and grocery_id = 5 and grocery_id = 8; #(X)
select grocery_id, grocery_name, grocery_category from grocery where grocery_id = 1 or grocery_id = 5 or grocery_id = 8;

-- aliases
select player_name, player_position, player_age from player;

select player_name as 球員姓名, player_position as 球員守位, player_age as 球員年齡 from player;
select player_name as '球員 姓名', player_position as '球員 守位', player_age as '球員 年齡' from player;
select player_name as 球員_姓名, player_position as 球員_守位, player_age as 球員_年齡 from player;

-- as can be skipped
select player_name 球員姓名, player_position 球員守位, player_age 球員年齡 from player;

-- update
-- find the column and row you need
select * from player where player_position = 'p';

-- don't update without setting a condition
update player set player_position = 'Pitcher'
where player_position = 'p';

select * from player;

-- practice
select * from player where player_name = 'Pete';
update player set player_position = 'OF' where player_name = 'Pete';

select * from player;

-- p.85 practice
#1.
select * from player;
select * from player where player_name = 'bobby';
select * from player where player_id = 1;

update player set player_age = 26
where player_id = 1;

select player_name, player_age from player where player_id = 1;

#2.
select * from player where player_name = 'jonah';

update player set player_name = 'Jonathan'
where player_name = 'jonah';

select player_name, player_age from player;
select player_name, player_age from player where player_name = 'bobby' or player_name = 'jonathan';
select player_name, player_age from player where player_id = 1 or player_id = 3;

-- delete
select * from player;
select * from player where player_name = 'Jonathan';

delete from player
where player_name = 'Jonathan';

select * from player;

-- delete without where clause
delete from player;
select * from player;

-- insert another row of data
insert into player(player_name)
values('Justin');
select * from player;
-- find out the player_id with auto increment has been modified