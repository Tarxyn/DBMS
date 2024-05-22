--3.	Показывать список продаж за указанный период времени:
SELECT
    o."ID" as order_id,
    c."Name" as client_name,
    p."Name" as product_name,
    i."Count_item" as quantity,
    o."Sale_date" as sale_date
FROM
    "Orders" o
JOIN
    "Clients" c ON o."ID_Client" = c."ID"
JOIN
    "Items" i ON o."ID_Item" = i."ID"
JOIN
    "Products" p ON i."ID_product" = p."ID"
WHERE
    o."Sale_date" BETWEEN '2023-05-03' AND '2023-05-03';
