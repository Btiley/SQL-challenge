CREATE TABLE Depts(dept_no INT,dept_name VARCHAR(30));

CREATE TABLE Dept_emps(employee_number INT, dept_name VARCHAR(30))

CREATE TABLE Dept_mgers(manager_number INT, dept_name VARCHAR(30))

CREATE TABLE Emps(emp_no INT,
emp_title_id VARCHAR(30),
birth_date VARCHAR(30),
first_name VARCHAR(30),
last_name VARCHAR(30),
sex BOOLEAN,
hire_date VARCHAR(30))

CREATE TABLE Salaries(emp_no INT, salary INT)

CREATE TABLE Titles(Title_id VARCHAR(30), Title VARCHAR(30))
