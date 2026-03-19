USE SalesDB;
--Find the Total Sales per Customer
WITH CTE_Total AS
(
Select	CustomerId,
		SUM(Sales) As Total_Sales
from Sales.Orders
Group By CustomerID
)
--Find the Last ORder Date Per Customer
,CTE_Lastorder AS
(
select CustomerID,
	MAX(OrderDate) as Last_order
from Sales.Orders
GROUP BY CustomerID
)
--Rank Customer based on totals sales
, CTE_Customer_Rank AS
(
	select 
	CustomerID,
	Total_Sales,
	RANK() OVER( ORDER BY Total_Sales DESC) AS CustomerRank
	from CTE_Total
)
--MAIN Query
Select 
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.Total_Sales,
	clo.Last_order,
	ccr.CustomerRank
from Sales.Customers c
LEFT JOIN CTE_Total cts
on cts.CustomerID=c.CustomerID
LEFT JOIN CTE_Lastorder clo
on clo.CustomerID=c.CustomerID
LEFT JOIN CTE_Customer_Rank ccr
on ccr.CustomerID=c.CustomerID;