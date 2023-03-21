--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Main Stage', 'Trap',1);
--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('EDM Stage', 'EDM',1);
--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Galaxy', 'Trance',1);
---INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Theme Camps', 'EDM',4);
---INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Drummers', 'DrumNBass',4);
---INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Lamplighters', 'Pop',4);

-- afiseaza scenele de la festivalul cu cheia primara 1

--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Aqua Stage', 'Pop', 2);
--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Summer Light', 'R&B', 3);
--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Stage Fright', 'New School', 2);
--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Hard Bass', 'Hip-Hop', 3);

--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Temple', 'Future country', 3);
--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('The Ark', 'Mongolian throat singing', 3);
--INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES ('Main stage', 'Gregorian chants', 3);

SELECT * FROM Scena;


SELECT nume_scena FROM Scena
WHERE IDFref = 1
GROUP BY nume_scena;
-- Functie care returneaza numarul de scene de genul primul parametru de la festivalul cu codul al doilea parametru
ALTER FUNCTION Functie2(@genre varchar(40), @festivalid INT)
RETURNS INT
AS
BEGIN
DECLARE @total INT

SELECT @total = COUNT (*)
FROM Scena
WHERE gen_muzical = @genre
AND IDFref = @festivalid;
RETURN @total;
END


-- Functie care adauga o scena noua daca la festivalul cu codul @festival_input numarul de scene este mai mic decat @threshold

ALTER PROCEDURE Scene2
@festival_input INT,
@gen_input varchar(40),
@threshold INT,
@nume_scena_nou varchar(40)
AS

BEGIN
DECLARE @count1 INT
	select @count1 = dbo.Functie2(@gen_input, @festival_input);
IF ( @count1 < @threshold )
BEGIN
INSERT INTO Scena(nume_scena,gen_muzical,IDFref) VALUES (@nume_scena_nou,@gen_input,@festival_input);
END

END

--Scene2 1, 'EDM', 5, 'FireStarters')