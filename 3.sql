--3.	Показывать список продаж за указанный период времени:
CREATE OR REPLACE PROCEDURE GetSalesBetweenDates(StartDate date, EndDate date)
LANGUAGE plpgsql as $$
begin
	
    PERFORM o."ID" as order_id,
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
WHERE
    o."Sale_date" BETWEEN StartDate AND EndDate;

END;
$$;

call GetSalesBetweenDates('2023-05-03','2023-05-03');
