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
(5,'pranav','mohite','Finance',30000)
(6,'manoj','patil','IT',40000)
(7,'pranav','ranmale','manger',70000);
 SELECT * FROM staff;

 SELECT * FROM staff
 WHERE department = 'HR' OR salary >55000;

 SELECT * FROM staff
 WHERE department='HR' AND
        salary > 30000;

SELECT * FROM staff 
WHERE NOT salary =45000;

SELECT * FROM staff
WHERE salary BETWEEN  30000 AND 55000;
  
SELECT * FROM staff
WHERE first_name LIKE '%a%';

SELECT * FROM staff
SELECT * FROM EMP

UPDATE EMP
SET frist_name ='raj'
WHERE id = 4;

SELECT
*
FROM staff AS S
LEFT  JOIN EMP AS E
ON S.id =E.id
WHERE E.id IS NULL;



SELECT * FROM staff AS s
FULL JOIN EMP AS e
ON s.id = e.id
WHERE s.id IS NULL OR
e.id IS NULL;


SELECT * FROM staff AS s
CROSS JOIN EMP AS e
ON s.id = e.id

SELECT * FROM staff AS s
FULL JOIN EMP AS e
ON s.id= e.id
WHERE e.id IS  NULL

SELECT 
frist_name AS f
FROM EMP
INTERSECT
SELECT 
first_name
FROM staff;

SELECT 
frist_name AS f
FROM EMP
UNION
SELECT 
first_name AS f
FROM staff;

   SELECT 
   frist_name,
   country,
  CONCAT(frist_name,' ',country) AS up_name
   FROM EMP;
   
   SELECT 
   frist_name,
   LEN (frist_name) AS frist_name
   FROM EMP;
    
    SELECT 
    frist_name,
    RIGHT (frist_name, 3) f2
    FROM EMP;

ALTER TABLE EMP
ADD score ='10';

UPDATE EMP
SET score =10
WHERE id =5;

SELECT * FROM  EMP;

ALTER TABLE EMP
ADD CHECK (score >= 10);

SELECT 
country,
LEN (country) le
 FROM EMP