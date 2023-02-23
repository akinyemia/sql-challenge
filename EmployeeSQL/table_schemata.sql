-- create Employees table 
create table Employees (
	emp_no INT PRIMARY KEY, 
	emp_title VARCHAR,
	birthdate DATE,
	first_name VARCHAR, 
	last_name VARCHAR, 
	sex VARCHAR, 
	hire_date DATE
);

-- create Titles table 
create table Titles (
	title_id VARCHAR PRIMARY KEY, 
	title VARCHAR
);

-- create Dept_manager table 
create table Dept_manager (
	dept_no VARCHAR PRIMARY KEY, 
	emp_no INT
);

-- create Salaries table 
create table Salaries (
	emp_no INT PRIMARY KEY, 
	salary INT
);

-- create Departments table 
create table Departments (
	dept_no VARCHAR PRIMARY KEY, 
	dept_name VARCHAR
);

-- create dept_emp table 
create table Dept_emp (
	emp_no INT PRIMARY KEY, 
	dept_no VARCHAR
);

drop table employees;

select * from employees; 