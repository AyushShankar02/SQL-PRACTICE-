select * from MyDatabase.dbo.customers as c
left join MyDatabase.dbo.orders as o
on c.id=o.customer_id
where o.customer_id is not null;