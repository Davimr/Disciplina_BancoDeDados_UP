USE AdventureWorks2016

SELECT
   ProductID,
   [Name],
   ListPrice
FROM 
   Production.Product
WHERE
   ListPrice = 0


SELECT
   ProductID,
   [Name],
   ListPrice
FROM 
   Production.Product
WHERE
   ListPrice >=100 AND ListPrice <=1000
   