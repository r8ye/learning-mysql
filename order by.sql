SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;

SELECT last_name, 
first_name,
age, 
gender
FROM employee_demographics
WHERE gender = 'male'
ORDER BY last_name, first_name, age;

SELECT first_name,
occupation,
AVG(salary)
FROM employee_salary
GROUP BY first_name, occupation
ORDER BY AVG(salary) DESC;

