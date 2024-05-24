-- Создание условия что кол-во единиц на складе (Items) должно быть более или равен 0
ALTER TABLE "Items"
ADD CONSTRAINT CH_Count_item
CHECK ("Count_item" >= 0);

-- Делаем ячейку Count_item уникальной для связи с Orders для проверки на MaxCount
ALTER TABLE "Items"
ADD CONSTRAINT UQ_Count_item UNIQUE ("Count_item");


-- Создание внешнего ключа между Items и Products
ALTER TABLE "Items"
ADD CONSTRAINT FK_Items_Products
FOREIGN KEY ("ID_product")
REFERENCES "Products"("Name");

-- Создание внешнего ключа между Items и Producers
ALTER TABLE "Items"
ADD CONSTRAINT FK_Items_Producers
FOREIGN KEY ("ID_producer")
REFERENCES "Producers"("Name");
