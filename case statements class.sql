# CASE STATEMENTS

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'youngho'
    WHEN age BETWEEN 31 and 45 THEN 'midlife crisis'
    WHEN age >= 45 THEN 'oldhead'
END AS life
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT first_name,
last_name,
salary,
dept_id,
CASE
	WHEN salary < 50000 THEN (salary * 0.05) + salary
    WHEN salary > 50000 THEN (salary * 0.07) + salary
END AS pay_inc,
CASE
	WHEN dept_id = 6 THEN (salary * 0.10)
END AS bonus
FROM employee_salary;

SELECT * FROM parks_departments;