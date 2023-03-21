--functie care returneaza varsta unui domnitor

CREATE FUNCTION Functie1(@Data Date)
RETURNS INT
AS
BEGIN
DECLARE @Age INT

SET @Age = DATEDIFF(YEAR, @Data, GETDATE() ) -
		CASE
			WHEN (MONTH(@Data) > MONTH(GETDATE() ) ) OR
				(MONTH(@Data) = MONTH(GETDATE() ) AND DAY (@Data) > DAY(GETDATE() ) )
				THEN 1
				ELSE 0
			END
RETURN @Age
END

ALTER PROCEDURE ClientiMaiMari
@data_input DATE
AS
BEGIN


Select nume_client, prenume_client, dbo.Functie1(data_nasterii_client) as Varsta FROM Clienti
WHERE dbo.Functie1(@data_input) < dbo.Functie1(data_nasterii_client)
ORDER BY data_nasterii_client desc

END


DECLARE @param1 DATE

SELECT TOP 1 @param1 = data_nasterii_client    
FROM Clienti
WHERE prenume_client = 'Viteazu';



EXEC ClientiMaiMari @param1


Select * FROM Clienti

