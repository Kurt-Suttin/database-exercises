-- Contents of order_by_exercises.sql
use employees;
-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' using OR
-- Order by first name
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' using OR
-- Order by first name and last name
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name, last_name;

-- Find all employees with a 'q' in their last name but not 'qu'
-- Order by employee number
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY emp_no;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' using OR
-- Order by last name, then first name
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY last_name, first_name;

-- Find all employees with a 'q' in their last name but not 'qu'
-- Order by last name, then first name in reverse order
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY last_name DESC, first_name DESC;
