--4.	Показывать список клиентов, имеющих скидку:
CREATE OR REPLACE FUNCTION GetListClientsWithDiscount(minDiscount INT)
RETURNS SETOF "Clients" AS $$
BEGIN
    RETURN QUERY
    SELECT *
    FROM "Clients"
    WHERE "Discount" > minDiscount;
END;
$$ LANGUAGE plpgsql;

select GetListClientsWithDiscount(0);
