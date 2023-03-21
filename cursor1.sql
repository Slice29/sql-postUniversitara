/**
ALTER PROCEDURE SP4

AS
BEGIN

declare @count1 INT;

DECLARE cursor5 CURSOR FOR
	Select TOP 3 * From Festivaluri;


END

SELECT * FROM Clienti

--ClientiMaiMari2 'Viteazu', 'Petru', 'Aron', 'petruaron@outlook.com', '07/08/1454';


Declare @idclient INT
SET @idclient = 5;
Declare @nume nvarchar(30)
Set @nume = 'FERARUMADALIN'
Declare @datadata DATE
Set @datadata = '12-09-2005'

EXEC SP5 @idclient1 = @idclient, @nume1 = @nume, @datadata1 = @datadata

*/




ALTER PROCEDURE SP5

@idclient1 INT,
@nume1 nvarchar(30),
@datadata1 DATE
AS
BEGIN

print 'Id = ' + Cast(@idclient1 as nvarchar(10)) + ' Name = ' + @nume1 + '  Data nasterii e ' + Cast(@datadata1 as varchar(10));

END


Select * From Clienti


----------------------------------------------------------
------------------MERGE------------------
----------------------------------------------------------

Declare @idclient INT
Declare @nume nvarchar(30)
Declare @datadata DATE

Declare Cursor1 CURSOR FOR
Select IDC, data_nasterii_client, nume_client from Clienti where IDC < 50;

Open Cursor1;
Fetch Next from Cursor1 into @idclient, @datadata, @nume;

While(@@FETCH_STATUS = 0)
Begin

EXEC SP5 @idclient1 = @idclient, @nume1 = @nume, @datadata1 = @datadata
	Fetch Next from Cursor1 into @idclient, @datadata, @nume

End

Close Cursor1;
Deallocate Cursor1;