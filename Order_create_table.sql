-- таблица "Заказ"
create table "Order" (
	"ID" SERIAL PRIMARY KEY
	,"ID_Client" INT NOT NULL REFERENCES "Clients"("ID")
	,"ID_Item" INT NOT NULL REFERENCES "Item"("ID")
	,"Cost" DECIMAL(10, 2) NOT NULL
	,"Count" INT NOT null
	,"Max_count" Int not null
	,"Sale_date" DATE NOT NULL
);


-- Создание внешнего ключа между двумя таблицами
ALTER TABLE "Order"
ADD CONSTRAINT FK_Order_Item
FOREIGN KEY ("Max_count")
REFERENCES "Item"("Count_item");


--Создание условия что кол-во в заказе не должно быть меньше 0 и более чем на складе
ALTER TABLE "Order"
ADD CONSTRAINT CH_Order_Count
CHECK ("Count" >= 0 AND "Count" <= "Max_count");