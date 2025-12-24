
IF DB_ID('SalesAnalyticsDB') IS NULL
    CREATE DATABASE SalesAnalyticsDB;
GO
USE SalesAnalyticsDB;
GO
    
CREATE TABLE Regions (
    region_id INT IDENTITY(1,1) PRIMARY KEY,
    region_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL CHECK (price > 0)
);

CREATE TABLE Sales (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    sale_date DATE NOT NULL,
    customer_id INT NOT NULL,
    region_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),

    revenue AS (quantity * 
               (SELECT price FROM Products p WHERE p.product_id = Sales.product_id)) PERSISTED,

    CONSTRAINT fk_sales_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    CONSTRAINT fk_sales_region FOREIGN KEY (region_id) REFERENCES Regions(region_id),
    CONSTRAINT fk_sales_product FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
