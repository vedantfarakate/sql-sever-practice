CREATE DATABASE MALL;
USE MALL;

CREATE TABLE salesman (
salesman_id INT PRIMARY KEY,
name VARCHAR (30),
city vARCHAR (30),
commission DECIMAL (5,2)
);

INSERT INTO salesman (salesman_id,name,city,commission)
VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5003, 'Lauson Hen', 'San Jose', 0.12),
(5007, 'Paul Adam', 'Rome', 0.13);

SELECT * FROM salesman;

CREATE TABLE customer(
customer_id INT PRIMARY KEY,
customer_name VARCHAR (30),
city VARCHAR (30),
grade INT,
salesman_id INT,
FOREIGN KEY (salesman_id) REFERENCES salesman (salesman_id)
);

INSERT INTO customer(customer_id,customer_name,city,grade,salesman_id)
VALUES
(3001, 'Brad Pitt', 'New York', 200, 5001),
(3002, 'Nick Young', 'Paris', 100, 5002),
(3003, 'Adam Smith', 'London', 300, 5005),
(3004, 'John Paul', 'Paris', 200, 5006),
(3005, 'Peter Cruz', 'San Jose', 100, 5003),
(3006, 'Chris Brown', 'Rome', 400, 5007);


SELECT * FROM salesman
SELECT * FROM customer

--Intermediate Level (JOIN) Answers

SELECT c.customer_id,s.name,c.customer_name
FROM salesman AS s
JOIN customer AS c
ON s.salesman_id = c.salesman_id;

CREATE TABLE orders(
order_no INT PRIMARY KEY,
purch_amt DECIMAL(5,2),
order_date DATE,
customer_id INT,
salesman_id INT
FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
FOREIGN KEY (salesman_id) REFERENCES salesman (salesman_id)
);

INSERT INTO orders(order_no,purch_amt,order_date,customer_id,salesman_id)
VALUES
(70001, 150.50, '2021-10-05', 3005, 5002),
(70002, 65.26, '2021-10-05', 3002, 5001),
(70003, 248.60, '2021-10-10', 3001, 5002),
(70004, 110.50, '2021-10-17', 3004, 5006),
(70005, 948.50, '2021-10-25', 3003, 5005);

SELECT * FROM orders;


SELECT s.name,s.city,c.customer_name,c.grade
FROM salesman AS s
JOIN customer AS c
ON s.salesman_id = c.salesman_id ;

CREATE VIEW sales AS
SELECT name,city
FROM salesman 


SELECT * FROM sales;
DROP VIEW sales;


---USE VIEW 
CREATE VIEW view_sales AS
(
SELECT 
COUNT(*) AS city,
SUM (grade) AS grade
FROM customer
GROUP BY city;
);

