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

create table datauser2(
id int auto_increment,
birthate date not null,
weight decimal (2,2),
nameuser varchar(60),
primary key(id)
);
alter table datauser2
modify weight decimal(7,2);

insert into datauser2
value(0,"2000-05-16",70.1,"Jose Vega");

insert into datauser2
value(0,"1999-11-30 ",60.2,"Andres Escobar");

insert into datauser2
value(0,"2001-04-08 ",65.5,"Sebastian Vargas");

insert into datauser2
value(0,"1998-02-11",75.3,"Fernanda Galindo");

select * from datauser2;
select date_format(birthate,"%d/%b/%y") as date1
from datauser2

select round(weight,2) as peso
from datauser2;

select left(nameuser,4) as newname
from datauser2;