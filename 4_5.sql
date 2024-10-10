-- 5	Показать товары, для которых существует меньше 22 стилей в одном цвете (стиль и цвет определен) (Таблица Production.Product). Показать поля Name, Style и Color.

SELECT "Name", "Style", "Color"
FROM "Production"."Product" p1
WHERE p1."Style"  IS NOT NULL
     AND p1."Color"  IS NOT NULL
     AND
   (
     SELECT COUNT(DISTINCT p2."Style") AS "StyleCount"
     FROM "Production"."Product"  p2
     WHERE p1."Color" = p2."Color"
     AND p2."Style" IS NOT NULL
    ) < 22;

   