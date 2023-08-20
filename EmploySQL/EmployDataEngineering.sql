--Creating the Database starting with Tables containing Primary Keys.

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

