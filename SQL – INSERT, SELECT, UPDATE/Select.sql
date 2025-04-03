-- 
-- Assignment 03
-- Written By Josina Jose
-- Submitted March 20, 2025

-- Question 3:

USE Membership;

    -- Q:3a- All rows and all columns
SELECT * FROM Members;         

   -- Q#3b- All rows showing last name, first name and date of birth, in that column order.
SELECT LastName, FirstName, DateofBirth from Members;

    -- Q#3c- All rows showing city, last name and first name, in that column order, and sorted by city
SELECT City, LastName, Firstname FROM Members ORDER BY City;

   /* Q#3d- All rows showing date of birth, last name, first name and email address, in that column 
      order, and sorted by date of birth in descending order. 
   */
SELECT DateofBirth, LastName, FirstName, EmailAddress FROM Members ORDER BY DateofBirth DESC;

   /* Q#3e- All rows showing city, last name and first name where the city name is the one that you
      chose to be duplicated
   */
SELECT City, LastName, FirstName FROM Members where City="Toronto";

     /* Q#3g All rows showing the last name, city, email address and date of birth, in that order,
       sorted by date of birth, and where the city is the one where the city is duplicated 
	*/
SELECT LastName, City, EmailAddress, DateOfBirth FROM Members WHERE City = 'Toronto' ORDER BY DateOfBirth;

     /* All rows showing the last name, first name and email address where the email domain
         was duplicated.
	*/
SELECT LastName, FirstName, EmailAddress FROM Members WHERE EmailAddress LIKE "%@gmail.com";





   