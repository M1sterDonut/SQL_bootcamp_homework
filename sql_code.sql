-- what PG rating available

SELECT DISTINCT rating FROM film;

-- how many payments have been made?

SELECT COUNT(*) FROM payment;

-- which prices have been paid?

SELECT DISTINCT amount FROM payment;

-- how many different prices are there?

SELECT COUNT(DISTINCT (amount)) FROM payment;

-- how many films are in the database? (1000)
SELECT COUNT(title) FROM film;
SELECT COUNT(DISTINCT(title)) FROM film;

-- how many actors are there? (200)
SELECT COUNT(DISTINCT(actor_id)) FROM actor;