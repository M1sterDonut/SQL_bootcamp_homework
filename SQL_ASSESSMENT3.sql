--ASSESSMENT #3 / FINAL ASSESSMENT 
CREATE TABLE IF NOT EXISTS students(
	student_id INTEGER PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL, 
	homeroom_number SMALLINT,
	phone VARCHAR(50) NOT NULL UNIQUE,
	email VARCHAR(50) UNIQUE,
	graduation_year DATE
);

CREATE TABLE IF NOT EXISTS teachers(
	teacher_id INTEGER PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL, 
	homeroom_number SMALLINT,
	department VARCHAR(50),
	email VARCHAR(50) UNIQUE,
	phone VARCHAR(50) UNIQUE
);

INSERT INTO students(student_id,first_name,last_name,phone,graduation_year,homeroom_number)
VALUES (1,'Mark','Watney','777-555-1234','2035-01-01',5);

INSERT INTO teachers(teacher_id,first_name,last_name,homeroom_number,department,email,phone)
VALUES (1,'Jonas','Salk',5,'Biology','jsalk@school.org','777-555-4321');

SELECT * FROM students;
SELECT * FROM teachers;
