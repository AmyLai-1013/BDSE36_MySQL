-- in & not in
select * from passengers;
-- in
select * from passengers where portid = 1 or portid = 3;
select * from passengers where portid in (1, 3);

-- not in
select * from passengers where portid != 1 or portid != 3; #X
select * from passengers where portid != 1 and portid != 3;
select * from passengers where portid not in (1, 3);

-- p.136 練習
select * from passengers where portid not in (2, 3) and sex != 'female';
select * from passengers where portid in (1) and sex != 'female';