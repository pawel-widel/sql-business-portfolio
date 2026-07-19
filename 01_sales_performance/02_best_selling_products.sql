/*Business Scenario

The Sales Director wants to identify which products generate the highest revenue in order to support pricing, marketing, and inventory decisions.

Business Question

Which products generated the highest total sales revenue?
*/

select production.Product.Name, SUM(sales.SalesOrderDetail.LineTotal) AS TotalRevenue FROM Production.Product
INNER JOIN sales.SalesOrderDetail 
ON production.Product.productid = sales.SalesOrderDetail.productid
GROUP BY production.Product.Name
ORDER BY TotalRevenue DESC;
