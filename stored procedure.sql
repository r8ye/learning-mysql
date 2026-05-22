DELIMITER $$

CREATE PROCEDURE salary_over_50k()
BEGIN
	SELECT *
    FROM employee_salary
    WHERE salary > 50000;
END$$

DELIMITER ;

CALL salary_over_50k();

--

DELIMITER $$

CREATE PROCEDURE salary_below_50k(param_employee_id INT)
BEGIN
	SELECT *
    FROM employee_salary
    WHERE employee_id = param_employee_id;
END$$

DELIMITER ;

CALL salary_below_50k(1);

