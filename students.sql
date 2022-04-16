create database students;
use students;
create table classes(
id varchar(20) primary key,
username varchar(25),
email varchar (30) unique,
password varchar(25),
role varchar (10) check (role='Techer' or role='student')
);
create table corses(
id varchar(20) primary key,
corsename varchar(30),
foreign key (id) references classes(id));
create table resets(
id varchar(20) primary key,
payamount int default 100,
ispaid boolean default false,
foreign key (id) references classes(id)
);
alter table classes add column phonenumber varchar(10);
select * from classes;
alter table classes drop column phonenumber;
select * from classes;
insert into classes values ('1','rayyanah','rialaqil@gmail.com','1234','student');
select * from classes;
insert into resets values('3',350,false);
update classes set password ='1212' where id='1';
select * from classes;
delete from classes 