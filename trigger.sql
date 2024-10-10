CREATE OR REPLACE FUNCTION on_delete_orders()
RETURNS TRIGGER AS $$
BEGIN
RAISE NOTICE 'Строка с "Order_ID" % была удалена из таблицы products.', OLD."ID";
RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER delete_orders_trigger
AFTER DELETE ON "Orders"
FOR EACH ROW
EXECUTE FUNCTION on_delete_orders();

-- Проверка триггера
DELETE FROM "Orders" WHERE "ID" = 4;
