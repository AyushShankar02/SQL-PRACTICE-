USE SalesDB

select OrderID,ProductID,Sales,
DENSE_RANK() OVER( ORDER BY Sales DESC) Dense_Sales
from Sales.Orders;