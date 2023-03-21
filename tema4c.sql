

CREATE NONCLUSTERED INDEX noncluster2
ON Tc (codaRef);

Select * 
from Ta
INNER JOIN Tc ON Ta.coda = Tc.codaRef
WHERE codaRef  = 150;


DROP INDEX Tc.noncluster2;