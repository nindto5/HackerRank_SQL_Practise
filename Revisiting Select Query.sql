-- 02. Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA. The CITY table is described as follows: 
SELECT NAME 
FROM CITY
WHERE COUNTRYCODE IN 'USA' AND POPULATION > 120000;

-- 03. Query all columns (attributes) for every row in the CITY table. The CITY table is described as follows: 
SELECT *
FROM CITY;

-- 04. Query all columns for a city in CITY with the ID 1661.The CITY table is described as follows: 
SELECT *
FROM CITY
WHERE ID = 1661;

-- 05. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN. 
SELECT *
FROM CITY
WHERE COUNTRYCODE IN 'JPN';

-- 06. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN. 
SELECT NAME
FROM CITY
WHERE COUNTRYCODE IN 'JPN';

-- 07. Query a list of CITY and STATE from the STATION table. The STATION table is described as follows: 
SELECT CITY, STATE
FROM STATION;

-- 08. Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer. 
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;
