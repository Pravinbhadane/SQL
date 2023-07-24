create table Employee
(
emp_id int,
emp_name varchar(20),
salary int,
dept_name varchar(30), 
address varchar(50),
designation varchar(25),
gender varchar(10),
)
insert into employee values(1,'pravin',50000,'developement','nashik','SDE','male')
insert into employee values(2,'pawan',40000,'testing','pune','SDE','male')
insert into employee values(3,'gaurav',20000,'Hr','mumbai','SDE','male')
insert into employee values(4,'mayuri',22000,'management','pune','manager','female')
insert into employee values(5,'nikita',35000,'Testing','bangalore','Tester','female')
insert into employee values(7,'kartik',60000,'developer','bangalore','developer','male')
insert into employee values(7,'piyush',450000,'BA','pune','Manager','male')
insert into employee values(7,'mayur',10000,'Hr','pune','Hr','male')

select * from employee

drop table employee

--display emp_name salary, desig
select emp_name,salary,designation from employee

--update salary by 10% of employee whos is from pune
update employee set salary= salary + salary*0.10 where designation='pune'

--delete emp whose salary < 20k
delete from employee where salary<20000 and address = 'pune'

--update address of emp whose designation 
update employee set address='pune' where designation='manager'

-- Display all female employee
select * from employee where gender= 'female'

--Display all employee from bangalore
select * from employee where designation= 'bangalore'

--display all employee from HR department and address is mumbai
select * from employee where dept_name='hr' and address = 'mumbai'


