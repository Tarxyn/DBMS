-- 3.	Найти сумму часов выходных для разных полов из таблицы HumanResources.Employee.

SELECT SUM(CASE WHEN "Gender" = 'M' THEN "SickLeaveHours" ELSE 0 END) AS "SumTimeMale", SUM(CASE WHEN "Gender" = 'F' THEN "SickLeaveHours" ELSE 0 END) AS "SumTimeFemale"
FROM "HumanResources"."Employee";