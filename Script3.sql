-- Показать поля CurrencyRateID, CurrencyRateDate, FromCurrencyCode, ToCurrencyCode, AverageRate, 
-- EndOfDayRate из таблицы Sales.CurrencyRate, для которых
-- средний курс обмена за день (AverageRate) больше $1 и меньше $10. 
-- Использовать оператор BETWEEN.

SELECT "CurrencyRateID", "CurrencyRateDate", "FromCurrencyCode", "ToCurrencyCode","AverageRate","EndOfDayRate"  FROM "Sales"."CurrencyRate" WHERE  
"AverageRate" BETWEEN 1 AND 10;