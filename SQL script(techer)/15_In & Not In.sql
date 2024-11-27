-- in & not in
-- in
select * from passengers where portid = 1 or portid = 3;
select * from passengers where portid in (1, 3);

-- not in
select * from passengers where portid != 1 or portid != 3; #X
select * from passengers where portid != 1 and portid != 3;
select * from passengers where portid not in (1, 3);

-- p.136 practice
select * from passengers where sex not in ('female') and portid not in (2, 3);
select * from passengers where sex = 'male' and portid = 1;