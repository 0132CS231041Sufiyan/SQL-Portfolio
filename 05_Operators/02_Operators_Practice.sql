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
WHERE department IN ('IT', 'HR', 'Operations');

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
SELECT *
FROM employee2
ORDER BY salary DESC
LIMIT 10;

--Q17. Display the 5 youngest employees.
SELECT *
FROM employee2
ORDER BY age ASC
LIMIT 5;

--Q18. Display all unique departments using DISTINCT.
SELECT DISTINCT department
FROM employee2;

-------Level 3 — Mathematical Operators-------

--Q19. Display each employee's salary with 5,000 added to it as new_salary.
SELECT (salary + 5000) AS new_salary
FROM employee2;

--Q20. Calculate 10% of each employee's salary as bonus.
SELECT salary * 10 / 100 AS bonus
FROM employee2;

--Q21. Display the salary divided by 12 as monthly_salary.
SELECT salary / 12 AS monthly_salary
FROM employee2;

--Q22. Display the square of each employee's age using the power operator.
SELECT age ^ 2 AS square_age
FROM employee2;

-------Level 4 — Constraints & Index-------

--Q23. Make employee_id the PRIMARY KEY.
ALTER TABLE employee2
ADD CONSTRAINT pk_employee2
PRIMARY KEY (employee_id);

--Q24. Make first_name NOT NULL.
ALTER TABLE employee2
ALTER COLUMN first_name SET NOT NULL;

--Q25. Add a CHECK constraint so that salary must be greater than 0.
ALTER TABLE employee2
ADD CONSTRAINT chk_salary
CHECK (salary > 0);

--Q26. Create an index on the first_name column.
CREATE INDEX idx_employee_first_name
ON employee2(first_name);

--Q27: Drop the index you created in Q26.
DROP INDEX idx_employee_first_name;

--Q28. Find employees who:
	-- Work in IT or HR
	-- Have salary greater than 50,000
	-- Have age between 30 and 50
    -- Sort them by salary highest to lowest
	-- Display only the top 10
SELECT * FROM employee2
WHERE department IN ('IT', 'HR')
	  AND salary > 50000
	  AND age BETWEEN 30 AND 50
	  ORDER BY salary DESC
	  LIMIT 10;

