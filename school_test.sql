CREATE DATABASE School;

USE School

CREATE TABLE Classes (
Class_ID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
Class_Name VARCHAR(50) NOT NULL
);

CREATE TABLE Students (
Student_ID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
Student_Name VARCHAR(50) NOT NULL,
Class_ID INT NOT NULL,
Instructor_ID INT NOT NULL

);

CREATE TABLE Instructors (
Instructor_ID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
Instructor_Name VARCHAR(50) NOT NULL
);

INSERT INTO Classes
    (Class_Name)
    VALUES
    ('Software Developer Boot Camp'),
    ('C# Boot Camp');

INSERT INTO Instructors
    VALUES
    ('Joe Smith'),
    ('Melanie Baker');

SELECT * FROM Students
SELECT * FROM Classes
SELECT * FROM Instructors

DROP TABLE Students


	INSERT INTO Students

    VALUES
    ('Charissa D.', 1, 1),
    ('Gabe P.', 2, 2),
    ('Jason K.', 2, 2),
    ('Emily B.', 1, 1),
    ('Angie C.', 2, 2),
    ('Shaun P.', 1, 1);


SELECT * FROM Instructors

SELECT * FROM STUDENTS ORDER BY Student_Name ASC;


-Display all classes with students and instructors assigned to each-
SELECT * FROM Classes
	


