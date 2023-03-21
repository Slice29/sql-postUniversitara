CREATE NONCLUSTERED INDEX noncluster2
ON Ta (a3);

--DROP INDEX Ta.noncluster2;

Select * from Ta where a3 = 12;