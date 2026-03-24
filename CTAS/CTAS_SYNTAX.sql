--Create A CTAS for finding total number of Orders for Each Month
SELECT 
DATENAME(month,OrderDate) OrderMonth,
COUNT(OrderID) TotalOrders
INTO SalesDB.Sales.MonthlyOrders
FROM SalesDB.Sales.Orders
GROUP BY DATENAME(month,OrderDate)
