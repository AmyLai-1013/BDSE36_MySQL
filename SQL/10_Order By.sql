-- Order By
-- p.122 練習

use my_train_titanic;

select * from passengers
order by -portid desc;

select * from passengers
order by -portid desc 
limit 15;
