--Find the Employees who are not Customers
select FirstName,
		LastName 
from SalesDB.Sales.Employees

EXCEPT
select 
FirstName,
LastName 
from SalesDB.Sales.Customers;


