-- В отдельном файле написать скрипт, который показывает работу с оператором MERGE.

MERGE INTO "SourceTable" AS Source
USING "TargetTable" AS Target
 ON (Source."ID" = Target."ID")
WHEN MATCHED
 THEN update
 SET "Name" = Target."Name"
WHEN NOT MATCHED
 THEN INSERT
 VALUES (Target."ID", Target."Name", Target."Discount");




