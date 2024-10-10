-- Показать тип сотрудника (PersonType), его ФИО (FirstName, 
-- MiddleName и LastName) из таблицы Person.Person. Все
-- неизвестные значения поля MiddleName заменить на '---'. Названия 
-- полей оставить без изменений.

select "PersonType", "FirstName", COALESCE("MiddleName", '---'), "LastName" from "Person"."Person"
