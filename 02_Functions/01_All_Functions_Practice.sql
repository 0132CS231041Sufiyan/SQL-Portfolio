DROP TABLE IF EXISTS products;

CREATE TABLE products (
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC(10, 2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5, 2)
);

SELECT * FROM products;

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate)
VALUES ('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
	   ('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
	   ('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
	   ('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
	   ('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
	   ('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
	   ('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.00),
	   ('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
	   ('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
	   ('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


-------01. Aggregate Functions:-Work on multiple rows and return one result.-------


--01. SUM() — Calculates the total of numeric values.
SELECT SUM(quantity) AS total_quantity
FROM products;

SELECT SUM(quantity) AS quantity_of_electronics
FROM products
WHERE category = 'Electronics' AND price > 20000;

--02. COUNT() — Counts the number of rows or non-NULL values.
SELECT COUNT(*) AS total_product
FROM products;

SELECT COUNT(*) AS total_phone_product
FROM products
WHERE product_name LIKE '%phone';

--03. AVG() — Calculates the average of numeric values.
SELECT AVG(price) AS average_price
FROM products;

SELECT AVG(price) AS average_price
FROM products
WHERE category = 'Accessories' OR added_date > '2024-02-01';

--04. MAX() — Returns the highest value.
SELECT MAX(price) AS max_price
FROM products;

--05. MIN() — Returns the lowest value.
SELECT MIN(price) as min_price
FROM products;


-------02. String Functions:-Definition: String functions are used to perform operations on text or character data.-------

--01. UPPER() — Converts text into uppercase.
SELECT UPPER(category) AS upper_category
FROM products;

--02. LOWER() — Converts text into lowercase.
SELECT LOWER(category) AS lower_category
FROM products;

--03. CONCAT() — Combines two or more strings.
SELECT CONCAT(product_name, '-', category) AS concat_product
FROM products;

--04. SUBSTRING() is a string function used to extract a specific part of a string/text.
SELECT SUBSTRING(product_name, 1, 5) AS short_name
FROM products;

--05. LENGTH() — Returns the number of characters in a string.
SELECT product_name, LENGTH(product_name) AS count_of_char
FROM products;

--06. TRIM() is a string function used to remove unwanted spaces from the beginning and end of a string.
SELECT TRIM('    sufiyan    ') AS Trimmed_Text;

SELECT LENGTH(TRIM('     sufiyan    ')) AS Trimmed_Length;
SELECT LENGTH('     sufiyan    ') AS Trimmed_Length;

--07. REPLACE() is a string function used to replace a specific part of a string with another value.
SELECT REPLACE(product_name, 'phone', 'device')
FROM products;

--08. LEFT() returns a specified number of characters from the beginning (left side) of a string.
SELECT LEFT(category, 3) AS left_category
FROM products;

--09. RIGHT() returns a specified number of characters from the end (right side) of a string.
SELECT RIGHT(category, 3) AS right_category
FROM products;


-------3. Date and Time Functions:-Definition: Date and time functions are used to work with date and time values.--------

--01. NOW() is a date and time function that returns the current date and current time of the database/server.
SELECT NOW() AS current_datetime;

--02. CURRENT_DATE — Returns the current date.
SELECT CURRENT_DATE AS current_date;

SELECT added_date, current_date, (CURRENT_DATE - added_date) AS diff_day
FROM products;

--03. CURRENT_TIME — Returns the current time.
SELECT CURRENT_TIME AS current_time;

--04. EXTRACT() - is a date/time function used to extract a specific part, such as year, month, day, hour, or minute, from a date or timestamp.
SELECT product_name,
	EXTRACT(YEAR FROM added_date) AS year_added,
	EXTRACT(MONTH FROM added_date) AS month_added,
	EXTRACT(DAY FROM added_date) AS day_added
FROM products;

--05. AGE() - calculates the difference between two dates and returns the result as an interval (years, months, and days).
SELECT product_name,
	AGE(CURRENT_DATE, added_date) AS age_since_added
FROM products;

--06. TO_CHAR() is a conversion and formatting function used to convert a date, timestamp, or number into a formatted text (string).
SELECT product_name,
	TO_CHAR(added_date, 'DD-MM-YYYY') AS formate_date
FROM products;

--07. DATE_PART() - is a PostgreSQL function used to extract a specific part of a date or timestamp, such as year, month, day, hour, or minute.
SELECT product_name, added_date,
	DATE_PART('dow', added_date) AS day_of_week
FROM products;

--08. DATE_TRUNC() - is a PostgreSQL date/time function used to truncate a date or timestamp to a specified level of precision, such as year, month, day, hour, or minute.
SELECT product_name, added_date,
	DATE_TRUNC('week', added_date) AS month_start
FROM products;

--09. INTERVAL() - is a PostgreSQL data type used to represent a period of time, such as days, months, years, hours, or minutes.
SELECT product_name, added_date,
	added_date + INTERVAL '6 days' AS new_date
FROM products;

--10. TO_DATE() is a PostgreSQL function used to convert a text/string value into a DATE value according to a specified date format.
SELECT TO_DATE('28-11-2024', 'DD-MM-YYYY') AS converted_date;