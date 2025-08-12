
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments(department_id),
    salary NUMERIC(10,2) CHECK(salary > 0)
);

INSERT INTO departments (department_name) VALUES
('HR'),('IT'),('Finance');

INSERT INTO employees (name, department_id, salary) VALUES
('Alice', 1, 60000),
('Bob', 2, 55000),
('Charlie', 1, 75000),
('David', 3, 50000),
('Eva', 2, 67000);



--  scalar subquery in SELECT clause
SELECT name, salary, (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;

--  Subquery in WHERE clause
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

--  IN with subquery
SELECT name
FROM employees
WHERE department_id IN (
    SELECT department_id FROM departments WHERE department_name = 'IT'
);

--  EXISTS with correlated subquery
SELECT department_name
FROM departments d
WHERE EXISTS (
    SELECT 1 FROM employees e
    WHERE e.department_id = d.department_id AND e.salary > 65000
);

--  Derived table in FROM clause
SELECT dept_name, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS sub
JOIN departments d ON sub.department_id = d.department_id;

