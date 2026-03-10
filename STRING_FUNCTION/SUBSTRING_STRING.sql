--Retrieve a list of customer first name after removing the first character 
select 
first_name,
 SUBSTRING(trim(first_name),2,len(first_name)) from customers