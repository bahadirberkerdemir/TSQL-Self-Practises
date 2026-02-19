USE AdventureWorks2022
GO

SELECT SalesOrderID [Sale ID], TotalDue [Total Due],
 	SUM(TotalDue) OVER(

 	Order BY SalesOrderID

) Cumulative

From Sales.SalesOrderHeader;
