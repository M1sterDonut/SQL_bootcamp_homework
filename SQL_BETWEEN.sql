--BETWEEN

--number of payments between 8 and 9 dollars
SELECT COUNT(*) FROM payment
WHERE amount BETWEEN 8 and 9;

--number of payments not between 8 and 9 dollars
SELECT COUNT(*) FROM payment
WHERE amount NOT BETWEEN 8 and 9;

--all payments in first 15 days of Feb
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';