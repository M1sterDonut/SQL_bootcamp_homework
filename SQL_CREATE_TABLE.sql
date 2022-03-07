--CREATING TABLES

CREATE TABLE IF NOT EXISTS account (
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(200) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE IF NOT EXISTS job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
);

--table that references columns from other tables
CREATE TABLE IF NOT EXISTS account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);

--create table based on columns of other tables
CREATE TABLE IF NOT EXISTS colours(
	colour_id SERIAL PRIMARY KEY,
	colour VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS animals(
	animal_id SERIAL PRIMARY KEY,
	animal_name VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS animal_colours6 AS(
SELECT animal_name,colour FROM animals FULL OUTER JOIN colours
ON animal_id = colour_id
);

--INSERT DATA
INSERT INTO account (username, password, email, created_on)
VALUES ('Jose','mypassword','jose@mail.com',CURRENT_TIMESTAMP);

INSERT INTO job(job_name)
VALUES ('President');

SELECT * FROM job;

