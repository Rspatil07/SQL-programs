CREATE DATABASE joins;
USE joins;


CREATE TABLE emp1 (
	id INT PRIMARY KEY,
    name VARCHAR (50)
    );
    
INSERT INTO emp1
(id,name)
VALUES
(01,"Ashish"),
(02,"Bhuvan"),
(03,"Amit"),
(04,"Carry"),
(11,"Payal"),
(12,"Harsh");

SELECT * FROM emp1;


CREATE TABLE emp2 (
	id INT PRIMARY KEY,
    position VARCHAR(50)
    );
    
INSERT INTO emp2 
(id,position)
VALUES
(01,"Manager"),
(02,"HR"),
(03,"Developer"),
(04,"Designer"),
(05,"Intern"),
(06,"Blogger");

SELECT * FROM emp2;



SELECT *
FROM emp1 AS a
INNER JOIN emp2 AS b
ON a.id=b.id;


SELECT *
FROM emp1 AS a
LEFT JOIN emp2 AS b
ON a.id=b.id;

SELECT *
FROM emp1 AS a
LEFT JOIN emp2 AS b
ON a.id=b.id
WHERE b.id IS NULL;



SELECT *
FROM emp1 AS a
RIGHT JOIN emp2 AS b
ON a.id=b.id;

SELECT *
FROM emp1 AS a
RIGHT JOIN emp2 AS b
ON a.id=b.id
WHERE a.id IS NULL;



SELECT * 
FROM emp1 AS a
LEFT JOIN emp2 AS b
ON a.id=b.id
UNION
SELECT *
FROM emp1 AS a
RIGHT JOIN emp2 AS B
ON a.id=b.id;



CREATE TABLE company(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
    );
    
INSERT INTO company
(id,name,manager_id)
VALUES
(101,"Ashish",102),
(102,"Bhuvan",NULL),
(103,"Amit",101),
(104,"Carry",102);
    
    
SELECT a.name as manager_name,b.name as employee_name
FROM company AS a
JOIN company AS b
ON a.id=b.manager_id;
