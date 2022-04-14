-- Hausaufgabe Aufgabe 1:
-- Formulieren Sie die SQL-Anweisungen zum Erstellen der Tabellen.

drop table IF EXISTS Mitarbeiter;
drop table IF EXISTS Ressort;
drop table IF EXISTS Projekt;
drop table IF EXISTS Mitarbeiter_Arbeitet_an_Projekt;

create table Ressort
(
    ID          TEXT
        constraint Ressort_pk
            primary key,
    Bezeichnung TEXT
);

create table Mitarbeiter
(
    ID         integer
        constraint Mitarbeiter_pk
            primary key,
    PersNr     integer,
    Vorname    TEXT,
    Nachname   TEXT,
    Ressort_ID integer,
    constraint Ressort_ID
        foreign key (Ressort_ID) references Ressort
);

create table Projekt
(
    Beginn           TEXT,
    BEschreibung     TEXT,
    Bezeichnung      TEXT,
    ID               integer
        constraint Projekt_pk
            primary key,
    Abschluss        TEXT,
    ID_Projektleiter integer,
    constraint ID_Projektleiter
        foreign key (ID_Projektleiter) references Mitarbeiter
);

create table Mitarbeiter_Arbeitet_an_Projekt
(
    Mitarbeiter_ID integer,
    Projekt_ID     integer,
    constraint Mitarbeiter_ID
        foreign key (Mitarbeiter_ID) references Mitarbeiter,
    constraint Projekt_ID
        foreign key (Projekt_ID) references Projekt
);

