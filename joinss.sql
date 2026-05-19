-- inner join
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.employee_id,
dem.first_name,
dem.last_name,
age, 
gender,
birth_date,
occupation, 
salary
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
SELECT first_name,
last_name,
salary,
occupation,
department_name
FROM employee_salary AS sal
INNER JOIN parks_departments as dept
	ON sal.dept_id = dept.department_id
ORDER BY salary DESC;


-- left join
SELECT *
FROM employee_salary AS sal
LEFT JOIN parks_departments AS dept
	ON sal.dept_id = dept.department_id;
    
    
-- right join
SELECT *
FROM employee_salary AS sal
RIGHT JOIN parks_departments as dept
	ON sal.dept_id = dept.department_id;
    

-- self join
SELECT emp1.first_name AS team_a,
emp2.first_name AS team_b
FROM employee_demographics AS emp1
JOIN employee_demographics AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
    
-- joining multiple tables together
SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments AS dept
	ON sal.dept_id = dept.department_id;
    
SELECT dem.employee_id,
dem.first_name,
dem.last_name,
age,
gender,
salary,
occupation,
department_name
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments AS dept
	ON sal.dept_id = dept.department_id;
    















