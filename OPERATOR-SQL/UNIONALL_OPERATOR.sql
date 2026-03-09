--Combine the data from employees and customers into ine table including duplicates

select 
FirstName,
LastName
from SalesDB.Sales.customers
UNION ALL

select 
FirstName,
LastName
from SalesDB.Sales.Employees;