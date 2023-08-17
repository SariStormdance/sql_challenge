-- CREATE TABLE Titles( 
-- 	Title_id VARCHAR(10),
-- 	Title VARCHAR(30),
-- 	PRIMARY KEY (Title_id)
-- );

-- CREATE TABLE Employees (
-- 	Emp_no INTEGER NOT NULL,
-- 	Emp_Title VARCHAR(30),
-- 	Birthdate VARCHAR (20),
-- 	First_name VARCHAR (30),
-- 	Last_name VARCHAR (30),
-- 	Sex VARCHAR (1),
-- 	Hire_date VARCHAR(20),
-- 	PRIMARY KEY (Emp_no),
-- 	FOREIGN KEY (Emp_Title) REFERENCES Titles(title_id)
-- );

-- CREATE TABLE dept_emp (
-- 	Emp_no INTEGER NOT NULL,
-- 	Dept_no VARCHAR(5) NOT NULL,
-- 	PRIMARY KEY (emp_no, dept_no)
-- );

-- CREATE TABLE Dept_manager (
-- 	Dept_no VARCHAR(5) NOT NULL,
-- 	Emp_no INTEGER NOT NULL,
-- 	PRIMARY KEY (dept_no, emp_no)
-- );

-- Create Table Departments (
-- 	Dept_no VARCHAR(5),
-- 	Dept_name VARCHAR(30),
-- 	Primary Key (Dept_no)
-- );

-- CREATE TABLE Salaries (
-- 	Emp_no INT NOT NULL,
-- 	Salary INT,
-- 	PRIMARY KEY (Emp_no)
-- );

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