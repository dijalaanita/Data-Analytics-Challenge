# stored procedures
#save sql code that can be reused over and over again. 

SELECT * 
FROM employee_salary
WHERE salary >= 50000;

CREATE PROCEDURE large_sal()
SELECT * 
FROM employee_salary
WHERE salary >= 50000;

CALL large_sal();

DELIMITER $$
CREATE PROCEDURE large_sal2()
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT * 
	FROM employee_salary
	WHERE salary >= 10000;
END $$

DELIMITER ;
CALL large_sal2();

# parameter
DELIMITER $$
CREATE PROCEDURE large_sal3(emp_id INT)
BEGIN
	SELECT salary 
	FROM employee_salary
	WHERE employee_id = emp_id;
END $$

DELIMITER ;
CALL large_sal3(2);