-- 01. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table. 
SELECT (COUNT(CITY)) - (COUNT(DISTINCT(CITY)))
FROM STATION;

-- 02. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. 
SELECT DISTINCT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC
LIMIT 1;

SELECT DISTINCT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1;

-- 03.Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT CITY
FROM STATION
WHERE CITY RLIKE '^[AEIOU]';

-- 04. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE '[AEIOU]$';

-- 05.Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE '^[AEIOU].*[AEIOU]$';

-- 06. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '^[AEIOU]';

-- 07. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '^[AEIOU]';

-- 07.Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '[AEIOU]$';

-- 08. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '^[AEIOU].*[AEIOU]$'

-- 09. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '^[AEIOU]'
  AND CITY NOT RLIKE '[AEIOU]$';


















