-- variables
select @myname := 'Masataka Oniwa';
select @myname;

select @myname := 'Sekiro', @myname := 'Ashina';
select @myname, @myhome; 

# 在set 的時候 := 跟 = 是一樣的, select的時候一定要 :=
set @myname := 'Tim', @myhome = 'Taipei'; 

select @myname, @myhome; 

select @myname = 'Tim';
select @myname = 'Tom';

set @mytimestamp = now();
select @mytimestamp;

set @mytimestamp = current_timestamp;
select @mytimestamp;

