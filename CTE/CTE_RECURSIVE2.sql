USE SalesDB;

WITH CTE_Emp AS (
select 
	EmployeeID,
	FirstName,
	LastName,
	ManagerID,
	1 as Level
from Sales.Employees
where ManagerID is NUll
UNION ALL 
select 
	e.EmployeeID,
	e.FirstName,
	e.LastName,
	e.ManagerID,
	Level+1
from Sales.Employees as e
INNER JOIN CTE_Emp as che
on e.ManagerID=che.EmployeeID
)
select * from CTE_Emp;