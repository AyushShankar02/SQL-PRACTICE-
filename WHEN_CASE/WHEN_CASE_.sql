--Retrieve Customer Detail with Abbreviated Country Code

USE SalesDB
select CustomerID,FirstName,LastName,
CASE 
	WHEN Country='Germany' THEN 'GER'
	WHEN Country='USA' THEN 'US'
	ELSE 'N/A'
END Country_Abb
from sales.Customers