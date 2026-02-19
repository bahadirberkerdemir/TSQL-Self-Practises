USE AdventureWorks2022
GO

SELECT
 	STE.Name as [Region],
 	SUM(SOH.TotalDue) as [Total Due]
FROM
 	Sales.SalesOrderHeader SOH
JOIN
 	Sales.SalesTerritory STE
ON STE.TerritoryID = SOH.TerritoryID

Group BY Name
Order BY [Total Due] DESC;
