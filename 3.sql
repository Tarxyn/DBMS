--3.	Показывать список продаж за указанный период времени:
CREATE OR REPLACE FUNCTION GetSalesBetweenDates(StartDate date, EndDate date)
RETURNS TABLE (order_id INT, client_name varchar(255), product_name varchar(255), quantity INT, sale_date date) AS $$
BEGIN
    RETURN QUERY
    SELECT o."ID" as order_id,
           o."ID_Client" as client_name,
           p."Name" as product_name,
           i."Count_item" as quantity,
           o."Sale_date" as sale_date
    FROM "Orders" o
    JOIN "Items" i ON o."Vendor_Code" = i."ID"
    JOIN "Products" p ON i."ID_product" = p."Name"
    WHERE o."Sale_date" BETWEEN StartDate AND EndDate;
END;
$$ LANGUAGE plpgsql;

-- Вызов функции
select * from GetSalesBetweenDates('2023-05-03','2023-05-03');
