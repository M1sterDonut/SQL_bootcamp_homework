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