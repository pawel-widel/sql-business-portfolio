/*
Business Question

Which sales territories generated the highest total sales?

Objective:
Identify the territories that contribute the most to overall company revenue.
*/
SELECT TerritoryID, Name, SalesYTD FROM sales.SalesTerritory
WHERE TerritoryID IS NOT NULL
GROUP BY TerritoryID, SalesYTD, Name ORDER BY SalesYTD DESC;
