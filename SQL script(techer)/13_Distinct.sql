-- distinct
select * from passengers;

select pclass from passengers;
select distinct pclass from passengers;

select distinct portid from passengers;
select distinct id from passengers; #X meaningless

-- p.129 practice
select count(distinct pclass) class_count from passengers;
select count(distinct portid) port_count from passengers;

-- double distinct
select distinct pclass, sex from passengers;
select count(distinct pclass, sex) from passengers;