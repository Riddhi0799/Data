

create table department
(d_id int primary key identity(1,1),
d_name varchar(10) not null)

create table employee
(emp_id int primary key identity(1,1),
emp_name varchar(20) not null,
emp_salary numeric(5) check (emp_salary>10000),
emp_email varchar(100) unique,
emp_dob date,
emp_mob numeric(10) unique,
emp_state varchar(10) default('Gujarat'),
d_id int foreign key references department(d_id)  
)

drop table employee

drop table department

insert into department values('Finance'),('IT'),('Sales'),('HR'),('Purchase')

select * from department  

insert into employee values('Riddhi',32000,'shahriddhi711@gmail.com','1999/11/07',9426461202,'Gujarat',2),
('Vishwa',22000,'vishu07@gmail.com','1999/05/12',9852903210,'Gujarat',2),
('Nirja',50000,'nmodi@gmail.com','2000/2/28',9426444887,'Gujarat',1),
('Kesha',20000,'kdhora@gmail.com','2000/2/16',9576021430,'Gujarat',3),
('Vruddhi',32000,'vruddhi12@gmail.com','1999/10/27',9002642012,'Gujarat',1)

insert into employee(emp_name,emp_salary,emp_email,emp_dob,emp_mob) values('Ganesh',42000,'ganesh11@gmail.com','1998/09/12',9452685201)
insert into employee(emp_name,emp_salary,emp_email,emp_dob,emp_mob) values('aaa',50000,'aaa@gmail.in','2002/07/07',7789025201)



select * from employee

--update
update employee
set emp_salary=50000
where emp_id=5

select * from sys.tables

select * from INFORMATION_SCHEMA.COLUMNS

select * into empl_bkup from employee  --backup table

select * from empl_bkup

select * from empl_bkup where emp_salary between 25000 and 35000

select column_name from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='department'

select * from empl_bkup where d_id is null

select * from employee where emp_name in ('vishwa','riddhi')

--inner join

select * from employee 
join department 
on employee.d_id= department.d_id

--left join

select * from employee e
left join department d
on e.d_id = d.d_id
where d.d_id is not null

--right join

select * from employee e
right join department d
on e.d_id = d.d_id

--cross join

select * from employee e
cross join department d

select top 3 * from employee order by emp_name 

--distinct 

select distinct d_name from department

--Functions

--rank

create table student
(s_id int primary key identity(1,1),
s_name varchar(20) not null,
s_dob date,
s_mob numeric(10))

select * from student

create table s_marks
(
s_subject varchar(20),
s_marks int,
s_id int foreign key references student(s_id))

select * from s_marks


drop table student

insert into student values('Mansi','1999/03/05',9458620243),
('Dhanshree','2000/02/11',9475203210),
('Jainish','1998/09/12',7025320210)

insert into s_marks values('C',98,1),('java',95,2),('C++',90,2)

select *, 
rank() over(order by s_marks)
from s_marks

select *, 
dense_rank() over(order by s_marks)
from s_marks

select *,
row_number() over(order by s_name)
from student

select *,
ntile(2) over(order by s_name)
from student

--Analytical Function

select *,
lag(emp_salary) over(order by emp_name)
from employee

select *,
lead(emp_salary) over(order by emp_name)
from employee

select *,
FIRST_VALUE(emp_salary) over(order by emp_id)
from employee

select *,
LAST_VALUE(emp_salary) over(order by emp_id)
from employee

--string functions

select *,
ascii(emp_name) from employee

select *,
left(emp_name,3) from employee

select *,
charindex(emp_name,3) from employee

select *, patindex('%Vi%',emp_name)
from employee

select *, replicate(emp_name,3) from employee

select *, stuff(emp_name,2,3,'*') from employee 

select 6+5

select *, QUOTENAME(emp_name,')') from employee

--Math Function

select abs(-6)

select CEILING(123.45)

select floor(123.45)

select rand()

--Date time functions

select SYSDATETIME()

select GETUTCDATE()

--Advanced Function

select coalesce(emp_name,'Nirja') from employee -- will replace null values here

select *, isnull(emp_name,'rids') from employee

select *, cast(emp_dob as date) from empl_bkup

select emp_state as State,sum(emp_salary) as Salary from employee
group by emp_state


select * from employee

select * from student

alter table student
add s_gender varchar(10) 

update student
set s_gender = 'Female' 
where s_id=1

update student
set s_gender = 'Female' 
where s_id=2

update student
set s_gender = 'Male' 
where s_id=3

--Set

--Union and Union all

select emp_name from employee
union
select s_name from student

select emp_name from employee
union all
select s_name from student

--Intersect

select emp_name from employee
intersect 
select emp_name from empl_bkup

--Except(a-b)

select emp_name from employee
except 
select s_name from student

--condition

--case

select *, case when emp_salary >=40000 then 'high'
when emp_salary <40000 and emp_salary > 20000 then 'mid'
else 'low'
end
from employee

--iif

select *, iif(s_gender='male','M','F') from student

--if else

declare @val int = -2
if @val=0
begin
	print 'zero'
end
else if @val < 0
begin 
	print 'negative'
end
else
begin
	print 'positive'
end

--loop

declare @val1 int=1, @val2 int=5
while @val1 <= @val2
begin
	print @val2
set @val1 += 1
end

-- CTE

with abc
as (select *, emp_salary + 100 sal from employee)
select * from abc 
where emp_salary=50000


--Stored Procedure SP

create table Product
(
pid int primary key identity(1,1),
pname varchar(20) not null,
pqty numeric(4)
)

insert into Product values('Apple',5),('Mango',10),('Grapes',100)

select * from Product

create table ProductSell
(
psid int primary key identity(1,1),
pid int foreign key references Product(pid),
psqty numeric(4)
)

select * from ProductSell

create proc Sp_Insupdate
as
begin
	select * from Product
end

exec Sp_Insupdate

alter proc Sp_Insupdate
@pqt numeric(4)
as
begin
	update ProductSell
	set 
end