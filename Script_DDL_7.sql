-- Написать скрипты на добавление ограничения уникальности для тех
-- полей, где это необходимо.

ALTER TABLE "Clients" 
ADD CONSTRAINT "U_Clients_Name"
UNIQUE ("Name");
