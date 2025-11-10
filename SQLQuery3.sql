SELECT * FROM EMP;

CREATE TABLE staff (
    id INT PRIMARY KEY,  
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,      
    department VARCHAR(100),             
    salary INT  
);

INSERT INTO staff (id,first_name, last_name, department, salary)
VALUES
(1,'John', 'Doe', 'HR', 50000),
(2,'Emma', 'Watson', 'IT', 60000),
(3,'Raj', 'Patel', 'Finance', 55000),
(4,'kiran','yadav','HR',45000),
(5,'pranav','mohite','Finance',30000);
 SELECT * FROM staff;