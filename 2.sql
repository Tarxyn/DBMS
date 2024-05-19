--2.	Выдать ассортимент товара, заказанного данным магазином:
SELECT p."ID", p."Name", o."Cost", i."Count_item" as quantity
FROM "Product" p
JOIN "Item" i ON p."ID" = i."ID_product"
JOIN "Order" o ON i."ID" = o."ID_Item"
WHERE o."ID_Item" = <STORE_ID>;