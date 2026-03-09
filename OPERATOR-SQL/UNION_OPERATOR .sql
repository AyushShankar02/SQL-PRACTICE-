--Combine the data from employees and customers into ine table

select 
FirstName,
LastName
from SalesDB.Sales.customers
UNION

select 
FirstName,
LastName
from SalesDB.Sales.Employees;