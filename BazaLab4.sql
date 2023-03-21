
CREATE DATABASE BazaLab4;

USE BazaLab4;
GO

CREATE TABLE Ta 
( coda INT PRIMARY KEY IDENTITY,
a2 INT,
a3 INT,
a4 INT
);

create TABLE Tc
( codc INT PRIMARY KEY identity,
c2 INT,
c3 INT,
c4 INT,
codaRef INT FOREIGN KEY REFERENCES  Ta(coda)
);



Alter PROCEDURE IntroducereDateTa

@numar_input INT -- argumentu cu care se apeleaza functia - si toate valorile din tabel sunt date de aceasta valoare;
	
AS
BEGIN
    
DECLARE @count INT;
SET @count = 1;
    


WHILE @count <= 5000
BEGIN
  
INSERT INTO Ta(a2,a3,a4) VALUES(@numar_input, -1 * @numar_input, 2 * @numar_input);
SET @count = @count + 1;
SET @numar_input = @numar_input + 1;


END;



END
 

--IntroducereDateTa 16;

Select * from Ta;





Alter PROCEDURE IntroducereDateTc

@numar_input INT
	
AS
BEGIN
    
DECLARE @count INT;
SET @count = 1;
    
Declare @x INT;

WHILE @count <= 30005  -- e un mister
BEGIN
  
SET @x = @count % 5001;
INSERT INTO Tc(c2,c3,c4,codaRef) VALUES(@numar_input, 2 * @numar_input, -2 * @numar_input, @x )
SET @count = @count + 1;
SET @numar_input = @numar_input + 1;
END;


END


IntroducereDateTc ;

Select * from Tc;

