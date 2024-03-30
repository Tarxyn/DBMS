DELETE
FROM "Clients4" 
WHERE ctid NOT IN
(SELECT MAX(ctid) FROM "Clients4" 
GROUP BY "Clients4"."ID");