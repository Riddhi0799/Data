select *,Datename(weekday,emp_dob) from employee

select * from employee emp_dob 
--4.
select (datename(dw,emp_dob)+','+cast ((datepart(day,emp_dob))as varchar)+datename(month,emp_dob)+','+cast ((datepart(year,emp_dob))as varchar)) as Datee,* from employee

--5.
SELECT * from employee where emp_dob in(select emp_dob from employee where DATENAME(month,emp_dob)='February') 

SELECT *,DATENAME(month,emp_dob) from employee   
