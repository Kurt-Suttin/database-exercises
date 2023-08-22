# USE join_test_db;
# CREATE TABLE roles
# (
#     id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name VARCHAR(100) NOT NULL,
#     PRIMARY KEY (id)
# );
#
# CREATE TABLE users
# (
#     id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name    VARCHAR(100) NOT NULL,
#     email   VARCHAR(100) NOT NULL,
#     role_id INT UNSIGNED DEFAULT NULL,
#     PRIMARY KEY (id),
#     FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name)
# VALUES ('admin');
# INSERT INTO roles (name)
# VALUES ('author');
# INSERT INTO roles (name)
# VALUES ('reviewer');
# INSERT INTO roles (name)
# VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id)
# VALUES ('bob', 'bob@example.com', 1),
#        ('joe', 'joe@example.com', 2),
#        ('sally', 'sally@example.com', 3),
#        ('adam', 'adam@example.com', 3),
#        ('jane', 'jane@example.com', null),
#        ('mike', 'mike@example.com', null);
#
# INSERT INTO users (name, email, role_id)
# VALUES ('author1', 'author1@example.com', 2),
#        ('author2', 'author2@example.com', 2),
#        ('author3', 'author3@example.com', 2),
#        ('null_role_user', 'null_role@example.com', null);
#
# SELECT users.name, roles.name AS role
# FROM users
#          JOIN roles ON users.role_id = roles.id;
#
#
# SELECT users.name, roles.name AS role
# FROM users
#          LEFT JOIN roles ON users.role_id = roles.id;
#
#
#
#
#
# SELECT roles.name, COUNT(users.id) AS user_count
# FROM roles
#          LEFT JOIN users ON roles.id = users.role_id
# GROUP BY roles.name;


# /////////////////////////////////////////////////////////


Use employees;
SHOW TABLES;
DESCRIBE dept_manager;
DESCRIBE departments;
CREATE TABLE department_managers
(
    departments_id CHAR(4) NOT NULL,
    managers_id    INT     NOT NULL,
    CONSTRAINT department_managers_deparment_id_fk FOREIGN KEY (departments_id) REFERENCES departments (dept_no),
    CONSTRAINT department_managers_managers_id_fk FOREIGN KEY (managers_id) REFERENCES dept_manager (emp_no)
);
SHOW TABLES;
describe employees;


SELECT d.dept_name AS "Deparment Name", CONCAT(e.first_name, ' ', e.last_name) AS "Department Manager"
FROM employees as e
         JOIN dept_manager as dm ON dm.emp_no = e.emp_no
         JOIN departments as d ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F';






