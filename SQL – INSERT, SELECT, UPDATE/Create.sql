-- 
-- Assignment 03
-- Written By Josina Jose
-- Submitted March 20, 2025


-- Question 1:

     -- Q:1a- Create a database called Membership
CREATE DATABASE Membership;         
USE Membership;                
     
      -- Q:1b- Create a table that meets the requirements
CREATE TABLE Members(
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    PhoneNumber VARCHAR(15),
    EmailAddress VARCHAR(50),
	City VARCHAR(30),
    DateofBirth DATE NOT NULL
);                                


