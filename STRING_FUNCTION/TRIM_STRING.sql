use MyDatabase
select first_name from customers
where len(first_name)!=len(trim(first_name))