--INSERT INTO Artist(nume_artist,nr_fani,IDSref) VALUES ('G-Eazy',12000000,3);
--INSERT INTO Artist(nume_artist,nr_fani,IDSref) VALUES ('Marshemllo',2000000,4);
--INSERT INTO Artist(nume_artist,nr_fani,IDSref) VALUES ('Martin Garrix',4000000,4);
--INSERT INTO Artist(nume_artist,nr_fani,IDSref) VALUES ('Lil Peep',1200000,4);
--INSERT INTO Artist(nume_artist,nr_fani,IDSref) VALUES ('Timmy Trumpet',10000000,4);
---INSERT INTO Artist(nume_artist,nr_fani,IDSref) VALUES ('Migos',50000000,8);
---INSERT INTO Artist(nume_artist,nr_fani,IDSref) VALUES ('Thor',1500000,9);
--INSERT INTO Artist(nume_artist,nr_fani,IDSref) VALUES ('Flume',100000,10);

INSERT INTO Artist(nume_artist,nr_fani,IDSref) VALUES ('Delia', 550000, 5);

--ordoneaza descrescator artistii dupa numarul de fani

SELECT * FROM Artist;

SELECT nume_artist,nr_fani FROM Artist
ORDER BY nr_fani DESC;

