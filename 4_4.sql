-- 4	Для каждого сотрудника выведите его идентификатор, время его приема на работу, а также ту же самую информацию для сотрудника,
-- который был принят на работу перед ним (время приема в один день - приняты в одно и то же время) ("HumanResources"."Employee").

select 
  e1."BusinessEntityID", 
  e1."HireDate",
       (
         select e2."BusinessEntityID"
         from "HumanResources"."Employee" e2
         where e2."HireDate" < e1."HireDate"
         order by e2."HireDate" desc limit 1 
        ) AS "Previous BusinessEntityID",
        (
         select e2."HireDate"
         from "HumanResources"."Employee" e2
         where e2."HireDate" < e1."HireDate"
         order by e2."HireDate" desc limit 1 
        ) AS "Previous HireDate"
from "HumanResources"."Employee" e1
order by e1."HireDate" desc;



