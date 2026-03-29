# DA101: Data Analytics for Business

**LSE Data Analytics Career Accelerator -- Cohort 3 (2024-2025)**
**Student:** Emmanuel Wagaba

---

## Overview

Data Analytics for Business is the foundational course of the LSE Data Analytics Career Accelerator programme. It introduces core concepts in data analytics, business intelligence, and data-driven decision making. The course builds practical skills in Tableau for data visualisation and SQL for database querying, culminating in a comprehensive marketing analytics project for a fictional company, 2Market.

---

## Modules

| Module | Topic | Key Activities |
|--------|-------|----------------|
| 1 | Introduction to Data Analytics | Data types, the analytics lifecycle, foundational concepts |
| 2 | Data Fundamentals | Data exploration, introductory visualisation concepts |
| 3 | Data Visualisation with Tableau | Chart selection, filtering, joins, FIFA player analysis, soccer player data exploration, complex visualisations |
| 4 | SQL Fundamentals | SELECT, CREATE, UPDATE, GROUP BY, data cleaning; Chinook database, BrightFuture ERD, Pizza and Library activities |
| 5 | Advanced SQL | INNER/LEFT/RIGHT/FULL joins, set operations (UNION, EXCEPT, INTERSECT), COALESCE, NULLIF, subqueries; product sales dataset |
| 6 | Communicating Insights | Data storytelling, advanced analytics concepts, presentation of findings |

---

## Tools and Technologies

- **Tableau Desktop** -- interactive dashboards, workbooks, and visual analytics (85+ workbooks across modules)
- **SQL / PostgreSQL / pgAdmin** -- database querying, table creation, joins, and aggregation (45+ SQL files)
- **Microsoft Excel** -- data exploration and supplementary analysis
- **CSV data handling** -- importing, cleaning, and preparing datasets

---

## Key Learnings

- Understanding the data analytics lifecycle and its application to business problems
- Selecting appropriate chart types for different data scenarios (chart selection framework, Visual Vocabulary)
- Building interactive Tableau dashboards with filters, joins, and complex visualisations
- Writing SQL queries from basic SELECT statements to multi-table joins and subqueries
- Using Common Table Expressions (CTEs) and CASE statements for advanced analysis
- Aggregating and grouping data to derive business insights
- Data cleaning techniques in both SQL and Tableau
- Communicating data findings to stakeholders through reports and presentations
- Project planning principles (scope, stakeholders, milestones, deliverables)

---

## Datasets Used

| Dataset | Context | Description |
|---------|---------|-------------|
| 2Market (marketing_data.csv, ad_data.csv) | Assignment | Customer demographics, spending by product category, advertising channel conversions across 8 countries |
| Chinook Database | Modules 4-5 | Music store database with artists, albums, tracks, customers, invoices |
| Soccer Players (players_personal.csv, players_gamedetails.csv) | Module 3 | FIFA player attributes: ratings, positions, 30+ skill metrics |
| Product Sales (counties, products, sales, stores) | Module 5 | Multi-table retail sales dataset (67+ MB) for join practice |
| Sample Superstore | Module 3 | Retail orders dataset for Tableau visualisation |
| BrightFuture Database | Module 4 | ERD-based stakeholder reporting exercise |

---

## Masterclass

**Masterclass in Descriptive Statistics and Visualisations (August 2024)**

- Descriptive statistics principles and interpretation
- Box plot analysis for distribution and outlier detection
- Shopping trends analysis with Excel and Tableau
- Sales Trends Analysis dashboard (Tableau workbook)

---

## Assignment: 2Market Project

**Objective:** Analyse marketing campaign data for 2Market to identify the most popular products by country and marital status, evaluate advertising channel effectiveness, and provide actionable business recommendations.

**Deliverables:**
- PDF report and PowerPoint presentation with video recording
- Tableau dashboard with interactive visualisations
- 9 SQL query files covering the full analytical pipeline
- Cleaned CSV datasets (multiple versions)
- Excel workbooks with exploratory analysis

**SQL Queries Written:**
1. Table creation with PK-FK relationships and calculated columns
2. Total spend per country (Spain identified as highest at $659,557)
3. Spend per product per country breakdown
4. Detailed spend lists per country per product
5. Most popular product category in each country
6. Product popularity by geography
7. Product preferences by marital status
8. Spending analysis: households with children/teens vs. without (using CASE and GREATEST functions)
9. Advanced advertising platform effectiveness analysis using CTEs, testing Twitter, Instagram, and Facebook conversion rates by country

**Key Findings:**
- Spain was the highest-spending country across all product categories
- Spending patterns varied significantly by marital status and family composition
- Social media advertising conversion rates differed by platform and geography

**File Location:** `Course 1/2Market Project - Assignment/`

---

## File Inventory

| Type | Count |
|------|-------|
| Tableau Workbooks (.twb/.twbx) | 85+ |
| SQL Files (.sql) | 45+ |
| CSV Datasets | 30+ |
| Video Recordings (classes, masterclass, presentation) | 10+ |
| PDF/PPTX Documentation | 5+ |

---

## Reflections

<!--
Fill in your personal reflections below:
- What was the most valuable skill you gained from this course?
- Which module or activity was the most challenging?
- How has this course changed the way you approach business data?
- What would you do differently if starting again?
-->

*To be completed.*

---

## Recommendations

- **Publish to Tableau Public:** Upload the 2Market dashboard and best practice workbooks to [Tableau Public](https://public.tableau.com/) for portfolio visibility
- **SQL Practice:** Continue building SQL skills with window functions, recursive CTEs, and query optimisation on platforms like LeetCode or HackerRank
- **Dashboard Design:** Explore Tableau storytelling features to create narrative-driven dashboards for future projects
