-- stored procedure

delimiter //
create procedure select_ports()
begin
	select * from ports;
end //
delimiter ;

call select_ports();

-- p.145練習
select * from passengers;

delimiter //
create procedure name_ports(in pname varchar(200))
begin
	select name, portid from passengers where name like pname;
end //
delimiter ;

call name_ports('% william %');

-- 練習(techer)
use my_train_titanic;
select name, portid from passengers;

delimiter $$
create procedure pname_ports(in pname varchar(150))
begin
  select name, portid from passengers where name like pname;
end $$
delimiter ;

call pname_ports('william');
call pname_ports('% william %');
call pname_ports('% john %');
call pname_ports('% 阿文 %');

