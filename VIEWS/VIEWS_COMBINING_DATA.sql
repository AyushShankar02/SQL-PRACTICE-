--Provide view  that combines detailsfrom order ,product,customer and 
CREATE VIEW V_Order_Details AS 
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
on o.SalesPersonID=e.EmployeeID;
