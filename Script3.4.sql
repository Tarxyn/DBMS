-- Показать список покупателей (CustomerID), к которым относятся
-- несколько сроков выполнения заказа (DueDate), из таблицы
-- Sales.SalesOrderHeader, используя SELF JOIN.

SELECT 
    so1."CustomerID",
    so1."DueDate"
FROM 
    "Sales"."SalesOrderHeader" so1
JOIN 
    "Sales"."SalesOrderHeader" so2 ON so1."CustomerID" = so2."CustomerID"
WHERE 
    so1."DueDate" <> so2."DueDate"
ORDER BY 
    so1."CustomerID", so1."DueDate";