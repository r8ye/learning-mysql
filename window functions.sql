SELECT dem.employee_id,
CONCAT(dem.first_name ,' ', dem.last_name) AS full_name,
gender,
salary,
ROW_NUMBER() OVER(PARTITION BY GENDER ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
