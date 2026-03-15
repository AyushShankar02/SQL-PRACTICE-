use SalesDB

select  
	OrderId,
	OrderDate,
	Sales,
	ProductID,
	MAX(Sales) OVER() HighSales,
	MIN(Sales) OVER() LowSales,
	MAX(Sales) OVER(PARTITION BY ProductId) HighSalesByProduct,
	MIN(SAles) OVER(PARTITION BY ProductId) LowSalesByProduct
	from Sales.Orders;

select * from (select *,MAX(salary) over() Highest_Salary From Sales.Employees)t 
where Salary=Highest_Salary;
select  
	OrderId,
	OrderDate,
	Sales,
	ProductID,
	MAX(Sales) OVER() HighSales,
	MIN(Sales) OVER() LowSales,
	MAX(Sales) OVER() -Sales DeviationFromMax,
	Sales- MIN(SAles) OVER() DeviationFromMIn
	from Sales.Orders;

select  
	OrderId,
	OrderDate,
	Sales,
	ProductID,
	AVG(Sales) OVER (PARTITION BY ProductID) AVgSales,
	AVG(Sales) OVER (PARTITION BY ProductID ORDER BY OrderDate) Moving_Average,
	AVG(Sales) OVER (PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN  Current Row AND 1 Following) Rolling_Average
From Sales.Orders;