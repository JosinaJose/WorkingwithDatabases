-- 
-- Assignment 03
-- Written By Josina Jose
-- Submitted March 20, 2025

-- Question 4:

USE Membership;      

   -- Q:4a- Change the phone number of one specific member (your choice) 
UPDATE Members set PhoneNumber = "451-856-3666" WHERE MemberId = 507;

  -- Q:4b- Change the city name of those members where the city is the same
UPDATE Members set City = "Mississauga" WHERE City = "Toronto";
  
  -- Q:4c- Remove the email address of those members where the domain is duplicated
UPDATE Members SET EmailAddress = NULL WHERE EmailAddress LIKE '%@gmail.com';

   -- Q:4c-  Delete the record of a specific member (your choice) 
DELETE FROM Members WHERE MemberId = 509; 

   /* Q:4c- Delete the records where the last name of the members end with ‘son’, even if you have
	        no records that meet this criteria 
   */
DELETE FROM Members WHERE LastName LIKE '%son';

   