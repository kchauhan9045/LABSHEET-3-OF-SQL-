CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

CREATE TABLE IF NOT EXISTS Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Joining_Date DATE
);

INSERT INTO Student VALUES
(1, 'Aarushi', 20, 'BCA', 'Delhi'),
(2, 'Rahul', 21, 'BBA', 'Meerut'),
(3, 'Priya', 19, 'BCA', 'Noida'),
(4, 'Aman', 22, 'BTech', 'Delhi'),
(5, 'Neha', 20, 'BCA', 'Meerut');

INSERT INTO Employee VALUES
(101, 'Amit', 'IT', 40500.75, '2022-01-15'),
(102, 'Neha', 'HR', 35000.50, '2021-06-10'),
(103, 'Ravi', 'IT', 50500.25, '2023-03-20'),
(104, 'Priya', 'Finance', 45000.80, '2020-11-05'),
(105, 'Rahul', 'HR', 30000.60, '2024-02-12');

SELECT ABS(-25);

SELECT ROUND(45.678, 2);

SELECT CEIL(12.3), FLOOR(12.8);

SELECT MOD(10, 3);

SELECT Emp_Name, ROUND(Salary) AS Rounded_Salary
FROM Employee;

SELECT COUNT(*) AS Total_Students
FROM Student;

SELECT SUM(Salary) AS Total_Salary
FROM Employee;

SELECT AVG(Salary) AS Average_Salary
FROM Employee;

SELECT MAX(Salary) AS Highest_Salary
FROM Employee;

SELECT MIN(Salary) AS Lowest_Salary
FROM Employee;

SELECT UPPER(Name) AS Upper_Name
FROM Student;

SELECT LOWER(Name) AS Lower_Name
FROM Student;

SELECT Name, LENGTH(Name) AS Name_Length
FROM Student;

SELECT CONCAT(Name, ' Sharma') AS Full_Name
FROM Student;

SELECT Name, SUBSTRING(Name, 1, 3) AS Short_Name
FROM Student;

SELECT CAST(123 AS CHAR) AS String_Value;

SELECT CAST('12345' AS UNSIGNED) AS Numeric_Value;

SELECT DATE_FORMAT('2026-10-14', '%d-%m-%Y') AS Formatted_Date;

SELECT CAST(Salary AS CHAR) AS Salary_String
FROM Employee;

SELECT CONVERT(Salary, CHAR) AS Salary_String
FROM Employee;

SELECT CURDATE() AS Current_Date;

SELECT Joining_Date,
YEAR(Joining_Date) AS Joining_Year,
MONTH(Joining_Date) AS Joining_Month,
DAY(Joining_Date) AS Joining_Day
FROM Employee;

SELECT Emp_Name,
DATEDIFF(CURDATE(), Joining_Date) AS Days_Worked
FROM Employee;

SELECT DATE_ADD('2026-10-14', INTERVAL 10 DAY) AS New_Date;

SELECT Emp_Name,
DATE_FORMAT(Joining_Date, '%d-%m-%Y') AS Formatted_Joining_Date
FROM Employee;