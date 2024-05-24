-- Делаем ячейку Name в таблице Producers уникальной
ALTER TABLE "Producers"
ADD CONSTRAINT UQ_Producers_Name UNIQUE ("Name");