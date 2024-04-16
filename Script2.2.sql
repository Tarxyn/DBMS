-- 2.	Найти пароли, начинающиеся с I или i, из таблицы Person.Password.

select "PasswordSalt" from "Person"."Password" where "PasswordSalt" LIKE 'I%' or "PasswordSalt" LIKE 'i%'