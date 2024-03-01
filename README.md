# SQL_Challenge
UMN bootcamp module 9 challenge

# Table Relations
![QuickDBD-MODULE 9](https://github.com/zhou0366/SQL_Challenge/assets/22827830/35ec4d57-f8c2-4c3f-80f1-4dde775e1484)
-The employee number will be the primary key in the employees table. This will be used as a foreign key for the salaries, department manager, and department employees table. 
-The title id number from the titles table will be the foreign key to the employee's title id in the employee table.
-The department number from the departments table will be a foreign key for the department managers and department employees table.

# SQL Analysis
## 1 List the employee number, last name, first name, sex, and salary of each employee
For this analysis will join emp_no from employees and salaries tables. Employee number, names, and sex are from the employees table. Salary is from the salaries table.
## 2 List the first name, last name, and hire date for the employees who were hired in 1986
The employees table will be used for this query. We will select rows where the last 4 digits of hire_date are 1986. The desired columns are then displayed for each returned row.
## 3 List the manager of each department along with their department number, department name, employee number, last name, and first name
For this analysis, dept_manager, departments, and employees will be joined on dept_no. dept_no and emp_no will be displayed from the dept_manager table. dept_name will be from the departments table. first_name and last_name will be from the employees table.
## 4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name
The employees and dept_emp will be joined on emp_no. Then this will be joined with departments on dept_no. emp_no, last_name, and first_name will be from the employees table and the dept_name will be from the departments table.
## 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
From the employees table, we will select where first name equals "Hercules" and the last name is like 'B%'. The first name, last name, and sex are displayed.
## 6 List each employee in the Sales department, including their employee number, last name, and first name
The same join from analysis 4 will be used here. This time, we will also apply a filter where the dept_name value from departments table is equal to 'Sales'.
## List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
The same join from analysis 4 will be used here. This time, we will also apply a filter where the dept_name value from departments table is equal to 'Sales' or equal to 'Development'.
## List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
Instead of selecting columns, this time we will select counts of last_name as the name frequency and the last_name column from the employees table. We will then group by last name and order by frequency descending.
