-- Показать комбинированный список таблиц Production.Product
-- по полям ProductID, StandardCost, 
-- Purchasing.ProductVendor по полям ProductID, 
-- StandardPrice, используя UNION.


SELECT 
    "ProductID",
    "StandardCost" AS Cost
FROM 
    "Production"."Product"

UNION

SELECT 
    pv."ProductID",
    "StandardPrice" AS Cost
FROM 
    "Purchasing"."ProductVendor" pv;