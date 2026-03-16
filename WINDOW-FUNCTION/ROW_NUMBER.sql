USE SalesDB

select OrderID,ProductID,Sales,
ROW_NUMBER() OVER(ORDER BY Sales) Rank_Sales
from Sales.Orders