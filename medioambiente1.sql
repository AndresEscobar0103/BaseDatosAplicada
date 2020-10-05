create database if not exists MedioAmbiente1;
use MedioAmbiente1;
create table contambiente1(
	id int	primary	key auto_increment,
    pais varchar(40),
    ciudad varchar(40),
	pueblos varchar(40)
);

create table contvehicular(
	id int	primary	key auto_increment not null,
    autos varchar(40),
    motos varchar(40),
    bus varchar (40)
);

create table contfabricas (
    id int primary key auto_increment not null,
    Nestle varchar(40),
    F_chocolate varchar(40),
	cocacola varchar(40)
);

create table tabletest (
    id int primary key auto_increment not null,
    Nestle varchar(40),
    F_chocolate varchar(40),
	cocacola varchar(40)
);

rename table tabletest to tablerenamed;
truncate table tablerenamed;
drop table tablerenamed;