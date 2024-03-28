-- Показать список сроков выполнения заказа (DueDate), которые
-- относятся к нескольким покупателям (CustomerID), из таблицы
-- Sales.SalesOrderHeader, используя SELF JOIN.

SELECT 
    so1."DueDate",
    COUNT(DISTINCT so1."CustomerID") AS "CustomerCount"
FROM 
    "Sales"."SalesOrderHeader" so1
JOIN 
    "Sales"."SalesOrderHeader" so2 ON so1."DueDate" = so2."DueDate" AND so1."CustomerID" <> so2."CustomerID"
GROUP BY 
    so1."DueDate"
HAVING 
    COUNT(DISTINCT so1."CustomerID") > 1
ORDER BY 
    so1."DueDate";