CREATE DATABASE Database1;

USE Database1;
GO

create table Departamente(

idDepartament int primary key,

nume varchar(20))



create table Angajati(

idAngajat int primary key,

nume varchar(20),

prenume varchar(20),

dataNasterii date,

salar int,

idDepartament int,

foreign key (idDepartament) references Departamente(idDepartament))



create table Clienti(

idClient int primary key,

nume varchar(50),

dataInceperiiColaborarii date )



create table Proiecte(

idProiect int primary key,

titlu varchar(50),

descriere varchar(100),

idClient int,

foreign key (idClient) references Clienti(idClient))



create table AngajatiProiecte(  

idAngajat int, 

idProiect int,

dataInceperii date,  --data la care a inceput sa lucreze la proiect

dataFinal date,    -- data la care a incetat sa lucreze la proiect

primary key(idAngajat, idProiect),

foreign key (idAngajat) references Angajati(idAngajat),

foreign key (idProiect) references Proiecte(idProiect))



create table LimbajeProgramare(

idLimbaj int primary key,

nume varchar(20))



create table AngajatiLimbaje( --ce limbaje de programare cunoaste un angajat

idAngajat int, 

idLimbaj int,

nivel int,         --un numar intre 1 (incepator) si 10 (expert)

primary key(idAngajat, idLimbaj),

foreign key (idAngajat) references Angajati(idAngajat),

foreign key (idLimbaj) references LimbajeProgramare(idLimbaj))