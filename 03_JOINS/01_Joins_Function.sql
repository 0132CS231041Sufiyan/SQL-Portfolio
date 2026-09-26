---1. Create employees3---
CREATE TABLE employees3 (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

---Insert data---
INSERT INTO employees3(employee_id, first_name, last_name, department_id)
	VALUES(1, 'Rahul', 'Sharma', 101),
		  (2, 'Priya', 'Mehta', 102),
          (3, 'Ankit', 'Verma', 103),
	      (4, 'Simran', 'Kaur', NULL),
          (5, 'Aman', 'Singh', 101);

---2. Create departments---
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

---Insert data---
INSERT INTO departments(department_id, department_name)
	VALUES(101, 'Sales'),
	      (102, 'Marketing'),
		  (103, 'IT'),
		  (104, 'HR');

---Check the tables---
SELECT * FROM employees3;

SELECT * FROM departments;

--01. INNER JOIN:-Returns only matching records from both tables.
SELECT e.employee_id, e.first_name, e.last_name,
	   d.department_id, d.department_name
FROM employees3 e
INNER JOIN departments d
ON e.department_id = d.department_id;

--02. LEFT JOIN:-Returns all records from the left table and matching records from the right table.
SELECT e.employee_id, e.first_name, e.last_name,
	   d.department_id, d.department_name
FROM employees3 e
LEFT JOIN departments d
ON e.department_id = d.department_id;

--03. RIGHT JOIN:-Returns all records from the right table and matching records from the left table.
SELECT e.employee_id, e.first_name, e.last_name,
	   d.department_id, d.department_name
FROM employees3 e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

--04. FULL OUTER JOIN:-Returns all records from both tables.
SELECT e.employee_id, e.first_name, e.last_name,
	   d.department_id, d.department_name
FROM employees3 e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

--05. CROSS JOIN:-Creates every possible combination of rows from both tables.
SELECT e.first_name, e.last_name, d.department_name
FROM employees3 e
CROSS JOIN departments d;

--06. SELF JOIN:-Table is joined with itself.
SELECT e1.first_name AS employee_name1,
	   e2.first_name AS employee_name2
FROM employees3 e1 JOIN employees3 e2
ON e1.department_id = e2.department_id AND e1.employee_id != e2.employee_id;