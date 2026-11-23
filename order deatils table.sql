 USE data_digger;
  
 CREATE TABLE orderdetails (
  orderdetailID INT PRIMARY KEY AUTO_INCREMENT,
  orderID INT,
  productID INT,
  quantity INT,
  subtotal INT,
  FOREIGN KEY (orderID) REFERENCES orders(orderID),
  FOREIGN KEY (productID) REFERENCES products(productID)
  );

 INSERT INTO orderdetails (orderID, productID, quantity, subtotal)
 VALUES  
  (1, 1, 1, 55000),
  (1, 2, 2, 3000),
  (2, 3, 1, 15000),
  (3, 4, 3, 2400),
  (4, 5, 2, 1000);

 SELECT * FROM orderdetails WHERE orderID = 1;

 SELECT SUM(subtotal) AS totalrevenue FROM orderdetails;

 SELECT productID, SUM(quantity) AS totalquantity FROM orderdetails
 GROUP BY productID
 ORDER BY totalquantity DESC
 LIMIT 3; 

 SELECT productID, COUNT(*) AS timesold FROM orderdetails WHERE productID = 1 
 GROUP BY productID;