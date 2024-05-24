--2.	Выдать ассортимент товара, заказанного данным магазином:
CREATE OR REPLACE PROCEDURE GetItemsOrdersByStore(ID_product INT)
LANGUAGE plpgsql as $$
begin
	
    PERFORM p."ID", p."Name", o."Cost", i."Count_item" as quantity
	FROM "Products" p
	JOIN "Items" i ON p."Name" = i."ID_product"
	JOIN "Orders" o ON i."ID" = o."Vendor_Code"
	WHERE o."Vendor_Code" = ID_product;
END;
$$;

call GetItemsOrdersByStore(3);
