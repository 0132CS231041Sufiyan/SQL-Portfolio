CREATE TABLE student_2023(
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

SELECT * FROM student_2023;

INSERT INTO student_2023 (student_id, student_name, course)
VALUES (1, 'Mohammad Sufiyan', 'Computer Science'),
	   (2, 'Mohammad Arif', 'Computer Science'),
	   (3, 'Md Tousif', 'Mechanical Engineering'),
	   (4, 'Alisha Parween', 'Electronics'),
	   (5, 'Md Modassir', 'Civil');


CREATE TABLE student_2024 (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(100),
	course VARCHAR(50)
);

SELECT * FROM student_2024;

INSERT INTO student_2024 (student_id, student_name, course)
VALUES (3, 'Md Tousif', 'Mechanical Engineering'), --Same as student_2023
	   (4, 'Alisha Parween', 'Electronics'),       --Same as student_2023
	   (6, 'Md Hedaytullah', 'Computer Science'),
	   (7, 'Afreen Parween', 'Mathematics'),
	   (8, 'Mukan Parween', 'Physics');
	   

-------SET OPERATOR-------

---01 UNION:-Combines results and removes duplicates
SELECT * FROM student_2023
UNION
SELECT * FROM student_2024;


---02 UNION ALL:-Combines results and keeps duplicates
SELECT * FROM student_2023
UNION ALL
SELECT * FROM student_2024;

---03 INTERSECT:-Returns rows that appear in both queries
SELECT * FROM student_2023
INTERSECT
SELECT * FROM student_2024;

---04 EXCEPT / MINUS:-Returns rows from the first query that are not in the second
SELECT * FROM student_2023
EXCEPT
SELECT * FROM student_2024;