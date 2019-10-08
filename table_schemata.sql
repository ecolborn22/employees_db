--INITIALIZE TABLES FOR ALL CSV FILES
--Create departments table
DROP TABLE IF EXISTS departments;
CREATE TABLE departments
(
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL
);

--Create dept_emp table
DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp
(
	emp_no INT FOREIGN KEY NOT NULL,
	dept_no VARCHAR FOREIGN KEY NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

--Create dept_manager table
DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager
(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

--Create employees table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees
(
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

--Create salaries table
DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries
(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

--Create titles table
DROP TABLE IF EXISTS titles;
CREATE TABLE titles
(
	emp_no INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);