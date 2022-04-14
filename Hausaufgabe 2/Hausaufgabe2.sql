-- Mitarbeiter und Krankenhaus
create table Krankenhaus (
KrankenhausID INT NOT NULL,
Name VARCHAR,
AnzMitarbeiter INTEGER,
AnzPatienten INTEGER,
AnzBetten INTEGER,
GoogleRating float,
Umsatz INTEGER,
AnzBesetzteBetten INTEGER,
PRIMARY KEY (KrankenhausID));


CREATE TABLE Mitarbeiter(
    m_ID INTEGER,
    name TEXT NOT NULL,
    KrankenhausID INTEGER,
    PRIMARY KEY(m_ID),
    FOREIGN KEY(KrankenhausID) REFERENCES Krankenhaus(KrankenhausID)
);
INSERT INTO Krankenhaus VALUES (0, 'StuttgartKH', 200, 1000, 1000, 3.0, 400000, 1000);
INSERT INTO Krankenhaus VALUES (1, 'Koen', 100, 100, 500,5.0, 34000,100);
INSERT INTO Krankenhaus VALUES (2, 'Berlin', 50, 1000,200,3.4, 445000, 200);

-- Stuttgart Mitarbeiter
INSERT INTO Mitarbeiter VALUES (0, 'Ralf', 0);
INSERT INTO Mitarbeiter VALUES (1, 'Bauer', 0);
INSERT INTO Mitarbeiter VALUES (2, 'Knecht', 0);
-- Koeln Mitarbeiter
INSERT INTO Mitarbeiter VALUES (3, 'Maike', 1);
INSERT INTO Mitarbeiter VALUES (4 , 'Silke', 1);
INSERT INTO Mitarbeiter VALUES (5, 'Santa', 1);
-- Berlin Mitarbeiter
INSERT INTO Mitarbeiter VALUES (6, 'Maike', 2);
INSERT INTO Mitarbeiter VALUES (7 , 'Silke', 2);

-- Patienten
create table Patient (
PatientID INT NOT NULL,
Name VARCHAR,
Adresse VARCHAR,
PatientAlter INTEGER,
Krankheit VARCHAR,
Abreisedatum TEXT,
Ankunftsdatum TEXT,
Bewertung float,
KrankenhausID INT,
m_ID INTEGER,
PRIMARY KEY (PatientID),
FOREIGN KEY(KrankenhausID) REFERENCES Krankenhaus(KrankenhausID),
FOREIGN KEY(m_ID) REFERENCES Mitarbeiter(m_ID)

);

INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (0, 'Michael', 'Stuttgart', 30, 'Covid', '2018-06-25', '2018-04-05', 4.3, 0, 0);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (1, 'Michael', 'Stuttgart', 36, 'Verblutung', '2019-10-12', '2019-09-23', 1.2, 0, 1);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (2, 'Rolf', 'Stuttgart', 24, 'Grippe', '2018-12-14', '2018-07-14', 3.5, 0, 2);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (3, 'Michael', 'Stuttgart', 13, 'Covid', '2018-02-10', '2018-02-08', 5, 0, 2);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (4, 'David', 'Dortmund', 12, 'Autismus', '2022-03-30', '2022-02-02', 5, 0, 1);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (5, 'Lea', 'Afrika', 4, 'Covid', '2018-07-25', '2018-04-05', 2.1, 1, 3);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (6, 'Luke', 'Echterdingen', 35, 'Pocken', '2018-11-25', '2018-04-05', 2.2, 1, 4);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (7, 'Michael', 'Bayern', 60, 'Veganer', '2018-11-25', '2018-04-05', 4.6, 1, 4);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (8, 'Mueller', 'Koeln', 30, 'Covid', '2018-12-25', '2018-04-05', 4.5, 1, 3);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (9, 'Paul', 'Afrika', 4, 'Covid', '2018-10-25', '2018-04-05', 2.6, 2, 6);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (10, 'Sara', 'Echterdingen', 35, 'Pocken', '2018-11-25', '2018-04-05', 2.5, 2, 6);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (11, 'Gobson', 'Bayern', 60, 'Veganer', '2018-08-25', '2018-04-05', 3.6, 2, 7);
INSERT INTO Patient (PatientID, Name, Adresse, PatientAlter, Krankheit, Abreisedatum, Ankunftsdatum, Bewertung, KrankenhausID, m_ID) VALUES (12, 'Nate', 'Koeln', 22, 'Covid', '2018-09-25', '2018-04-05', 1.5, 2, 7);

-- Geben Sie an, wie lange im Durchschnitt bleiben Patienten in dem Krankenhaus pro Krankheit.
SELECT
       KrankenhausID,
       Krankheit,
  AVG(JULIANDAY(Abreisedatum) - JULIANDAY(Ankunftsdatum) + 1) AS mittlere_Aufenthaltsdauer
FROM Patient group by Krankheit
ORDER BY KrankenhausID ASC ;

-- Geben Sie an alle Patienten in Alphabetische Reihenfolge für das Monat Februar an.
SELECT
        Name ,
       PatientID,
       Krankheit,
       KrankenhausID,
       strftime('%m',Ankunftsdatum) as  Ankunftsmonat ,
       strftime('%m',Ankunftsdatum)  as Abreisemonat
FROM Patient
WHERE Ankunftsmonat IS '02' AND
    Abreisemonat   IS '02'
ORDER BY Name ASC;
