--List the employee number, last name, first name, sex, and salary of each employee (2 points)
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;
--List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
SELECT first_name, last_name, hire_date
FROM employees
WHERE RIGHT(hire_date,4) = '1986'
--List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
SELECT m.dept_no, d.dept_name, m.emp_no, e.first_name, e.last_name
FROM dept_manager m
JOIN departments d
ON m.dept_no = d.dept_no
JOIN employees e
ON m.emp_no = e.emp_no;
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no;
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT e.emp_no, e.first_name, e.last_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no=de.dept_no
WHERE d.dept_name = 'Sales';
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sale' OR d.dept_name = 'Development';
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
SELECT COUNT(last_name) AS frequency, last_name
FROM employees
GROUP BY last_name;
