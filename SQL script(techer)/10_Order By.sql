-- order by
select * from passengers;

select * from passengers
order by name;

-- order by Chinese
select * from player;

insert into player(player_name, player_position, player_age)
values
('阿炮', 'INF', 23),('中砲', 'OF', 30);

select * from player
order by player_name;

-- order by age ascending
select * from passengers
order by age;

-- descending
select * from passengers
order by age desc;

select * from passengers
order by name desc;

-- p.122 practice
select * from passengers
order by portid;

select * from passengers
order by portid desc;

select * from passengers
order by -portid;

select * from passengers
order by -portid desc;

-- double order by
select * from passengers order by pclass;
select * from passengers order by pclass, portid;