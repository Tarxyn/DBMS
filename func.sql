-- Функция "Сумма заказанных товаров клиента"

CREATE OR REPLACE FUNCTION get_ordered_quantity(client_id VARCHAR(255))
RETURNS INT AS $$
DECLARE
total_quantity INT;
BEGIN
SELECT SUM(o."Count") INTO total_quantity
FROM "Orders" o
WHERE o."ID_Client" = get_ordered_quantity.client_id; -- явное указание параметра функции
RETURN total_quantity;
END;
$$ LANGUAGE plpgsql;

-- Вызов функции
SELECT get_ordered_quantity('Клиент 1');
