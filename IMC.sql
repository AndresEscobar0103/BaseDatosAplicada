create database if not exists Promedio;
use promedio;

create table alternative(
id int not null auto_increment,
username varchar(60) not null,
lastname varchar (60) not null,
age int not null,
weight int not null,
size int not null,
nationality varchar(60) not null,
primary key(id)
);

insert into alternative
value(0,"Andres","Escobar",20,50,168,"col");

insert into alternative
value(0,"Sebastian","Vargas",24,55,178,"col");

insert into alternative
value(0,"Jose","Vega",30,55,180,"col");

insert into alternative
value(0,"Milena","Forero",25,60,155,"col");

insert into alternative
value(0,"Luisa","Pachon",25,60,155,"col");


select username,lastname,nationality,id,weight
from alternative;

select weight,username,nationality
from alternative
where nationality="col"
order by weight asc;

select weight,size, weight*10000/(size*size) as IMC
from alternative;

select concat(username,"  ",lastname) as nameandlastname
from alternative
where nationality="col";