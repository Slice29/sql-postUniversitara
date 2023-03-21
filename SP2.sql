--Functie care compara data nasterii a primului parametru cu data nasterii a elementului de inserat in tabel.
--Daca varsta noului element este mai mare decat varsta primului argument, acest nou element va fi inserat in tabel.
ALTER PROCEDURE ClientiMaiMari2

@nume_input varchar(40), -- numele elementului de comparat
@nume_nou varchar(40), -- numele elementului nou
@prenume_nou varchar(40), -- prenumele elementului nou
@email_nou varchar(40), -- mailul elementului nou
@data_noua DATE -- data nasterii a elementului nou
	
AS
BEGIN
-- data nasterii primului argument stocata in @param1
DECLARE @param1 DATE

SELECT TOP 1 @param1 = data_nasterii_client
FROM Clienti
WHERE prenume_client = @nume_input


-- compararea varstei primului argument cu varsta noua de inserat, folosind functia user-defined Functie1
IF ( dbo.Functie1(@data_noua) > dbo.Functie1(@param1) )
BEGIN
INSERT INTO Clienti(nume_client,prenume_client,email_client,data_nasterii_client) VALUES (@nume_nou, @prenume_nou, @email_nou, @data_noua);
END
END

SELECT * FROM Clienti

--ClientiMaiMari2 'Viteazu', 'Petru', 'Aron', 'petruaron@outlook.com', '07/08/1454';
