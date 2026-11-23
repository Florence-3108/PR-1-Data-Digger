 USE data_digger;

 CREATE TABLE orders (
 	orderID INT PRIMARY KEY AUTO_INCREMENT,
     customersId INT,
     orderdate DATE,
     totalamount INT,
     FOREIGN KEY (customersID) REFERENCES customers (customersID)
     );

 INSERT INTO orders (customersID, orderdate, totalamount)
 VALUES 
 (1, "2026-11-21", 2500),
 (3, "2026-11-18", 1500),
 (4, "2026-11-13", 3500),
 (1, "2026-11-08", 4500),
 (5, "2026-10-14", 1200);

 SELECT * FROM orders WHERE customersID = 1;

 UPDATE orders SET totalamount = 3000 WHERE orderID = 1;

 DELETE FROM orders WHERE orderID = 5;

 SELECT * FROM orders WHERE orderdate >= 2026-11-01 AND orderdate <= 2026-11-30;

 SELECT MAX(totalamount) AS Highest, MIN(totalamount) AS Lowest, AVG(totalamount) AS Average FROM orders;
