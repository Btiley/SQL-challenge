CREATE TABLE departments(
	dept_no VARCHAR(30),
	dept_name VARCHAR(30)
); 

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(30)
);

CREATE TABLE dept_manager(
	emp_no INT,
	dept_no VARCHAR(30)
);

CREATE TABLE employees(
	emp_no INT,
	emp_title_id VARCHAR(30),
	birth_date VARCHAR(30), 
	first_name VARCHAR(30),
	last_name VARCHAR(30), 
	sex VARCHAR(30), 
	hire_date VARCHAR(30)
);
CREATE TABLE salaries(
	emp_no INT,
	salary INT
);

CREATE TABLE titles(
	title_id VARCHAR(30),
	title VARCHAR(30)
);
