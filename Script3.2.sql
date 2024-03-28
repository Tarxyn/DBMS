-- Показать список языков (поле Name), в котором указано, есть ли
-- описание товаров на данном языке или нет, из таблиц
-- Production.Culture, Production.ProductModelProductDescriptionCulture, 
-- используя LEFT OUTER JOIN.

SELECT 
    c."Name" AS "Language",
    CASE
        WHEN pd."CultureID" IS NOT NULL THEN 'Есть описание'
        ELSE 'Нет описания'
    END AS "DescriptionStatus"
FROM 
    "Production"."Culture" c
LEFT OUTER JOIN 
    "Production"."ProductModelProductDescriptionCulture" pd ON c."CultureID" = pd."CultureID";