 SELECT *
 FROM employee_demographics;
 
 SELECT *
 FROM employee_salary;
 
 DELIMITER $$
 CREATE TRIGGER insert_employee
	AFTER INSERT ON employee_demographics
    FOR EACH ROW
BEGIN
	INSERT INTO employee_salary
    (
		employee_id, 
		first_name, 
		last_name
    )
    VALUES
    (
		NEW.employee_id,
		NEW.first_name,
		NEW.last_name
    );
END $$

DELIMITER ;

INSERT INTO employee_demographics
(
	employee_id,
    first_name,
    last_name,
    age,
    gender,
    birth_date
)
VALUES
(
	13,
    'Rachelle',
    'Fraga',
    21,
    'Female',
    '2004-08-26'
);

DELETE FROM employee_demographics
WHERE employee_id = 13;

UPDATE employee_salary
SET
	occupation = 'Data Analyst',
	salary = 80000,
    dept_id = 6
WHERE employee_id = 13;