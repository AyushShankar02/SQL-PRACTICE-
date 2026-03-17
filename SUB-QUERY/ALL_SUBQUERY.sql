--Find Male Employees whose Salaries are Greater 
--Than All Female Employees
USE SalesDB

select * from Sales.Employees
where Gender='M' AND Salary > ALL(select Salary from Sales.Employees where Gender='F');
