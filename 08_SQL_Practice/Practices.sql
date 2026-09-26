DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

INSERT INTO employees 
(first_name, last_name, department, salary, joining_date, age) 
VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

--Select all records from the Customers table:
SELECT * FROM employees;

--Select Specific tbale you called:
SELECT first_name, age
FROM employees;

--WHERE is used to filter records based on a condition.
SELECT * FROM employees WHERE SALARY > 60000;

SELECT * FROM employees WHERE age >=30;

--AND returns records only when all specified conditions are true.
SELECT * FROM employees WHERE department = 'IT' AND salary > 60000;

--OR returns records when at least one condition is true.
SELECT * FROM employees WHERE department = 'IT' OR department = 'HR';

--NOT is used to exclude records matching a condition.
SELECT * FROM employees WHERE NOT department = 'IT';

--ORDER BY is used to sort query results.
--Ascending
SELECT * FROM employees ORDER BY salary ASC;

SELECT * FROM employees ORDER BY age ASC;

SELECT * FROM employees ORDER BY employee_id ASC;

--Descending
SELECT * FROM employees ORDER BY employee_id DESC;

--LIMIT restricts the number of rows returned.
SELECT * FROM employees LIMIT 3;

SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

SELECT * FROM employees ORDER BY age ASC LIMIT 3;

--DISTINCT returns only unique values.
SELECT DISTINCT department FROM employees;

--BETWEEN is used to filter values within a specified range.
SELECT * FROM employees WHERE salary BETWEEN 50000 AND 65000;

SELECT * FROM employees WHERE age BETWEEN 26 AND 29;

--IN checks whether a value matches any value in a given list.
SELECT * FROM employees WHERE department IN ('IT', 'HR');

SELECT * FROM employees WHERE last_name IN ('Sharma', 'Verma');

--LIKE is used to search for a specified pattern in text.
SELECT * FROM employees WHERE first_name LIKE 'A%';

SELECT * FROM employees WHERE department LIKE 'I%';

SELECT * FROM employees WHERE last_name LIKE '%a';

SELECT * FROM employees WHERE last_name LIKE '%u%';

--COUNT() returns the number of records.
SELECT COUNT(*) FROM employees;

--SUM() calculates the total of a numeric column.
SELECT SUM(salary) FROM employees;

--AVG() calculates the average value of a numeric column.
SELECT AVG(salary) FROM employees;

--MAX() returns the highest value.
SELECT MAX(salary) FROM employees;


--MIN() returns the lowest value.
SELECT MIN(salary) FROM employees;

--AS gives a temporary alias to a column or table.
SELECT first_name AS name FROM employees;

SELECT last_name AS character FROM employees;

SELECT AVG(salary) AS average_salary FROM employees;

--INSERT INTO is used to add new records to a table.
INSERT INTO employees(first_name, last_name, department, salary, joining_date, age)
VALUES('Mohammad', 'Sufiyan', 'IT', 75000, '2024-01-10', 25);

--UPDATE is used to modify existing records.
UPDATE employees
SET salary = 65000
WHERE employee_id = 1;

--DELETE is used to remove records from a table.
DELETE FROM employees
WHERE employee_id = 5;

SELECT first_name, last_name 
FROM employees
WHERE salary > 65000
ORDER BY employees DESC
LIMIT 5;