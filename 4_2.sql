-- 2	Ранжирование сотрудников по полу. ("HumanResources"."Employee"). Примечание к ранжированию – ранг может начинаться с произвольного числа (например, 2 или 5), главное – ранг не должен уменьшаться.

SELECT ep."BusinessEntityID"
     , ep."Gender"
     , (
     	SELECT COUNT(*)
     	FROM "HumanResources"."Employee" ep2 
     	WHERE ep2."Gender" <= ep."Gender" 
       ) AS "Range"
FROM "HumanResources"."Employee" ep
ORDER BY "Range";

