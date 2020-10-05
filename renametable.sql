create database if not exists medio_ambiente1;

use medio_ambiente1;

create table contaminacion1(
     id_conta int primary key auto_increment not null,
     porcentaje decimal(3)
);

alter table contaminacion
add consecuencias varchar(50) not null;

alter table contaminacion
add causas varchar(50) not null;

alter table contaminacion
add solucion varchar(200);



create table contaminacion_termica(
     id int primary key auto_increment not null,
     porcentaje decimal(3)
);

alter table contaminacion_termica
add consecuencias varchar(50) not null;

alter table contaminacion_termica
add causas varchar(50) not null;

alter table contaminacion_termica
add solucion varchar(200);


create table contaminacion_atmosferica(
     id_atm int primary key auto_increment not null,
     porcentaje decimal(3)
);

alter table contaminacion_atmosferica
add consecuencias varchar(50) not null;

alter table contaminacion_atmosferica
add causas varchar(50) not null;

alter table contaminacion_atmosferica
add solucion varchar(200);

rename table contaminacion1 to contaminacion2;
truncate table contaminacion1;
drop table contaminacion1;
