USE AdventureWorks2022
GO

SELECT
 	MONTH(OrderDate) [Month],
 	SUM(TotalDue) [Monthly Income]
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2013

Group BY MONTH(OrderDate)
Order BY MONTH(OrderDate);
