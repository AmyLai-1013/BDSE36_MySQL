-- subquery
select * from passengers;

-- find 70
select * from passengers where pclass = 2;
select max(age) from passengers where pclass = 2; #70

-- merger 70 into subquery
select * from passengers where age > 70;
select * from passengers where age > (select max(age) from passengers where pclass = 2);

select pclass, name, age from passengers where age > (select max(age) from passengers where pclass = 2);
