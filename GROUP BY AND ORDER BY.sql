-- GROUP BY
SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT gender
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT dept_id, AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY dept_id;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;


-- ORDER BY
SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY salary DESC;

SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY first_name;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender DESC, birth_date DESC;










