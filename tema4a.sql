/**
DROP INDEX Tc.PK__Tc__357D4CFA0C8045B3;

trebuie sters indexul default, pentru ca clustered indexes sunt limitati la 1/tabel. Cand se creeaza tabelul,
se realizeaza clustered index dupa cheia primara, pentru a enforce-ui constraintul de primary key:

CREATE CLUSTERED INDEX cluster1
ON Tc (codc);
 Table Scan < Index Scan < Index Seek

*/



-- Clustered Index Seek pe Ta -
-- Indexul creat default nu poate fi sters din cauza constrangerilor de cheie primara si cheie straina
-- Astfel, selectand coda in clauza where, coloana dupa care s-a facut indexul default, se cauta prin indexul creat de sistem

Select * from Ta
where coda = 2;

-- Non Clustered Index Seek pe Ta
-- Nu exista restrictii pe indecsii non-clustered, deoarece nu sunt unici pe tabel.
-- Astfel, putem crea un index nonclustered, trecand la seek prin folosirea coloanei, in clauza where, pe care s-a facut indexul

CREATE NONCLUSTERED INDEX noncluster1
ON Ta (a2);

Select a2 from Ta where a2 = 18;


CREATE CLUSTERED INDEX cluster12
ON Tc (codc);



