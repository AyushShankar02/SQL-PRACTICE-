--show the details of order made by customer in Germany
USE SalesDB

select * from Sales.Orders
where CustomerID IN (
select CustomerID from Sales.Customers where Country='Germany');

--show the details of order made by customer in Germany
select * from Sales.Orders
where CustomerID  NOT IN (
select CustomerID from Sales.Customers where Country='Germany');
