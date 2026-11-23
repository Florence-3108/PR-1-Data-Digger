 USE data_digger;
  
 CREATE TABLE products (
 productID INT PRIMARY KEY AUTO_INCREMENT,
 productname VARCHAR(100) NOT NULL,
 price INT,
 stock INT 
 );

 INSERT INTO products (productname, price, stock)
 VALUES
 ("TV", 55000, 10),   
 ("AC", 30000, 20),   
 ("Remote", 1500, 30),   
 ("Charger", 800, 15),   
 ("Chess", 500, 0);  

 SELECT * FROM products ORDER BY price DESC;

 UPDATE products SET price = 18000 WHERE productID = 2;

 DELETE FROM products WHERE stock = 0;

 SELECT * FROM products WHERE price >= 500 AND price <= 2000; 

 SELECT MAX(price) AS Expensive, MIN(price) AS Cheapest FROM products; 
