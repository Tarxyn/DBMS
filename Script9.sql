-- Показать ID электронной почты (EmailAddressID) и саму 
-- электронную почту (EmailAddress) из таблицы 
-- Person.EmailAddress. Все электронные почты расположить в 
-- обратном алфавитном порядке.

select "EmailAddressID", "EmailAddress" from "Person"."EmailAddress" ORDER BY "EmailAddress"