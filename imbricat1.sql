-- selecteaza IDul festivalului cu capacitate maxima
select top 1 IDF from Festivaluri order by capacitate_max desc;

-- foloseste imbricat acel select ca sa vedem toate scenele de la festivalul cu capacitate maxima
select IDS, nume_scena from Scena
where IDFref = (
	select top 1 IDF from Festivaluri order by capacitate_max desc
);
