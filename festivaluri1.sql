---INSERT INTO Festivaluri(nume_festival,data_inceput,data_final,capacitate_max,nr_scene,locatie) VALUES ('Untold','2021-09-02','2021-09-05',60000,10,'Cluj-Napoca');
---INSERT INTO Festivaluri(nume_festival,data_inceput,data_final,capacitate_max,nr_scene,locatie) VALUES ('Electric Castle','2021-08-06','2021-08-15',20000,6,'Bontida');
---INSERT INTO Festivaluri(nume_festival,data_inceput,data_final,capacitate_max,nr_scene,locatie) VALUES ('Neversea','2021-08-10','2021-08-12',70000,8,'Constanta');
---INSERT INTO Festivaluri(nume_festival,data_inceput,data_final,capacitate_max,nr_scene,locatie) VALUES ('Burning Man','2021-09-05','2021-09-08',70000,10,'Valley Of Death');

SELECT * FROM Festivaluri;

--afiseaza numele festivalurilor cu o capacitate mai mare de 50000 de oameni

SELECT DISTINCT nume_festival FROM Festivaluri
WHERE capacitate_max > 50000;
