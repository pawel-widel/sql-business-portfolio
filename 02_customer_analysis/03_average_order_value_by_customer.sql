/*
Business Scenario

The Sales Manager wants to identify customers who place the most valuable orders on average.

This information can help distinguish customers who make fewer but higher-value purchases from those who place many smaller orders.

Business Question

Which individual customers have the highest average sales order value?
*/

SELECT sales.customer.CustomerID, CONCAT([FirstName], ' ', [MiddleName], ' ', [LastName]) AS CustomerName, AVG(sales.SalesOrderHeader.TotalDue) AS Average_Order_Value
FROM sales.Customer
JOIN sales.SalesOrderHeader
    ON sales.customer.CustomerID = sales.SalesOrderHeader.customerID
JOIN person.person
    ON sales.customer.PersonID = person.person.BusinessEntityID
GROUP BY sales.customer.customerID, FirstName, MiddleName, LastName
ORDER BY Average_Order_Value DESC;

