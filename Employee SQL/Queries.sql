-- details for each employee:  emp_no, last_name, first_name, sex, and salary
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries ON
employees.emp_no = salaries.emp_no;

-- employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'
ORDER BY "hire_date" asc;

-- manager of each department: department number, department name, the manager's employee number, last name, first name
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN employees ON
dept_manager.emp_no = employees.emp_no
LEFT JOIN departments ON
dept_manager.dept_no = departments.dept_no;

-- department of each employee: employee number, last name, first name, and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON
dept_emp.dept_no = departments.dept_no;

-- first name is Hercules and last name begins with B: first name, last name, and sex
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name asc;

-- sales dept employees: emp_no, last_name, first_name, department_name
SELECT  employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY last_name, first_name asc;

-- sales & development dept employees: emp_no, last_name, first_name, department name
SELECT  employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY last_name, first_name asc;

-- frequency count of employee last names:  how many employees share each last name
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" desc;