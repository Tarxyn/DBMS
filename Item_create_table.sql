-- таблица "Склад"
create table "Item" (
	"ID" SERIAL PRIMARY KEY
	,"Count_item" INT NOT NULL
	,"ID_product" INT NOT NULL REFERENCES "Product"("ID")
	,"ID_producer" INT NOT NULL REFERENCES "Producer"("ID")
);

-- Создание условия что кол-во единиц на складе должно быть более или равен 0
ALTER TABLE "Item"
ADD CONSTRAINT CH_Count_item
CHECK ("Count_item" >= 0);

-- Делаем ячейку Count_item уникальной
ALTER TABLE "Item"
ADD CONSTRAINT UQ_Count_item UNIQUE ("Count_item");