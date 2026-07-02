SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY -- 
SELECT *
FROM employee_demographics
ORDER BY first_name; #default is ascending ASC

SELECT *
FROM employee_demographics
ORDER BY first_name ASC;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;
# the order you make the order by columns is very important especially which you want to focus on

# can replace name of columns with the positions of the colums but not recommended
SELECT *
FROM employee_demographics
ORDER BY 5, 4;