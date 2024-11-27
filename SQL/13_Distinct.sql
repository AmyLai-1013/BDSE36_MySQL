-- distinct
use my_train_titanic;

select * from passengers;

select pclass from passengers;
select distinct pclass from passengers;

select distinct portid from passengers;
select distinct id from passengers; #X meaningless

-- p.129練習
select count(distinct pclass) class_count from passengers;
select count(distinct portid) portid_count from passengers;

-- double distinct
select distinct pclass, sex from passengers;
select count(distinct pclass, sex) from passengers;






