-- Показать список людей (поля FirstName, LastName), в котором
-- указано, есть ли у человека часы отпуска (VacationHours) или нет, 
-- из таблиц HumanResources.Employee, Person.Person, 
-- используя RIGHT OUTER JOIN.

SELECT 
    p."FirstName",
    p."LastName",
    CASE
        WHEN e."VacationHours" IS NOT NULL THEN 'Есть часы отпуска'
        ELSE 'Нет часов отпуска'
    END AS "VacationStatus"
FROM 
    "HumanResources"."Employee" e
RIGHT OUTER JOIN 
    "Person"."Person" p ON e."BusinessEntityID" = p."BusinessEntityID";