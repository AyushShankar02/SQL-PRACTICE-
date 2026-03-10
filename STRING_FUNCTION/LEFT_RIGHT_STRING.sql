use MyDatabase
select first_name as original_name,
left(first_name,2) as first_two_char,
right(first_name,2) as last_two_char
from customers