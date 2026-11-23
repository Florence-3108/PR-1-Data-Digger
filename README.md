Video : https://drive.google.com/file/d/1fCnM1wIrpdygoPi_qyo5cIEG1ue96rHb/view?usp=drivesdk
📌 Project Overview

Data Digger is a practical SQL project based on an E-Commerce Store. The project provides hands-on experience in managing a MySQL database using CRUD operations, SQL clauses, operators, aggregate functions, primary keys, and foreign keys.

The database contains four relational tables:

Customers
Orders
Products
OrderDetails
🎯 Objective

The main objective of this project is to design and manage a structured relational database for an e-commerce store and perform different SQL operations to retrieve, update, delete, and analyze data.

🗄️ Database Used

Database: MySQL
Database Name: "data_digger"
Tool: MySQL Workbench
📊 Database Tables

Customers
Stores information about customers.

Field| Description CustomerID| Unique ID of customer Name| Customer name Email| Customer email Address| Customer address

Orders
Stores information about customer orders.

Field| Description OrderID| Unique ID of order CustomerID| ID of the customer OrderDate| Date of order TotalAmount| Total amount of order

Products
Stores information about products available in the store.

Field| Description ProductID| Unique ID of product ProductName| Name of product Price| Price of product Stock| Available stock

OrderDetails
Stores details about products included in orders.

Field| Description OrderDetailID| Unique ID of order detail OrderID| ID of the order ProductID| ID of the product Quantity| Quantity ordered SubTotal| Subtotal amount

🔗 Database Relationships

The tables are connected using primary keys and foreign keys.

Customers | | CustomerID ↓ Orders | | OrderID ↓ OrderDetails ↑ | ProductID | Products

Relationships

One customer can have multiple orders.
One order can have multiple order details.
One product can appear in multiple order details.
"Orders.CustomerID" is a foreign key referencing "Customers.CustomerID".
"OrderDetails.OrderID" is a foreign key referencing "Orders.OrderID".
"OrderDetails.ProductID" is a foreign key referencing "Products.ProductID".
⚙️ SQL Operations Performed

Customers Table

Insert sample customers
Retrieve all customers
Update a customer's address
Delete a customer using CustomerID
Display customers whose name is "Alice"
Orders Table

Insert sample orders
Retrieve orders of a specific customer
Update order amount
Delete an order using OrderID
Retrieve orders from the last 30 days
Find highest, lowest and average order amount
Products Table

Insert sample products
Sort products by price
Update product price
Delete an out-of-stock product
Find products between ₹500 and ₹2000
Find maximum and minimum product price
OrderDetails Table

Insert order details
Retrieve details of a specific order
Calculate total revenue
Find the top 3 most ordered products
Count how many times a product was sold
🧮 SQL Functions Used

The project demonstrates several important SQL functions and concepts:

"CREATE DATABASE"
"CREATE TABLE"
"INSERT"
"SELECT"
"UPDATE"
"DELETE"
"WHERE"
"ORDER BY"
"GROUP BY"
"JOIN"
"BETWEEN"
"LIMIT"
"COUNT()"
"SUM()"
"MAX()"
"MIN()"
"AVG()"
"PRIMARY KEY"
"FOREIGN KEY"
💻 Example Queries

Retrieve all customers

SELECT * FROM Customers;

Find customers named Alice

SELECT * FROM Customers WHERE Name = 'Alice';

Sort products by price

SELECT * FROM Products ORDER BY Price DESC;

Find products between ₹500 and ₹2000

SELECT * FROM Products WHERE Price BETWEEN 500 AND 2000;

Calculate total revenue

SELECT SUM(SubTotal) AS Total_Revenue FROM OrderDetails;

Find highest, lowest and average order amount

SELECT MAX(TotalAmount) AS Highest_Order, MIN(TotalAmount) AS Lowest_Order, AVG(TotalAmount) AS Average_Order FROM Orders;

Find top 3 most ordered products

SELECT ProductID, SUM(Quantity) AS Total_Quantity FROM OrderDetails GROUP BY ProductID ORDER BY Total_Quantity DESC LIMIT 3;

Count how many times a product was sold

SELECT ProductID, COUNT(*) AS Times_Sold FROM OrderDetails WHERE ProductID = 1 GROUP BY ProductID;

🚀 How to Run the Project

Step 1: Open MySQL Workbench

Open MySQL Workbench and connect to your MySQL server.

Step 2: Create the Database

CREATE DATABASE data_digger;

Step 3: Select the Database

USE data_digger;

Step 4: Create the Tables

Create the tables in this order:

"Customers"
"Orders"
"Products"
"OrderDetails"
Step 5: Insert Sample Data

Insert sample records into each table.

Step 6: Execute Queries

Run the required SQL queries to perform CRUD operations and data analysis.

📁 Project Structure

Data-Digger/ │ ├── README.md │ └── data_digger.sql

"README.md" contains the project documentation.

"data_digger.sql" contains the database, table creation, sample data, and SQL queries.

🛠️ Requirements

To run this project, you need:

MySQL Server
MySQL Workbench
Basic knowledge of SQL
🎓 Learning Outcomes

After completing this project, the following concepts are demonstrated:

Creating and managing databases
Creating relational tables
Using primary and foreign keys
Performing CRUD operations
Retrieving and filtering data
Sorting and grouping data
Using aggregate functions
Working with relationships between tables
Understanding basic relational database design
✅ Conclusion

The Data Digger project demonstrates how a MySQL database can be designed and managed for an e-commerce store. The project uses four related tables and demonstrates CRUD operations, constraints, aggregate functions, filtering, sorting, grouping, and basic relational database concepts.

This project provides practical experience in writing SQL queries and understanding how data is stored and managed in a relational database.
