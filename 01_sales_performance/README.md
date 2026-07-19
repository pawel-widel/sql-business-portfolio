# Sales Performance Analysis

## Business Scenario

The Sales Director wants to better understand the company's sales performance.
Using AdventureWorks, we analyze sales data to identify revenue trends, top-performing products, and the most valuable sales territories.

---

## Business Objective

Answer common business questions that support sales decision-making using SQL.

---

## Skills Practiced

- SELECT
- WHERE
- JOIN
- GROUP BY
- ORDER BY
- Aggregate Functions (SUM, COUNT, AVG)

---

## Database

Microsoft AdventureWorks

---

## Expected Deliverables

- SQL queries answering business questions
- Short explanation of each solution
- Business insights based on the query results

## Case Study 1 – Revenue by Territory

### Business Question

Which sales territories generated the highest total sales?

### Business Assumption

The `SalesYTD` column in `Sales.SalesTerritory` is considered a trusted business metric maintained by the organization.

### SQL Concepts

- SELECT
- WHERE
- ORDER BY

### Business Insight

The analysis identifies the best-performing sales territories based on Year-to-Date sales, helping management quickly understand regional sales performance.

## Case Study 2 – Best Selling Products

### Business Question

Which products generated the highest total sales revenue?

### Business Assumption

There is no trusted pre-calculated revenue metric available at the product level. Revenue is based on transactional sales data.

### Data Sources

- `Sales.SalesOrderDetail`
- `Production.Product`

### SQL Concepts

- SELECT
- INNER JOIN
- SUM
- GROUP BY
- ORDER BY

### Business Insight

The analysis identifies the products generating the highest total sales revenue, providing insight into which products contribute the most to overall sales performance.

## Case Study 3 – Sales Performance by Salesperson

### Business Question

Which salespeople generated the highest total sales revenue, and how many orders did each salesperson handle?

### Business Assumption

The `SalesYTD` metric in `Sales.SalesPerson` is considered a trusted measure of salesperson sales performance. Only orders assigned to a salesperson are included in the analysis.

### Data Sources

- `Sales.SalesPerson`
- `Person.Person`
- `Sales.SalesOrderHeader`

### SQL Concepts

- SELECT
- INNER JOIN
- CONCAT
- COUNT
- GROUP BY
- ORDER BY

### Business Insight

The analysis compares individual salesperson performance based on Year-to-Date sales and the number of orders handled, providing management with a view of both sales value and sales activity.