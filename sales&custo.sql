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

SELECT c.customer_name, c.city, s.name AS salesmanName, s.commission
FROM customer c
JOIN salesman s
ON c.salesman_id = s.salesman_id;


SELECT c.customer_name, s.name AS salesman
FROM customer c
JOIN salesman s 
ON c.salesman_id = s.salesman_id;