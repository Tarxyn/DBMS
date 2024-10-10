-- Показать поля LocationID, ScheduledStartDate и
-- ScheduledEndDate из таблицы 
-- Production.WorkOrderRouting, где поле LocationID
-- содержит 45.

select "LocationID", "ScheduledStartDate", "ScheduledEndDate" from "Production"."WorkOrderRouting" where cast("LocationID" as text) LIKE '45%' ;
