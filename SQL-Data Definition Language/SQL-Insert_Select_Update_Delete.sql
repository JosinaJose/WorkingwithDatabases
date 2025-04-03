CREATE DATABASE Membership;
USE Membership;

CREATE TABLE Members(
MemberID INT PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName varchar(50) NOT NULL,
PhoneNumber VARCHAR(15),
EmailAddress VARCHAR(50),
City VARCHAR(30),
DateofBirth DATE NOT NULL
);

INSERT INTO Members(MemberId, FirstName, LastName, PhoneNumber, EmailAddress,city, DateofBirth)
VALUES
   (501, "Emma", "John", "123-456-7890", "emma.john@gmail.com", "Toronto", "1990-05-15"),
   (502, "Michael", "Smith", "987-654-3210", "micheal.smith@yahoo.com", "Montreal", "1992-07-22"),
   (503, "Emily", "Johnson", "444-987-6543", "emily.johnson@gmail.com", "Vancouver", "1992-07-11"),
   (504, "Bob", "Anderson", "123-456-7893", "bob.anderson@yahoo.com", "Calgary", "1994-12-03"),
   (505, "Charlie", "Brown", "123-456-7894", "charlie.b@gmail.com", "Ottawa", "1988-09-25"),
   (506, "Henry", "Clark", "123-456-789", "henry.clark@hotmail.com", "Toronto", "1986-02-14"),
   (507, "Eve", "Wilson", "123-456-7896", "eve.w@hotmail.com", "Edmonton", "1991-06-30"),
   (508, "Sophia", "Moore", "666-777-8888", "sophia.moore@icloud.com", "Halifax", "1993-12-25"),
   (509, "Olivia", "Brown", "222-333-5555","olivia.brown@outlook.com", "Ottawa", "1994-09-04"),
   (510, "Grace", "Harris", "123-456-7898", "grace.h@gmail.com", "Hamilton", "1993-10-29");

SELECT * FROM Members;

SELECT LastName, FirstName, DateofBirth from Members;

SELECT City, LastName, Firstname FROM Members ORDER BY City;

SELECT DateofBirth, LastName, FirstName, EmailAddress FROM Members ORDER BY DateofBirth DESC;

SELECT City, LastName, FirstName FROM Members where City="Toronto";

SELECT LastName, FirstName, EmailAddress FROM Members WHERE EmailAddress LIKE "%@gmail.com";

SELECT LastName, City, EmailAddress, DateOfBirth FROM Members WHERE City = 'Toronto' ORDER BY DateOfBirth;

UPDATE Members set PhoneNumber = "451-856-3666" WHERE MemberId = 507;

UPDATE Members set City = "Mississauga" WHERE MemberId IN(501,506);

UPDATE Members SET EmailAddress = NULL WHERE EmailAddress LIKE '%@gmail.com';

DELETE FROM Members WHERE MemberId = 509; 

DELETE FROM Members WHERE LastName LIKE '%son';













