-- Показать бонус (Bonus) и поля FirstName, LastName из таблиц
-- Person.Person, Sales.SalesPerson

SELECT 
    sp."Bonus",
    p."FirstName",
    p."LastName"
FROM 
    "Person"."Person" p
JOIN 
    "Sales"."SalesPerson" sp ON p."BusinessEntityID" = sp."BusinessEntityID";