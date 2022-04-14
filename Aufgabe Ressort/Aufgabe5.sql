-- Aufgabe 5

create table Ressort
(
    ID          integer
        constraint Ressort_pk
            primary key,
    Bezeichnung integer
);

create table Mitarbeiter
(
    Personalnummer integer,
    ID             integer
        constraint Mitarbeiter_pk
            primary key
        references Ressort,
    Nachname       TEXT,
    Vorname        TEXT
);

create table Projekt
(
    ID             integer
        constraint Projekt_pk
            primary key,
    Bezeichnung    integer,
    Beschreibung   TEXT,
    Beginn         TEXT,
    Abschluss      TEXT,
    Projektleitung integer
        references Mitarbeiter
);

create table Projektzuordnung
(
    Projekt_ID     integer
        references Projekt,
    Mitarbeiter_ID integer
        references Mitarbeiter
);

create table sqlite_master
(
    type     text,
    name     text,
    tbl_name text,
    rootpage int,
    sql      text
);

