create database if not exists medio_ambiente6;

use medio_ambiente6;

create table contaminacion(
	 id int primary key auto_increment not null,
     porcentaje decimal(5,2),
     fecha_contaminacion date not null,
     consecuencias varchar(100),
     causas varchar(100)
);

create table contaminacion_atmosferica(
	 id_atm int primary key auto_increment not null,
     porcentaje decimal(5,2),
     fecha_contaminacion date not null,
     consecuencias varchar(100),
     causas varchar(100),
     idconta int,
	 constraint fk_conta foreign key(idconta)
     references contaminacion(id)
);

insert into contaminacion
	values(0,"14,5","2020/05/21","la desaparición de la biodiversidad","vertido de desechos industriales");
    
insert into contaminacion
	values(0,"50,4","2020/09/07","deterioro de la capa de ozono"," aumento de las temperaturas");

insert into contaminacion
	values(0,"19,2","2020/06/14","Enfermedades dermatológicas","El desarrollo industrial.");
    
insert into contaminacion
	values(0,"38,4","2020/12/15","Enfermedades cardiovasculares","Producción y uso indiscriminado del plástico.");

select * from contaminacion;
select date_format(fecha_contaminacion,'%d/%b/%Y') as fecha_de_contaminacion
from contaminacion;

select round(porcentaje,2) as porcentaje
from contaminacion;

SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE `contaminacion`;
SET FOREIGN_KEY_CHECKS=1;

