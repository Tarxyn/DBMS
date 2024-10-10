-- Написать скрипты на добавление первичных ключей.

ALTER TABLE "Clients" 
ADD CONSTRAINT "PK_Clients"
PRIMARY KEY ("ID");
