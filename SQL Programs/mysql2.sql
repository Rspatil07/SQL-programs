CREATE DATABASE company;
USE company; 

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

SELECT * FROM student;

SELECT name FROM student;

SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 80;

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT SUM(marks) FROM student WHERE city ="pune";
SELECT AVG(marks) FROM student WHERE city ="pune";

SELECT * FROM student ORDER BY name ASC;
SELECT * FROM student ORDER BY name DESC LIMIT 15;

SELECT city, count(name) FROM student GROUP BY city;

SELECT grade, count(name) FROM student GROUP BY grade ORDER BY grade ASC;

SELECT city FROM student GROUP BY city HAVING avg(marks) > 70 ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student SET grade = "AA" WHERE grade = "A";
UPDATE student SET name = "Rohit Patil" WHERE name ="John Walker";

DELETE FROM student WHERE marks < 40;

SELECT * FROM student;

