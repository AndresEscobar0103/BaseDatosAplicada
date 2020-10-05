create database if not exists medio_ambiente2;

use medio_ambiente2;

create table contaminacion3(
      id_conta int primary key auto_increment not null,
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
    references contaminacion3(id_conta)
);

insert into contaminacion3
	values(0,"39","la desaparición de la biodiversidad","vertido de desechos industriales");

insert into contaminacion3
	values(0,"40","la desaparición los ecosistemas acuáticos"," aumento de las temperaturas");

insert into contaminacion_atmosferica
	values(0,"20","Consumo de combustible fósil"," Lluvia ácida",2);

insert into contaminacion_atmosferica
	values(0,"37","Daño a la capa de ozono"," gases para refrigeración",2); 