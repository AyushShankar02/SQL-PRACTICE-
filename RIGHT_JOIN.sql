select * from MyDatabase.dbo.customers as c
right join MyDatabase.dbo.orders as o
on c.id=o.customer_id
where c.id is null;