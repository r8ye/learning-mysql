SELECT first_name,
LENGTH(first_name),
UPPER(first_name),
lOWER(first_name)
FROM employee_demographics;

SELECT TRIM('       ABC        ');

SELECT birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

SELECT first_name,
REPLACE(first_name, 'A', 'x')
FROM employee_demographics;

SELECT last_name,
LOCATE('a', last_name)
FROM employee_demographics;

SELECT first_name, 
last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;