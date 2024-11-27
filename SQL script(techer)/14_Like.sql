-- like
select * from passengers;

select * from passengers where name = 'Moran'; #X

-- find william
select * from passengers where name like '%william%';
select * from passengers where name like '% william %';
select * from passengers where name like '% william %' and sex = 'male'; # add another requirement

select * from passengers where name like '% george %';

-- p. 132 practice
select * from passengers where name like '%williams%';
select * from passengers where name like 'williams%';
select * from passengers where name like 'williams,%';#O

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

-- p.134 practice
select * from passengers where ticketid like '__';
select * from passengers where ticketid like '__' and name like '% william %';
select * from passengers where ticketid like '__' and name like '% william %' and sex = 'male';