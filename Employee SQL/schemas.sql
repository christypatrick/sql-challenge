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