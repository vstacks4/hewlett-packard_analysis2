--Creating tables for PH-EmployeeDB
Create Table Departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40) NOT NULL,
PRIMARY KEY (dept_no),
UNIQUE (dept_name)
	);
--Creating Employees table for PH-EmployeeDB
Create Table Employees (
	emp_no INT NOT Null,
	birth_date DATE NOT Null,
	first_name VARCHAR NOT Null,
	last_name VARCHAR NOT Null,
	gender VARCHAR NOT Null,
	hire_date DATE NOT Null,
PRIMARY KEY (emp_no)
);
--Creating manager table
Create Table dept_manager(
	emp_no INT NOT Null,
	dept_no VARCHAR(4) NOT Null,
	from_date DATE NOT Null,
	to_date DATE NOT Null,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
PRIMARY KEY (emp_no , dept_no)
);
--Creating Salary Table
Create Table Salaries(
	emp_no INT NOT Null,
	salary INT NOT Null,
	from_date DATE NOT Null,
	to_date DATE NOT Null,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
PRIMARY KEY (emp_no)
);
--Creating Dept_Emp Table
Create Table Dept_Emp(
	emp_no INT NOT Null,
	dept_no VARCHAR(4)NOT Null,
	from_date DATE NOT Null,
	to_date DATE NOT Null,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
FOREIGN KEY (emp_no) REFERENCES Salaries (emp_no)
);
--Creating Titles Table
Create Table Titles(
	emp_no INT NOT Null,
	title VarChar(25) NOT Null,
	from_date DATE NOT Null,
	to_date DATE NOT Null,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
FOREIGN KEY (emp_no) REFERENCES Salaries (emp_no)
);
