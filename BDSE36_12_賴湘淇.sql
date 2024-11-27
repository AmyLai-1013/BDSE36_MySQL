-- MySQL Homework
use my_titanic;
select * from full_passengers limit 1350;
desc full_passengers;

# 1. 查詢各性別乘客的總人數，請顯示在sex與gender_counts這兩個欄位
select sex, count(sex) gender_counts from full_passengers group by sex;

# 2.查詢第591至第883名乘客的id與姓名資料
select id, pname from full_passengers limit 590, 293;

# 3.請找出所有的Anders & Alfrida Andersson家成員以及存活狀態
select pname, survived from full_passengers where (pname like 'Andersson,%' or pname like '% Anders %') and homedest = 'Sweden Winnipeg, MN'; 

# 4.承上題，已知Alfrida還有一個已婚的妹妹叫做Anna，請找出Anna與其丈夫
select * from full_passengers where pname like '%Alfrida%';
select * from full_passengers where pname like '%brogren%';
select * from full_passengers where pname like '%danbom,%';

# 5.找出所有名字是Leonard的男性乘客，顯示id, pclass, pname
select id, pclass, pname from full_passengers where pname like '% Leonard%' and sex = 'male';

# 6.查詢所有乘客持有的票券中，最多人持有的那一種ticket，回傳票券名稱(ticket)與持有人數(ticket_count)兩個欄位
select ticket, count(ticket) ticket_count from full_passengers group by ticket having count(ticket) order by count(ticket) desc limit 1;

# 7.分開列出二等客艙以及三等客艙中所有男性乘客的平均年齡
select * from full_passengers where pclass in(2, 3);
select * from full_passengers where pclass in(2, 3) and sex = 'male';
select pclass, avg(age) from full_passengers where pclass in(2, 3) and sex = 'male' group by pclass;

# 8.列出所有登船點的登船人數與百分比，僅列出有明確登船地點的資料即可
select embarked 登船點,
count(embarked) 登船人數,
round(count(embarked)*100 / (select count(embarked) from full_passengers),2) 登船點佔百分比 
from full_passengers group by embarked order by 登船點佔百分比 desc limit 3;
 
