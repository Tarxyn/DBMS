-- Делаем ячейку Name в таблице Products уникальной
ALTER TABLE "Products"
ADD CONSTRAINT UQ_Products_Name UNIQUE ("Name");