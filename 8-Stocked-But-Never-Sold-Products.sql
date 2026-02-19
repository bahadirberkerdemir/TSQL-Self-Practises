USE AdventureWorks2022
GO

SELECT 
	P.Name [Product Name]
FROM 
	Production.Product P
LEFT JOIN 
	Sales.SalesOrderDetail SOD
ON 
	P.ProductID = SOD.ProductID
Where SOD.ProductID is NULL;
