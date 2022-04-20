use proef_examen;

CREATE TABLE Docent 
(
	 Id 			Int NOT NULL AUTO_INCREMENT
	,PRIMARY KEY (Id)
    ,Voornaam		nvarchar(50)	not null
    ,Tussenvoegsel	nvarchar(50)		null
    ,Achternaam		nvarchar(50)	not null
    ,Email			nvarchar(100)	not null
    ,Telefoon		nvarchar(10)	not null
);

CREATE TABLE Instrument
(
	 Id 		Int NOT NULL AUTO_INCREMENT
	,PRIMARY KEY(Id)
	,Naam  		nvarchar(50)
    ,Code		nvarchar(50)
    ,Aantal		Int	
); 	

CREATE TABLE Reservering
(
	Id 				Int NOT NULL AUTO_INCREMENT
    ,PRIMARY KEY(Id)
	,DocentId 		Int NOT NULL
	,InstrumentId 	Int NOT NULL
	,Status			nvarchar(50)
    ,Begindatum		datetime
    ,Einddatum		datetime
	,Constraint FK_Docent_Reservering Foreign key (DocentId) References Docent(Id)
    ,Constraint FK_Instrument_Reservering Foreign key (InstrumentId) References Instrument(Id)
) 