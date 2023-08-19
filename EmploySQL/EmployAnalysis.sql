--Query 1
--List the employee number, last name, first name, sex, and salary of each employee.

SELECT 
Employees.Emp_no,
Employees.First_name,
Employees.Last_name,
Employees.Sex,
Salaries.Salary
FROM Employees INNER JOIN Salaries ON Employees.Emp_no = Salaries.Emp_no;

--Query 2
--List the first name, last name, and hire date for the employees who were hired in 1986.

-- Select 
-- First_name,
-- Last_name, 
-- Hire_date
-- From Employees
-- Where hire_date > '12/31/1985'
-- AND hire_date < '1/1/1987';

--Query 3
--List the manager of each department along with their department number, department name, employee number, last name, and first name.


--Query 4
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

Select 
Dept_emp.Dept_no,
Employees.Emp_no,
Employees.Last_name,
Employees.First_name,
Departments.Dept_name
From Employees 
INNER JOIN Dept_emp ON Employees.Emp_no = Dept_emp.Emp_no
INNER JOIN Departments ON Dept_emp.Dept_no = Departments.Dept_no;

--Query 5
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

--Query 6
--List each employee in the Sales department, including their employee number, last name, and first name.

--Query 7
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--Query 8
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
