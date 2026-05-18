SELECT *
FROM employee_demographics
WHERE age >= 40
AND gender = 'female';

SELECT first_name,
last_name,
gender,
birth_date
FROM employee_demographics
WHERE age > 45
OR birth_date >= '1990-01-01';

SELECT *
FROM employee_demographics
WHERE first_name = 'Tom'
OR first_name = 'Ann';

SELECT *
FROM employee_salary
WHERE (first_name = 'april' AND last_name = 'ludgate')
OR NOT occupation = 'office manager';