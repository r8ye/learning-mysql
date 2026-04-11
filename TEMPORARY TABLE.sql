CREATE TEMPORARY TABLE age_over_50
SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age > 50;

SELECT *
FROM age_over_50;