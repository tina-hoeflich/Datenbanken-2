-- Normalform 2
DROP TABLE IF EXISTS  Personal ;
DROP TABLE IF EXISTS  Abteilung;
DROP TABLE IF EXISTS  Projekt;
create table Personal
      (
          P_ID     integer,
          P_Name   TEXT,
          Abt      integer,
          Pj_ID    integer,
          Pj_Std    integer
      );
create table Abteilung
      (
          Abt    integer,
          Abt_Name TEXT
      );
create table Projekt
(
    Pj_ID    integer,
    Pj_Name  TEXT,
    Pj_Std   integer
);

INSERT INTO Abteilung (Abt, Abt_Name) VALUES (1, 'Motoren');
INSERT INTO Abteilung (Abt, Abt_Name) VALUES (2, 'Karosserie');

INSERT INTO Projekt (Pj_ID, Pj_Name) VALUES (12, 'B');
INSERT INTO Projekt (Pj_ID, Pj_Name) VALUES (13, 'C');

INSERT INTO Personal (P_ID, P_Name, Abt, Pj_ID, Pj_Std ) VALUES (101, 'Mueller', 1, 11, 60);
INSERT INTO Personal (P_ID, P_Name, Abt, Pj_ID, Pj_Std ) VALUES (101, 'Mueller', 1, 12, 40);
INSERT INTO Personal (P_ID, P_Name, Abt, Pj_ID, Pj_Std ) VALUES (102, 'Meier', 2, 13, 100);
INSERT INTO Personal (P_ID, P_Name, Abt, Pj_ID, Pj_Std ) VALUES (103, 'Krause', 2, 11, 20);
INSERT INTO Personal (P_ID, P_Name, Abt, Pj_ID, Pj_Std ) VALUES (103, 'Krause', 2, 12, 50);
INSERT INTO Personal (P_ID, P_Name, Abt, Pj_ID, Pj_Std ) VALUES (103, 'Krause', 2, 13, 30);
INSERT INTO Personal (P_ID, P_Name, Abt, Pj_ID, Pj_Std ) VALUES (104, 'Schmidt', 1, 11, 80);
INSERT INTO Personal (P_ID, P_Name, Abt, Pj_ID, Pj_Std ) VALUES (104, 'Schmidt', 1, 13, 20);
