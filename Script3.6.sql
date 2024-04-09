-- Показать подкатегории продуктов (ProductSubcategoryID из 
-- таблицы Production.Product), которые имеют несколько цветов,
-- содержащих в названии букву “e”, используя SELF JOIN.

SELECT
p1."ProductSubcategoryID",
p1."Name"
FROM
"Production"."Product" p1
JOIN
"Production"."Product" p2 ON p1."ProductSubcategoryID" = p2."ProductSubcategoryID"
WHERE
p1."Name" LIKE '%e%' AND
p1."Color" <> p2."Color"
