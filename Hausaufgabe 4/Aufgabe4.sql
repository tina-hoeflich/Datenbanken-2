-- Datenbanken AUgfgabe 3
-- -Erstellen Sie ein ER-Modell
-- -Ueberfuehren Sie das ER-Modell in ein Relationenmodell
-- -Formulieren Sie die SQL-Anweisungen zum Erstellen der Tabellen

DROP TABLE IF EXISTS Fertigungsstrasse;
DROP TABLE IF EXISTS Fertigungsstation;
DROP TABLE IF EXISTS Mitarbeiter;
DROP TABLE IF EXISTS Maschiene;
DROP TABLE IF EXISTS Produkt;
DROP TABLE IF EXISTS Mitarbeiter_kann_bedienen;

create table Fertigungsstrasse
(
    ID   INTEGER
        constraint Fertigungsstrasse_pk
            primary key,
    Bez TEXT,
    ArtNr INTEGER,
    constraint ArtNr
        foreign key (ArtNr) references Produkt -- produziert

);


create table Produkt
(
    ArtNr        INTEGER
        constraint Produkt_pk
            primary key,
    Bez        TEXT
);

create table Mitarbeiter_kann_bedienen
(
    AnlageNr          INTEGER
        constraint Mitarbeiter_kann_bedienen_pk
            primary key,
    PersNr       INTEGER,
   constraint AnlageNr
        foreign key (AnlageNr) references Maschiene,
   constraint PersNr
        foreign key (PersNr) references Mitarbeiter
);

create table Fertigungsstation
(
    Kuerzel             TEXT
        constraint Fertigungsstation_pk
            primary key,
    Bez                 TEXT,
    FertStrassenKuerzel TEXT not null,
    constraint FertStrassenKuerzel
        foreign key (FertStrassenKuerzel) references Fertigungsstrasse -- Straße besteht aus
);

create table Mitarbeiter
(
    PersNr             INTEGER
        constraint Mitarbeiter_pk
            primary key,
    Vorname            TEXT,
    Nachname           TEXT,
    FertStationKuerzel TEXT,
    constraint FertStationKuerzel
        foreign key (FertStationKuerzel) references Fertigungsstation -- arbeitet an
);

create table Maschiene
(
    AnlageNr           INTEGER
        constraint Maschiene_pk
            primary key,
    Bez                TEXT,
    FertStationKuerzel TEXT,
    constraint FertStationKuerzel
        foreign key (FertStationKuerzel) references Fertigungsstation -- nutzt
);

