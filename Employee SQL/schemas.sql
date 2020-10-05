-- Create new table - titles
CREATE TABLE IF NOT EXISTS titles (
	title_id varchar(50) Primary Key,
	title varchar(50)
);

-- View table columns and datatypes
SELECT * FROM titles;

-- Create new table - employees
CREATE TABLE IF NOT EXISTS employees (
	emp_no int Primary Key,
	emp_title_id varchar(50),
	birth_date date,
	first_name varchar(50),
	last_name varchar(50),
	sex varchar(5),
	hire_date date,
	Foreign Key (emp_title_id) References titles(title_id)
);

-- View table columns and datatypes
SELECT * FROM employees;

-- Create new table - salaries
CREATE TABLE IF NOT EXISTS salaries (
	emp_no int Primary Key,
	salary int
);

-- View table columns and datatypes
SELECT * FROM salaries;

-- Create new table - departments
CREATE TABLE IF NOT EXISTS departments (
	dept_no varchar(50) Primary Key,
	dept_name varchar(50)
);

-- View table columns and datatypes
SELECT * FROM departments;

-- Create new table - dept_emp
CREATE TABLE IF NOT EXISTS dept_emp (
	emp_no int,
	dept_no varchar(50),
	Foreign Key (emp_no) References employees(emp_no),
	Foreign Key (dept_no) References departments(dept_no)
);

-- View table columns and datatypes
SELECT * FROM dept_emp;

-- Create new table - dept_manager
CREATE TABLE IF NOT EXISTS dept_manager (
	dept_no varchar(50),
	emp_no int,
	Foreign Key (dept_no) References departments(dept_no),
	Foreign Key (emp_no) References employees(emp_no)
);

-- View table columns and datatypes
SELECT * FROM dept_manager;