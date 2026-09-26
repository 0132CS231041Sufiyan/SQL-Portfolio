--Drop the table if it already exists
DROP TABLE IF EXISTS users;

--Create the users table
CREATE TABLE IF NOT EXISTS users(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INT,
	city VARCHAR(100)
);

--Display data
SELECT * FROM users;

--Insert 5 sample users into the users table 
INSERT INTO users(username, email, age, city) VALUES
	('Mohammad Sufiyan', 'mohammadsufiyan@gmail.com', 21, 'Gaya'),
	('Mohammad Arif', 'mohammadarif@gmail.com', 24, 'Gopalganj'),
	('Alisha Praween', 'alisha@gmail.com', 20, 'Koderma'),
	('Mohammad Atique', 'mohammadatique@gmail.com', 23, 'Patna'),
	('Muskan Parween', 'muskan@gmail.com', 22, 'Delhi');

--Update command
UPDATE users
SET age=25
WHERE username='Mohammad Sufiyan';

--Ascending command
SELECT * FROM users ORDER BY user_id ASC;

UPDATE users
SET city='Hyderabad'
WHERE username='Mohammad Sufiyan';

UPDATE users
SET age=19, city='Kolkata'
WHERE username='Alisha Praween';

UPDATE users
SET username='Alisha Parween'
WHERE user_id=3;

UPDATE users 
SET age=age+1
WHERE email LIKE '%@gmail.com';