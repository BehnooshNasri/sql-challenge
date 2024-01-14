-- DROP TABLE if exists  dept_emp, dept_manager,  salaries, departments, employees, titles

-- departments
CREATE TABLE departments (
    dept_no varchar(200) PRIMARY KEY,
    dept_name varchar(200)
);

-- employees
CREATE TABLE employees (
    emp_no int PRIMARY KEY,
    emp_title_id varchar(200),
    birth_date varchar (200),
    first_name varchar(200),
    last_name varchar(200),
    sex varchar(200),
    hire_date varchar(200)
);

-- dept_manager
CREATE TABLE dept_manager (
    dept_no varchar(200),
    emp_no int,
    FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no int,
    dept_no varchar(200),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- salaries
CREATE TABLE salaries (
    emp_no int,
    salary int,
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no)
);

-- titles
CREATE TABLE titles (
    title_id varchar(200) PRIMARY KEY,
    title varchar(200)
);


