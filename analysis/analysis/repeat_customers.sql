/* Repeat Customers by Month */
WITH CustomerOrders AS (
    SELECT
        customer_id,
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        COUNT(*) AS orders_count
    FROM Sales
    GROUP BY customer_id, YEAR(sale_date), MONTH(sale_date)
)
SELECT
    year,
    month,
    COUNT(DISTINCT customer_id) AS repeat_customers
FROM CustomerOrders
WHERE orders_count > 1
GROUP BY year, month;
