CREATE TABLE Subject(
   	id VARCHAR(10) PRIMARY KEY,
    rollno INT,
    subname VARCHAR(20),
    marks INT
);
 
CREATE TABLE Student(
  	id VARCHAR(10),
    rollno INT,
    sname VARCHAR(20),
    address VARCHAR(50),
    FOREIGN KEY(id) REFERENCES Subject(id)
);
 
INSERT INTO Subject VALUES('A001', 001, 'Math', 93);
INSERT INTO Subject VALUES('A002', 002, 'Biology', 65);
INSERT INTO Subject VALUES('A003', 003, 'Chemistry', 80);
INSERT INTO Subject VALUES('A004', 004, 'English', 99);
INSERT INTO Subject VALUES('A005', 005, 'Physics', 70);
 
INSERT INTO Student VALUES('A004', 004, 'Shadow', 'Bhubaneswar');
INSERT INTO Student VALUES('A003', 003, 'Count', 'Ranchi');
INSERT INTO Student VALUES('A002', 002, 'Drack', 'Kota');
INSERT INTO Student VALUES('A001', 001, 'Tabish', 'Dumka');
 
SELECT subname, COUNT(id) AS 'Total Students' FROM Subject WHERE subname = 'Biology' GROUP BY subname;

SELECT SUM(marks) AS Total_Marks FROM SUBJECT, Student WHERE Subject.id = Student.id AND sname = 'Count';