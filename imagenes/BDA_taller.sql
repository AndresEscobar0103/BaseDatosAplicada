create database if not exists Taller;
use taller;
create table cont_ambiente(
	id int	primary	key auto_increment,
    pais varchar(40),
    ciudad decimal(2),
	pueblos varchar(15),

			constraint ta_tf
			foreign key (idfabricas)
			references cont_ambiente(id),

			constraint ta_tv
			foreign key (idvehiculos)
			references cont_ambiente(id)
);

create table cont_vehicular(
	id int	primary	key auto_increment,
    autos varchar(32),
    motos varchar(30),
    bus varchar (35)
);

CREATE TABLE cont_fabricas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    autos VARCHAR(32),
    motos VARCHAR(30),
    bus VARCHAR(35)
);


alter table cont_ambiente
add barrios  int not null;

alter table cont_vehicular
drop column bus;

alter table cont_fabricas
change  autos fabricaGaseosa int not null;

alter table cont_fabricas
change  motos fabricaBiciletas int not null;

alter table cont_fabricas
change  bus fabricaBuses int not null;

select * from cont_ambiente;

alter table cont_ambiente
add idfabricas  int not null;

alter table cont_ambiente
add idvehicular  int not null;

delete from taller where tables=cont_ambiente;

