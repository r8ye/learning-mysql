SELECT last_name, LENGTH(last_name)
FROM employee_demographics
ORDER BY 2;

SELECT last_name, UPPER(last_name)
FROM employee_demographics;

SELECT first_name, LOWER(first_name)
FROM employee_salary;

SELECT TRIM('  sample   ');
SELECT RTRIM('  sample   ');
SELECT LTRIM('  sample   ');

SELECT birth_date, SUBSTRING(birth_date, 6, 2) AS birth_month,
SUBSTRING(birth_date, 1, 4) AS birth_year
FROM employee_demographics;

SELECT first_name, REPLACE(first_name, 'a', 'x')
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;
