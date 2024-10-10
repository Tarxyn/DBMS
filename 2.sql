--2.	Выдать ассортимент товара, заказанного данным магазином:
CREATE OR REPLACE FUNCTION GetItemsOrdersByStore(ID_product INT)
RETURNS TABLE ("ID" INT, "Name" varchar(255), "Cost" numeric, "quantity" INT) AS $$
BEGIN
    RETURN QUERY
    SELECT p."ID", p."Name", o."Cost", i."Count_item" as quantity
    FROM "Products" p
    JOIN "Items" i ON p."Name" = i."ID_product"
    JOIN "Orders" o ON i."ID" = o."Vendor_Code"
    WHERE o."Vendor_Code" = ID_product;
END;
$$ LANGUAGE plpgsql;

-- Вызов функции
select * from GetItemsOrdersByStore(3);
