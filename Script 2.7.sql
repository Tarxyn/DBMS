-- Вывести Color, Class и максимальную цену товара 
-- ListPrice для каждого цвета Color с разными классами Class, 
-- предусмотреть вывод максимальной цены ListPrice для всех 
-- Color у различных Class из таблицы Production.Product
--использовать GROUPING SETS. Отделить строки, 
--созданные с помощью агрегатных функций от строк из фактической таблицы

SELECT "Color", "Class", MAX("ListPrice") AS MaxPrice
FROM "Production"."Product"
GROUP BY GROUPING SETS (("Color"), ("Class"), ());