/*CREATE TABLE EvidenteClienti
( IDEC INT PRIMARY KEY IDENTITY,
evidenta varchar(500)
);
*/

ALTER TRIGGER trInsertClienti
On Clienti
For INSERT
as
BEGIN

Declare @Id INT

Select @Id = IDC from inserted
INSERT INTO EvidenteClienti
VALUES('Client nou cu Id = ' + Cast(@Id as nvarchar(5)) + ' a fost adaugat in ' + cast(Getdate() as nvarchar(20)))

END


ALTER TRIGGER trDeleteClienti
On Clienti
For DELETE
as
BEGIN

Declare @Id INT

Select @Id = IDC from deleted
INSERT INTO EvidenteClienti
VALUES('Client Cu Id = ' + Cast(@Id as nvarchar(5)) + ' a fost sters in ' + cast(Getdate() as nvarchar(20)))

END


ALTER TRIGGER trUpdateClienti
On Clienti
For UPDATE
as
BEGIN
--Variabile locale folosite in trigger pentru a verifica diferentele dintre fiecare field

Declare @Id INT
Declare @NumeVechi nvarchar(20), @NumeNou nvarchar(20)
Declare @PrenumeVechi nvarchar(40), @PrenumeNou nvarchar(40)
Declare @emailVechi nvarchar(50), @emailNou nvarchar(50)
Declare @DataVeche date, @DataNoua date

--Stringul in care se stocheaza noua linie din tabelul EvidenteClienti, care retine modificarile facute
Declare @Evidenta nvarchar(1000)



Select *
into #TempTable -- tabel temporar creat care stocheaza informatia din inserted pentru a o compara mai tarziu
from inserted


--se verifica existenta elementelor in #TempTable, si trece prin toate

While(Exists(Select IDC from #TempTable))
		Begin
		Set @Evidenta = ''
		-- se retin noile date introduse in inserted, din comanda UPDATE
		Select Top 1 @Id = IDC, @NumeNou = nume_client,
		@PrenumeNou = prenume_client, @emailNou = email_client,
		@DataNoua = data_nasterii_client
		from #TempTable
		-- se stocheaza valorile vechi din tabela deleted
		Select @NumeVechi = nume_client, @PrenumeVechi = prenume_client,
		@emailVechi = email_client, @DataVeche = data_nasterii_client
		from deleted where IDC = @Id;
		-- se construieste stringul @Evidenta, fiind verificate, pe rand, toate atributele pentru a vedea care s-au schimbat
		Set @Evidenta = 'Clientul cu Id = ' + CAST(@Id as nvarchar(4)) + ' a modificat ';
		if(@NumeVechi <> @NumeNou)
		Set @Evidenta = @Evidenta + ' numele de la ' + @NumeVechi + ' la ' + @NumeNou;
		if(@PrenumeVechi <> @PrenumeNou)
		Set @Evidenta = @Evidenta + ' prenumele de la ' + @PrenumeVechi + ' la ' + @PrenumeNou;
		if(@emailNou <> @emailVechi)
		Set @Evidenta = @Evidenta + ' emailul de la ' + @emailVechi + ' la ' + @emailNou;
		if(@DataVeche <> @DataNoua)
		Set @Evidenta = @Evidenta + ' data nasterii de la ' + Cast(@DataVeche as nvarchar(40))  + ' la ' + Cast(@DataNoua as nvarchar(40));

		-- se insereaza stringul nou format in EvidenteClienti
		insert into EvidenteClienti values (@Evidenta);

		Delete from #TempTable where IDC = @Id;
		END
		
END

INSERT INTO Clienti(nume_client,prenume_client,email_client,data_nasterii_client) VALUES ('Vlad', 'Calugarul', 'vlad@calugarul.com','1574-10-20');
update Clienti set nume_client = 'Vladel', prenume_client = 'Dafinoiu',data_nasterii_client = '1572-10-20' where email_client = 'vlad@calugarul.com'
--update Clienti set nume_client = 'Marean', prenume_client = 'Trifoi',data_nasterii_client = '1575-10-20' where email_client = 'vlad@calugarul.com'


--DELETE FROM EvidenteClienti;
Select * from EvidenteClienti;
Select * from Clienti;