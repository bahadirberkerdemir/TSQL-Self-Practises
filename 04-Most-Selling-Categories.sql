USE AdventureWorks2022
GO

SELECT
    PC.Name AS [Category Name],
    SUM(SOD.LineTotal) AS [LineTotal]
FROM
 	Sales.SalesOrderDetail SOD
JOIN
 	Production.Product P
ON
 	SOD.ProductID = P.ProductID
JOIN
 	Production.ProductSubcategory PSC
ON
 	P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN
 	Production.ProductCategory PC
ON
 	PSC.ProductCategoryID = PC.ProductCategoryID

Group BY PC.Name
Order BY LineTotal DESC;
