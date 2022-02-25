--GROUP BY

--the following is like using DISTINCT
SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id;

--which customer is spending the most money
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

--customer renting the most
SELECT customer_id,COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;

--GROUP BY on multiple columns (further breakdown)

--how much is each customer spending with each staff member?
SELECT customer_id, staff_id,SUM(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id, staff_id;

--GROUP BY date
--use DATE to extract date from timestamp

--highest-grossing date
SELECT DATE(payment_date), SUM(amount) FROM payment
GROUP BY DATE (payment_date)
ORDER BY SUM(AMOUNT) DESC;

--CHALLANGE

--which staff member handled most (not highest) payments and who gets bonus?
SELECT staff_id,COUNT(payment_id) FROM payment
GROUP BY staff_id
ORDER BY COUNT(payment_id) DESC;

--avg replacement cost per MPAA rating
SELECT rating,ROUND(AVG(replacement_cost),2) FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost) DESC;

--customer IDs of top 5 spenders
SELECT customer_id,SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;