CREATE DATABASE school;
USE school; 

CREATE TABLE student (
	rollno INT PRIMARY KEY,
	name VARCHAR(50),
	marks INT NOT NULL,
	grade VARCHAR(10),
	city VARCHAR(50)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(1,"John Walker",65,"D","Nagpur"),
(2,"Sam Curren",74,"C","Pune"),
(3,"Vijay Mane",88,"B","Mumbai"),
(4,"Neha Jadhav",52,"F","Pune"),
(5,"Prem Raut",85,"B","Solapur"),
(6,"Anshika Rao",98,"A","Hydrabad"),
(7,"Rohan Powar",91,"A","Mumbai"),
(8,"Vishali Dafe",71.52,"C","Kolhapur"),
(9,"Nayan Kale",48.8,"F","Nanded"),
(10,"Omkar Pal",36.25,"F","Latur"),
(11,"Snehal Lakve",80,"B","Pune"),
(12,"Pooja Vatkar",59,"E","Kolhapur"),
(13,"Priya karande",68.4,"D","Delhi"),
(14,"Rutuja Yadav",87,"B","Latur"),
(15,"Nikita Kurde",95,"A","Delhi");

SELECT DISTINCT grade FROM student;            
    
SELECT name, grade FROM student;

SELECT * FROM student WHERE marks > 80;

SELECT * FROM student WHERE city = "Mumbai";

SELECT * FROM student WHERE marks > 70 AND city = "Pune";
SELECT * FROM student WHERE marks < 50 OR city = "Kolhapur";
SELECT * FROM student WHERE marks BETWEEN 60 AND 75;

SELECT * FROM student WHERE city IN ("Pune","Solapur");
SELECT * FROM student WHERE city NOT IN ("Delhi","Nagpur");

SELECT * FROM student WHERE marks+10 > 100;


SELECT * FROM student LIMIT 5;
SELECT * FROM student WHERE marks > 75 LIMIT 5;

SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks DESC;


SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(rollno) FROM student;


SELECT city, count(rollno) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city;


