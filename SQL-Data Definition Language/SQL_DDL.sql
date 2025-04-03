CREATE database Training;
USE Training;

CREATE table Student(
      StudentID INT PRIMARY KEY,
      FirstName VARCHAR(50),
      LastName VARCHAR(50),
      EmailAddress VARCHAR(50),
      PhoneNumber VARCHAR(15),
      DateofBirth DATE
);

CREATE TABLE Course(
       CourseID INT PRIMARY KEY,
       CourseDescription TEXT,
       Capacity INT,
       CourseDuration DATE
);

CREATE TABLE Program(
        ProgramID INT PRIMARY KEY,
        ProgramDescription TEXT,
        StartDate DATE,
        EndDate DATE
);

CREATE TABLE Instructor(
        InstructorID INT PRIMARY KEY,
        FirstName VARCHAR(50),
        LastName VARCHAR(50),
        EmailAddress VARCHAR(50),
        ContactNumber VARCHAR(15)
);

CREATE TABLE student_Course(
       StudentID INT,
       CourseID INT,
       DateofCompletion DATE,
       Grade VARCHAR(2),
       PRIMARY KEY(StudentID, CourseID),
       FOREIGN KEY(StudentID) REFERENCES student(StudentID),
       FOREIGN KEY(CourseID) REFERENCES Course(CourseID)
);

CREATE TABLE Instructor_Course(
        CourseID INT,
        InstructorID INT,
        StartDate DATE,
        EndDate DATE,
        PRIMARY KEY(CourseID, InstructorID),
        FOREIGN KEY(CourseID) REFERENCES Course(CourseID),
        FOREIGN KEY(InstructorID) REFERENCES Instructor(InstructorID)
);

ALTER TABLE Course 
ADD COLUMN ProgramID INT, 
ADD FOREIGN KEY (ProgramID) REFERENCES Program(ProgramID);

