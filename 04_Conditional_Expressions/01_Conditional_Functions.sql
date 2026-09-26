SELECT * FROM products;

-------Conditional Functions in SQL--------
--Definition:-Conditional functions are SQL functions or expressions used to return different results based on a condition.

--01. CASE:-CASE checks conditions and returns a result when a condition is true
/*01. Ques:-Expensive if the price is greater than or equal to 50,000. 
  02. Ques:-Moderate if the price is between 10,000 and 49, 999.
  03. Ques:-Affordable if the price is less than 10,000.*/

SELECT product_name, price,
	CASE
		WHEN price >= 50000 THEN 'Expensive'
		WHEN price >= 10000 AND price <= 49999 THEN 'Moderate'
		ELSE 'Affordable'
	END AS price_category
FROM products;

--02. COALESCE():- returns the first non-NULL value from a list of expressions.
ALTER TABLE products
ADD COLUMN discount_price NUMERIC(10, 2);

UPDATE products
SET discount_price = NULL
WHERE product_name IN ('Laptop', 'Desk');

UPDATE products
SET discount_price = price*0.9
WHERE product_name NOT IN ('Laptop', 'Desk');

SELECT product_name, price, discount_price
FROM products;

SELECT product_name,
	COALESCE(discount_price, price) AS final_price
FROM products;