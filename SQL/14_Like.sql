-- Like
select * from passengers;

select * from passengers where name = 'Moran'; #X

-- find william
select * from passengers where name like '%william%';
select * from passengers where name like '% william %';
select * from passengers where name like '% william %' and sex = 'male'; # add another requirement

select * from passengers where name like '% george %';

-- p.132練習
select * from passengers where name like '%williams,%';

-- wildcard
select * from passengers where name like '%smith,%';
select * from passengers where name like 'smith,%';

select * from passengers where name like '%)';
select * from passengers where name like '%)%';

-- double like
select * from passengers where name like 'williams,%';
select * from passengers where name like 'williams,%' and name like '%charles%';

-- find digit place
select ticketid from passengers;
select * from passengers where ticketid like '__';

-- p.134練習
select * from passengers where name like '% william %' and sex = 'male' and ticketId like '__';



