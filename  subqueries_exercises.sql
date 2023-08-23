USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE e.hire_date = (SELECT hire_date
                     FROM employees
                     WHERE emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod.

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, t.title AS Title
FROM employees e,
     titles t
WHERE e.emp_no = t.emp_no
  AND e.first_name = 'Aamod';

# Find all the current department managers that are female.
SELECT CONCAT(first_name, ' ', last_name) AS " Current Female Managers"
FROM employees
WHERE emp_no IN (SELECT emp_no
                 FROM dept_manager dm
                 WHERE gender = 'f'
                   AND to_date = '9999-01-01')
;




