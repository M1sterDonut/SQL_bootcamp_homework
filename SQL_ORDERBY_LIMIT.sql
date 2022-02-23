--sort customer names by ascending and decending order
SELECT * FROM customer
ORDER BY first_name ASC;

SELECT * FROM customer
ORDER BY first_name DESC;

--sort by store_id and then first name
SELECT store_id,first_name,last_name FROM customer
ORDER BY store_id DESC,first_name ASC;

--LIMIT

--5 most recent payments
SELECT * FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5;


--CHALLANGE

--First 10 paying customers (payment IDs)
SELECT customer_id,amount,payment_date FROM payment
WHERE amount != 0.00
ORDER BY payment_date ASC
LIMIT 10;

--5 shortest movies (runtime)
SELECT title,length FROM film
ORDER BY length ASC
LIMIT 5;

--all movies that are 50 min or shorter
SELECT title,length FROM film
WHERE length <= 50
ORDER BY title ASC;

--number of movies that are 50 min or shorter
SELECT COUNT(title) FROM film
WHERE length <= 50;