-- Процедура "Сумма покупок клиентов"

CREATE OR REPLACE PROCEDURE get_total_sales()
AS $$
BEGIN
PERFORM c."Name" AS client_name, SUM(o."Cost" * o."Count") AS total_sales
FROM "Orders" o
JOIN "Clients" c ON o."ID_Client" = c."Name"
GROUP BY c."Name";
END;
$$ LANGUAGE plpgsql;

-- Вызов процедуры:

CALL get_total_sales();
