DROP TABLE dept_emp CASCADE;

CREATE TABLE dept_emp(emp_no int NOT NULL,
					 dept_no varchar(4) NOT NULL,
					 from_date date NOT NULL,
					 to_date date NOT NULL, 
					  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
				     FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
					  PRIMARY KEY (emp_no, dept_no) 
					 );
Select * from employees;

Select * from departments;

Select * from dept_emp;

CREATE TABLE titles(
	emp_no INT NOT NULL,
	title varchar NOT NULL,
	from_date Date NOT NULL, 
	to_date Date NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, title, from_date)
);