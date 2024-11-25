-- rename table & column
-- rename table
alter table employee rename 員工;

select * from employee;
select * from 員工;

-- rename column
alter table 員工 change column employee_name 員工姓名 varchar(100);

select * from 員工;
desc 員工;
