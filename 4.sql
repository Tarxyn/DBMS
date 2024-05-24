--4.	Показывать список клиентов, имеющих скидку:
CREATE OR REPLACE PROCEDURE GetListClientsWithDiscount(minDiscount INT)
LANGUAGE plpgsql as $$
begin
    perform  * 
    FROM "Clients"
    WHERE "Discount" > minDiscount;
END;
$$;

call GetListClientsWithDiscount(0);
