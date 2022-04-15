select * from employee

select * from department

select * from [OLE DB Destination]

select e.emp_id,e.emp_name,e.emp_salary,e.emp_email,e.emp_dob,e.emp_mob,e.emp_state,e.d_id,d.d_id,d.d_name from employee e
join department d
on e.emp_id=d.d_id

select * from [emp_dept]

truncate table dbo.[OLE DB Destination]

insert into employee values('Jd',35000,'jd@gmail.com','2000-03-02',9852634120,'Gujarat',3)
select * from C1
select * from C2

