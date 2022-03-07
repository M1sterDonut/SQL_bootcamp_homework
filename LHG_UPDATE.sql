--UPDATE 
UPDATE account 
SET last_login = CURRENT_TIMESTAMP;

--update to match another column in same table
UPDATE account
SET last_login = created_on;

--update based on subset of another table a.k.a. 'update-join'
UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id;

SELECT * FROM account_job;

--RETURNING key word
UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email,created_on,last_login