# temp tables
# tables only visible to the current session they are available in 

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)
);

SELECT * FROM temp_table;

INSERT INTO temp_table
VALUES ('Anita', 'Dijala', 'Love Island USA');

SELECT * FROM temp_table;

SELECT * FROM employee_salary;

CREATE TEMPORARY TABLE sal_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT * FROM sal_over_50k;