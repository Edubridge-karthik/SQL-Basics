-- SQL LAB--  --
-- step1. create Database
 CREATE DATABASE SQL_LAB;
-- step2. use the database
USE SQL_LAB;
-- Step3. import filmlocation CSV file into table using Table Data import wizard
-- url:https://data.sfgov.org/api/views/yitu-d5am/rows.csv?accessType=DOWNLOAD
--  Q1.Retrieve all records with all columns from the "FilmLocations" table
SELECT * FROM filmlocations;
-- Q2.Retrieve the names of all films with director names and writer names.
SELECT title,Director,Writer from filmlocations;
-- Q3.Retrieve the names of all films released in the 21st century and onwards 
-- (release years after 2001 including 2001), along with filming locations and release years.
SELECT  title,Locations,ReleaseYear from filmlocations where ReleaseYear  between  1915 and 1950;
SELECT  title,Locations,ReleaseYear from filmlocations where ReleaseYear=1915;
-- count total record 
SELECT COUNT(*) from filmlocations;
-- ORDER BY
SELECT  title,Locations,ReleaseYear from filmlocations where ReleaseYear  between  1915 and 1950 
ORDER BY title DESC;
-- Reationship Operator 
SELECT * from filmlocations where Locations="Coit Tower"; -- equal operator
SELECT * from filmlocations where Locations<>"Coit Tower"; -- <> or != not equal operator
SELECT * from filmlocations where ReleaseYear<= 1915; -- lessthan equal
-- SQL Logical Operators
SELECT * from filmlocations where productioncompany LIKE "Metro%";
SELECT count(*) as Total_metro from filmlocations where productioncompany LIKE "Metro%";
SELECT * from filmlocations where Director IN ('Don Siegel','Peter Yates'); 
-- LIMIT
SELECT * from filmlocations where Director IN ('Don Siegel','Peter Yates') limit 5 offset 10;
-- Function 
SELECT MIN(ReleaseYear) from filmlocations;
SELECT Max(ReleaseYear) from filmlocations;
SELECT Max(ReleaseYear) as MAX_YEAR ,MIN(ReleaseYear) as MIN_YEAR from filmlocations;
SELECT length(title) from filmlocations; -- length of charcters in string
SELECT upper(title) from filmlocations;  -- upper case function
SELECT substr(title,1,5) from filmlocations; -- substring function substr(col_name,Start,End)
-- Update : UPDATE table_name SET[[column1]=[VALUES]] WHERE [condition];
use world;
select * from city;
update city set District="CHENNAI" where id=4;
select * from city;
update city set District="CHENNAI";
-- DELETE 	DELETE FROM table_name WHERE [condition];
DELETE FROM city Where id=4;
SELECT * From t;

SELECT substr(a,1,2) as country_code ,substr(a,3,6) as Pin_code,substr(b,1,2) as country_code_b ,substr(b,3,6) as Pin_code_b from t;

DROP TABLE t;







