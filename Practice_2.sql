Use sql_store;

SELECT last_name, 
    first_name,
    points,
    (points+20)*100 AS discount_factor
FROM customers;

SELECT name, unit_price, unit_price*1.1 as new_price from products;

select * 
from Customers
WHERE points > 3000 ;

select * 
from Customers
WHERE state <> 'va' ;

SELECT *
FROM orders
WHERE order_date >= '2019-01-01';

SELECT *
FROM customers
WHERE birth_date >= '2000-01-01' AND points > 1000;

SELECT *
FROM customers
WHERE birth_date >= '2000-01-01' OR points > 1000;

SELECT *
FROM customers
WHERE NOT(birth_date <= '2000-01-01' OR points > 1000);

select * 
from Customers
WHERE state = 'va' OR 'GA' or 'FL';

select * 
from Customers
WHERE state IN('VA','GA','FL');

select * 
from Customers
WHERE state NOT IN('VA','GA','FL');

select * 
from products
WHERE quantity_in_stock IN('49');

select * 
from Customers
WHERE points BETWEEN 1000 AND 2000;

select * 
from Customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';

select * 
from Customers
Where last_name LIKE 'I%';

select * 
from Customers
Where last_name REGEXP 'field|mac|rose';

select * 
from Customers
where phone is Null;

select * 
from Customers
ORDER BY state DESC, first_name ASC;

select * 
from Customers
LIMIT 4;
-- pagination
 page 1: 1-4
 
select * 
from Customers
LIMIT 6,3;
