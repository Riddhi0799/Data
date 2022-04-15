--1. -	display the data of employee with the same salary.

select * from employee

select * from employee
where emp_salary in(select emp_salary from employee e where employee.emp_id <> e.emp_id)

--2. -	display the 5th highest salary using aggregate or subquery.

SELECT TOP 1 emp_salary FROM 
( SELECT Distinct TOP 5 emp_salary FROM employee ORDER BY emp_salary DESC ) AS e 
ORDER BY emp_salary

select *, ROW_NUMBER() over(order by emp_salary) from employee

