-- Numarul de proiecte si numele+prenumele pt fiecare angajat:
select idAngajat, count(idProiect), Angajati.nume, Angajati.prenume
from AngajatiProiecte
inner join Angajati on AngajatiProiecte.idAngajat = Angajati.idAngajat
group by idAngajat;

-- id-ul departamentului Java
select idDepartament
from Departamente
where nume='Java';

-- Numarul maxim de proiecte ale unui angajat de la departamentul Java:
select idAngajat, max(count(idProiect))
from AngajatiProiecte
inner join Angajati on AngajatiProiecte.idAngajat = Angajati.idAngajat
where Angajati.idDepartament = (
    select idDepartament
    from Departamente
    where nume='Java'
)
group by idAngajat;