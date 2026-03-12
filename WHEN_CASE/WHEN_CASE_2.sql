--Retrieve Employee Details with GEnder displayed as Full Text

USE SalesDB

select EmployeeID,CONCAT(FirstName,LastName) as Name_ ,Department,Birthdate,Salary,
CASE
	WHEN GENDER='M' THEN 'MALE'
	WHEN GENDER='F' THEN 'FEMALE'
END Gender_
from Sales.Employees;