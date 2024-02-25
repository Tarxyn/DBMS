-- 5.	Вывести ProductID из таблицы Production.ProductListPriceHistory у которых максимальная цена (ListPrice) больше 24. 
-- Добавить столбец с рангом, определяя его порядок в зависимости от количества строк, содержащих максимальную цену. (Использовать RANK).

 select "ProductID", RANK() OVER(ORDER BY count("ProductID") DESC), count("ProductID") as "Count"  
from "Production"."ProductListPriceHistory" where "ListPrice" > 24 group by "ProductID";

