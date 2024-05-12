-- Написать скрипты на добавление внешнего ключа.

ALTER TABLE "Store"
ADD CONSTRAINT "FK_Clients_Store"
FOREIGN KEY ("ID")
REFERENCES "Clients" ("ID");
