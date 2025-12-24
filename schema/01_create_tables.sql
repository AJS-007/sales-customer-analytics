CREATE DATABASE SalesAnalyticsDB;
GO

USE SalesAnalyticsDB;
GO

CREATE TABLE Regions (
    region_id INT IDENTITY(1,1) PRIMARY KEY,
    region_name VARCHAR(50)
);

CREATE TABLE Customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    region_id INT
);

CREATE TABLE Products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE Sales (
    sale_id INT IDENTITY(1,1) PRIMARY KEY,
    sale_date DATE NOT NULL,
    region_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    revenue DECIMAL(10,2) NOT NULL,
    customer_id INT
);
