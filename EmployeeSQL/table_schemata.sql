-- create Titles table 
create table Titles (
	title_id VARCHAR NOT NULL, 
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

-- create Departments table 
create table Departments (
	dept_no VARCHAR, 
	dept_name VARCHAR NOT NULL, 
	PRIMARY KEY (dept_no)
);

-- create Employees table 
create table Employees (
	emp_no INT, 
	emp_title_id VARCHAR,
	birthdate DATE NOT NULL,
	first_name VARCHAR, 
	last_name VARCHAR, 
	sex VARCHAR, 
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id), 
	PRIMARY KEY (emp_no)
);

-- create Dept_manager table 
create table Dept_manager (
	dept_no VARCHAR, 
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no), 
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no), 
	PRIMARY KEY (dept_no, emp_no)
);

-- create Salaries table 
create table Salaries (
	emp_no INT, 
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY (emp_no)
);


-- create dept_emp table 
create table Dept_emp (
	emp_no INT, 
	dept_no VARCHAR, 
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no), 
	PRIMARY KEY (dept_no, emp_no)
);


-- drop table departments, dept_emp, dept_manager, employees, salaries, titles;