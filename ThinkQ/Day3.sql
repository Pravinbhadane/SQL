create table employee
(
id int,
empname varchar(20),
salary numeric(12,2)
)
sp_help employee

alter table employee add qualification varchar(10)

alter table employee alter column qualification varchar(15)

alter table employee drop column qualification

alter table employee alter column empname varchar(25) not null
alter table employee alter column salary numeric(12,2) not null
alter table employee alter column id int not null

alter table employee add email varchar(30) not null unique
alter table employee add constraint un_emp unique (email,id)

alter table employee drop constraint un_emp

create table Book
(
id int,
authername varchar(20)not null,
bookname varchar(30)not null
constraint pk_id primary key(id)
)
sp_help Book


alter table book add  price int not null
 drop table book

create table Dept
(
did int primary key,
dname varchar(25)
)

create table emp
(
empid int primary key,
empname varchar(25) not null,
did int,
constraint fk_dp_emp foreign key(did) references Dept(did)
)
sp_help emp

create table author
(
authorid int primary key,
name varchar(25),
city varchar(20),
country varchar(20)
)

create table category
(
category_id int primary key,
description varchar(25)
)

create table book
(
)