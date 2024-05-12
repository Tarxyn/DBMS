-- Написать скрипты на добавление ограничения проверок CHECK для
-- тех полей, где это необходимо.

ALTER TABLE "Clients"
ADD CONSTRAINT "CH_Clients_Name"
CHECK ("Name" is not null);
