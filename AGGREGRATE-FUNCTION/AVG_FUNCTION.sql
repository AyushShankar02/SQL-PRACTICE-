use SalesDB

select 
	OrderID,
	OrderDate,
	Sales,
	ProductID,
	AVG(Sales) OVER() AvgSales,
	AVG(Sales) OVER(PARTITION BY ProductID) AvgSalesByProduct
from Sales.Orders;