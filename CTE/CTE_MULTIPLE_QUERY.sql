USE SalesDB;
--Find the Totals Sales Per Customers
WITH CTE_Total AS
(
Select	CustomerId,
		SUM(Sales) As Total_Sales
from Sales.Orders
Group By CustomerID
)
--Find the Last ORder Date per Customer
,CTE_Lastorder AS
(
select CustomerID,
	MAX(OrderDate) as Last_order
from Sales.Orders
GROUP BY CustomerID
)
--MAIN Query
Select 
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.Total_Sales,
	clo.Last_order
from Sales.Customers c
LEFT JOIN CTE_Total cts
on cts.CustomerID=c.CustomerID
LEFT JOIN CTE_Lastorder clo
on clo.CustomerID=c.CustomerID