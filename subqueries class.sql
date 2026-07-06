#SUBQUERIES

SELECT * FROM employee_demographics;
SELECT * FROM employee_salary;

# where, from clauses
SELECT *
FROM employee_demographics
WHERE employee_id IN 
					(SELECT employee_id
						FROM employee_salary
                        WHERE dept_id = 1);

SELECT first_name, salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;

SELECT AVG(max_age)
FROM
(SELECT gender,
 AVG(age) AS avg_age,
 MAX(age) AS max_age,
 MIN(age) AS min_age,
 COUNT(age)
FROM employee_demographics
GROUP BY gender) AS agg;

# In every case, MySQL runs the innermost query first, gets a concrete result (a list, a single value, or a table), 
#and then substitutes that result into the outer query as if you'd typed it there yourself. 
#The only thing that changes between WHERE, SELECT, and FROM is what shape of result is expected:

# WHERE → expects a list of values (or a single value)
# SELECT → expects a single value
# FROM → expects a whole table (rows and columns), which needs an alias 