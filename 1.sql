-- 1.	Выдать ассортимент товара, находящегося на складе сейчас:
CREATE OR REPLACE FUNCTION GetAvailableItems3(min_quantity INT)
RETURNS SETOF "Items" AS $$
BEGIN
    RETURN QUERY
    SELECT *
    FROM "Items"
    WHERE "Count_item" > min_quantity;
END;
$$ LANGUAGE plpgsql;

-- Вызов функции
select GetAvailableItems3(0);
