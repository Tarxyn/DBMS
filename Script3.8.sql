-- Показать список ProductID, которые содержатся в таблице
-- Production.Product, но не содержатся в таблице 
-- Production.TransactionHistoryArchive.

SELECT "ProductID"
FROM "Production"."Product"
WHERE "ProductID" NOT IN (
    SELECT "ProductID"
    FROM "Production"."TransactionHistoryArchive"
);