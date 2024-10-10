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

--Создание условия что кол-во в заказе не должно быть меньше 0 
ALTER TABLE "Orders"
ADD CONSTRAINT CH_Orders_Count
CHECK ("Count" >= 0);
