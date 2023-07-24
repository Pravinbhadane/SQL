create table movies
(
movie_id int primary key,
movie_name varchar(20),
release_year int,
box_office_collection int
)

create table roles
(
role_id int primary key,
roll_name varchar(20),
)

create table celibrity
(
celibrity_id int primary key,
celibrity_name varchar(20),
birthdate varchar(15),
pho_no varchar(15),
email varchar(20)
)

create table BollywoodData
(
Bollywood_Data_id int,
celibrity_id int foreign key(celibrity_id) references celibrity(celibrity_id),
movie_id int foreign key(movie_id) references movies(movie_id),
role_id int foreign key(role_id) references roles(role_id)
)

exec sp_help movies
exec sp_help celibrity
exec sp_help roles
exec sp_help BollywoodData

create table Employee
(
id int primary key,
name varchar(20) not null,
email varchar(15) unique,
age int check (age>=18),
country varchar(10) default 'India'
)

insert into employee values(1,'pravin','pra@gmail.com',25,'india')
insert into employee values(2,'pawan','pawan@gmail.com',24,'india')
insert into employee values(3,'gaurav','gaurav@gmail.com',22,'india')
insert into employee values(4,'mayur','mayur@gmail.com',25,'india')
insert into employee values(5,'pratik','pratik@gmail.com',26,'india')
insert into employee values(6,'kartik','kartik@gmail.com',25,'india')
insert into employee values(7,'piyush','piyush@gmail.com',25,'india')
insert into employee values(8,'nikita','nikita@gmail.com',25,'india')
insert into employee values(9,'mayuri','mayuri@gmail.com',25,'india')
insert into employee values(10,'pritesh','pritesh@gmail.com',25,'india')

insert into employee(id,name,email) values(11,'xyz','xyz@gmail.com')

select * from employee
alter table employee alter column email varchar(20)
