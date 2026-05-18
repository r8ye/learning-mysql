SELECT occupation,
AVG(salary)
FROM employee_salary
WHERE occupation lIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000;

SELECT first_name,
gender,
MAX(age)
FROM employee_demographics
GROUP BY first_name, gender
HAVING MAX(age) > 50;