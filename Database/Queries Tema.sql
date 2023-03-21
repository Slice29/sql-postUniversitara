
--a) toti clienii nascuti inainte de 1500 si dupa 2001

SELECT * FROM Clienti WHERE  data_nasterii_client < '1500-01-01'
UNION
SELECT * FROM Clienti WHERE  data_nasterii_client > '2001-01-01';

--b) toti clientii nascuti inainte de 1500 si cu adresa de email cu al doilea si al treilea caracter 23

SELECT * FROM Clienti WHERE  data_nasterii_client < '1500-01-01'
INTERSECT
SELECT * FROM Clienti WHERE  email_client LIKE '_23%';

--c), f) toti clientii care nu au in nume Cel

SELECT * FROM Clienti EXCEPT 
SELECT * FROM Clienti WHERE prenume_client LIKE 'Cel%';

-- g) numele scenelor de la festivalul cu ID-ul 1
SELECT nume_scena FROM Scena
WHERE IDFref = 1
GROUP BY nume_scena


--ordoneaza descrescator artistii dupa numarul de fani

SELECT nume_artist,nr_fani FROM Artist
ORDER BY nr_fani DESC;

--afiseaza numele festivalurilor cu o capacitate mai mare de 50000 de oameni

SELECT DISTINCT nume_festival FROM Festivaluri
WHERE capacitate_max > 50000;

SELECT * FROM Artist;









