--AS 
SELECT customer_id AS customer_number FROM payment;

SELECT SUM(amount) AS net_revenue FROM payment;

SELECT COUNT(*) AS num_transactions FROM payment;

SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM (amount) AS total_spent FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;


--JOINS

--INNER
--keep matching entries in both tables
--customer email associated with a specific payment
SELECT payment_id,payment.customer_id,first_name 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

--FULL OUTER JOIN
--no customer IDs unique to customer or payment table. All existing customers have made payments and all payments have been made by existing customers
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
--remove entries that match
WHERE customer.customer_id IS null
OR payment.payment_id IS null;

--LEFT JOIN
--films we don't have in inventory
SELECT film.film_id,title,inventory_id,store_id 
FROM film LEFT OUTER JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL;

--RIGHT JOIN
--same as LEFT JOIN, but switching order around


--JOIN CHALLANGES
--email addresses of customers living in California

--customer.address_id; 
--customer.email; 
--address.address_id; 
--address.district;
SELECT customer.address_id, email, district
FROM customer INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California';

--list of movies w Nick Wahlberg

--actor.actor_ID, actor.first_name, actor.last_name
--film_actor.actor_id, film_actor.film_id
--film.film_id, film.title
SELECT title,first_name,last_name FROM film
INNER JOIN film_actor
ON film.film_id = film_actor.film_id
INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'Nick' AND actor.last_name = 'Wahlberg';