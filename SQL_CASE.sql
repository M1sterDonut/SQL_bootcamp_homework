SELECT * FROM customer;

customer 1-100 = premium
customer 101-200 = plus
SELECT customer_id,
CASE

--general syntax, continue with WHEN
	WHEN (customer_id <= 100) THEN 'Premimum'
	WHEN (customer_id BETWEEN 101 AND 200) THEN 'Plus'
	ELSE 'Regular' 
END AS status
FROM customer;

WHEN ONLY CHECKING EQUALITY
Case Expression syntax
SELECT customer_id,
CASE customer_id --expression
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS ruffle_results
FROM customer;

SELECT

SUM(CASE rental_rate 
	WHEN 0.99 THEN 1
	ELSE 0
END) AS bargains,

SUM(CASE rental_rate 
	WHEN 2.99 THEN 1
	ELSE 0
END) AS normal,

SUM(CASE rental_rate 
	WHEN 0.99 THEN 1
	ELSE 0
END) AS premium

FROM film

--PG,R,PG-13 count table
SELECT 

SUM (CASE rating
	WHEN 'R' THEN 1
	 ELSE 0
END) AS r,

SUM (CASE rating
	WHEN 'PG' THEN 1
	 ELSE 0
END) AS pg,

SUM (CASE rating
	WHEN 'PG-13' THEN 1
	 ELSE 0
END) AS pg13

FROM film