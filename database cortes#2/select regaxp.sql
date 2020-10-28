create database if not exists medio_ambiente7;

use medio_ambiente7;

create table contaminacion(
	 id int primary key auto_increment not null,
     porcentaje int,
     consecuencias varchar(100),
     causas varchar(100)
);

create table contaminacion_atmosferica(
	 id_atm int primary key auto_increment not null,
     porcentaje int,
     fecha_contaminacion date not null,
     consecuencias varchar(100),
     causas varchar(100),
     idconta int,
	 constraint fk_conta foreign key(idconta)
     references contaminacion(id)
);

insert contaminacion
	values(0,"38","la desaparición de la biodiversidad","vertido de desechos industriales");
    
insert contaminacion
	values(0,"50","deterioro de la capa de ozono"," aumento de las temperaturas");

insert contaminacion
	values(0,"19","Enfermedades dermatológicas","El desarrollo industrial.");
    
insert contaminacion
	values(0,"38","Enfermedades cardiovasculares","Producción y uso indiscriminado del plástico.");

select * 
from contaminacion
where porcentaje regexp'8$';

SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE `contaminacion`;
SET FOREIGN_KEY_CHECKS=1;
