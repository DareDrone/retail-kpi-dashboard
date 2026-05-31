-- Query 1: Total revenue by region
-- Used to identify which geographic areas drive the most sales
SELECT Region, 
       ROUND(SUM(Sales), 2) AS total_revenue,
       COUNT(DISTINCT "Order ID") AS total_orders
FROM superstore
GROUP BY Region
ORDER BY total_revenue DESC;


-- Query 2: Revenue and profit margin by category
-- Used to find which product categories are most profitable, not just highest selling
SELECT Category, 
       "Sub-Category",
       ROUND(SUM(Sales), 2) AS revenue,
       ROUND(SUM(Profit), 2) AS profit,
       ROUND(SUM(Profit)*100.0/SUM(Sales), 1) AS profit_margin_pct
FROM superstore
GROUP BY Category, "Sub-Category"
ORDER BY revenue DESC;


-- Query 3: Monthly revenue trend
-- Used to identify seasonal patterns and year-on-year growth
SELECT SUBSTR("Order Date", 7, 4) AS year,
       SUBSTR("Order Date", 1, 2) AS month,
       ROUND(SUM(Sales), 2) AS monthly_revenue
FROM superstore
GROUP BY year, month
ORDER BY year, month;


-- Query 4: Top 10 products by revenue using CTE
-- CTE (Common Table Expression) used to make the query readable and reusable
WITH product_sales AS (
  SELECT "Product Name",
         Category,
         ROUND(SUM(Sales), 2) AS total_revenue,
         ROUND(SUM(Profit), 2) AS total_profit
  FROM superstore
  GROUP BY "Product Name", Category
)
SELECT * FROM product_sales
ORDER BY total_revenue DESC
LIMIT 10;