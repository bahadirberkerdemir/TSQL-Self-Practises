USE AdventureWorks2022
GO

SELECT Name, ProductNumber
FROM Production.Product
WHERE (Color = 'red' OR Color = 'black') AND ListPrice >= 500;
