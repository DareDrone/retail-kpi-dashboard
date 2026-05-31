# Retail Sales KPI Dashboard

## Business Problem
Sales reporting had no central view of regional performance or product profitability. This project replicates a common BA task: building a scalable, self-serve reporting solution to replace manual Excel work.

## What I Built
An interactive Power BI dashboard connected to a SQL database, showing key business KPIs across region, category, and time period. All visuals cross-filter each other for dynamic analysis.

## Key Business Insights
- West region is the top performer with $725,458 in total revenue
- East region is close behind at $678,781 — a competitive gap worth monitoring
- Technology category has the best profit margin at 17.4%, making it the most profitable category despite not always having the highest sales volume
- Tables and Bookcases sub-categories show negative profit despite high sales — a clear pricing or cost structure issue
- Q4 shows a consistent revenue spike across all years, indicating strong seasonal demand

## Overall KPIs
- Total Revenue: $2,297,201
- Total Profit: $286,397
- Overall Profit Margin: 12.5%
- Total Orders: 5,009

## Tools Used
- SQLite and DB Browser — data storage and SQL querying
- SQL — data exploration, aggregation, and trend analysis
- Power BI Desktop — dashboard building, DAX measures, cross-filtering
- Dataset: Kaggle Superstore (9,994 rows, public domain)

## SQL Concepts Used
- GROUP BY with SUM, COUNT, ROUND for aggregation
- Calculated fields (profit margin %) derived from raw columns
- String functions (SUBSTR) for date extraction and trend analysis
- CTEs (Common Table Expressions) for readable query structure
- DISTINCT to avoid double-counting orders

## Files
- superstore_queries.sql — all SQL queries with business context
- dashboard.pbix — Power BI dashboard file
- dashboard_screenshot.png — dashboard preview
- Sample - Superstore.csv — raw dataset
