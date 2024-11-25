-- Limit & Offset
-- limit
use my_train_titanic;

select * from passengers limit 10;
select * from passengers limit 5;

select * from passengers limit 890;
select * from passengers limit 1000;

-- limit [index, count]
select * from passengers limit 5, 20;
select * from passengers limit 20, 200;

-- offset
select * from passengers limit 20 offset 5;
