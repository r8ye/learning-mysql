SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT age, gender, birth_date
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name,
salary,
(salary + 100) * 10
FROM parks_and_recreation.employee_salary;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT last_name, gender
FROM parks_and_recreation.employee_demographics;

