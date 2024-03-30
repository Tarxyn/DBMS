-- В  отдельном файле написать скрипт, который создает полную копию одной из таблиц.

INSERT INTO "Clients1" 
SELECT * FROM "Clients" ;