SELECT last_name,
first_name,
salary,
CASE
	WHEN salary <= 30000 THEN 'Low'
    WHEN salary BETWEEN 30000 and 50000 THEN 'Average'
    WHEN salary > 50000 THEN 'High'
END AS income_bracket
FROM employee_salary;

-- Increase: <= 50k = 10%, > 50k = 20%, parks & recreation = 5% BONUS
SELECT last_name, first_name, salary AS current_salary,
CASE
	WHEN salary <= 50000 THEN salary + (salary * 0.1)
    WHEN salary > 50000 THEN salary + (salary * 0.2)
END AS salary_increased,
CASE
	WHEN dept_id = 1 THEN salary * 0.05
    WHEN dept_id != 1 THEN 0
END AS bonus
FROM employee_salary;
