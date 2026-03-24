-- Refresh THE CTAS if NEw records are present or Need to update the records

IF OBJECT_ID('SalesDB.Sales.MonthlyOrders','U') IS NOT NULL
	DROP TABLE SalesDB.Sales.MonthlyOrders
GO
select 
DATENAME(month,OrderDate) OrderMonth,
COUNT(OrderID) TotalOrders
INTO SalesDB.Sales.MonthlyOrders
FROM SalesDB.Sales.Orders
GROUP BY DATENAME(month,OrderDate)
