-- Представление "Продажи товаров"
CREATE OR REPLACE VIEW "product_sales" as
SELECT
    o."ID" as order_id,
    c."Name" as client_name,
    p."Name" as product_name,
    i."Count_item" as quantity,
    o."Sale_date" as sale_date
FROM
    "Orders" o
JOIN
    "Clients" c ON o."ID_Client" = c."Name"
JOIN
    "Items" i ON o."Vendor_Code" = i."ID"
JOIN
    "Products" p ON i."ID_product" = p."Name"

--Вызов представления view
SELECT * FROM "product_sales" 
