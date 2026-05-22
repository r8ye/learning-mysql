CREATE TEMPORARY TABLE temp_table
(
	first_name varchar(50),
    last_name varchar(50),
    fave_color varchar(50)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table VALUES
(
	'nezuko',
    'chan',
    'gray'
);

SELECT *
FROM temp_table;


CREATE TEMPORARY TABLE senior_citizen
SELECT *
FROM employee_demographics
WHERE age >= 60;

SELECT *
FROM senior_citizen;





