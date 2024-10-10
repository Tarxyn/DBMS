-- В отдельном файле написать скрипт, который создает копию таблицы по условию.

SELECT p2."ID"
 , p2."Name"
 , p2."Discount"
INTO TABLE "Clients3"
FROM "Clients"  p2
WHERE p2."Name" LIKE 'Tom';
