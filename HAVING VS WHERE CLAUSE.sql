SELECT gender, MAX(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING MAX(age) > 50;

SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%director%'
GROUP BY occupation
HAVING AVG(salary) <= '50000';