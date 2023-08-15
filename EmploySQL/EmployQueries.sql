-- Create Table Departments (
-- 	Dept_no VARCHAR(10) NOT NULL,
-- 	Dept_name VARCHAR(30),
-- 	Primary Key (Dept_no)
-- );

-- Create Table dept_emp (
-- emp_no INTEGER NOT NULL,
-- dept_no VARCHAR(5)
-- );

-- CREATE TABLE Dept_manager (
-- 	Dept_no VARCHAR(5),
-- 	Emp_no INTEGER NOT NULL);

-- CREATE TABLE Employees (
-- 	emp_no INTEGER NOT NULL,
-- 	Emp_Title VARCHAR(30),
-- 	Birthdate VARCHAR (20),
-- 	First_name VARCHAR (30),
-- 	Last_name VARCHAR (30),
-- 	Sex VARCHAR (1),
-- 	Hire_date VARCHAR(20)
-- );

-- CREATE TABLE Salaries (
-- 	Emp_no INT NOT NULL,
-- 	Salary INT);

-- CREATE TABLE Titles (
-- Title_id VARCHAR(10),
-- Title VARCHAR(30));

-- Select 
-- Emp_no,
-- Last_name,
-- First_name,
-- Sex
-- From Employees; 

-- Select 
-- First_name,
-- Last_name, 
-- Hire_date
-- From Employees
-- Where hire_date > '12/31/1985'
-- AND hire_date < '1/1/1987';