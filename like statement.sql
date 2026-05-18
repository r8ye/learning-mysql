SELECT occupation
FROM employee_salary
WHERE occupation LIKE 'o%';

SELECT *
FROM employee_demographics
WHERE age lIKE '4%';

SELECT first_name,
last_name
FROM employee_demographics
WHERE first_name lIKE 'a%';