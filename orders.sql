CREATE DATABASE salesDB;
USE salesDB;

CREATE TABLE salesOrder (
    orderID INT PRIMARY KEY,
    productID INT,
    customerID INT,
    salespersonID INT,
    orderDATE DATE,
    shipDATE DATE
);

INSERT INTO salesOrder (orderID, productID, customerID, salespersonID, orderDATE, shipDATE)
VALUES
(1001, 501, 201, 301, '2025-11-01', '2025-11-05'),
(1002, 502, 202, 302, '2025-11-03', '2025-11-07'),
(1003, 503, 203, 303, '2025-11-05', '2025-11-10'),
(1004, 504, 204, 304, '2025-11-08', '2025-11-12'),
(1005, 505, 205, 301, '2025-11-10', '2025-11-13');

SELECT * FROM salesOrder;
UPDATE salesOrder
SET orderID='5'
WHERE orderID=1005


CREATE TABLE ordersArchive (
    orderID INT PRIMARY KEY,
    productID INT,
    customerID INT,
    salespersonID INT,
    orderDATE DATE,
    shipDATE DATE
);
INSERT INTO ordersArchive (orderID, productID, customerID, salespersonID, orderDATE, shipDATE)
VALUES
(1, 401, 101, 201, '2024-05-10', '2024-05-14'),
(2, 402, 102, 202, '2024-06-15', '2024-06-19'),
(3, 403, 103, 203, '2024-07-20', '2024-07-25'),
(4, 404, 104, 204, '2024-08-05', '2024-08-10'),
(5, 405, 105, 205, '2024-09-12', '2024-09-17');

SELECT * FROM salesOrder
SELECT * FROM ordersArchive

UPDATE salesOrder
SET salespersonID='205'
WHERE orderID=5;

