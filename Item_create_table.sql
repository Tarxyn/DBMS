-- таблица "Склад"
create table "Items" (
	"ID" SERIAL PRIMARY KEY
	,"Count_item" INT NOT NULL
	,"ID_product" VARCHAR(255) NOT NULL
	,"ID_producer" VARCHAR(255) NOT NULL 
);
