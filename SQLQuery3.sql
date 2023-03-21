/**
CREATE DATABASE Festival3;

USE Festival3;
GO

CREATE TABLE Clienti 
( IDC INT PRIMARY KEY IDENTITY,
nume_client VARCHAR(40),
prenume_client VARCHAR(40),
email_client VARCHAR(50),
data_nasterii_client DATE
);


CREATE TABLE Festivaluri
( IDF INT PRIMARY KEY IDENTITY,
nume_festival VARCHAR(40),
data_inceput DATE,
data_final DATE,
capacitate_max INT,
nr_scene INT,
locatie VARCHAR(40)
);

CREATE TABLE Bilete
( IDB INT PRIMARY KEY IDENTITY,
tip_bilet VARCHAR(40),
pret_bilet INT,
IDCref INT FOREIGN KEY REFERENCES Clienti(IDC),
IDFref INT FOREIGN KEY REFERENCES Festivaluri(IDF)
);


CREATE TABLE Scena
(
IDS INT PRIMARY KEY IDENTITY,
nume_scena VARCHAR(40),
gen_muzical VARCHAR(40),
IDFref INT FOREIGN KEY REFERENCES Festivaluri(IDF)
);


CREATE TABLE Artist
( IDA INT PRIMARY KEY IDENTITY,
nume_artist VARCHAR(40),
nr_fani INT,
IDSref INT FOREIGN KEY REFERENCES Scena(IDS)
);

CREATE TABLE Org_Scena
( IDO INT PRIMARY KEY IDENTITY,
nume_coord VARCHAR(40),
nr_membri_org INT,
nr_lumini INT,
nr_smoke_dispensers INT,
IDSref INT FOREIGN KEY REFERENCES Scena(IDS)
);


CREATE TABLE Formatii
( IDFO INT PRIMARY KEY IDENTITY,
nr_membri_band INT,
IDAref INT FOREIGN KEY REFERENCES Artist(IDA)
);
*/