USE SalesDB

select OrderID,ProductID,Sales,
RANK() OVER(ORDER BY Sales) Rank_Sales
from Sales.Orders;