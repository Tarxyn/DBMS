-- таблица "Клиент"
create table "Clients" (
	"ID" SERIAL PRIMARY KEY
	, "Name" VARCHAR(255) NOT NULL
	, "Discount" DECIMAL(4, 2) DEFAULT 0
);

-- таблица "Продукт"
create table "Product"(
	"ID" SERIAL PRIMARY KEY
	,"Name" Varchar(255) NOT NULL
);

-- таблица "Производитель"
create table "Producer"(
	"ID" SERIAL PRIMARY KEY
	,"Name" Varchar(255) NOT NULL
);

-- таблица "Склад"
create table "Item" (
	"ID" SERIAL PRIMARY KEY
	,"Count_item" INT NOT NULL
	,"ID_product" INT NOT NULL REFERENCES "Product"("ID")
	,"ID_producer" INT NOT NULL REFERENCES "Producer"("ID")
);

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

-- Создание условия что кол-во единиц на складе должно быть более 0
ALTER TABLE "Item"
ADD CONSTRAINT CH_Count_item
CHECK ("Count_item" > 0);

-- Делаем ячейку Count_item уникальной
ALTER TABLE "Item"
ADD CONSTRAINT UQ_Count_item UNIQUE ("Count_item");

-- Создание внешнего ключа между двумя таблицами
ALTER TABLE "Order"
ADD CONSTRAINT FK_Order_Item
FOREIGN KEY ("Max_count")
REFERENCES "Item"("Count_item");

--Создание условия что кол-во в заказе не должно быть меньше 0 и более чем на складе
ALTER TABLE "Order"
ADD CONSTRAINT CH_Order_Count
CHECK ("Count" >= 0 AND "Count" <= "Max_count");