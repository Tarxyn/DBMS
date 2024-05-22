-- Функция "Сумма заказанных товаров клиента"

CREATE OR REPLACE FUNCTION get_ordered_quantity(client_id INT)
RETURNS INT AS $$
DECLARE
total_quantity INT;
BEGIN
SELECT SUM(i."Count_item") INTO total_quantity
FROM "Items" i
JOIN "Orders" o ON i."ID" = o."ID_Item"
WHERE o."ID_Item" = get_ordered_quantity.client_id; -- явное указание параметра функции
RETURN total_quantity;
END;
$$ LANGUAGE plpgsql;

-- Вызов функции
SELECT get_ordered_quantity(5);
