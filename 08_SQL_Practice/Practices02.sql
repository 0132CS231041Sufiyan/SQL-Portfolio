-------Level 1 — Basic-------

--Q1. Write a query to display all records from the students table.
SELECT * FROM employee2;

--Q2. Display only first_name, last_name, and salary
SELECT first_name, last_name, salary
FROM employee2;

--Q3. Find employees whose salary is greater than 60,000.
SELECT * FROM employee2
WHERE salary > 60000;

--Q4. Find employees whose age is greater than 40.
SELECT * FROM employee2
WHERE age > 40;

--Q5. Find employees who work in the IT department.
SELECT * FROM employee2
WHERE department = 'IT';

--Q6. Find employees whose salary is between 50,000 and 70,000.
SELECT * FROM employee2
WHERE salary BETWEEN 50000 AND 70000;

--Q7. Find employees whose department is IT, HR, or Operations using IN.
SELECT * FROM employee2
WHERE department IN ('IT', 'HR');

--Q8. Find employees whose first name starts with A using LIKE.
SELECT * FROM employee2
WHERE first_name LIKE 'A%';

--Q9. Find employees whose first name ends with n using LIKE.
SELECT * FROM employee2
WHERE first_name LIKE '%n';

--Q10. Find employees whose age is between 30 and 40.
SELECT * FROM employee2
WHERE age BETWEEN 30 AND 40;


-------Level 2 — Logical + Sorting-------


--Q11. Find employees whose salary is greater than 60,000 AND age is greater than 40.
SELECT * FROM employee2
WHERE salary > 60000 AND age > 40;

--Q12. Find employees who work in IT OR HR.
SELECT * FROM employee2
WHERE department IN('IT', 'HR');

--Q13. Find employees whose salary is less than 40,000 OR greater than 80,000.
SELECT * FROM employee2
WHERE salary < 40000 OR salary > 80000;

--Q14. Display employees in ascending order of salary.
SELECT * FROM employee2
ORDER BY salary ASC;

--Q15. Display employees in descending order of salary.
SELECT * FROM employee2
ORDER BY salary DESC;

--Q16. Display the 10 highest-paid employees.
SELECT MAX(salary)
FROM employee2
O
LIMIT 10;