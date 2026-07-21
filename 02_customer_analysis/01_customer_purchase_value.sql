/*
Business Scenario

The Sales Manager wants to understand which individual customers contribute the most to the company's sales revenue.

Business Question

Which individual customers generated the highest total sales revenue?
*/

SELECT sales.customer.CustomerID, CONCAT([FirstName], ' ', [MiddleName], ' ', [LastName]) AS CustomerName, SUM(sales.SalesOrderDetail.LineTotal) AS total_revenue
FROM sales.Customer
JOIN sales.SalesOrderHeader
    ON sales.customer.CustomerID = sales.SalesOrderHeader.customerID
JOIN sales.SalesOrderDetail
    ON sales.SalesOrderHeader.salesorderid = sales.SalesOrderDetail.salesorderid
JOIN person.person
    ON sales.customer.PersonID = person.person.BusinessEntityID
GROUP BY sales.customer.customerID, FirstName, MiddleName, LastName
ORDER BY total_revenue DESC;
