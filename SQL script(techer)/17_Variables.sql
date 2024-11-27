-- variables
select @myname := 'Masataka Oniwa';
select @myname; 

select @myname := 'Sekiro', @myhome := 'Ashina';
select @myname, @myhome; 

set @myname := 'Tim', @myhome = 'Taipei';

select @myname, @myhome; 

select @myname = 'Tim';
select @myname = 'Tom';

set @mytimestamp = now();
select @mytimestamp;

set @mytimestamp = current_timestamp;
select @mytimestamp;