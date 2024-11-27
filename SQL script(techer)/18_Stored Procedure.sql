-- stored procedure
select * from ports;

-- remember to alter the delimiter before creation
delimiter //
create procedure select_ports()
begin
  select * from ports;
end //
delimiter ;
-- remember to change ther delimiter to default after the creation

-- call procedure
call select_ports();

-- drop procedure
drop procedure select_ports;

-- stored procedure with parameter
delimiter //
create procedure ports_city(in portsid int)
begin
  select city from ports where id = portsid;
end //
delimiter ;

call ports_city;
show warnings;
-- failed with no parameter

call ports_city(1);
call ports_city(3);
call ports_city(4);
call ports_city('阿炮');
call ports_city(10000);

-- p. 145 practice
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

