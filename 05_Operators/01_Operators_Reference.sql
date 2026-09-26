SELECT * FROM employee2;

-------Comparison Operators-------

--Equal to (=)...
SELECT first_name, age FROM employee2
WHERE age = 30;

--Not equal to (!=)...
SELECT first_name, age FROM employee2
WHERE age != 30;

--Not equal to (<>)...
SELECT first_name, age FROM employee2
WHERE age <> 30;

--Greater than (>)...
SELECT first_name, salary FROM employee2
WHERE salary > 50000;

--Less than (<)...
SELECT first_name, salary FROM employee2
WHERE salary < 50000;

--Greater than or equal (>=)...
SELECT first_name, salary FROM employee2
WHERE salary >= 60000;

--Less than or equal (<=)...
SELECT first_name, salary FROM employee2
WHERE salary <= 60000;

-------Mathematical Operators-------

--Addition (+)...
SELECT salary + 5000 AS new_salary
FROM employee2;

--Subtraction (-)...
SELECT salary - 5000 AS new_salary1
FROM employee2;

--Division (/)...
SELECT salary / 12 AS monthly_salary
FROM employee2;

--Modulus / Remainder (%)...
SELECT salary * 10 / 100 AS bouns
FROM employee2;

--Power (^)...
SELECT age ^ 2 AS age_square
FROM employee2;

-------Logical Operators-------

--AND:-All conditions must be True...
SELECT * FROM employee2
WHERE age >= 45 AND salary >= 50000;

--OR:-At least one condition must be True...
SELECT * FROM employee2
WHERE age >= 60 OR salary >= 90000;

--NOT:-Negates the conditions...
SELECT * FROM employee2
WHERE NOT (department = 'IT');

---BETWEEN OPERATOR:-The BETWEEN operator is used to select values that are within a specified range.
SELECT first_name, last_name, salary
FROM employee2
WHERE salary BETWEEN 40000 AND 60000;

---LIKE OPERATOR:-The LIKE operator is used to search for a specified pattern in a column.
--01:-Finds any values that end with 'a'
SELECT * FROM employee2
WHERE first_name LIKE '%a';

--02:-Finds any values that start with 'a'
SELECT * FROM employee2
WHERE first_name LIKE 'A%';

---IN Operator:-The IN operator is used to check whether a value matches any value in a specified list.
SELECT first_name, last_name, department
FROM employee2
WHERE department IN ('Finance', 'Marketing');

---IS NULL Operator:-The IS NULL operator is used to check whether a column contains a NULL value.
SELECT first_name, last_name, department
FROM employee2
WHERE department IS NULL;

---ORDER BY Operator:-The ORDER BY clause is used to sort the result of a query in ascending or descending order.
SELECT * FROM employee2
ORDER BY age; --Default = Ascending (ASC)

--01:-Descending
SELECT *
FROM employee2
ORDER BY age DESC;

---LIMIT Operator:-The LIMIT clause is used to restrict the number of rows returned by a query.
SELECT first_name, last_name, salary
FROM employee2
LIMIT 3;

----DISTINCT Operator:-The DISTINCT keyword is used to remove duplicate values from the result.
SELECT DISTINCT department
FROM employee2;

--Count..
SELECT COUNT( DISTINCT department ) AS department_count
FROM employee2;

-------SET OPERATORS-------

--01 UNION:-Combines results and removes duplicates
SELECT department from 