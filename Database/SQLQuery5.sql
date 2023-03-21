select LimbajeProgramare.nume, avg(nivel) 
from AngajatiLimbaje
inner join LimbajeProgramare on LimbajeProgramare.idLimbaj = AngajatiLimbaje.idLimbaj
WHERE LimbajeProgramare.nume in ('Java', 'C++', 'Python')
group by LimbajeProgramare.nume
HAVING avg(nivel) > 8;