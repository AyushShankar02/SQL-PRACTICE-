use MyDatabase
select  first_name,country,
Concat(first_name,country) as name_country
from customers