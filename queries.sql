--create table from existing tables
--create table from existing tables
SELECT e.emp_no,
	e.first_name,
	e.last_name
INTO employees_name
FROM Employees as e
Where (birth_date BETWEEN '1952-01-01' AND '1955-12-31');
SELECT * From employees_name
SELECT en.emp_no,
	en.first_name,
	en.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles	
FROM titles	AS t
INNER JOIN employees_name as en
ON en.emp_no = t.emp_no
ORDER BY emp_no ASC;
SELECT * FROM retirement_titles
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;
SELECT * FROM unique_titles
--Count the number of retiring employees by title and put in table
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title;
SELECT * FROM retiring_titles
--Creation of prelim mentorship eligibility database
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.to_date,
	de.from_date,
	t.title
INTO dup_mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (t.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '01-01-1965'AND '12-31-1965');
SELECT * FROM dup_mentorship_eligibility
--remove duplicates and save into mentorship_eligibility
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
birth_date,
to_date,
from_date,
title
INTO mentorship_eligibility
FROM dup_mentorship_eligibility
ORDER BY emp_no, to_date DESC;
SELECT * FROM mentorship_eligibility
--count the number of employees eligible for mentoring program
SELECT COUNT(me.emp_no), me.title
INTO mentorship_employees_bytitle
FROM mentorship_eligibility as me
GROUP BY title;
SELECT * FROM mentorship_employees_bytitle