--GENERAL CHALLANGE

--payments higher than $5

SELECT COUNT(*) FROM payment
WHERE amount > 5.00;

--actors with first name that starts in P
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

--how many unique districts customers from?
SELECT COUNT(DISTINCT(district)) FROM address;

--which districts are customers from?
SELECT DISTINCT(district) FROM address
ORDER BY district ASC;

--how many rated R and $5-15 to replace?
SELECT COUNT(*) FROM film
WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;

--how many films with Truman in title?
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';