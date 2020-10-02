create database if not exists medio_ambiente3;

use medio_ambiente3;

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