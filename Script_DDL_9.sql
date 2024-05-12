-- Написать скрипты на установку значений по умолчанию для тех
-- полей, где это необходимо.

ALTER TABLE "Clients"
ALTER COLUMN "Discount"
SET DEFAULT 0;