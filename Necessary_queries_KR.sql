-- 1.	Выдать ассортимент товара, находящегося на складе сейчас:
SELECT * FROM "Item"  WHERE "Count_item"  > 0;

--2.	Выдать ассортимент товара, заказанного данным магазином:
SELECT p."ID", p."Name", o."Cost", i."Count_item" as quantity
FROM "Product" p
JOIN "Item" i ON p."ID" = i."ID_product"
JOIN "Order" o ON i."ID" = o."ID_Item"
WHERE o."ID_Item" = 4;


--3.	Показывать список продаж за указанный период времени:
SELECT
    o."ID" as order_id,
    c."Name" as client_name,
    p."Name" as product_name,
    i."Count_item" as quantity,
    o."Sale_date" as sale_date
FROM
    "Order" o
JOIN
    "Clients" c ON o."ID_Client" = c."ID"
JOIN
    "Item" i ON o."ID_Item" = i."ID"
JOIN
    "Product" p ON i."ID_product" = p."ID"
WHERE
    o."Sale_date" BETWEEN '2023-05-03' AND '2023-05-03';

   
--4.	Показывать список клиентов, имеющих скидку:
SELECT * FROM "Clients" WHERE "Discount"  > 0;