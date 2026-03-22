CREATE VIEW V_Monthly_Summary AS
SELECT
    DATETRUNC(MONTH, OrderDate) AS OrderMonth,
    SUM(Sales) AS TotalSales,
    COUNT(OrderID) AS TotalOrders,
    SUM(Quantity) AS TotalQuantities
FROM SalesDB.Sales.Orders
GROUP BY DATETRUNC(MONTH, OrderDate);

