-- 3.	Найти сумму часов выходных для разных полов из таблицы HumanResources.Employee.

select "Gender", SUM("SickLeaveHours") AS "SumTime" from "HumanResources"."Employee" group by  "Gender";
