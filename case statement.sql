SELECT first_name,
last_name,
age,
CASE
	WHEN age < 18 THEN 'Minor'
    WHEN age BETWEEN 18 AND 59 THEN 'Legal Age'
    WHEN age >= 60 THEN 'Senior Citizen'
END AS age_bracket
FROM employee_demographics;

SELECT CONCAT(first_name, ' ', last_name) AS full_name,
department_name,
salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary >= 50000 THEN salary + (salary * 0.07)
END AS new_salary,
CASE
	WHEN dept_id = 1 THEN salary * 0.1
    WHEN dept_id != 1 THEN 0
END AS bonus
FROM employee_salary AS sal
JOIN parks_departments AS dept
	ON sal.dept_id = dept.department_id;
    
