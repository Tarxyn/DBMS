-- Делаем ячейку Name для таблицы Clients уникальной
ALTER TABLE "Clients"
ADD CONSTRAINT UQ_Clients_Name UNIQUE ("Name");