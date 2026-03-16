select *,
CASE 
	WHEN BUCKETs= 1 THEN 'HIGH'
	WHEN BUCKETs=2 THEN 'MEDIUM'
	WHEN BUCKETs=3 THEN 'LOW'
END Segmentation_0f_data
from(
select OrderId,Sales,
NTILE(3) OVER(ORDER BY Sales DESC) BUCKETs
from Sales.OrdersArchive)t