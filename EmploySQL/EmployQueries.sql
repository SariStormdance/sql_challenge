-- CREATE TABLE Titles( 
-- 	Title_id VARCHAR(10),
-- 	Title VARCHAR(30),
-- 	PRIMARY KEY (Title_id)
-- );

-- CREATE TABLE Salaries (
-- 	Emp_no INTEGER NOT NULL,
-- 	Salary INTEGER,
-- 	PRIMARY KEY (Emp_no)
-- );

-- CREATE TABLE Employees (
-- 	Emp_no INTEGER NOT NULL,
-- 	Emp_Title VARCHAR(30),
-- 	Birthdate DATE,
-- 	First_name VARCHAR (30),
-- 	Last_name VARCHAR (30),
-- 	Sex VARCHAR (1),
-- 	Hire_date DATE,
-- 	FOREIGN KEY (Emp_no) REFERENCES Salaries(Emp_no),
-- 	FOREIGN KEY (Emp_Title) REFERENCES Titles(title_id)
-- );

-- Create Table Departments (
-- 	Dept_no VARCHAR(10),
-- 	Dept_name VARCHAR(30),
-- 	PRIMARY KEY (Dept_no)
-- );

-- CREATE TABLE dept_emp (
-- 	Emp_no INTEGER NOT NULL,
-- 	Dept_no VARCHAR(10) NOT NULL,
-- 	FOREIGN KEY (Emp_no) REFERENCES Salaries(Emp_no),
--   FOREIGN KEY (Dept_no) REFERENCES Departments(Dept_no)
-- );

-- CREATE TABLE Dept_manager (
-- 	Dept_no VARCHAR(10) NOT NULL,
-- 	Emp_no INTEGER NOT NULL,
-- 	PRIMARY KEY (Dept_no, Emp_no)
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
