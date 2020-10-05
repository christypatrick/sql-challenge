-- details for each employee:  emp_no, last_name, first_name, sex, and salary
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
Left Join salaries ON
employees.emp_no = salaries.emp_no;

-- employees hired in 1986
Select first_name, last_name, hire_date
From employees
Where hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- manager of each department: department number, department name, the manager's employee number, last name, first name
Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
Left Join employees ON
dept_manager.emp_no = employees.emp_no
Left Join departments ON
dept_manager.dept_no = departments.dept_no;