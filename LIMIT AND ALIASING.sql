SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY last_name, dept_id;

-- LIMIT
SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY salary DESC
LIMIT 5;

SELECT last_name, dept_id
FROM parks_and_recreation.employee_salary
ORDER BY last_name, dept_id
LIMIT 3, 2;


-- ALIASING
SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT gender, AVG(age) AS avg_age
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age < 40;

