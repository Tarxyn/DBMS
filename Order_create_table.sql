-- таблица "Заказ"
create table "Orders" (
	"ID" SERIAL PRIMARY KEY
	,"ID_Client" INT NOT NULL
	,"ID_Item" INT NOT NULL
	,"Cost" DECIMAL(10, 2) NOT NULL
	,"Count" INT NOT null
	,"Max_count" Int not null
	,"Sale_date" DATE NOT NULL
);


-- Создание внешнего ключа между двумя таблицами
ALTER TABLE "Orders"
ADD CONSTRAINT FK_Orders_Item_Count
FOREIGN KEY ("Max_count")
REFERENCES "Items"("Count_item");

-- Создание внешнего ключа между двумя таблицами
ALTER TABLE "Orders"
ADD CONSTRAINT FK_Orders_Item_ID
FOREIGN KEY ("ID_Item")
REFERENCES "Items"("ID");

-- Создание внешнего ключа между двумя таблицами
ALTER TABLE "Orders"
ADD CONSTRAINT FK_Orders_Clients
FOREIGN KEY ("ID_Client")
REFERENCES "Clients"("ID");


--Создание условия что кол-во в заказе не должно быть меньше 0 и более чем на складе
ALTER TABLE "Orders"
ADD CONSTRAINT CH_Orders_Count
CHECK ("Count" >= 0 AND "Count" <= "Max_count");
