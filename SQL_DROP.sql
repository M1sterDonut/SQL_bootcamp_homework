--DELETE

SELECT * FROM job

INSERT INTO job(job_name)
VALUES('Cowboy')
RETURNING job_name

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id,job_name;

--ALTER clause
CREATE TABLE IF NOT EXISTS new_info(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
);

ALTER TABLE new_info
RENAME COLUMN person TO people;

SELECT * FROM new_info;

--change constraint
INSERT INTO new_info(title)
VALUES ('some new title')

ALTER TABLE new_info
DROP COLUMN IF EXISTS people

--CHECK contraint
CREATE TABLE IF NOT EXISTS employees (
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1900-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
	salary INTEGER CHECK (salary > 0)
);

INSERT INTO employees(first_name,last_name,birthdate,hire_date,salary)
VALUES ('Sammy', 'Smith','1987-01-01','2005-05-13', 100)

SELECT * FROM employees
