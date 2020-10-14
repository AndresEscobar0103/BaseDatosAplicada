create database if not exists medio_ambiente5;

use medio_ambiente5;

create table residuos_solidos(
	id_mercado int primary key auto_increment not null,
     N_puestos varchar(100),
     generacion varchar(100),
     nombre_mercado varchar(50),
     dueño varchar(50)
);

create table contaminaciones(
	 id_conta4 int primary key auto_increment not null,
     porcentaje decimal(3) not null,
     consecuencias varchar(50),
     causas varchar(50),
     idconta int,
	 constraint fk_conta foreign key(idconta)
     references residuos_solidos(id_mercado)
);


insert into residuos_solidos
	values(0,"39","8.550","deuno","jose rodriguez");
    
insert into residuos_solidos
	values(0,"5","2.300","justo y bueno","andres ruiz");

insert into residuos_solidos
	values(0,"40","1.200","fruty","juan diaz");
    
insert into residuos_solidos
	values(0,"10","6.250","variedades","maria ramirez");

select N_puestos, generacion,N_puestos*generacion/1000 as generaciontotal
from residuos_solidos;

select concat(nombre_mercado,"=",dueño) as mercadoydueño
from residuos_solidos;