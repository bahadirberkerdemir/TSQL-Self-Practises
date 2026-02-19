USE AdventureWorks2022
GO

SELECT
 	CustomerID [Customer No],
 	Count(*) [SellAmount],
 	AVG(SubTotal) [Average Spending]
FROM Sales.SalesOrderHeader
Group BY CustomerID
Order BY SellAmount DESC;
