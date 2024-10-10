-- В отдельном файле написать скрипт,который создает копию таблицы с выбранными полями.

SELECT p2."ID"
 , p2."Name"
INTO TABLE "Clients2" 
FROM "Clients"  p2;


