--Creating the Database starting tables containing Primary Keys.

CREATE TABLE Titles( 
	Title_id VARCHAR(5) NOT NULL,
	Title VARCHAR(30),
	PRIMARY KEY (Title_id)
);

CREATE TABLE Salaries (
	Emp_no INTEGER NOT NULL,
	Salary INTEGER,
	PRIMARY KEY (Emp_no)
);

Create Table Departments (
	Dept_no VARCHAR(4),
	Dept_name VARCHAR(30),
	PRIMARY KEY (Dept_no)
);

--Creating Tables with Foreign Keys

CREATE TABLE Employees (
	Emp_no INTEGER NOT NULL,
	Emp_Title VARCHAR(5) NOT NULL,
	Birthdate DATE,
	First_name VARCHAR (20),
	Last_name VARCHAR (20),
	Sex VARCHAR (1),
	Hire_date DATE,
	FOREIGN KEY (Emp_no) REFERENCES Salaries(Emp_no),
	FOREIGN KEY (Emp_Title) REFERENCES Titles(title_id)
);

CREATE TABLE Dept_manager (
	Dept_no VARCHAR(4) NOT NULL,
	Emp_no INTEGER NOT NULL,
 FOREIGN KEY (Dept_no) REFERENCES Departments(Dept_no),
	FOREIGN KEY (Emp_no) REFERENCES Salaries(Emp_no)
);

--Creating Table with Composite Key

CREATE TABLE dept_emp (
	Emp_no INTEGER NOT NULL,
	Dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (Dept_no, Emp_no)
);

SELECT 
-- Employees.Emp_no,
-- Employees.First_name,
-- Employees.Last_name,
-- Employees.Sex,
-- Salaries.Salary
-- FROM Employees INNER JOIN Salaries ON Employees.Emp_no = --Salaries.Emp_no;

-- Select 
-- First_name,
-- Last_name, 
-- Hire_date
-- From Employees
-- Where hire_date > '12/31/1985'
-- AND hire_date < '1/1/1987';

-- Select 
-- Dept_emp.Dept_no,
-- Employees.Emp_no,
-- Employees.Last_name,
-- Employees.First_name,
-- Departments.Dept_name
-- From Employees 
-- INNER JOIN Dept_emp ON Employees.Emp_no = Dept_emp.Emp_no
-- INNER JOIN Departments ON Dept_emp.Dept_no = Departments.Dept_no;
