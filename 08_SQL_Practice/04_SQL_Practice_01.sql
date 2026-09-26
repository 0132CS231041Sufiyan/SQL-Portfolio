CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    city VARCHAR(50),
    marks INT
);

SELECT * FROM students;

INSERT INTO students VALUES
(1, 'Aman', 21, 'Data Science', 'Delhi', 85),
(2, 'Priya', 22, 'Python', 'Mumbai', 78),
(3, 'Rahul', 20, 'Data Science', 'Hyderabad', 92),
(4, 'Neha', 21, 'SQL', 'Bhopal', 67),
(5, 'Arjun', 23, 'Python', 'Delhi', 74),
(6, 'Sneha', 20, 'SQL', 'Pune', 88),
(7, 'Vikash', 22, 'Data Science', 'Patna', 81),
(8, 'Anjali', 21, 'Python', 'Hyderabad', 95),
(9, 'Rohit', 23, 'SQL', 'Mumbai', 59),
(10, 'Kiran', 20, 'Data Science', 'Delhi', 89);

--Show name column and marks column 
SELECT name, marks FROM students;

--Show only Delhi students
SELECT * FROM students WHERE city='Delhi';

--Marks 80 se zyada wale nikalo.
SELECT * FROM students WHERE marks > 80;

--Students ko marks ke descending order mein dikhao.
SELECT * FROM students ORDER BY marks DESC;

--Rohit ke marks 59 → 65 karo.
UPDATE students SET marks = 65 WHERE name = 'Rohit';

--Kiran ka city Delhi → Jaipur karo.
UPDATE students SET city = 'Jaipur' WHERE name = 'Kiran';

--Vikash ko delete karo.
DELETE FROM students WHERE name = 'Vikash';

--students table ke name column par ek index create karo.
CREATE INDEX Sufiyan ON students(name);

DROP INDEX Sufiyan;

SELECT indexname
FROM pg_indexes
WHERE tablename = 'students';

--student_id ko PRIMARY KEY banao.
ALTER TABLE students
ADD CONSTRAINT pk_students
PRIMARY KEY (student_id);

--marks par CHECK lagao ki marks 0 se 100 ke beech hi ho.
ALTER TABLE students
ADD CONSTRAINT chk_marks
CHECK (marks BETWEEN 0 AND 100);

--name ko NOT NULL karo.
ALTER TABLE students
ALTER COLUMN name SET NOT NULL;