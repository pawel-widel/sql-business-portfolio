select production.Product.Name, SUM(sales.SalesOrderDetail.LineTotal) AS TotalRevenue FROM Production.Product
INNER JOIN sales.SalesOrderDetail 
ON production.Product.productid = sales.SalesOrderDetail.productid
GROUP BY production.Product.Name
ORDER BY TotalRevenue DESC;
