with Series AS
(
select 1 as Num
UNION ALL
select Num +1
from Series
where Num<20
)
select * from Series
--To Control Number of Iterations in Query 
OPTION(MAXRECURSION  500)