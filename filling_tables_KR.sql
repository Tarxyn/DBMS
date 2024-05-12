-- Добавить клиентов
INSERT INTO "Clients" ("Name", "Discount") VALUES ('Клиент 1', 0);
INSERT INTO "Clients" ("Name", "Discount") VALUES ('Клиент 2', 5);
INSERT INTO "Clients" ("Name", "Discount") VALUES ('Клиент 3', 10);

-- Добавить товары
INSERT INTO "Product" ("Name") VALUES ('Товар 1');
INSERT INTO "Product" ("Name") VALUES ('Товар 2');
INSERT INTO "Product" ("Name") VALUES ('Товар 3');

-- Добавить производителей
INSERT INTO "Producer" ("Name") VALUES ('Производитель 1');
INSERT INTO "Producer" ("Name") VALUES ('Производитель 2');
INSERT INTO "Producer" ("Name") VALUES ('Производитель 3');

-- Добавить товары
INSERT INTO "Item" ("Count_item", "ID_product", "ID_producer") VALUES (1, 2, 1);
INSERT INTO "Item" ("Count_item", "ID_product", "ID_producer") VALUES (2, 1, 1);
INSERT INTO "Item" ("Count_item", "ID_product", "ID_producer") VALUES (3, 3, 2);
INSERT INTO "Item" ("Count_item", "ID_product", "ID_producer") VALUES (4, 3, 2);

--Добавить заказ
INSERT INTO "Order" ("ID_Client", "ID_Item", "Cost", "Count", "Max_count", "Sale_date") values (1,3,250,1,2,'2023-05-03');
INSERT INTO "Order" ("ID_Client", "ID_Item", "Cost", "Count", "Max_count", "Sale_date") values (1,4,250,1,1,'2023-05-02');
INSERT INTO "Order" ("ID_Client", "ID_Item", "Cost", "Count", "Max_count", "Sale_date") values (1,2,250,2,4,'2023-05-03');
