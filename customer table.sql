 SHOW databases;
 CREATE DATABASE data_digger;
 USE data_digger;

 CREATE TABLE customers (
 	customersID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE, 
    address VARCHAR(200)
   );

 INSERT INTO customers (name, email, address)
 VALUES 
 ("David", "david@gmail.com", "Rajkot"),
 ("Jhon", "jhon@gmail.com", "Ahmedabad"),
 ("Alice", "alice@gmail.com", "Surat"),
 ("Ramesh", "ramesh@gmail.com", "Vadodara"),
 ("Radha", "radha@gmailcom", "Jamnagar");

 SELECT * FROM customers; 
 
 UPDATE customers SET address = "Gandhinagar" WHERE customersID = 4;

 DELETE FROM customers WHERE customersID = 2;

 SELECT * FROM customers WHERE name = "Alice";

