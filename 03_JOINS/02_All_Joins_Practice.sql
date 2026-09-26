CREATE TABLE employees6 (
	employee_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	department_id INT
);

INSERT INTO employees6 (employee_id, first_name, last_name, department_id)
VALUES (1, 'Rahul', 'Sharma', 101),
   	   (2, 'Priya', 'Mehta', 102),
	   (3, 'Ankit', 'Verma', 103),
       (4, 'Simran', 'Kaur', NULL),
       (5, 'Aman', 'Singh', 101),
       (6, 'Neha', 'Patel', 104),
       (7, 'Rohan', 'Gupta', 105);

SELECT * FROM employees6;

DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
	department_id INT PRIMARY KEY,
	department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name)
VALUES (101, 'Sales'),
	   (102, 'Marketing'),
	   (103, 'IT'),
	   (104, 'HR'),
	   (105, 'Finance');

SELECT * FROM departments;


-- Q1 — INNER JOIN:-Display the employee's first name and their department name.
SELECT * FROM employees6 e
INNER JOIN departments d
ON e.department_id = d.department_id;

-- Q2 — LEFT JOIN:-Display all employees along with their department names, including employees who do not have a matching department.
SELECT e.first_name, d.department_name
FROM employees6 e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- Q3 — RIGHT JOIN:-Display all departments along with the employees working in them. Include departments that have no employees.
SELECT e.first_name, d.department_name
FROM employees6 e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

-- Q4 — FULL OUTER JOIN:-Display all employees and all departments, including records that do not have a match.
SELECT e.first_name, d.department_name
FROM employees6 e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

-- Q5 — CROSS JOIN:-Display every possible combination of employees and departments.
SELECT e.first_name, d.department_name
FROM employees6 e
CROSS JOIN departments d;