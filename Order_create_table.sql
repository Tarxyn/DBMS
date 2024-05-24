-- таблица "Заказ"
create table "Orders" (
	"ID" SERIAL PRIMARY KEY
	,"ID_Client" VARCHAR(255) NOT NULL
	,"Vendor_Code" INT NOT NULL
	,"Cost" DECIMAL(10, 2) NOT NULL
	,"Count" INT NOT null
	,"Max_count" Int not null
	,"Sale_date" DATE NOT NULL
);
