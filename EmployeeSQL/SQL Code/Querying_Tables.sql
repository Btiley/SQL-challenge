-- 1. Emp Details: Employee number, Last name, First name, Sex, and Salary.

SELECT	
	employees.emp_no, 
	employees.first_name, 
	employees.last_name, 
	employees.sex, 
	salaries.salary
FROM salaries
	INNER JOIN employees ON
	employees.emp_no=salaries.emp_no;

---2. Emp Details (1986): First name, Last name, and Hire date.

SELECT 
	employees.first_name, 
	employees.last_name,
	employees.hire_date
FROM employees
	WHERE hire_date LIKE '%1986';

--3. Manager Details: Dept_no, Dept_name, Emp_no, Last name, First name.

SELECT departments.dept_no,departments.dept_name, 
	dept_manager.emp_no,
	employees.last_name, employees.first_name
FROM departments

INNER JOIN dept_manager ON 
	dept_manager.dept_no = departments.dept_no
	INNER JOIN employees ON 
		dept_manager.emp_no = employees.emp_no;

--4. Emp Dept Details: Emp_no, Last name, First name, and Dept_no.
SELECT dept_emp.emp_no,
	employees.last_name, employees.first_name,
	departments.dept_name
FROM departments

INNER JOIN dept_emp ON 
	dept_emp.dept_no = departments.dept_no
	INNER JOIN employees ON 
		dept_emp.emp_no = employees.emp_no;

-- 5. Hercules 'B' Details: First name, Last name, Sex. 
SELECT 
	first_name,
	last_name, 
	sex 
FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- 6. Sales Emp Details: Emp.no, Last name, First name, Dept_name.

SELECT dept_emp.emp_no,
	employees.last_name, employees.first_name,
	departments.dept_name
FROM departments

INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
	INNER JOIN employees ON dept_emp.emp_no = employees.emp_no

	WHERE dept_name = 'Sales';


-- 7. Sales,Development Emp Details: Emp_no, Last name, First name, Dept_name.
SELECT dept_emp.emp_no,
	employees.last_name, employees.first_name,
	departments.dept_name
FROM departments

INNER JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
	INNER JOIN employees ON dept_emp.emp_no = employees.emp_no

	WHERE dept_name = 'Sales' OR dept_name = 'Development';	

-- 8. Last Name Frequency (DESC)
SELECT 
	last_name, 
	COUNT(last_name) 
FROM employees

GROUP BY last_name
ORDER BY COUNT(last_name) DESC



