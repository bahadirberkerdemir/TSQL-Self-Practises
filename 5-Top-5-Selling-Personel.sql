USE AdventureWorks2022
GO

SELECT TOP(5)
 	P.FirstName + ' ' + P.LastName [Personel Name],
 	SP.SalesYTD [Total Selling]
FROM
 	Sales.SalesPerson SP
JOIN
 	Person.Person P
ON
 	SP.BusinessEntityID = P.BusinessEntityID

Order BY [Total Selling] DESC;

