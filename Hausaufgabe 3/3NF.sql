-- Normalform 3
DROP TABLE IF EXISTS  Personal ;
DROP TABLE IF EXISTS  Abteilung;
DROP TABLE IF EXISTS  Projekt;
DROP TABLE IF EXISTS Projektzuordnung;
create table Personal
      (
          P_ID     integer,
          P_Name   TEXT,
          Abt      integer
      );
create table Abteilung
      (
          Abt    integer,
          Abt_Name TEXT
      );
create table Projekt
(
    Pj_ID    integer,
    Pj_Name  TEXT
);
create table Projektzuordnung(
    Pj_ID   integer,
    Pj_Std  integer,
    P_ID    integer
);

INSERT INTO Abteilung (Abt, Abt_Name) VALUES (1, 'Motoren');
INSERT INTO Abteilung (Abt, Abt_Name) VALUES (2, 'Karosserie');

INSERT INTO Projekt (Pj_ID, Pj_Name) VALUES (12, 'B');
INSERT INTO Projekt (Pj_ID, Pj_Name) VALUES (13, 'C');

INSERT INTO Personal (P_ID, P_Name, Abt ) VALUES (101, 'Mueller', 1);
INSERT INTO Personal (P_ID, P_Name, Abt ) VALUES (101, 'Mueller', 1);
INSERT INTO Personal (P_ID, P_Name, Abt ) VALUES (102, 'Meier', 2);
INSERT INTO Personal (P_ID, P_Name, Abt ) VALUES (103, 'Krause', 2);
INSERT INTO Personal (P_ID, P_Name, Abt ) VALUES (103, 'Krause', 2);
INSERT INTO Personal (P_ID, P_Name, Abt ) VALUES (103, 'Krause', 2);
INSERT INTO Personal (P_ID, P_Name, Abt ) VALUES (104, 'Schmidt', 1);
INSERT INTO Personal (P_ID, P_Name, Abt ) VALUES (104, 'Schmidt', 1);

INSERT INTO Projektzuordnung(Pj_ID, Pj_Std, P_ID) VALUES (11,60,101);
INSERT INTO Projektzuordnung(Pj_ID, Pj_Std, P_ID) VALUES (12,40,101);
INSERT INTO Projektzuordnung(Pj_ID, Pj_Std, P_ID) VALUES (13,100,102);
INSERT INTO Projektzuordnung(Pj_ID, Pj_Std, P_ID) VALUES (11,20,103);
INSERT INTO Projektzuordnung(Pj_ID, Pj_Std, P_ID) VALUES (12,50,103);
INSERT INTO Projektzuordnung(Pj_ID, Pj_Std, P_ID) VALUES (13,30,103);
INSERT INTO Projektzuordnung(Pj_ID, Pj_Std, P_ID) VALUES (11,80,104);
INSERT INTO Projektzuordnung(Pj_ID, Pj_Std, P_ID) VALUES (13,20,104);