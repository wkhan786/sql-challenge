-- Salary by employee
SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        employees.sex,
        salaries.salary
FROM employees
    LEFT JOIN salaries
    ON (employees.emp_no = salaries.emp_no)
ORDER BY employees.emp_no;

-- Employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        departments.dept_name
FROM employees
    INNER JOIN dept_emp
        ON (employees.emp_no = dept_emp.emp_no)
    INNER JOIN departments
        ON (departments.dept_no = departments.dept_no)
ORDER BY employees.emp_no;

-- Employees whose first name is "Hercules" and last name begins with "B"
SELECT first_name, last_name, birth_date, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Employees in the Sales department
SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        departments.dept_name
FROM employees 
    INNER JOIN dept_emp 
        ON (employees.emp_no = dept_emp.emp_no)
    INNER JOIN departments 
        ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name = 'Sales'
ORDER BY employees.emp_no;

-- Employees in Sales and Development departments
SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        departments.dept_name
FROM employees 
    INNER JOIN dept_emp 
        ON (employees.emp_no = dept_emp.emp_no)
    INNER JOIN departments 
        ON (dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name IN ('Sales', 'Development')
ORDER BY employees.emp_no;




