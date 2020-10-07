-- Create new table - titles
CREATE TABLE IF NOT EXISTS titles (
	title_id VARCHAR(50) NOT NULL Primary Key,
	title varchar(50)
);

-- View table columns and datatypes
SELECT * FROM titles;

-- Create new table - employees
CREATE TABLE IF NOT EXISTS employees (
	emp_no INT NOT NULL Primary Key,
	emp_title_id VARCHAR(50),
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(5),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- View table columns and datatypes
SELECT * FROM employees;

-- Create new table - salaries
CREATE TABLE IF NOT EXISTS salaries (
	emp_no INT NOT NULL Primary Key,
	salary INT
);

-- View table columns and datatypes
SELECT * FROM salaries;


-- Create new table - departments
CREATE TABLE IF NOT EXISTS departments (
	dept_no VARCHAR(50) NOT NULL Primary Key,
	dept_name VARCHAR(50)
);

-- View table columns and datatypes
SELECT * FROM departments;

-- Create new table - dept_emp
CREATE TABLE IF NOT EXISTS dept_emp (
	emp_no INT,
	dept_no VARCHAR(50),
	Foreign Key (emp_no) References employees(emp_no),
	Foreign Key (dept_no) References departments(dept_no)
);

-- View table columns and datatypes
SELECT * FROM dept_emp;


-- Create new table - dept_manager
CREATE TABLE IF NOT EXISTS dept_manager (
	dept_no VARCHAR(50),
	emp_no INT,
	Foreign Key (dept_no) References departments(dept_no),
	Foreign Key (emp_no) References employees(emp_no)
);

-- View table columns and datatypes
SELECT * FROM dept_manager;
