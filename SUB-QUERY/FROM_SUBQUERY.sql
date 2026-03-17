use SalesDB

select * from (
	select ProductId,Price,AVG(Price) OVER() Avg_Price from Sales.Products
)t where Price>Avg_Price;


Select *,
RANK() OVER(ORDER BY total_sales DESC) Customer_Rank
from(select CustomerId,
	SUM(Sales)  total_sales
	from Sales.Orders
	group by CustomerID)t