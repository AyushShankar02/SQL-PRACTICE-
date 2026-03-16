use SalesDB

select OrderID,
OrderDate,
ProductID,
SUM(Sales)  OVER( PARTITION BY ProductID) Total_Sales from Sales.Orders ;
use SalesDB

select OrderID,
OrderDate,
ProductID,
SUM(Sales) OVER()Total_Sales from Sales.Orders ;