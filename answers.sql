Problem 1:
Select distinct email from customers order by email asc;

Problem 2:
select id from orders where customer_id in (select id from customers where fname like 'Elizabeth%' and lname like 'Crocker%');

Problem 3:
SELECT SUM(num_cupcakes) FROM orders WHERE processed = false;

Problem 4:
select name, sum(orders.num_cupcakes) as sum from cupcakes left join orders on cupcakes.id = orders.cupcake_id group by cupcakes.name order by cupcakes.name;

Problem 5:
select customers.email, sum(orders.num_cupcakes) as total from customers left join orders on customers.id = orders.customer_id group by customers.email order by total desc;

Problem 6:
Select distinct customers.fname, customers.lname, customers.email from customers inner join orders on customers.id = orders.customer_id inner join cupcakes on orders.cupcake_id = cupcakes.id where orders.processed = true and cupcakes.name = 'funfetti';

