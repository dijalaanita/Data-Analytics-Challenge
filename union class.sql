# union combines rows together from same or separate table
# union is at default a union distinct for the unique values and then union all is to show eberything plus the duplicates
SELECT * FROM employee_salary;
SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, 'Old' AS Lage
FROM employee_demographics
WHERE age >= 50
UNION DISTINCT
SELECT first_name, last_name, 'trick' AS Lsalary
FROM employee_salary
WHERE salary >= 50000
UNION DISTINCT
SELECT first_name, last_name, 'brokeyy' AS Lsalary
FROM employee_salary
WHERE salary < 50000
UNION DISTINCT
SELECT first_name, last_name, 'midlife_crisis' AS Lage
FROM employee_demographics
WHERE age < 50
AND age > 30
UNION
SELECT first_name, last_name, 'young_ho' AS Lage
FROM employee_demographics
WHERE age < 30
ORDER BY first_name, last_name; 


SELECT first_name, last_name, 'midlife_crisis' AS Label
FROM employee_demographics
WHERE age < 50
AND age > 30;

SELECT first_name, last_name, 'young_ho' AS Label
FROM employee_demographics
WHERE age < 30;