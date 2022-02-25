--HAVING

--filter after aggregation function (b/c WHILE can't be used with aggregation function)

--customers who have spent more than a total of 100 dollars
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount);

--how many customer per store
SELECT store_id,COUNT(customer_id) FROM customer
GROUP BY store_id;

--which customers have more than 300 customers
SELECT store_id,COUNT(customer_id) FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

--CHALLANGE

--customer IDs with >= 40 transaction payments
SELECT customer_id,COUNT(amount) FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

--which customers have spent in total more than 100 dollars with staff member #2?
SELECT customer_id, staff_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;