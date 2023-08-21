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

-- New exercises below:

-- Find all employees whose names start and end with 'E'
-- Combine first and last name using concat() as a single column
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE first_name LIKE 'E%'
  AND last_name LIKE '%E%'
ORDER BY emp_no;

-- Find all employees born on Christmas (December 25)
-- Total 842 rows
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

-- Find all employees hired in the 90s and born on Christmas (December 25)
-- Total 362 rows
SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;

-- Find all employees hired in the 90s and born on Christmas (December 25)
-- Order by oldest employee who was hired last
SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25
ORDER BY hire_date ASC
LIMIT 1;

-- Find all employees born on Christmas (December 25) and hired in the 90s
-- Calculate days of employment using datediff() and curdate()
SELECT *,
       DATEDIFF(CURDATE(), hire_date) AS days_employed
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
  AND MONTH(birth_date) = 12 AND DAYOFMONTH(birth_date) = 25;
