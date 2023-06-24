--Creating my intial table
CREATE TABLE EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)); 

--Creating my second table
CREATE TABLE EmployeeSalary
(EmployeeID int,
JobTitle varchar(50),
Salary int);

--Inserting values into my table
INSERT INTO EmployeeDemographics VALUES
(1001,'Jim','Halpert',30,'Male'),
(1002,'Pam','Beasley',30,'Female'),
(1003,'Dwight','Schrute',29,'Male'),
(1004,'Angela','Martin',31,'Female'),
(1005,'Toby','Flenderson',32,'Male'),
(1006,'Micheal','Scott',35,'Male'),
(1007,'Meredith','Palmer',32,'Female'),
(1008,'Stanley','Hudson',38,'Male'),
(1009,'Kevin','Malone',31,'Male')

--Inserting values into my second table EmployeeSalary
INSERT INTO EmployeeSalary VALUES
(1001,'Salesman',45000),
(1002,'Receptionsist',36000),
(1003,'Salesman',63000),
(1004,'Accountant',47000),
(1005,'HR',50000),
(1006,'Regional Manager',65000),
(1007,'Supplier Relations',41000),
(1008,'Salesman',48000),
(1009,'Accountant',42000)

--Demonstratong various results using SELECT Statement (*, Distinct, Count, As, Max, Min, Avg)
SELECT * 
FROM EmployeeDemographics

SELECT FirstName, LastName
FROM EmployeeDemographics

Select JobTitle, Salary
FROM EmployeeSalary

SELECT DISTINCT (Gender)
FROM EmployeeDemographics

SELECT COUNT(LastName)
FROM EmployeeDemographics

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

SELECT MAX(Salary)
FROM EmployeeSalary

SELECT MIN(Salary)
FROM EmployeeSalary

SELECT AVG(Salary)
FROM EmployeeSalary

--Demonstratong various results using Where Statement (=,<>,<,>,And,Or,Like,Null,NotNull,In)
SELECT *
FROM EmployeeDemographics
WHERE FirstName='Jim'

SELECT *
FROM EmployeeDemographics
WHERE FirstName <>'Jim'

SELECT *
FROM EmployeeDemographics
WHERE Age > 30

SELECT *
FROM EmployeeDemographics
WHERE Age < 35

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30 AND Gender = 'Female'

SELECT *
FROM EmployeeDemographics
WHERE Age >= 35 OR Gender = 'Female'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%ON%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName IS NULL

SELECT *
FROM EmployeeDemographics
WHERE LastName IS NOT NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim','Micheal')

--Demonstratong various results using Group By, Order By Statement 
SELECT DISTINCT(Gender)
FROM EmployeeDemographics;

SELECT*
FROM EmployeeDemographics;
SELECT Gender,AGE,COUNT(Gender)
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender;

SELECT Gender,AGE,COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
Order BY Gender DESC;

SELECT Gender,AGE,COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
Order BY Gender ASC;

SELECT*
FROM EmployeeDemographics
ORDER BY Age DESC,Gender;

SELECT*
FROM EmployeeDemographics
ORDER BY 4 DESC,5 DESC;
