-- Показать список ProductID, которые содержатся в таблице
-- Production.Product, но не содержатся в таблице 
-- Production.TransactionHistoryArchive.
-- Ограничить результирующий набор, полученный в п.8.

SELECT "ProductID"
FROM "Production"."Product"
EXCEPT
SELECT "ProductID"
FROM "Production"."TransactionHistoryArchive"
limit 5;
