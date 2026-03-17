--show all the order details for customers in GERMANY
USE SalesDB
select * from Sales.Orders o 
where EXISTS ( Select 1 
			from Sales.Customers c where Country='Germany'
			AND o.CustomerId=c.CustomerID)