-- transaction
create database transaction_test;
use transaction_test;

create table transaction_test(
id int not null primary key auto_increment,
user_name varchar(50),
user_deposit bigint
);

insert into transaction_test(user_name, user_deposit)
values
('Sam', 200000),
('Evelyn', 80000);

select * from transaction_test;

-- normal transaction
update transaction_test set user_deposit = user_deposit - 20000 where id = 1;
update transaction_test set user_deposit = user_deposit + 20000 where id = 2;

select * from transaction_test;

-- autocommit off
set @@autocommit = off;

update transaction_test set user_deposit = user_deposit - 20000 where id = 1;
update transaction_test set user_deposit = user_deposit + 20000 where id = 2;

select * from transaction_test;

-- commit
set @@autocommit = off;

update transaction_test set user_deposit = user_deposit - 20000 where id = 1;
update transaction_test set user_deposit = user_deposit + 20000 where id = 2;

select * from transaction_test;

commit;

select * from transaction_test;

-- rollback
set @@autocommit = off;

update transaction_test set user_deposit = user_deposit - 20000 where id = 1;

select * from transaction_test;

rollback;

-- rollback twice
select * from transaction_test;

update transaction_test set user_deposit = user_deposit - 20000 where id = 1;
update transaction_test set user_deposit = user_deposit + 20000 where id = 2;

select * from transaction_test;

rollback;
rollback;

select * from transaction_test;

set @@autocommit = on;