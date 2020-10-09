create database if not exists medio_ambiente4;

use medio_ambiente4;

create table contaminacion4(
	 id_conta3 int primary key auto_increment not null,
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
     references contaminacion4(id_conta3)
);

insert into contaminacion4
	values(0,"39","la desaparición de la biodiversidad","vertido de desechos industriales");
    
insert into contaminacion4
	values(0,"50","deterioro de la capa de ozono"," aumento de las temperaturas");

insert into contaminacion_atmosferica
	values(0,"19","Lluvia ácida","Daño a la capa de ozono",1);
    
insert into contaminacion_atmosferica
	values(0,"38","Consumo de combustible fósil","gases para refrigeración",2);

select * from contaminacion4;

select porcentaje,causas
from contaminacion4;


