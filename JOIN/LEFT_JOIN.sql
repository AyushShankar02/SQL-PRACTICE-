select * from [MyDatabase].[dbo].[orders] as o
left join MyDatabase.dbo.customers as c
on c.id=o.customer_id
where c.id is Null;