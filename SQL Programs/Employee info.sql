CREATE DATABASE INFOSYS;
USE INFOSYS;

CREATE TABLE employee(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	salary INT
);

INSERT INTO employee
(id,name,salary)
VALUES
(2053,"Raman",25000),
(2452,"Prakash",20000),
(2568,"John",22000);


SELECT * FROM employee;