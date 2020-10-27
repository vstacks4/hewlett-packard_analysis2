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