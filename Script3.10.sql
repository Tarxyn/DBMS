-- Показать список ProductID, которые содержатся в таблице
-- Production.Product, но не содержатся в таблице 
-- Production.TransactionHistoryArchive.
-- Ограничить результирующий набор, полученный в п.8.
-- Пропустить 15 строк из результирующего набора, полученного в п.9.

SELECT "ProductID"
FROM "Production"."Product"
EXCEPT
SELECT "ProductID"
FROM "Production"."TransactionHistoryArchive"
limit 5 offset 2;
