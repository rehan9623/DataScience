CREATE DATABASE school;
USE school;
CREATE TABLE student(
stud_id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL,
marks INT ,
city VARCHAR(20)
);
SELECT * FROM student;
INSERT INTO student(stud_id,name,age,marks,city) VALUES 
	(101,"Rehan",20,98,"Mumbai"),
    (102,"Zoya",21,65,"Lucknow"),
    (103,"Hazim",28,70,"Banglore"),
    (104,"Ammar",25,67,"Pune"),
    (105,"Sadique",75,98,"Pune"),
    (106,"Ashhar",21,87,"Mumbai"),
    (107,"Awais",20,95,"Pune"),
    (108,"Ali",18,45,"Banglore"),
    (109,"Anzal",25,55,"Mumbai");
-- Write a query to display all students.    
SELECT * FROM student;    
-- Display only name and marks.
SELECT name,marks FROM student;
-- Find students whose marks are greater than 75.
SELECT * FROM student WHERE marks > 75;
-- Display students from Mumbai.
SELECT * FROM student WHERE city = "Mumbai";
-- Sort students by marks in descending order.
SELECT * FROM student ORDER BY marks DESC;
-- Show top 5 highest scorers.
SELECT * FROM student ORDER BY marks ASC LIMIT 5;
-- Find students whose age is between 18 and 22.
SELECT * FROM student WHERE age BETWEEN 18 and 22;
-- Display students whose name starts with 'A'.
SELECT * FROM student WHERE name LIKE 'A%';
ALTER TABLE student ADD stream VARCHAR(20);
SELECT * FROM student;
UPDATE student SET stream = 'IT'  WHERE stud_id = 101;
UPDATE student SET stream = 'CS'  WHERE stud_id = 102;
UPDATE student SET stream = 'BMS' WHERE stud_id = 103;
UPDATE student SET stream = 'IT'  WHERE stud_id = 104;
UPDATE student SET stream = 'CS'  WHERE stud_id = 105;
UPDATE student SET stream = 'IT'  WHERE stud_id = 106;
UPDATE student SET stream = 'BMS' WHERE stud_id = 107;
UPDATE student SET stream = 'CS'  WHERE stud_id = 108;
UPDATE student SET stream = 'IT'  WHERE stud_id = 109;
DROP TABLE student;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student VALUES
(101,"Rehan",98,"A","Mumbai"),
(102,"Zoya",65,"C","Lucknow"),
(103,"Hazim",70,"B","Banglore"),
(104,"Ammar",67,"C","Pune"),
(105,"Sadique",98,"A","Pune"),
(106,"Ashhar",87,"A","Mumbai"),
(107,"Awais",95,"A","Pune"),
(108,"Ali",45,"D","Banglore"),
(109,"Anzal",55,"C","Mumbai");
SELECT * FROM student;
SELECT DATABASE();
USE school;
SELECT * FROM student;
-- Display students whose age is 20 and department is IT
SELECT * FROM student WHERE age > 20 AND stream = 'IT'; 
-- Display students whose age is 18 or 21.
SELECT * FROM student WHERE age = 18 OR age = 21;
-- Display students whose age is not 19
SELECT * FROM student WHERE age != 19;
-- Display students whose marks are greater than 60.
SELECT * FROM student WHERE marks > 60;
-- Display students whose marks are less than or equal to 45.
SELECT * FROM student WHERE marks <= 50;
-- Display students whose marks are between 50 and 80.
SELECT * FROM student WHERE marks BETWEEN 50 AND 80;
-- Display students whose name has exactly 5 characters.
SELECT * FROM student WHERE LENGTH(name) = 5;
-- Display students whose age is NULL.
SELECT *
FROM student
WHERE age IS NULL;
-- Display students whose marks are NOT NULL.
SELECT *
FROM student
WHERE marks IS NOT NULL;
USE school;
SELECT * FROM student;
-- Display students ordered by age.
SELECT * FROM student order by age ASC;
-- Display students ordered by marks in descending order.
SELECT * FROM student order by marks DESC;
-- Display top 5 students based on marks.
SELECT * FROM student order by marks DESC LIMIT 5;
-- Display youngest student.
SELECT * FROM student order by age ASC LIMIT 1;
-- Display oldest student.
SELECT * FROM student order by age DESC LIMIT 1;
-- Display total number of students.
 SELECT COUNT(*) AS total_students FROM student;
-- Display average age of students.
 SELECT AVG(age) AS average FROM student;
-- Display highest marks.
SELECT MAX(marks) AS highest_marks FROM student;
-- Display lowest marks.
SELECT MIN(marks) AS lowest_marks FROM student;
-- Display total marks of all students.
SELECT SUM(marks) AS total_marks FROM student;
USE school;
SELECT * FROM student;
-- Display department-wise student count.
SELECT stream,COUNT(*) AS student_count
FROM student
GROUP BY stream;
-- Display department-wise average marks.
SELECT stream, AVG(marks) AS average_marks
FROM student
GROUP BY stream;
-- Display departments having more than 3 students.
SELECT stream, COUNT(*) AS student_count
FROM student
GROUP BY stream
HAVING COUNT(*) > 3;
-- Display department-wise highest marks.
SELECT stream, MAX(marks) AS highest_marks
FROM student
GROUP BY stream;
-- Display department-wise lowest marks.
SELECT stream, MIN(marks) AS lowest_marks
FROM student
GROUP BY stream;
-- Display students who failed (marks < 40).
SELECT * FROM student WHERE marks < 55;
-- Display students who passed (marks ≥ 40).
SELECT * FROM student WHERE marks > 40;
-- Display topper student.
SELECT * FROM student ORDER BY marks DESC LIMIT 1; 
-- Display second highest marks.
SELECT *
FROM student
ORDER BY marks DESC
LIMIT 1 OFFSET 1;
-- Display students scoring above average marks.
SELECT *
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);
-- Display students whose age is greater than the average age.
SELECT * FROM student WHERE age > (SELECT avg(age) FROM student);
-- Display students from departments having more than 2 students.
SELECT *
FROM student
WHERE stream IN (
    SELECT stream
    FROM student
    GROUP BY stream
    HAVING COUNT(*) > 2
);

-- Display the second highest marks.
SELECT MAX(marks) AS second_highest_marks
FROM student
WHERE marks < (SELECT MAX(marks) FROM student);

-- Display students who scored less than department average.
SELECT * FROM student WHERE marks < (SELECT AVG(marks) FROM student);
SELECT s.*
FROM student s
WHERE s.marks <
(
    SELECT AVG(marks)
    FROM student
    WHERE stream = s.stream
);

-- Display students belonging to the department with highest average marks.
SELECT *
FROM student
WHERE stream = (
    SELECT stream
    FROM student
    GROUP BY stream
    ORDER BY AVG(marks) DESC
    LIMIT 1
);

-- Display students who have the same marks as someone else.
SELECT *
FROM student
WHERE marks IN (
    SELECT marks
    FROM student
    GROUP BY marks
    HAVING COUNT(*) > 1
);
-- Display departments having students with marks above 90.
SELECT DISTINCT stream
FROM student
WHERE marks > 90;
