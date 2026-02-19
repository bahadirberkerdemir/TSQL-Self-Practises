USE AdventureWorks2022
GO

Select Name [Product Name], ListPrice [Price]
From Production.Product
Where Name Like '%Mountain%'
Order BY Price DESC;
