/* Revenue by Region */
SELECT
    r.region_name,
    SUM(s.revenue) AS total_revenue,
    RANK() OVER (ORDER BY SUM(s.revenue) DESC) AS region_rank
FROM Sales s
JOIN Regions r ON s.region_id = r.region_id
GROUP BY r.region_name;

/* Top Product per Region */
WITH ProductRevenue AS (
    SELECT
        r.region_name,
        p.product_name,
        SUM(s.revenue) AS total_revenue
    FROM Sales s
    JOIN Regions r ON s.region_id = r.region_id
    JOIN Products p ON s.product_id = p.product_id
    GROUP BY r.region_name, p.product_name
)
SELECT
    region_name,
    product_name,
    total_revenue
FROM (
    SELECT *,
           RANK() OVER (PARTITION BY region_name ORDER BY total_revenue DESC) AS rk
    FROM ProductRevenue
) t
WHERE rk = 1;
