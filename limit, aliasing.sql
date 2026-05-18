SELECT *
FROM employee_salary
ORDER BY salary DESC
LIMIT 3;

SELECT dept_id,
AVG(salary) AS avg_salary,
MAX(salary) AS max_salary,
MIN(salary) AS min_salary
FROM employee_salary
GROUP BY dept_id
ORDER BY dept_id;