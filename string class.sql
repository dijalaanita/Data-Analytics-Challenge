SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name)
FROM employee_demographics;

SELECT first_name, LOWER(first_name)
FROM employee_demographics;

# TRIM
SELECT TRIM("       sky      ");
SELECT LTRIM("       sky      ");
SELECT RTRIM("       sky      ");

#substring
SELECT first_name, LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
birth_date,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

# replace
SELECT first_name, REPLACE(first_name, 'A', 'z')
FROM employee_demographics;

#locate
SELECT first_name, LOCATE('a', first_name)
FROM employee_demographics;

# concate
SELECT first_name, last_name,
CONCAT(first_name, ' ',last_name) AS full_name
FROM employee_demographics;