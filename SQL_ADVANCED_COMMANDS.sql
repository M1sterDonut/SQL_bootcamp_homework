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