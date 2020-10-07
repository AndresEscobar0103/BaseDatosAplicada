create database if not exists metalbands;
use metalbands; 

create table musical_gender(
id int not null auto_increment,
nameband varchar(60) not null,
trajectory int not null,
members int not null,
founded int not null,
nationality varchar(60) not null,
style varchar(60) not null,
primary key(id)
);

insert into  musical_gender
value (0,"immortal",30,3,1990,"noruega","black");

insert into  musical_gender
value (0,"death",38,4,1983,"eeuu","death");

insert into  musical_gender
value (0,"destruction",39,4,1982,"alemania","thrash");

insert into  musical_gender
value (0,"kreator",39,4,1982,"alemania","thrash");

insert into  musical_gender
value (0,"metallica",41,4,1981,"eeuu","thrash");

insert into  musical_gender
value (0,"ironmaiden",45,6,1975,"britanica","heavy");

insert into  musical_gender
value (0,"darckthrone",34,3,1986,"noruega","black");

insert into  musical_gender
value (0,"mayhem",36,4,1984,"noruega","black");


select * from musical_gender;

select nameband,nationality,style
from musical_gender;

select nameband,nationality,style,founded,id
from musical_gender;

select nameband,nationality,style,founded,id
from musical_gender
where style= "black"
order by members asc;

select nationality,style,founded,id,members
from musical_gender;

select nameband,nationality,style,founded,id
from musical_gender
where founded= 1982
order by nameband asc;


