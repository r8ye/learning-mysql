DELIMITER $$
CREATE EVENT delete_emp
ON SCHEDULE EVERY 30 SECOND
DO 
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age >= 40;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER delete_emp
AFTER DELETE ON employee_demographics
FOR EACH ROW
BEGIN
	DELETE 
    FROM employee_salary
    WHERE employee_id = OLD.employee_id;
END $$
DELIMITER ;

SELECT *
FROM employee_salary;


