-- 1	Показать товар с наибольшим SafetyStockLevel (Таблица Production.Product). Вывести наименование и SafetyStockLevel товара.

SELECT "Name", "SafetyStockLevel"
FROM "Production"."Product"
WHERE "SafetyStockLevel" = 
        (
          SELECT MAX("SafetyStockLevel")
          FROM "Production"."Product"
          WHERE "SafetyStockLevel" > 0
         );