-- case
select id, name,
case
  when portid = 1 then 'Sounthampton'
  when portid = 2 then 'Cherbourg'
  when portid = 3 then 'Queenstown'
  else 'unknown'
end boarding_place
from passengers;