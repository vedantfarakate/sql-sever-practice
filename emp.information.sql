CREATE DATABASE information;

USE information;

CREATE TABLE department_info(
dept_id INT,
dept_name VARCHAR(30),
dept_location VARCHAR(30),
dept_budget INT
PRIMARY KEY (dept_id)
);

INSERT INTO department_info (dept_id,dept_name,dept_location,dept_budget)
VALUES
(101,'IT','FC-89',50000),
(102,'Electronics','FC-54',40000),
(103,'Admin','TY-56',35000),
(104,'Accounts','TY-43',25000);

SELECT * FROM department_info;

CREATE TABLE employee_info(
emp_id VARCHAR (30) PRIMARY KEY,
emp_name VARCHAR(30),
emp_dob DATE,
emp_city VARCHAR(30),
dept_id INT 
FOREIGN KEY (dept_id)REFERENCES department_info (dept_id)
);

INSERT INTO employee_info (emp_id,emp_name,emp_dob,emp_city,dept_id )
VALUES
('SL21','sana','1978-Apr-30','Delhi',101),
('SG45','Ram','08-Jan-1987','praygraj',103),
('PL67','Aayush','01-Mar-1992','Delhi',101),
('HG56','Dawid','25-Jul-1990','kanpur',103),
('NF78','nashik','19-Nov-1996','prayagraj',104),
('FR32','john','03-Aug-1989','Delhi',104);

SELECT * FROM employee_info;

SELECT * FROM employee_info
WHERE emp_city ='Delhi';

SELECT 
emp_id,
SUM (emp_city)
FROM employee_info
GROUP BY emp_id;
