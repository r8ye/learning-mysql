SELECT *
FROM employee_demographics;

SELECT first_name,
last_name,
age,
age + 10,
(age + 10) * 2
FROM employee_demographics;

SELECT DISTINCT gender
FROM employee_demographics;