create database usersfacebook;

use userfacebook;

create table emailuser(
id int not null auto_increment,
email varchar(40) not null,
statusemail boolean not null,
primary key (id)
);

create table fabebookuser(
id int not null auto_increment,
userfacebook varchar(40) not null,
idemailuser int not null,
primary key(id),
constraint fk_emailuser  foreign key(idemailuser)
references emailuser(id)
);

insert into emailuser
      value(0,"user1@gmail.com",true);
insert into emailuser
      value(0,"user2@gmail.com",true);
insert into emailuser
      value(0,"user3@gmail.com",true);
insert into emailuser
      value(0,"user4@gmail.com",true);
      
insert into facebookuser
      value(0,"user1",true,1);
insert into facebookuser
      value(0,"user2",true,2);      
insert into facebookuser
      value(0,"user3",true,3);
insert into facebookuser
      value(0,"user4",true,4);
      
update facebookuser
set statusfacebook=false
where id=1;
    
delete from facebookuser
where userfacebook="user3";
    