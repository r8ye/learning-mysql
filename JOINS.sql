SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- INNER JOIN
SELECT *
FROM employee_demographics
INNER JOIN employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id;

SELECT employee_demographics.employee_id, employee_demographics.first_name, age, occupation
FROM employee_demographics 
INNER JOIN employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id;


-- LEFT JOIN
SELECT *
FROM employee_salary
LEFT JOIN parks_departments
ON employee_salary.dept_id = parks_departments.department_id;


-- RIGHT JOIN
SELECT *
FROM employee_salary
RIGHT JOIN parks_departments
ON employee_salary.dept_id = parks_departments.department_id;


-- SELF JOIN
SELECT *
FROM employee_demographics AS emp1
JOIN employee_demographics AS emp2
ON emp1.employee_id + 1 = emp2.employee_id;

SELECT emp1.employee_id AS id_a,
emp1.first_name AS fn_a,
emp1.last_name AS ln_a,
emp2.employee_id AS id_b,
emp2.first_name AS fn_b,
emp2.last_name AS ln_b
FROM employee_demographics AS emp1
JOIN employee_demographics AS emp2
ON emp1.employee_id + 1 = emp2.employee_id;


-- JOINING MULTIPLE TABLES TOGETHER
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id;


SELECT dem.employee_id,
dem.first_name,
dem.last_name,
age,
gender,
salary,
sal.dept_id,
department_name
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id;
