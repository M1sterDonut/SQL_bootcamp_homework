SELECT * FROM customer;

--What do we know about customers named Jared?
SELECT * FROM customer
WHERE first_name = 'Jared';

--combine conditions with logical operators
SELECT * FROM film;

--Show all movies with
------rental rates higher than $4, and
------replacement cost higher than $19.99, and
------rated 'R'
SELECT title,description,release_year,rental_rate,replacement_cost FROM film 
WHERE rental_rate > 4 AND replacement_cost >= 19.99 AND rating = 'R';

--Number of movies with
------rental rates higher than $4, and
------replacement cost higher than $19.99, and
------rated 'R'
SELECT COUNT(title) FROM film
WHERE rental_rate > 4 AND replacement_cost >= 19.99 AND rating = 'R';

--Number of movies where rating is R or PG-13
SELECT COUNT(title) FROM film
WHERE rating = 'R' OR rating = 'PG-13';

--Number of movies not rated R
SELECT COUNT(title) FROM film
WHERE rating != 'R';



--CHALLENGES

--What is Nancy Thomas's email address?
SELECT first_name,last_name,email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

--What is the movie 'Outlaw Hanky' about?
SELECT title,description FROM film
WHERE title = 'Outlaw Hanky';

--Address for customer at '259 Ipoh Drive'
SELECT phone FROM address
WHERE address = '259 Ipoh Drive';