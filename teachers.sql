create database if not exists Subjets;
use Subjets;
create table if not exists Teachers(
	id int,
    nameTeacher varchar(45) not null,
    lastName varchar(45) not null,
    email varchar(45) not null,
    primary key(id)
);
create table if not exists Students(
	id int,
    nameStudent varchar(45) not null,
    lastName varchar(45) not null,
    email varchar(45) not null,
    idTeacher int,
    primary key(id),
    constraint fk_teacher foreign key(idTeacher)
    references Teachers(id)
);

insert into Teachers
	values(1,"Jirafale","Jirafales","Jirafales@gmail.com");
    
insert into Students
	values(
		1,
        "Ñoño",
        "Barriga",
        "nono@gmail.com",
        1
    );
insert into Students values(2,"Chavo","nnn","chavo@gmail.com",1);

insert into Students 
	values(3,"Chilindrina","Valdez","chilindrina@gmail.com",1);
insert into Teachers
	values(2,"Ramon","Valdez","ramon@gmail.com");
insert into Students
	values(4,"Quico","Mesa","quico@gmail.com",2);
    
alter table Teachers modify id int auto_increment; 

create table if not exists Teachers2(
	id int auto_increment,
    nameTeacher varchar(45) not null,
    lastName varchar(45) not null,
    email varchar(45) not null,
    primary key(id)
);
create table if not exists Students2(
	id int auto_increment,
    nameStudent varchar(45) not null,
    lastName varchar(45) not null,
    email varchar(45) not null,
    idTeacher int,
    primary key(id),
    constraint fk_teacher2 foreign key(idTeacher)
    references Teachers2(id)
);
insert into Teachers2
	values(0,"Jirafale","Jirafales","Jirafales@gmail.com");
    
insert into Students2
	values(
		0,
        "Ñoño",
        "Barriga",
        "nono@gmail.com",
        1
    );
insert into Students2 values(0,"Chavo","nnn","chavo@gmail.com",1);

insert into Students2 
	values(0,"Chilindrina","Valdez","chilindrina@gmail.com",1);
insert into Teachers2
	values(0,"Ramon","Valdez","ramon@gmail.com");
insert into Students2
	values(0,"Quico","Mesa","quico@gmail.com",2);