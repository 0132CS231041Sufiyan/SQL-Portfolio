SELECT * FROM products;

/*1. What is a Window Function?
A Window Function performs a calculation across a set of rows related to
the current row without combining those rows into a single row.*/


----------Ranking Functions----------


--01. ROW_NUMBER():-Assigns a unique sequential number to each row.
SELECT product_name, category, price,
	ROW_NUMBER() OVER (ORDER BY price DESC) AS row_num
FROM products;

--02. PARTITION BY:-PARTITION BY divides the rows into groups for the window calculation.
SELECT product_name, category, price,
    ROW_NUMBER() OVER (PARTITION BY category ORDER BY price DESC) AS partition_rank
FROM products;

--03. RANK():-Gives the same rank to equal values, but leaves gaps after ties.
SELECT product_name, category, price,
	RANK() OVER (ORDER BY price DESC) AS rank
FROM products;

--04. DENSE_RANK():-Also gives the same rank to equal values, but does not leave gaps.
SELECT product_name, category, price,
	DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS dense_rank
FROM products;

--05. NTILE():-NTILE() divides the rows into a specified number of groups/buckets.
SELECT product_name, price,
	NTILE(3) OVER (ORDER BY price DESC) AS buckets
FROM products;


----------Value Functions----------


--1. LAG():-gives you the value from the previous row.
SELECT product_name, category, price,
    LAG(price) OVER (PARTITION BY category ORDER BY price DESC) AS previous_price
FROM products;

--02. LEAD():-LEAD() gives you the value from the next row.
SELECT product_name, category, price,
	LEAD(price) OVER (PARTITION BY category ORDER BY price DESC) AS next_price
FROM products;

--3. FIRST_VALUE():-FIRST_VALUE() returns the first value in the window.
SELECT product_name, category, price,
	FIRST_VALUE(price) OVER (PARTITION BY category ORDER BY price DESC) AS highest_price
FROM products;

--4. LAST_VALUE():-LAST_VALUE() returns the last value in the window.
SELECT product_name, category, price,
	LAST_VALUE(price) OVER (PARTITION BY category ORDER BY price DESC  ROWS BETWEEN UNBOUNDED PRECEDING 
        AND UNBOUNDED FOLLOWING) AS lowest_price
FROM products;


----------Aggregate Window Functions----------


--01. SUM() — Total price by category
SELECT product_name, category, price,
	SUM(price) OVER(PARTITION BY category) AS category_total
FROM products;

--02. AVG() — Average price by category
SELECT product_name, category, price,
	AVG(price) OVER(PARTITION BY category) AS avg_price
FROM products;

--03. COUNT() — Number of products in each category
SELECT product_name, category, price,
	COUNT(price) OVER(PARTITION BY category) AS product_count
FROM products;

--04. MIN() — Lowest price in category
SELECT product_name, category, price,
	MIN(price) OVER(PARTITION BY category) AS lowest_price
FROM products;

--05. MAX() — Highest price in category
SELECT product_name, category, price,
	MAX(price) OVER(PARTITION BY category) AS highest_price
FROM products;