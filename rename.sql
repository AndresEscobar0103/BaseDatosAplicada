create database reciclaje;
use reciclaje;

create table alumno(
idalumno int not null auto_increment,
nombre varchar(50) not null,
ciudad varchar(50)not null,
pais varchar(50),
primary key (idalumno)
) engine=InnoDB;

rename table alumno to thrash;
truncate table thrash;

rename table thrash to alumnothrash;
truncate table alumnothrash;


create table materia(
idmateria int not null auto_increment,
semestre varchar(50) not null,
facultad varchar(50)not null,
jornada varchar(50),
primary key (idmateria)
) engine=InnoDB;

create table acciones(
idacciones int not null auto_increment,
agua varchar(50) not null,
tierra varchar(50)not null,
viento varchar(50),
primary key (idacciones)
) engine=InnoDB;

alter table alumno
add año int not null

alter table alumno
drop column ciudad

alter table alumno
change pais paises int
