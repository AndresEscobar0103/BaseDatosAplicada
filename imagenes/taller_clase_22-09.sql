create database if not exists Medio_Ambiente;
use Medio_Ambiente;
create table cont_ambiente(
	id int	primary	key auto_increment,
    pais varchar(40),
    ciudad decimal(2),
	pueblos varchar(15)
);

create table cont_vehicular(
	id int	primary	key auto_increment,
    autos varchar(32),
    motos varchar(30),
    bus varchar (35)
);

CREATE TABLE cont_fabricas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    Nestle VARCHAR(32),
    F_chocolate VARCHAR(30),
	cocacola VARCHAR(35)
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

