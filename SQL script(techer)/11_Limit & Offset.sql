-- limit & offset
-- limit
select * from passengers limit 10;
select * from passengers limit 5;

select * from passengers limit 890;
select * from passengers limit 1000;

-- limit [index, count]
select * from passengers limit 5, 20;
select * from passengers limit 20, 200;

-- offset
select * from passengers limit 20 offset 5;

-- pages
select * from passengers limit 0, 20;
select * from passengers limit 20, 20;
select * from passengers limit 40, 20;

-- p.125 practice
select * from passengers order by portid limit 2, 15;
select * from passengers order by -portid desc limit 15;
select * from passengers order by -portid desc, id limit 15;
select * from passengers order by -portid desc, id desc;