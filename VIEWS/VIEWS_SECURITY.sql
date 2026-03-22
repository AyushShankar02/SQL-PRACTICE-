--Provide a View for the EU Sales Team
--that Combines details from all tables 
--And excludes data related to USA 
CREATE VIEW V_orderDetails_EU AS (
select 
	o.OrderID,
	o.OrderDate,
	p.Product,
	p.Category,
	COALESCE(c.FirstName,'')+' '+COALESCE(c.LastName,'') AS CustomerName,
	c.Country AS CustomerCountry,
	COALESCE(e.FirstName,'')+' '+COALESCE(e.LastName,'') AS SalesPersonName,
	e.Department,
	o.Sales,
	o.Quantity
from SalesDB.SAles.Orders o
LEFT JOIN SalesDB.Sales.Products p
ON o.ProductID=p.ProductID
LEFT JOIN SalesDB.SAles.Customers c
on c.CustomerID=o.CustomerID
LEFT JOIN SalesDB.Sales.Employees e
on o.SalesPersonID=e.EmployeeID
WHERE c.Country!='USA')
