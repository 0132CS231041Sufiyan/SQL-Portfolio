CREATE TABLE employees7(
	employee_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	department VARCHAR(59),
	salary INT,
	joining_date DATE
);

INSERT INTO employees7 (employee_id, first_name, last_name, department, salary, joining_date)
VALUES (1, 'Amit', 'Sharma', 'IT', 55000, '2022-01-10'),
	   (2, 'Neha', 'Patel', 'HR', 45000, '2021-06-15'),
	   (3, 'Ravi', 'Kumar', 'IT', 65000, '2023-03-20'),
       (4, 'Anjali', 'Verma', 'Sales', 50000, '2022-11-05'),
	   (5, 'Suresh', 'Singh', 'HR', 60000, '2024-01-12'),
	   (6, 'Priya', 'Mehta', 'IT', 72000, '2021-09-18'),
	   (7, 'Rahul', 'Gupta', 'Sales', 48000, '2023-05-10'),
	   (8, 'Pooja', 'Joshi', 'HR', 52000, '2022-07-22'),
	   (9, 'Vikas', 'Rao', 'Finance', 68000, '2020-04-15'),
	   (10, 'Sneha', 'Jain', 'Finance', 75000, '2019-12-10');


----------🟢 BASIC — 1 to 10----------


--Q1. Display all employees.
SELECT * FROM employees7;

--Q2. Display only first_name, department, and salary.
SELECT first_name, department, salary
FROM employees7;

--Q3. Find employees whose salary is greater than 50,000.
SELECT first_name, salary
FROM employees7
WHERE salary > 50000;

--Q4. Find employees who work in the IT department.
SELECT first_name, department
FROM employees7
WHERE department = 'IT';

--Q5. Find employees whose salary is between 50,000 and 70,000.
SELECT first_name, salary
FROM employees7
WHERE salary BETWEEN 50000 AND 70000;

--Q6. Find employees who joined after 2022-01-01.
SELECT first_name, joining_date
FROM employees7
WHERE joining_date > '2022-01-01';

--Q7. Find employees whose name starts with A.
SELECT first_name, last_name
FROM employees7
WHERE first_name LIKE 'A%';

--Q8. Find employees whose name contains a.
SELECT first_name, last_name
FROM employees7
WHERE first_name LIKE '%a%';

--Q9. Display all employees ordered by salary from highest to lowest.
SELECT first_name, salary
FROM employees7
ORDER BY salary DESC;

--Q10. Display the top 3 highest-paid employees.
SELECT first_name, salary
FROM employees7
ORDER BY salary DESC
LIMIT 3;


----------🟡 INTERMEDIATE — 11 to 20----------


--Q11. Find the total number of employees.
SELECT count(employee_id) AS total_employee
FROM employees7;

--Q12. Find the total salary of all employees.
SELECT SUM(salary) AS total_salary
FROM employees7;

--Q13. Find the average salary.
SELECT AVG(salary) AS avg_salary
FROM employees7;

--Q14. Find the highest salary.
SELECT MAX(salary) AS highest_salary
FROM employees7;

--Q15. Find the lowest salary.
SELECT MIN(salary) AS lowest_salary
FROM employees7;

--Q16. Find the number of employees in each department.
SELECT department, COUNT(*) AS employee_count
FROM employees7
GROUP BY department;

--Q17. Find the average salary of each department.
SELECT department, AVG(salary) AS avg_salary
FROM employees7
GROUP BY department;

--Q18. Find the maximum salary in each department.
SELECT department, MAX(salary) AS highest_salary
FROM employees7
GROUP BY department;

--Q19. Find departments having more than 2 employees.
SELECT department, COUNT(*) AS employee_count
FROM employees7
GROUP BY department
HAVING COUNT(*) > 2;

--Q20. Find departments whose average salary is greater than 55,000.
SELECT department, AVG(salary) AS avg_salary
FROM employees7
GROUP BY department
HAVING AVG(salary) > 55000;


----------🟠 ADVANCED — 21 to 30----------


/*Q21. Create a salary category using CASE:
        >= 70,000 → High
		>= 50,000 → Medium
		< 50,000 → Low */
SELECT first_name, salary,
	CASE
		WHEN salary >= 70000 THEN 'High'
		WHEN salary >= 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_category
FROM employees7;

--Q22. Display each employee's full name using CONCAT().
SELECT first_name, last_name, 
	CONCAT(first_name, ' ',last_name) AS full_name
FROM employees7;

--Q23. Display all employee names in uppercase.
SELECT UPPER(first_name) AS uppercase
FROM employees7;

--Q24. Display the length of each employee's first name.
SELECT LENGTH(first_name) AS name_length
FROM employees7;

--Q25. Extract the joining year from joining_date.
SELECT first_name, joining_date,
	EXTRACT(YEAR FROM joining_date) AS joining_year
FROM employees7;

--Q26. Find employees who joined in 2022.
SELECT first_name, joining_date
FROM employees7
WHERE EXTRACT(YEAR FROM joining_date) = 2022;

--Q27. Find the employee with the second-highest salary.
SELECT MAX(salary) AS second_highest
FROM employees7
WHERE salary < (
	SELECT MAX(salary)
	FROM employees7
);

--Q28. Find employees earning more than the average salary.
SELECT first_name, salary
FROM employees7
WHERE salary > (
	SELECT AVG(salary)
	FROM employees7
);

--Q29. Rank all employees according to salary using RANK().
SELECT first_name, salary,
	RANK() OVER (ORDER BY salary DESC) AS rank
FROM employees7;

--Q30. Find the highest-paid employee from each department using a window function.
--1st Query
SELECT first_name, department, salary,
	MAX(salary) OVER (PARTITION BY department) AS highest_paid
FROM employees7;


--2nd Query
SELECT first_name, department, salary
FROM (
    SELECT first_name, department, salary,
           RANK() OVER (
               PARTITION BY department
               ORDER BY salary DESC
           ) AS salary_rank
    FROM employees7
) AS ranked
WHERE salary_rank = 1;	   