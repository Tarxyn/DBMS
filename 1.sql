-- 1.	Выдать ассортимент товара, находящегося на складе сейчас:
CREATE OR REPLACE PROCEDURE GetAvailableItems(min_quantity INT)
LANGUAGE plpgsql as $$
begin
    PERFORM * 
    FROM "Items"
    WHERE "Count_item" > min_quantity;
END;
$$;

CALL GetAvailableItems(0);
