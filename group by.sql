SELECT gender, 
AVG(age),
MAX(age),
MIN(age),
COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT dept_id, 
AVG(salary)
FROM employee_salary
GROUP BY dept_id;

SELECT occupation,
MIN(salary),
MAX(salary),
AVG(salary),
COUNT(salary)
FROM employee_salary
WHERE occupation lIKE '%manager'
GROUP BY occupation;
