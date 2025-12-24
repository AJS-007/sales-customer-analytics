INSERT INTO Regions (region_name)
VALUES ('North'), ('South'), ('East'), ('West');

INSERT INTO Customers (customer_name, email)
VALUES
('Amit Sharma', 'amit@gmail.com'),
('Neha Verma', 'neha@gmail.com'),
('Rahul Singh', 'rahul@gmail.com'),
('Priya Nair', 'priya@gmail.com');

INSERT INTO Products (product_name, category, price)
VALUES
('Laptop', 'Electronics', 500),
('Mobile', 'Electronics', 500),
('Tablet', 'Electronics', 600);

/* 
   SALES DATA (2024)
*/
INSERT INTO Sales (sale_date, customer_id, region_id, product_id, quantity)
VALUES
-- January
('2024-01-05', 1, 1, 1, 10),
('2024-01-06', 2, 2, 2, 5),
('2024-01-07', 3, 3, 1, 8),
('2024-01-08', 4, 4, 3, 12),
('2024-01-09', 1, 1, 2, 6),

-- February
('2024-02-05', 1, 1, 1, 12),
('2024-02-06', 2, 2, 2, 7),
('2024-02-07', 3, 3, 1, 9),
('2024-02-08', 4, 4, 3, 13),

-- March
('2024-03-05', 1, 1, 1, 14),
('2024-03-06', 2, 2, 2, 9),
('2024-03-07', 3, 3, 2, 8),
('2024-03-08', 4, 4, 3, 14),

-- April
('2024-04-05', 1, 1, 1, 16),
('2024-04-06', 2, 2, 2, 11),
('2024-04-07', 3, 3, 3, 9),
('2024-04-08', 4, 4, 1, 10),

-- May
('2024-05-05', 1, 1, 2, 13),
('2024-05-06', 2, 2, 1, 15),
('2024-05-07', 3, 3, 2, 10),
('2024-05-08', 4, 4, 3, 11),

-- June
('2024-06-05', 1, 1, 1, 18),
('2024-06-06', 2, 2, 2, 14),
('2024-06-07', 3, 3, 1, 12),
('2024-06-08', 4, 4, 3, 13),

-- July–September
('2024-07-05', 1, 1, 1, 5),
('2024-07-12', 1, 1, 2, 4),
('2024-07-20', 1, 1, 1, 6),
('2024-07-10', 2, 2, 2, 3),
('2024-08-15', 2, 2, 1, 4),
('2024-08-05', 3, 3, 3, 2),
('2024-09-18', 4, 3, 1, 3);

/* 
   INDEXES (Analytics performance)
 */
CREATE INDEX idx_sales_date ON Sales(sale_date);
CREATE INDEX idx_sales_customer ON Sales(customer_id);
CREATE INDEX idx_sales_region ON Sales(region_id);
CREATE INDEX idx_sales_product ON Sales(product_id);
