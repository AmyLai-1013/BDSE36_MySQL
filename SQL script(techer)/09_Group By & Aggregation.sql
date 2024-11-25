-- group by & aggregation
select * from passengers;
select * from tickets;
select * from ports;

select * from passengers
group by pclass;

show warnings;

select count(pclass) from passengers
group by pclass;

select pclass, count(pclass) from passengers
group by pclass;

select sex, count(sex) from passengers
group by sex;

select survived, count(survived) from passengers
group by survived;

-- meaningless
select age, count(age) from passengers
group by age;

-- p.117 practice
#1.
select sex, avg(age) 平均年齡 from passengers
group by sex;

#2.
select pclass, max(age) from passengers
group by pclass;

#3.
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

-- solution
select *
from artists
join songs
on artists.id = artist_id;

select artist_name, count(artists.id) 'number of songs'
from artists
join songs
on artists.id = artist_id
group by artist_name;

-- having
select artist_name, count(artists.id) 'number of songs'
from artists
join songs
on artists.id = artist_id
group by artist_name
having count(*) >= 2;
#having count(artists.id) >= 2;

-- p.119 practice
select city, count(portid) 'boarding counts'
from passengers
join ports
on portId = ports.id
group by city
having count(portid) >= 100;

-- count(portid) v.s. count(*)
select portid, count(portid) from passengers
group by portid;

select * from passengers;

select portid, count(*) from passengers
group by portid;