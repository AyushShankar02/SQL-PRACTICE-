USE SalesDB

select ProductID,Product,Price,
(select count(*) from Sales.Orders) total_orders
from Sales.Products
