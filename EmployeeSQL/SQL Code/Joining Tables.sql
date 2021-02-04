CREATE TABLE Departments(dept_no VARCHAR(30),dept_name VARCHAR(30)) 

CREATE TABLE dept_emp(emp_no INT,dept_no VARCHAR(30))

CREATE TABLE dept_manager(emp_no INT,dept_no VARCHAR(30))

CREATE TABLE employees(emp_no INT,emp_title_id VARCHAR(30),
				birth_date VARCHAR(30), first_name VARCHAR(30),
				last_name VARCHAR(30), sex VARCHAR(30), hire_date VARCHAR(30)
);
CREATE TABLE salaries(emp_no INT,salary INT)

CREATE TABLE titles(title_id VARCHAR(30),title VARCHAR(30))

--- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

---2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name,employees.hire_date
FROM employees
WHERE hire_date LIKE '%1986'

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

--SELECT employees.first_name, employees.last_name, dept_manager.emp_no,dept_manager.dept_no, Departments.dept_name
--FROM employees


-- Employees, dept_manager, Departments 

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
-- 
-- Employees, dept_emp, Departments 

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
-- FROM departments
-- WHERE dept_name = 'Sales'
-- Employees, dept_emp, Departments 

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- WHERE dept_name = Sales OR Development
-- Employees, dept_emp, Departments

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC



