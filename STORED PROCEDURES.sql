USE park_and_recreation;
DELIMITER $$
CREATE PROCEDURE low_vs_high_salary()
BEGIN
	SELECT *
    FROM employee_salary
    WHERE salary > 60000;
    SELECT *
    FROM employee_salary
    WHERE salary < 40000;
END $$

CALL low_vs_high_salary()

-- USE parks_and_recreation;
-- DELIMITER $$
-- CREATE PROCEDURE oldies(param_employee_id INT)
-- BEGIN
-- 	SELECT age
--     FROM employee_demographics
--     WHERE employee_id = param_employee_id;
-- END $$

-- CALL oldies(1);











