-- таблица "Склад"
create table "Items" (
	"ID" SERIAL PRIMARY KEY
	,"Count_item" INT NOT NULL
	,"ID_product" INT NOT NULL
	,"ID_producer" INT NOT NULL 
);

-- Создание условия что кол-во единиц на складе должно быть более или равен 0
ALTER TABLE "Items"
ADD CONSTRAINT CH_Count_item
CHECK ("Count_item" >= 0);

-- Делаем ячейку Count_item уникальной
ALTER TABLE "Items"
ADD CONSTRAINT UQ_Count_item UNIQUE ("Count_item");

-- Создание внешнего ключа между двумя таблицами
ALTER TABLE "Items"
ADD CONSTRAINT FK_Items_Products
FOREIGN KEY ("ID_product")
REFERENCES "Products"("ID");

-- Создание внешнего ключа между двумя таблицами
ALTER TABLE "Items"
ADD CONSTRAINT FK_Items_Producers
FOREIGN KEY ("ID_producer")
REFERENCES "Producers"("ID");
