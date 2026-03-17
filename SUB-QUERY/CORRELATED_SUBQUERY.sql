--Show all the customer details and find total order of each customers

USE SalesDB

select *,
(select COUNT(*) from Sales.Orders o where o.CustomerID=c.CustomerID) Total_Sales
from Sales.Customers c