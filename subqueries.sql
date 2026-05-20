SELECT *
FROM employee_demographics
WHERE employee_id IN
	(SELECT employee_id
    FROM employee_salary
    WHERE dept_id = 1);
    
SELECT AVG(age) AS avg_age,
MAX(age) AS max_age,
MIN(age) AS min_age,
COUNT(age) AS count_age
FROM employee_demographics
GROUP BY gender;

SELECT AVG(max_age)
FROM 
(SELECT AVG(age) AS avg_age,
MAX(age) AS max_age,
MIN(age) AS min_age,
COUNT(age) AS count_age
FROM employee_demographics
GROUP BY gender) AS agg_table;