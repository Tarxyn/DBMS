-- Из таблицы HumanResources.EmployeePayHistory показать
-- поля BusinessEntityID, Rate и PayFrequency. Все строки поля 
-- PayFrequency со значением 2 заменить на NULL и вынести в отельное 
-- поле с названием OtherPayFrequency.

SELECT "BusinessEntityID", "Rate", "PayFrequency",
       CASE 
           WHEN "PayFrequency" = 2 THEN NULL 
           ELSE "PayFrequency" 
       END AS "OtherPayFrequency"
FROM "HumanResources"."EmployeePayHistory";
