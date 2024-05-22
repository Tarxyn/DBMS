--2.	Выдать ассортимент товара, заказанного данным магазином:
SELECT p."ID", p."Name", o."Cost", i."Count_item" as quantity
FROM "Products" p
JOIN "Items" i ON p."ID" = i."ID_product"
JOIN "Orders" o ON i."ID" = o."ID_Item"
WHERE o."ID_Item" = 2;
