-- Group By & Aggregation
use my_train_titanic;

select * from passengers;
select * from tickets;
select * from ports;

select pclass, count(pclass) from passengers
group by pclass;

select sex, count(sex) from passengers
group by sex;

-- p.117 練習
#1
select sex, avg(age) from passengers
group by sex;

#2
select pclass, max(age) from passengers
group by pclass;

#3
select pclass, min(age) from passengers
group by pclass;

-- p.118 find out how many songs does each artist have
create table artists(
id int not null primary key auto_increment,
artist_name varchar(50) not null unique
);

create table songs(
id int not null primary key auto_increment,
song_name varchar(50) not null,
artist_id int,
foreign key(artist_id) references artists(id) on delete cascade
);

insert into artists(artist_name)
values('Bruno Mars'), ('Jay Sean'), ('Usher'), ('Sean Kingston');

insert into songs(song_name, artist_id)
values('Just the way you are', 1), ('Treasure', 1), ('Down', 2), ('Yeah', 3), ('DJ got us fall in love again', 3), ('Beautiful girls', 4);

select * from artists;
select * from songs;


select artist_name, count(artist_id) as numbers_of_songs
from artists
join songs
on artist_id =  artists.id
group by artist_id;


-- p.119 練習
select * from passengers;
select * from ports;

select city, count(portid) 'boarding counts'
from passengers
join ports
on portid = ports.id
group by city
having count(*) > 100;

-- count(portid) v.s. count(*)
select portid, count(portid) from passengers
group by portid;

select * from passengers;

select portid, count(*) from passengers
group by portid;

