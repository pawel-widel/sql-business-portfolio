/*
Business Scenario

The Sales Manager wants to identify the company's most active customers based on the number of orders they have placed.

Understanding customer purchasing frequency helps identify loyal customers and supports customer retention initiatives.

Business Question

Which individual customers placed the highest number of sales orders?
*/

SELECT sales.customer.CustomerID, CONCAT([FirstName], ' ', [MiddleName], ' ', [LastName]) AS CustomerName, COUNT(sales.SalesOrderHeader.PurchaseOrderNumber) AS Number_of_Orders
FROM sales.Customer
JOIN sales.SalesOrderHeader
    ON sales.customer.CustomerID = sales.SalesOrderHeader.customerID
JOIN person.person
    ON sales.customer.PersonID = person.person.BusinessEntityID
GROUP BY sales.customer.customerID, FirstName, MiddleName, LastName
ORDER BY Number_of_Orders DESC;