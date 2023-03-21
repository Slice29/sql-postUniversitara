CREATE VIEW vSceneUndeCantaArtisti
AS
SELECT IDA, nume_artist, nr_fani, nume_scena
from Artist
join Scena
on Artist.IDSref = Scena.IDS

SELECT * FROM vSceneUndeCantaArtisti

