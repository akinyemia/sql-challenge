-- create Titles table 
create table Titles (
	title_id VARCHAR PRIMARY KEY, 
	title VARCHAR UNIQUE NOT NULL
);

-- create Departments table 
create table Departments (
	dept_no VARCHAR PRIMARY KEY , 
	dept_name VARCHAR NOT NULL
);

-- create Employees table 
create table Employees (
	emp_no INT PRIMARY KEY, 
	emp_title VARCHAR REFERENCES Titles,
	birthdate DATE NOT NULL,
	first_name VARCHAR, 
	last_name VARCHAR, 
	sex VARCHAR, 
	hire_date DATE NOT NULL
);

-- create Dept_manager table 
create table Dept_manager (
	dept_no VARCHAR REFERENCES Departments, 
	emp_no INT REFERENCES Employees
);

-- create Salaries table 
create table Salaries (
	emp_no INT REFERENCES Employees, 
	salary INT NOT NULL
);


-- create dept_emp table 
create table Dept_emp (
	emp_no INT REFERENCES Employees, 
	dept_no VARCHAR REFERENCES Departments
);
