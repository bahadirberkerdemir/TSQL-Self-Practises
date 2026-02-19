USE AdventureWorks2022
GO

SELECT Name [Product Name], ListPrice [Price],
 	CASE
 		WHEN ListPrice = 0 THEN 'Free'
 		WHEN ListPrice < 1000 THEN 'Economic'
 		ELSE 'Luxury'
 	END [Product Segment]
FROM Production.Product;

