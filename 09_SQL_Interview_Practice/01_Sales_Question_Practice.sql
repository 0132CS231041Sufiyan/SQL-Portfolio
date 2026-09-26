CREATE TABLE sales (
	sale_id INT,
	customer_name VARCHAR(50),
	city VARCHAR(30),
	product VARCHAR(50),
	category VARCHAR(30),
	quantity INT,
	price DECIMAL(10,2),
	sale_date DATE,
	payment_method VARCHAR(20)
);

INSERT INTO sales VALUES
(1, 'Amit', 'Hyderabad', 'Laptop', 'Electronics', 1, 55000, '2026-01-05', 'UPI'),
(2, 'Neha', 'Delhi', 'Mouse', 'Electronics', 2, 800, '2026-01-08', 'Card'),
(3, 'Ravi', 'Hyderabad', 'Keyboard', 'Electronics', 1, 1500, '2026-01-10', 'UPI'),
(4, 'Anjali', 'Mumbai', 'Chair', 'Furniture', 2, 4500, '2026-01-12', 'Cash'),
(5, 'Suresh', 'Delhi', 'Laptop', 'Electronics', 1, 60000, '2026-01-15', 'Card'),
(6, 'Amit', 'Hyderabad', 'Desk', 'Furniture', 1, 7000, '2026-01-18', 'UPI'),
(7, 'Neha', 'Delhi', 'Headphones', 'Electronics', 3, 2000, '2026-01-20', 'Card'),
(8, 'Ravi', 'Bangalore', 'Chair', 'Furniture', 1, 5000, '2026-01-22', 'UPI'),
(9, 'Anjali', 'Mumbai', 'Laptop', 'Electronics', 2, 58000, '2026-01-25', 'Card'),
(10, 'Suresh', 'Delhi', 'Desk', 'Furniture', 2, 6500, '2026-01-28', 'Cash'),
(11, 'Amit', 'Hyderabad', 'Headphones', 'Electronics', 2, 1800, '2026-02-02', 'UPI'),
(12, 'Ravi', 'Bangalore', 'Mouse', 'Electronics', 4, 750, '2026-02-05', 'Card'),
(13, 'Neha', 'Delhi', 'Chair', 'Furniture', 2, 4200, '2026-02-08', 'Cash'),
(14, 'Anjali', 'Mumbai', 'Desk', 'Furniture', 1, 7200, '2026-02-10', 'UPI'),
(15, 'Suresh', 'Delhi', 'Laptop', 'Electronics', 1, 62000, '2026-02-12', 'Card');

SELECT * FROM sales;


--🔥 Questions — Round 1:-Start with these without looking at any solution.

--Q1. Find the total number of sales transactions.
SELECT COUNT(*) AS total_no_sales
FROM sales;

--Q2. Display all sales where the city is Hyderabad.
SELECT customer_name, city
FROM sales
WHERE city= 'Hyderabad';

--Q3. Display sales where price is greater than 5000.
SELECT customer_name, price
FROM sales
WHERE price > 5000;

--Q4. Find the total quantity of products sold.
SELECT SUM(quantity) AS produvt_sold
FROM sales;

--Q5. Find the maximum product price.
SELECT MAX(price) AS max_product
FROM sales;

--Q6. Find the total sales amount for each transaction.
------Sales Amount = quantity × price
SELECT sale_id, (quantity * price) AS total_sales
FROM sales;

--Q7. Find the total sales amount for each city.
SELECT city, SUM(quantity * price) AS total_sales
FROM sales
GROUP BY city;

--Q8. Find the total quantity sold for each product.
SELECT product, SUM(quantity) AS total_quantity
FROM sales
GROUP BY product;

--Q9. Find cities where the total sales amount is greater than 50,000.
SELECT city, SUM(quantity * price) AS total_sale
FROM sales
GROUP BY city
HAVING SUM(quantity * price) > 50000;

--Q10. Find the average product price for each category.
SELECT category, AVG(price) AS avg_product
FROM sales
GROUP BY category;

--Q11 — Challenge:-Find the customer who generated the highest total sales amount.
SELECT customer_name, SUM(quantity * price) AS first_highest
FROM sales
GROUP BY customer_name
ORDER BY first_highest DESC
LIMIT 1;

--Q12 — Second Highest Find the second-highest product price.
SELECT price
FROM sales
ORDER BY price DESC
OFFSET 1
LIMIT 1;

--Q13: Find the highest and second-highest prices together in one result.
SELECT price
FROM sales
ORDER BY price DESC
LIMIT 2;

--Q14: Find the product with the highest total quantity sold.
SELECT product, SUM(quantity) AS highest_product
FROM sales
GROUP BY product
ORDER BY highest_product DESC
LIMIT 1;

--Q15. Find each city’s highest-value transaction.
SELECT city, MAX(quantity * price) AS highest_value
FROM sales
GROUP BY city
ORDER BY highest_value DESC
LIMIT 1;