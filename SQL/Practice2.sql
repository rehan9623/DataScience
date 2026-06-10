CREATE DATABASE college;
USE college;
CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
    );
INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101,"Anil",78,"B","Pune"),    
(102,"Nikhil",79,"B","Mumbai"),    
(103,"Rehan",88,"A","Lucknow"),    
(104,"Adil",98,"O","Delhi"),    
(105,"Sadique",68,"C","Kolkata");

SELECT * FROM student;
SELECT distinct city FROM student;
SELECT * FROM student WHERE marks>80;
SELECT * FROM student WHERE city="Mumbai";
SELECT * 
FROM student 
WHERE marks>60 AND city="Mumbai";
SELECT * 
FROM student 
WHERE marks+10 > 100;
SELECT * 
FROM student 
WHERE marks < 90;
SELECT * 
FROM student 
WHERE marks>80 OR city="Mumbai";
SELECT * 
FROM student 
WHERE marks BETWEEN 80 AND 90;
SELECT * 
FROM student 
WHERE city IN ("Delhi","Mumbai");
SELECT * 
FROM student 
WHERE city IN ("Delhi","Mumbai","Banglore");
SELECT * 
FROM student 
WHERE city NOT IN ("Delhi","Mumbai");
SELECT * 
FROM student 
WHERE marks > 60
LIMIT 3;
SELECT * 
FROM student 
ORDER BY city ASC;
SELECT * 
FROM student 
ORDER BY MARKS ASC;
SELECT * 
FROM student 
ORDER BY MARKS DESC
LIMIT 3;
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT SUM(marks) FROM student;
SELECT COUNT(rollno) FROM student;
SELECT COUNT(name) FROM student;
SELECT city, count(rollno)
FROM student
GROUP BY city;
SELECT city, avg(rollno)
FROM student
GROUP BY city;
SELECT city, count(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

SET SQL_SAFE_UPDATES = 0;
UPDATE student
SET grade = "O"
WHERE grade = "A";
SELECT * FROM student;

UPDATE student
SET marks = marks + 1;

DELETE FROM student 
WHERE marks < 33;
CREATE DATABASE office;
USE office;
CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
foreign key (dept_id) REFERENCES dept(id)
); 
SELECT * FROM teacher;
ALTER TABLE teacher
CHANGE name full_name VARCHAR(50) ;
