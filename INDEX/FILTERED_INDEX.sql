--Create A filtered index on customers Table
USE SalesDB

CREATE NONCLUSTERED INDEX idx_Customers_Country
on Sales.Customers (Country)
where Country='USA'