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

-- Use of this

SELECT 
country,
LEN (country) le
 FROM EMP;

SELECT 
country,
SUM(score) AS score
FROM EMP
GROUP BY country
HAVING AVG (score) >= 500;

-- case statment

SELECT 
    salary,
    CASE 
        WHEN salary > 50000 THEN 'High'
        ELSE 'Low'
    END AS salarylevel
FROM staff;

SELECT 
score,
  CASE 
     WHEN score >=500 THEN 'sharp'
     ELSE 'mediam'
END scorerenge
FROM EMP;

-- use case statement

SELECT 
salary,
CASE
    WHEN salary > 55000 THEN 'High'
    WHEN salary > 45000 THEN 'Medium'
    ELSE 'Low'
END
FROM staff;

SELECT * FROM staff;

SELECT
    salary,
    CASE
      WHEN salary > 55000 THEN 'highsalary'
      WHEN salary  >30000 THEN 'low'
       ELSE 'mediam'
END AS score
FROM staff;
      

     SELECT
     salary,
       CASE 
       WHEN salary >55000 THEN 'high'
       WHEN salary >45000 THEN 'mediam'
       ELSE 'Low'
    END AS category
   FROM staff;


   SELECT 
   first_name,
   last_name,
   department,
    CASE 
       WHEN department ='IT' THEN 'y'
       WHEN department ='HR' THEN 'u'
       ELSE 'n/a'
       END  departmentabr
       FROM staff;

       SELECT DISTINCT department
       FROM staff;

   SELECT 
   first_name,
   last_name,
   department,
    CASE department
       WHEN 'IT' THEN 'y'
       WHEN 'HR' THEN 'u'
       ELSE 'n/a'
       END  departmentabr
       FROM staff;


       
SELECT * FROM staff
SELECT * FROM EMP
 
SELECT
frist_name,
department,
country,
score
FROM staff AS s
INNER JOIN EMP  AS e
ON s.id = e.id;

--USE groupping
SELECT 
country,
COUNT(*), 
SUM (score) AS score 
FROM EMP
WHERE score !=850
GROUP BY country
HAVING MIN (score) >500;

SELECT 
country,
COUNT (*) AS score,
SUM (score) AS score
FROM EMP
GROUP BY country
HAVING MAX (score) >800;

--window funcation
SELECT 
id,
country,
SUM (score) OVER (PARTITION BY id) AS score
FROM EMP;

--META DATA
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS

SELECT * FROM EMP;

SELECT 
id,
score,
(score) 
FROM EMP
GROUP BY id,score;