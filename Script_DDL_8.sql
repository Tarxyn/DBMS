ALTER TABLE "Clients"
ADD CONSTRAINT "CH_Clients_Name"
CHECK ("Name" is not null);
