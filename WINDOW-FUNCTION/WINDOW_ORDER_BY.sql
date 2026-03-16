use SalesDB

select OrderID,
OrderDate,
Sales,
RANK() OVER (ORDER BY Sales DESC) RankSales

from Sales.Orders