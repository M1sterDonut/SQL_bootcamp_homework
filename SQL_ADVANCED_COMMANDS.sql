--ADVANCED COMMANDS
SHOW TIMEZONE;
SELECT NOW();
SELECT TIMEOFDAY();

--EXTRACT
--e.g. get year from timestamp
SELECT EXTRACT(YEAR FROM payment_date) 
AS the_year 
FROM payment;

--AGE
--NOW v timestamp
SELECT AGE(payment_date)
FROM payment;

--TO_CHAR
--timestamp formatting
--TO_CHAR(date_col,'mm-dd-yyyy')
SELECT TO_CHAR(payment_date,'YYYY AD')
FROM payment;

--during which months did payments occur? answer = full month name
SELECT DISTINCT(TO_CHAR(payment_date,'Month')) AS months FROM payment;

--how many payments on a monday?
SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;


--MATHEMATICAL FUNCTIONS
--rental/replacement
SELECT ROUND(rental_rate/replacement_cost,2)*100 AS percent_cost FROM film;
--deposit (10% of replacement cost)
SELECT 0.1 * replacement_cost AS deposit FROM film;
--mathematical operators in documentation!

--string functions and operators
SELECT LENGTH(first_name) FROM customer;
SELECT first_name || ' ' || upper(last_name) AS full_name FROM customer;
SELECT LOWER(LEFT(first_name,1)) ||'.'|| LOWER(last_name) || '@gmail.com' AS customer_email FROM customer;


--SUB QUERY
--films returned on 29/05/2005
--inventory.inventory_id
--inventory.film_id
--film.film_id
--film.title
--rental.rental_date
--rental.inventory_id
SELECT film.film_id,title FROM film
WHERE film.film_id IN
(SELECT inventory.film_id FROM inventory
INNER JOIN rental
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id;

--exist operator 
--customer (fname,lname) w at least one payment >11 dollars

SELECT first_name,last_name FROM customer AS c
WHERE EXISTS 
(SELECT * FROM payment AS p 
WHERE p.customer_id = c.customer_id
AND amount > 11);

--SELF-JOIN
--no special key word