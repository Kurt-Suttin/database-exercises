USE employees;

-- Find male employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'M';


-- Find all employees whose last name starts or ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

-- Find all employees whose last name starts and ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%E';


SELECT *
FROM employees
WHERE last_name LIKE '%q%';

-- Find all employees with a 'q' in their last name but not 'qu'
SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';


