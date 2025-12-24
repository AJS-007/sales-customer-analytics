/* Customer Lifetime Value */
SELECT
    c.customer_name,
    s.sale_date,
    s.revenue,
    SUM(s.revenue) OVER (PARTITION BY c.customer_id) AS customer_lifetime_value
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
ORDER BY c.customer_name, s.sale_date;

/* Top Customers Overall */
WITH CustomerRevenue AS (
    SELECT customer_id, SUM(revenue) AS total_revenue
    FROM Sales
    GROUP BY customer_id
)
SELECT
    customer_id,
    total_revenue,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM CustomerRevenue;
