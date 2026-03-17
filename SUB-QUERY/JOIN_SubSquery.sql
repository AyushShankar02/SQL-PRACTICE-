use SalesDB

Select * from Sales.Customers c LEFT join
(
	select CustomerId,COUNT(*) Total_orders 
	from  sales.Orders
	GROUP BY CustomerID)o
	on c.CustomerID=o.CustomerID;