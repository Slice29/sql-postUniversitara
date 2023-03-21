--INSERT INTO Org_Scena(nume_coord,nr_membri_org,nr_lumini,nr_smoke_dispensers,IDSref) VALUES ('Sinan Pasa', 10, 20, 5,7);
--INSERT INTO Org_Scena(nume_coord,nr_membri_org,nr_lumini,nr_smoke_dispensers,IDSref) VALUES ('Osman Pasa', 7, 50, 10,4);
--INSERT INTO Org_Scena(nume_coord,nr_membri_org,nr_lumini,nr_smoke_dispensers,IDSref) VALUES ('Hannibal', 8, 30, 15,5);
--INSERT INTO Org_Scena(nume_coord,nr_membri_org,nr_lumini,nr_smoke_dispensers,IDSref) VALUES ('Nuri Yamut', 12, 30, 15,8);
--INSERT INTO Org_Scena(nume_coord,nr_membri_org,nr_lumini,nr_smoke_dispensers,IDSref) VALUES ('Cevdet Sunay', 8, 70, 7,9);



SELECT SUM(nr_smoke_dispensers) FROM Org_Scena;