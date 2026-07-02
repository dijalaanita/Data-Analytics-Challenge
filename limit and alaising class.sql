# limit is how many rows you want in your output

SELECT *
FROM employee_demographics
ORDER BY age 
LIMIT 4
;

# aliasing is used to change the column name
SELECT gender, AVG(age) AS average_age
FROM employee_demographics
GROUP BY gender
HAVING average_age > 40;

SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;