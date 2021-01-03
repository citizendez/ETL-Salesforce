DROP TABLE IF EXISTS class;
CREATE table class(
ID_Class INT NOT NULL AUTO_INCREMENT,
ID_Course INT NOT NULL,
Section VARCHAR(20),
StartDate DATE,
EndDate DATE,
PRIMARY KEY(ID_Class),
FOREIGN KEY class_ID_Course(ID_Course)
REFERENCES course(ID_Course)
);

DROP TABLE IF EXISTS course;
CREATE table course(
ID_Course INT NOT NULL AUTO_INCREMENT,
CourseCode VARCHAR(20),
CourseName VARCHAR(50),
CreditHours INT,
BootCampCourse TINYINT,
PRIMARY KEY(ID_Course)
);

DROP TABLE IF EXISTS student;
CREATE table student(
ID_Student INT NOT NULL AUTO_INCREMENT,
StudentID VARCHAR(20),
LastName VARCHAR(50),
FirstName VARCHAR(50),
MiddleName VARCHAR(50),
BirthDate DATE,
Gender CHAR(1),
PRIMARY KEY(ID_Student)
);

DROP TABLE IF EXISTS staff;
CREATE table staff(
ID_Staff INT NOT NULL AUTO_INCREMENT,
EmployeeID VARCHAR(20),
LastName VARCHAR(50),
FirstName VARCHAR(50),
MiddleName VARCHAR(50),
BirthDate DATE,
PRIMARY KEY(ID_Staff)
);

DROP TABLE IF EXISTS classparticipant;
CREATE table classparticipant(
ID_Classparticipant INT NOT NULL AUTO_INCREMENT,
ID_Student INT,
ID_Class INT,
StartDate DATE,
EndDate DATE,
PRIMARY KEY(ID_Classparticipant),
FOREIGN KEY cp_ID_Student(ID_Student)
REFERENCES student(ID_Student),
FOREIGN KEY cp_ID_Class(ID_Class)
REFERENCES class(ID_Class)
);


DROP TABLE IF EXISTS staffassignment;
CREATE table staffassignment(
ID_Staffassignment INT NOT NULL AUTO_INCREMENT,
ID_Staff INT,
ID_Class INT,
Role VARCHAR(50),
StartDate DATE,
EndDate DATE,
PRIMARY KEY(ID_Staffassignment),
FOREIGN KEY sa_ID_Staff(ID_Staff)
REFERENCES staff(ID_Staff),
FOREIGN KEY sa_ID_Class(ID_Class)
REFERENCES class(ID_Class)
);