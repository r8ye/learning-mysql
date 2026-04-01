-- UNION DISTINCT
SELECT first_name, last_name
FROM employee_demographics
UNION
SELECT first_name, last_name
FROM employee_salary;


-- UNION ALL
SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;


-- MULTIPLE SELECT STATEMENTS
SELECT first_name, last_name, 'Old: Male' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old: Female' AS label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Employee' AS label
FROM employee_salary
WHERE salary >= 50000
ORDER BY first_name, last_name;