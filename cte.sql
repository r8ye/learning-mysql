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

WITH Highest_Salary AS
(
 SELECT 
	gender,
    AVG(salary) AS avg_sal,
    MAX(salary) AS max_sal,
    MIN(salary) AS min_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT MAX(min_sal)
FROM Highest_Salary;


WITH cte_example AS 
(
	SELECT
		employee_id,
		CONCAT(first_name, ' ', last_name) AS employee,
        age,
        gender,
        birth_date
	FROM employee_demographics
    WHERE birth_date > '1980-01-01'
), 
cte_example2 AS
(
	SELECT
		employee_id,
		occupation,
        salary,
        department_name
	FROM employee_salary AS sal
    JOIN parks_departments AS dept
		ON sal.dept_id = dept.department_id
	WHERE salary > 60000
)
SELECT
	cte_example.employee_id,
    employee,
    age,
    gender,
    birth_date,
    occupation,
    salary,
    department_name
FROM cte_example
JOIN cte_example2
	ON cte_example.employee_id = cte_example2.employee_id;


















