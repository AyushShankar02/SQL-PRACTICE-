use SalesDB
select 
BirthDate,
DATEDIFF(year,BirthDate,GETDATE()) as [AGE OF EMPLOYEE]
from Sales.Employees
