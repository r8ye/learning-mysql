SELECT *
FROM employee_demographics
WHERE age > 50;

SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_demographics
WHERE gender != 'Male';

SELECT first_name,
last_name,
birth_date
FROM employee_demographics
WHERE birth_date > '1990-01-01';