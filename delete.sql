create database if not exists medio_ambiente3;

use medio_ambiente3;

create table contaminacion4(
	 id_conta3 int primary key auto_increment not null,
     porcentaje decimal(3) not null,
	 consecuencias varchar(50),
     contribuccion boolean
);

create table contaminacion_atmosferica(
	 id_atm int primary key auto_increment not null,
     porcentaje decimal(3) not null,
	 consecuencias varchar(50),
     contribuccion boolean,
	 idconta int,
	 constraint fk_conta foreign key(idconta)
     references contaminacion4(id_conta3)
);

insert into contaminacion4
	values(0,"39","la desaparición de la biodiversidad",true);

insert into contaminacion4
	values(0,"50","deterioro de la capa de ozono",true);

insert into contaminacion4
	values(0,"20","extincion de fauna",true);

insert into contaminacion_atmosferica
	values(0,"19","Lluvia ácida",true,1);

insert into contaminacion_atmosferica
	values(0,"38","Consumo de combustible fósil",true,2);

insert into contaminacion_atmosferica
	values(0,"36","gases para refrigeración",true,3);

update contaminacion_atmosferica
set contribuccion=false
where id_atm=1;

delete from contaminacion_atmosferica 
where consecuencias="gases para refrigeración";
