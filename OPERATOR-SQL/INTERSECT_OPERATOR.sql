--Find the employee who are also customers

use SalesDB

select 
	FirstName,
	LastName
from Sales.Employees
INTERSECT
select 
	FirstName,
	LastName
from Sales.Customers
