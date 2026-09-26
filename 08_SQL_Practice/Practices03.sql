CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    age INT
);

INSERT INTO employees
(first_name, last_name, department, salary, joining_date, age)
VALUES
('Amit', 'Sharma', 'IT', 60000, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000, '2021-08-15', 32),
('Ravi', 'Kumar', 'IT', 75000, '2020-03-10', 35),
('Pooja', 'Singh', 'HR', 50000, '2023-01-20', 27),
('Rahul', 'Verma', 'IT', 65000, '2021-11-05', 31),
('Sana', 'Khan', 'Sales', 45000, '2024-06-12', 25);

SELECT * FROM employees4;