-- Создание внешнего ключа между Orders и Items
ALTER TABLE "Orders"
ADD CONSTRAINT FK_Orders_Item_ID
FOREIGN KEY ("Vendor_Code")
REFERENCES "Items"("ID");

-- Создание внешнего ключа между Orders и СLients
ALTER TABLE "Orders"
ADD CONSTRAINT FK_Orders_Clients
FOREIGN KEY ("ID_Client")
REFERENCES "Clients"("Name");

-----------------------------------------------------------------
-- Данное действие делается для того чтобы соединить и проконтролировать в Orders кол-во заказов. те чтобы в таблице Orders был заказ > 0 и
-- и <= кол-во Max_count на Items (пример: на складе товар 1 в кол-во 3 шутки , и при запонении таблицы Orders если кол-во в заказе на товар 1 > 4 таблица даст предупреждение)

-- Создание внешнего ключа между Orders и Items
ALTER TABLE "Orders"
ADD CONSTRAINT FK_Orders_Item_Count
FOREIGN KEY ("Max_count")
REFERENCES "Items"("Count_item");

--Создание условия что кол-во в заказе не должно быть меньше 0 и более чем на Items
ALTER TABLE "Orders"
ADD CONSTRAINT CH_Orders_Count
CHECK ("Count" >= 0 AND "Count" <= "Max_count");