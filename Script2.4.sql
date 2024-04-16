-- 4.	Показать города, основываюсь на таблице Person.Address, где количество заказов было больше 10 (из выборки исключить пустые поля).

SELECT "City" , COUNT("StateProvinceID") FROM "Person"."Address"
GROUP by "City" 
having COUNT("StateProvinceID") > 10
