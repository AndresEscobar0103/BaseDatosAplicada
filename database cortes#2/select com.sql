create database if not exists medio_ambiente8;

use medio_ambiente8;

create table contaminacion(
      id int primary key auto_increment not null,
     porcentaje decimal(3) not null,
     consecuencias varchar(50),
     causas varchar(50)
);

create table contaminacion_atmosferica(
      id_atm int primary key auto_increment not null,
     porcentaje decimal(3) not null,
     consecuencias varchar(50),
     causas varchar(50),
      idconta int,
       constraint fk_conta foreign key(idconta)
    references contaminacion(id)
);

insert into contaminacion
	values(0,"39","la desaparición de la biodiversidad","vertido de desechos industriales");

insert into contaminacion
	values(0,"40","la desaparición los ecosistemas acuáticos"," aumento de las temperaturas");

insert contaminacion
	values(0,"19","Enfermedades dermatológicas","El desarrollo industrial.");
    
insert contaminacion
	values(0,"40","Enfermedades cardiovasculares","Producción y uso indiscriminado del plástico.");


insert into contaminacion_atmosferica
	values(0,"20","Consumo de combustible fósil"," Lluvia ácida",2);
    
insert into contaminacion_atmosferica
	values(0,"38","Daño a la capa de ozono"," gases para refrigeración",2);
    
insert contaminacion_atmosferica
	values(0,"19","Reducción de la visibilidad","Gestión de desechos",2);
    
insert contaminacion_atmosferica
	values(0,"38","Contaminación de los alimentos","Prácticas agrícolas",2);

select *
from contaminacion
where porcentaje in (select porcentaje  from contaminacion_atmosferica);

SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE `contaminacion`;
SET FOREIGN_KEY_CHECKS=1;