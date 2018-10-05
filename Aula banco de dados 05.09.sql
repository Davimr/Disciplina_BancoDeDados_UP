USE AdventureWorks2016


SELECT --TOP (100)  --DISTINCT
   --*
   FirstName,
   BusinessEntityID,
   EmailPromotion,
   LastName
FROM    
   Person.Person
--WHERE
   --FirstName = 'John'
   --EmailPromotion < 1
   --BusinessEntityID >= 20000
   --Firstname LIKE 'Jo%'

   --AND
   --FirstName Like '%' + 'Jo' + '%'
   --AND EmailPromotion < 1

   --OR



SELECT DISTINCT
  FIRSTNAME,
  LASTNAME

FROM
  PERSON.Person

WHERE
   FIRSTNAME LIKE 'MI%'