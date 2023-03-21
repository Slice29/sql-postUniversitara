--- inner join intre 3 tabele M:N

select IDC, nume_client, prenume_client, Bilete.IDB, Festivaluri.nume_festival
from Clienti
inner join Bilete on Bilete.IDCref = IDC
inner join Festivaluri on Bilete.IDFref = IDF;

--- left join; clientilor le plac artistii care au nume la fel de lung ca ei.
--- Care sunt artistii preferati ai tuturor clientilor?
--- Daca un client nu are perechea, sa apara null in rezultat.

select IDC, nume_client, prenume_client, nume_artist
from Clienti
left join Artist on len(nume_client) = len(Artist.nume_artist);


