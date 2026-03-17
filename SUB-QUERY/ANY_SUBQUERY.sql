--Find Female Employees whose Salaries are Greater 
--Than any male Employees
USE SalesDB

select * from Sales.Employees
where Gender='F' AND Salary > ANY(select Salary from Sales.Employees where Gender='M');
