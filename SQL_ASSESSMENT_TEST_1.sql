--ASSESSMENT TEST 1

--customers who spent >= 110 dollars w staff member 2
SELECT customer_id, staff_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) >= 110;

--how many films begin with the letter J?
SELECT COUNT(title) FROM film
WHERE title LIKE 'J%';

--customer with (1) highest customer number (2) name starts with E (3) address ID lower than 500?
--customer_id, fist_name, last_name, address_id
SELECT first_name,last_name FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;
