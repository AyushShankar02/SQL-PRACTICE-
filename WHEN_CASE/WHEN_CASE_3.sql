--Generate a Report Showing the Total Sales for Each Category
--High:If the Sales higher than 50
--Medium:If the Sales Between 20 and 50
--Low: If the Sales equals or lower than 20

USE SalesDB
Select 
CATEGORY,
SUM(Sales) As Total_sales
FROM(
select OrderID,Sales,
CASE
	WHEN Sales>50 THEN 'HIGH'
	WHEN Sales  BETWEEN 20 AND 50 THEN 'MEDIUM'
	ELSE 'LOW'
END CATEGORY
from Sales.Orders
)t
group by CATEGORY