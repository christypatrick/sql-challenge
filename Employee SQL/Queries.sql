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

-- department of each employee: employee number, last name, first name, and department name
-- should this return ~300k (employees) results or 331k (dept_emp) results?
Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
left Join dept_emp ON
employees.emp_no = dept_emp.emp_no
left Join departments ON
dept_emp.dept_no = departments.dept_no;

-- first name is Hercules and last name begins with B: first name, last name, and sex
Select employees.first_name, employees.last_name, employees.sex
From employees
Where first_name = 'Hercules' and last_name LIKE 'B%';

-- sales dept employees: emp_no, last_name, first_name, department_name
Select  employees.last_name, employees.first_name, departments.dept_name
From employees
Left Join dept_emp ON
employees.emp_no = dept_emp.emp_no
left Join departments ON
dept_emp.dept_no = departments.dept_no
Where departments.dept_name = 'Sales';

-- sales & development dept employees: emp_no, last_name, first_name, department name

-- frequency count of employee last names:  how many employees share each last name