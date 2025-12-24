ALTER TABLE Sales
ADD CONSTRAINT fk_region
FOREIGN KEY (region_id) REFERENCES Regions(region_id);

ALTER TABLE Sales
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id) REFERENCES Products(product_id);

ALTER TABLE Sales
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);
