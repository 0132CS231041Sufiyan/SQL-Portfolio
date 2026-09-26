CREATE TABLE employees8(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	department VARCHAR(50),
	city VARCHAR(50),
	salary INT,
	age INT
);

INSERT INTO employees8(id, name, department, city, salary, age)
VALUES (1, 'Amit', 'IT', 'Delhi', 45000, 24),
	   (2, 'Neha', 'HR', 'Mumbai', 35000, 27),
	   (3, 'Ravi', 'IT', 'Hyderabad', 55000, 29),
	   (4, 'Anjali', 'Sales', 'Delhi', 40000, 25),
	   (5, 'Suresh', 'HR', 'Hyderabad', 30000, 31),
	   (6, 'Priya', 'Sales', 'Mumbai', 50000, 28),
 	   (7, 'Rahul', 'IT', 'Delhi', 60000, 32),
	   (8, 'Pooja', 'Sales', 'Hyderabad', 45000, 26),
	   (9, 'Arjun', 'HR', 'Delhi', 38000, 24),
	   (10, 'Simran', 'IT', 'Mumbai', 52000, 30);


----------Round 1 — Basic----------


--Q1. Display all employees.
SELECT * FROM employees8;

--Q2. Display only name and salary.
SELECT name, salary
FROM employees8;

--Q3. Find employees whose salary is greater than 45,000.
SELECT name, salary
FROM employees8
WHERE salary > 45000;

--Q4. Find employees who belong to the IT department.
SELECT name, department
FROM employees8
WHERE department = 'IT';

--Q5. Find employees from Delhi.
SELECT name, city
FROM employees8
WHERE city = 'Delhi';

--Q6. Find employees whose salary is between 35,000 and 50,000.
SELECT name, salary
FROM employees8
WHERE salary BETWEEN 35000 AND 50000;

--Q7. Find employees whose name starts with A.
SELECT name 
FROM employees8
WHERE name LIKE 'A%';

--Q8. Display employees in descending order of salary.
SELECT name, salary
FROM employees8
ORDER BY salary DESC;


----------Round 2 — Aggregate + GROUP BY----------


--Q9. Find the total number of employees.
SELECT COUNT(*) AS total_employees
FROM employees8;

--Q10. Find the total salary of all employees.
SELECT SUM(salary) AS total_salary
FROM employees8;

--Q11. Find the average salary.
SELECT AVG(salary) AS avg_salary
FROM employees8;

--Q12. Find the highest salary.
SELECT MAX(salary) AS highest_salary
FROM employees8;

--Q13. Find the lowest salary.
SELECT MIN(salary) AS lowest_salary
FROM employees8;

--Q14. Find the number of employees in each department.
SELECT department, COUNT(*) AS each_department
FROM employees8
GROUP BY department;

--Q15. Find the average salary of each department.
SELECT department, AVG(salary) AS avg_salary
FROM employees8
GROUP BY department;

--Q16. Find departments having more than 2 employees.
SELECT department, COUNT(*) AS top_2_emp
FROM employees8
GROUP BY department
HAVING COUNT(*) > 2;


----------Round 3 — Interview Practice----------


--Q17. Find the employee with the highest salary.
SELECT name, salary
FROM employees8
ORDER BY salary DESC
LIMIT 1;

--Q18. Find the second-highest salary.
SELECT name, salary 
FROM employees8
ORDER BY salary DESC
OFFSET 1
LIMIT 1;

--Q19. Find the highest salary in each department.
SELECT department, MAX(salary) AS highest_salary
FROM employees8
GROUP BY department 
ORDER BY department DESC;

--Q20. Find employees whose salary is greater than the average salary of all employees.
SELECT salary, AVG(salary) AS avg_salary
FROM employees8
WHERE
--Q21. Find the department having the highest average salary.
--Q22. Find the number of employees in each city.
--Q23. Find the highest-paid employee from each city.
--Q24. Create a salary category using CASE:
--     High → salary >= 50,000
--     Medium → salary 35,000–49,999
--     Low → salary < 35,000