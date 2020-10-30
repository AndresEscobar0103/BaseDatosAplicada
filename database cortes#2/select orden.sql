create database if not exists medio_ambiente9;

use medio_ambiente9;

create table contaminacion(
	 id int primary key auto_increment not null,
	 pais varchar(50),
     porcentaje decimal(3) not null,
     consecuencias varchar(50),
     causas varchar(50)
);

create table contaminacion_atmosferica(
      id_atm int primary key auto_increment not null,
      pais varchar(50),
     porcentaje decimal(3) not null,
     consecuencias varchar(50),
     causas varchar(50),
      idconta int,
       constraint fk_conta foreign key(idconta)
    references contaminacion(id)
);

insert into contaminacion
	values(0,"colombia","39","la desaparición de la biodiversidad","vertido de desechos industriales");

insert into contaminacion
	values(0,"españa","40","la desaparición los ecosistemas acuáticos"," aumento de las temperaturas");

insert contaminacion
	values(0,"holanda","19","Enfermedades dermatológicas","El desarrollo industrial.");
    
insert contaminacion
	values(0,"china","40","Enfermedades cardiovasculares","Producción y uso indiscriminado del plástico.");
    

select causas,consecuencias,pais
from contaminacion
order by pais asc;



SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE `contaminacion`;
SET FOREIGN_KEY_CHECKS=1;