-- data & time
use social_media_app;

create table phone(
phone_name varchar(50),
phone_price int,
stocking_time timestamp not null
);

insert into phone(phone_name, phone_price, stocking_time)
values('iPhone 16 Pro Max 2TB', 56000, '2024-11-11 14:25:00');

select * from phone;

insert into phone(phone_name, phone_price, stocking_time)
values('iPhone 16 Pro Max 2TB', 56000, '2024-11-11 14:26:10');

select * from phone;

create table phone_02(
phone_name varchar(50),
phone_price int,
stocking_time timestamp not null default now()
);

insert into phone_02(phone_name, phone_price)
values('iPhone 16 Pro Max 2TB', 56000);

select * from phone_02;

