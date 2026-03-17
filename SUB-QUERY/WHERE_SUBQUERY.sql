--find the product that have a price higher than the Average price of all products

use SalesDB

select 
ProductID,
Price
from Sales.Products
where Price>(select AVG(Price) from Sales.Products)