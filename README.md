
# Sales & Customer Analytics using SQL (MS SQL Server)

## Overview
This project demonstrates end-to-end sales and customer analytics using MS SQL Server.
The focus is on translating raw transactional data into business-driven insights such as
revenue growth, customer value, regional performance, and dependency risks.

The project is structured to reflect industry-standard SQL analytics workflows,
including schema design, data population, analytical queries, and business interpretation.

## Business Objectives
The analysis answers the following real-world business questions:

- How is revenue trending month over month?
- Which regions and products generate the highest revenue?
- Who are the most valuable customers?
- Are repeat customers increasing over time?
- Is the business dependent on a small set of customers?
- Which regions should receive further investment?

## Database Schema
The database consists of the following tables:

- Regions – Geographic sales regions
- Customers – Customer master data
- Products – Product catalog
- Sales – Transactional sales data

Relational integrity is enforced using primary keys and foreign keys.

## Key SQL Concepts Used
- INNER JOIN and LEFT JOIN
- GROUP BY with aggregate functions
- Window functions (RANK, LAG, SUM OVER)
- Common Table Expressions (CTEs)
- CASE statements
- Time-based analysis using YEAR and MONTH
- Customer lifetime value (CLV)
- Month-over-month growth analysis
- indexes

## Project Structure
sales-customer-analytics/
│
├── README.md
├── schema/
│   ├── create_tables.sql
│   
│
├── data/
│   └── sample_inserts.sql
│
├── analysis/
│   ├── revenue_growth.sql
│   ├── repeat_customers.sql
│   ├── customer_ranking.sql
│   └── region_performance.sql
│
└── insights/
    └── business_insights.md

## How to Run the Project
1. Open SQL Server Management Studio (SSMS)
2. Execute files in this order:
   1. schema/create_tables.sql
   2. data/sample_inserts.sql
3. Run queries from the analysis folder as needed

## Summary of Insights
- Revenue shows consistent month-over-month growth
- North and West regions generate the highest revenue
- Electronics products dominate sales
- A small group of customers contributes a large share of total revenue
- Repeat customer behavior indicates healthy retention
- Moderate revenue concentration risk exists

Detailed insights are documented in insights/business_insights.md.

## Tools & Technologies
- MS SQL Server
- SQL Server Management Studio (SSMS)

## Author
Anjali Jaiswal
