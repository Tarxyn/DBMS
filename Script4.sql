-- Из таблицы Purchasing.ProductVendor показать ID товара 
-- (ProductID), минимальное и максимальное количество заказов 
-- (MinOrderQty и MaxOrderQty) и существующее количество заказов 
-- на данный момент (OnOrderQty).

SELECT "ProductID", MIN("MinOrderQty") AS "MinOrderQty", MAX("MaxOrderQty") AS "MaxOrderQty", SUM("OnOrderQty") AS "TotalOnOrderQty"
FROM "Purchasing"."ProductVendor"
GROUP BY "ProductID";