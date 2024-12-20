CREATE DATABASE university;
USE university; 

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
(8,"Vishali Dafe",71 ,"C","Kolhapur"),
(9,"Nayan Kale",48,"F","Nanded"),
(10,"Omkar Pal",36,"F","Latur"),
(11,"Snehal Lakve",80,"B","Pune"),
(12,"Pooja Vatkar",59,"E","Kolhapur"),
(13,"Priya karande",68,"D","Delhi"),
(14,"Rutuja Yadav",87,"B","Latur"),
(15,"Nikita Kurde",95,"A","Delhi");

SELECT * FROM student;


ALTER TABLE student ADD COLUMN age INT NOT NULL DEFAULT 20;

ALTER TABLE student DROP COLUMN age;

ALTER TABLE student RENAME TO Id;
ALTER TABLE Id RENAME TO student;

ALTER TABLE student CHANGE COLUMN rollno Id INT;
ALTER TABLE student CHANGE COLUMN Id rollno INT;

ALTER TABLE student MODIFY marks VARCHAR(3);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(17,"Gargi Wagh",100,"B","Satara");


TRUNCATE TABLE student;            "Its Deletes the only data in the table"


