create database food_court;

use food_court;

create table fruits(id int auto_increment,name varchar(100),stall varchar(100),color varchar(200), primary key(id));

insert into fruits values ('1','Apple','10','Soft Red');

insert into fruits values ('2','Mango','15','Soft Green');

insert into fruits values ('3','Grape','18','Navy');

select* from fruits;

select `stall`,count(`stall`) as count_stall
from fruits 
group by `stall`;

create table stalls(id int auto_increment,name varchar(100), primary key(id));

insert into stalls values ('1','Apple');

insert into stalls values ('2','Pipe-Apple');

select * from stalls;

update fruits set `name` = 'Pipe-Apple' where id = 2;

select * from 
fruits inner join stalls
on fruits.id = stalls.id;
