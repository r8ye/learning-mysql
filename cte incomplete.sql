WITH CTE_Example AS 
(
SELECT 
	gender,
	AVG(salary) AS avg_salary,
	MAX(salary) AS max_salary,
	MIN(salary) AS min_salary,
	COUNT(salary) AS count_salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_salary)
FROM CTE_Example;

