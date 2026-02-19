USE AdventureWorks2022
GO

SELECT SalesOrderID [Product ID], TotalDue [Total Due],
 	SUM(TotalDue) OVER(

 	Order BY SalesOrderID

) Cumulative
From Sales.SalesOrderHeader;