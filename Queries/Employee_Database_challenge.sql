-- DELIVERABLE 1: CHALLENGE RETIRING EMPLOYEES BY TITLE
-- 1. Retrieve the emp_no, first_name, and last_name columns 
--from the Employees table.
SELECT emp_no, first_name, last_name
FROM current_emp AS ce;

-- 2. Retrieve the title, from_date, and to_date columns
--from the Titles table.
SELECT title, from_date, to_date
FROM titles AS tt;

-- COMPOSE RETIREMENT TITLES QUERY
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	tt.title,
	tt.from_date,
	tt.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS tt
ON (e.emp_no = tt.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles;

--Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
	emp_no,
	first_name,
	last_name,
	title
--INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

--retrieve the number of employees
--by their most recent job title about to retire.
SELECT title, COUNT(emp_no)
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- DELIVERABLE 2
-- 1.Retrieve the emp_no, first_name, last_name, and birth_date 
--columns from the Employees table.
SELECT emp_no, first_name, last_name, birth_date
FROM employees AS e;
-- 2. Retrieve the from_date and to_date
--columns from the Department Employee table.
SELECT from_date, to_date
FROM dept_emp AS de;
-- 3. Retrieve the title column from the Titles table.
SELECT title
FROM titles AS tt;

-- 4. COMPOSE MENTORSHIP ELIGIBILITY QUERY
SELECT DISTINCT ON (emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	tt.title
INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles as tt
ON (e.emp_no = tt.emp_no)
WHERE birth_date BETWEEN '1965-01-01' AND '1965-12-31'
AND de.to_date = ('9999-01-01') 
ORDER BY e.emp_no;