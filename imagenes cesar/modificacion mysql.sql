create database if not exists medio_ambiente;

use medio_ambiente;

create table contaminacion(
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
