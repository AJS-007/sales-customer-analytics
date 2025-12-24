/* Monthly Revenue Trend */
SELECT
    YEAR(sale_date) AS year,
    MONTH(sale_date) AS month,
    SUM(revenue) AS total_revenue
FROM Sales
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY year, month;

/* Month-over-Month Growth */
WITH MonthlyRevenue AS (
    SELECT
        YEAR(sale_date) AS year,
        MONTH(sale_date) AS month,
        SUM(revenue) AS total_revenue
    FROM Sales
    GROUP BY YEAR(sale_date), MONTH(sale_date)
)
SELECT
    year,
    month,
    total_revenue,
    LAG(total_revenue) OVER (ORDER BY year, month) AS prev_month_revenue,
    CASE
        WHEN LAG(total_revenue) OVER (ORDER BY year, month) IS NULL THEN NULL
        ELSE (total_revenue - LAG(total_revenue) OVER (ORDER BY year, month))
             * 100.0 / LAG(total_revenue) OVER (ORDER BY year, month)
    END AS growth_percentage
FROM MonthlyRevenue;
