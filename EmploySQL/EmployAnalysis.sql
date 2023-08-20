--Analysis

--Query 1
--List the employee number, last name, first name, sex, and salary of each employee.

SELECT 
Emp.First_name || ' ' || Emp.Last_name AS Emp_name,
Emp.Emp_no,
Emp.First_name,
Emp.Last_name,
Emp.Sex,
Sal.Salary
FROM Employees Emp INNER JOIN Salaries Sal ON Emp.Emp_no = Sal.Emp_no;

--Query 2
--List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT
First_name,
Last_name, 
Hire_date
FROM Employees
WHERE hire_date > '12/31/1985'
AND hire_date < '1/1/1987';

--Query 3
--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT 
Emp.First_name || ' ' || Emp.Last_name AS Mgr_name,
Dep.Dept_no,
Dep.Dept_name,
DepMan.Emp_no,
Emp.Last_name,
Emp.First_name
FROM Departments Dep
INNER JOIN Dept_manager DepMan ON Dep.Dept_no = DepMan.Dept_no
INNER JOIN Employees Emp ON DepMan.Emp_no = Emp.Emp_no;

--Query 4
--List the department number for each employee along with that employee's employee number, last name, first name, and department name.

SELECT 
DepEmp.Dept_no,
Emp.Emp_no,
Emp.Last_name,
Emp.First_name,
Dep.Dept_name
FROM Employees Emp
INNER JOIN Dept_emp DepEmp ON Emp.Emp_no = DepEmp.Emp_no
INNER JOIN Departments Dep ON DepEmp.Dept_no = Dep.Dept_no;

--Query 5
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT 
First_name,
Last_name,
Sex
FROM Employees
WHERE First_name = 'Hercules';

--AND Last_name starts with 'B'

--Query 6
--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT
Emp.First_name || ' ' || Emp.Last_name AS Emp_name,
DepEmp.Emp_no,
Emp.Last_name,
Emp.First_name,
Dep.dept_name
FROM Employees Emp INNER JOIN Dept_emp DepEmp ON Emp.Emp_no = DepEmp.Emp_no
INNER JOIN Departments Dep ON DepEmp.Dept_no = Dep.Dept_no
WHERE Dep.Dept_name = 'Sales';

--Query 7
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT 
DepEmp.Emp_no,
Emp.Last_name,
Emp.First_name,
Dep.Dept_name
FROM Employees Emp INNER JOIN Dept_emp DepEmp ON Emp.Emp_no = DepEmp.Emp_no
INNER JOIN Departments Dep ON DepEmp.Dept_no = Dep.Dept_no
WHERE Dep.Dept_name = 'Development';

-- and Sales..

--Query 8
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

-- SELECT 
-- COUNT(DISTINCT(Last_name))
-- FROM Employees
-- ORDER BY Desc COUNT(); 