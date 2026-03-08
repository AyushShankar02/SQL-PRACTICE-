--ANTI FULL JOIN
select * from MyDatabase.dbo.customers as c
FULL JOIN MyDatabase.dbo.orders as o
on c.id=o.customer_id
where c.id  is null 
OR  o.customer_id is null;