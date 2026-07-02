SELECT *
FROM employee_salary
WHERE dept_id = '1';

SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT *
FROM employee_salary
WHERE salary < 50000;

SELECT *
FROM employee_salary
WHERE salary = 50000;

SELECT *
FROM employee_demographics
WHERE gender = 'female';

SELECT *
FROM employee_demographics
WHERE gender != 'female';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-02';

-- AND OR NOT LOGICAL OPERATORS --
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-02'
AND gender = 'male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-02'
OR gender = 'male';

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-02'
OR NOT gender = 'male';

SELECT *
FROM employee_demographics
WHERE (first_name = 'Tom' AND age = 36) OR age > 50;

-- LIKE statement
-- % means anything while _ means a specific value
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%ry';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%a%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%';

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1980%'
;