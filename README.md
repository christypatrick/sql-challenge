# sql-challenge
## Employee Database: A Mystery in Two Parts

Introduction:
This research project examines corporate employee data from the 1980s and 1990s.  This project will involve data engineering and data analysis of 6 csv employee data files.   


### Data Engineering
![ERD - Employee SQL](https://github.com/christypatrick/sql-challenge/blob/main/Employee%20SQL/ERD%20-%20Employee%20SQL.jpg)

### Data Analysis
After loading the 6 csv files into the SQL database, the data was analyzed to deterine the following:
* List the following details of each employee: employee number, last name, first name, sex, and salary.  *There are approximately 300,000 employees in the database.
* List first name, last name, and hire date for employees who were hired in 1986.  *There are 36,150 employees hired in 1986.
* List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.  *There are 24 managers in the database.
* List the department of each employee with the following information: employee number, last name, first name, and department name.
* List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."  *There are 20 employees with the first name Hercules that have a last name that begins with B.
* List all employees in the Sales department, including their employee number, last name, first name, and department name.  *There are 52245 employees in the sales department.
* List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.  *There are approximately 137,952 employees between the sales and development departments.
* In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.  *Many employees share the same last name.  Some of the top last names include 226 with "Baba", 223 with "Gelosh", and, 223 with "Coorg".

### Additional Data Analysis (Bonus)

Following the queries in SQL, the data was further analyzed using Python to determine common salary ranges for employees as well as average salaries by job title.

Histogram - most common salary ranges for employees

![Histogram](https://github.com/christypatrick/sql-challenge/blob/main/Employee%20SQL/Employee%20Salary%20Ranges.png)

Chart of average salary by title

![Average Salary](https://github.com/christypatrick/sql-challenge/blob/main/Employee%20SQL/Average%20Salary%20by%20Job%20Title.png)

### Conclusion
After detailed analysis of the employee data, it appears that the employee data is fraudulent and was a test of my data engineering skills as a new employee.  My employee ID # of 499942 was included in the dataset with an employee name of "April Foolsday"!
