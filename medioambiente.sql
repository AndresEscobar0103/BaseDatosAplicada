  
create database if not exists MedioAmbiente;
use Medio_Ambiente;
create table contambiente(
	id int	primary	key auto_increment,
    pais varchar(40),
    ciudad varchar(40),
	pueblos varchar(40)
);

create table contvehicular(
	id int	primary	key auto_increment,
    autos varchar(40),
    motos varchar(40),
    bus varchar (40)
);

CREATE TABLE contfabricas (
    id int primary key auto_increment not null,
    Nestle varchar(40),
    F_chocolate varchar(40),
	cocacola varchar(40)
);

CREATE TABLE tabletest (
    id int primary key auto_increment not null,
    Nestle varchar(32),
    F_chocolate varchar(30),
	cocacola varchar(35)
);

rename table tabletest to tablerenamed;
truncate table tablerenamed;
drop table tablerenamed;