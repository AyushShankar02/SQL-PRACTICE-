USE SalesDB;
WITH CTE_Total AS
(
Select	CustomerId,
		SUM(Sales) As Total_Sales
from Sales.Orders
Group By CustomerID
)
--MAIN Query
Select 
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.Total_Sales
from Sales.Customers c
LEFT JOIN CTE_Total cts
on cts.CustomerID=c.CustomerID