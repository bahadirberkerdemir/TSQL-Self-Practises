USE AdventureWorks2022
GO

SELECT CustomerID [Customer ID],
 	SUM(TotalDue) [Total Buying]
FROM Sales.SalesOrderHeader

Group BY CustomerID
HAVING SUM(TotalDue) >= 100000
Order BY SUM(TotalDue) DESC;