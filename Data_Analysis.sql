-- 1 List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM "employees" LEFT JOIN salaries  ON employees.emp_no = salaries.emp_no

--2 List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND'1987-1-1'

--3 List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name 
FROM "departments" 
LEFT JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
LEFT JOIN employees ON dept_manager.emp_no = employees.emp_no

SELECT dept_name FROM departments

--4 List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp on dept_emp.emp_no = employees.emp_no 
LEFT JOIN departments on dept_emp.dept_no = departments.dept_no

--5 List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--6 List all employees in the Sales department, including their employee number, last name, 
--first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp on employees.emp_no = dept_emp.emp_no
LEFT JOIN departments on departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales'

--7 List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp on employees.emp_no = dept_emp.emp_no
LEFT JOIN departments on departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

--8 In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT COUNT(DISTINCT last_name) AS LastName FROM employees; 
 
SELECT COUNT (last_name)
FROM employees
WHERE last_name = 'Swan'

SELECT * FROM employees
WHERE last_name = 'Swan'


