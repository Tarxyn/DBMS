-- таблица "Клиент"
create table "Clients" (
	"ID" SERIAL PRIMARY KEY
	, "Name" VARCHAR(255) NOT NULL
	, "Discount" DECIMAL(4, 2) DEFAULT 0
);