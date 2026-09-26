DROP TABLE IF EXISTS employees5;

CREATE TABLE employees5 (
    employeeNumber INT PRIMARY KEY,
    lastName VARCHAR(50),
    firstName VARCHAR(50),
    extension VARCHAR(10),
    email VARCHAR(100),
    officeCode VARCHAR(10),
    reportsTo INT,
    jobTitle VARCHAR(50)
);

INSERT INTO employees5(employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
VALUES(1001, 'Sharma', 'Amit', 'x101', 'amit@classicmodelcars.com', '1', NULL, 'President'),
      (1002, 'Patel', 'Neha', 'x102', 'neha@classicmodelcars.com', '2', 1001, 'Sales Manager'),
      (1003, 'Kumar', 'Ravi', 'x103', 'ravi@classicmodelcars.com', '1', 1002, 'Sales Rep'),
      (1004, 'Singh', 'Pooja', 'x104', NULL, '3', 1002, 'Sales Rep'),
      (1005, 'Verma', 'Rahul', 'x105', 'rahul@classicmodelcars.com', '2', 1002, 'Sales Rep'),
      (1006, 'Khan', 'Sana', 'x106', NULL, '3', 1002, 'Sales Rep');

--Q1. Display all records from the employees table.
SELECT * FROM employees5;

--Q2. Display only firstName and lastName.
SELECT firstname, lastname
FROM employees5;

--Q3. Display firstName, email, and jobTitle.
SELECT firstname, email, jobtitle
FROM employees5;

--Q4. Display all employees whose officeCode is '1'.
SELECT *
FROM employees5
WHERE officecode = '1';

--Q5. Display all employees whose jobTitle is 'Sales Rep'.
SELECT * FROM employees5
WHERE jobtitle = 'Sales Rep';

--Q6. Display the employee whose employeeNumber is 1003.
SELECT * FROM employees5
WHERE employeenumber = '1003';