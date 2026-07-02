# joins combine one or more tables if they have a common column either name or the row data

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;
# the ID is similar in both tables
# inner joins returns rows that are the same in both tables and columns

SELECT dem.employee_id, age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

#outer join, left and right. left outer join takes all info from the left table and returns the matches in the right table.
# right outer join takes all info from the right table and returns the matches in the left table.

SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
;

# SELF JOIN ties a table to itself
SELECT emp1.employee_id AS secret_santa, 
emp1.first_name AS first_name_santa, 
emp1.last_name AS last_name_santa, 
emp2.employee_id AS receiver, 
emp2.first_name AS receiver_first_name, 
emp2.last_name AS receiver_last_name
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    
#joining multiple tables together
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS park
	ON sal.dept_id = park.department_id
;

SELECT *
FROM parks_departments;																																	