SELECT * 
FROM parks_and_recreation.employee_salary; 

SELECT *
FROM parks_and_recreation.employee_salary
WHERE last_name = 'Wyatt';

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary > 60000;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age < 40;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Male';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1980-01-01';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1990-01-01'
AND gender = 'Female';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'Female'
OR birth_date > '1990-01-01';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1980%';
