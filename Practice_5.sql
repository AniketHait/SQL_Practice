Use sql_store;

select order_id, orders.customer_id,last_name,first_name
from orders
join customers
on orders.customer_id=customers.customer_id;

 CREATE Table orders_archived as
 select * from orders
 
 SELECT order_id,
order_date,
'Active' As Status
FROM orders
WHERE order_date >= '2019-01-01'
UNION 
SELECT order_id,
order_date,
'Archived' As Status
FROM orders
WHERE order_date < '2019-01-01';


INSERT into Customers(first_name, last_name, birth_date, address, city, state)
Values ('toy', 'kuch bhi', '1999-01-01', 'kol','city', 'IN');

create table order_archived as
select * from orders;

update customers
set city = 'Kolkata' 
where customer_id=11; 

select * from orders where customer_id  IN (select customer_id from customers where customer_id=5);
delete from customers
where customer_id = 11;

use sql_hr;
select e.first_name,m_first_name as manager,e.employee_id
from employee e
join employee m
on e.reports_to=m.employee_id;

alter table employees add email varchar(255);