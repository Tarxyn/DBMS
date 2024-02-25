-- Из таблицы Production.Product показать поля ProductID, 
-- Name с применением функции COALESCE(). Показать поле 
-- Measurement, так, чтобы, если значение в поле Weight известно, то 
-- показать его, а иначе, показать значение в поле ProductLine. Если и 
-- в поле ProductLine значение неизвестно, то вывести значение 
-- 'UNKNOWN'.

SELECT 
    "ProductID",
    "Name",
    COALESCE( cast("Weight" as varchar(10)), "ProductLine", 'unknown') AS "Measurement"
FROM "Production"."Product";