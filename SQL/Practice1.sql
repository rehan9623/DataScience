CREATE DATABASE google;
USE google;
CREATE TABLE employee(
emp_id INT PRIMARY KEY,
name VARCHAR(50),
salary INT NOT NULL
);
SHOW databases;
SHOW TABLES;
SELECT * FROM employee;
INSERT INTO employee values (101,"REHAN",25000);
INSERT INTO employee
(emp_id,name,salary) values
(102,"ZOYA",30000);
INSERT INTO employee values (103,"SADIQUE",15000);
INSERT INTO employee values (104,"ASHHAR",25000);
INSERT INTO employee values (105,"AMMAR",25000);
SELECT * FROM employee;
