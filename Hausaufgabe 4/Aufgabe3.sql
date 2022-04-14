-- Datenbanken AUgfgabe 3
-- Ueberfuehren Sie das ER-Modell in ein Relationenmodell

DROP TABLE IF EXISTS Ort;
DROP TABLE IF EXISTS Kunde;
DROP TABLE IF EXISTS Rechnung;
DROP TABLE IF EXISTS Artikel;
DROP TABLE IF EXISTS RechnungsPos;

create table Ort
(
    ID   INTEGER
        constraint Ort_pk
            primary key,
    Name TEXT,
    PLZ  INTEGER
);

create table Kunde
(
    ID       INTEGER
        constraint Kunde_pk
            primary key,
    KdNr     INTEGER,
    Vorname  TEXT,
    Nachname TEXT,
    Strasse  TEXT,
    HausNr   INTEGER,
    Ort_ID   INTEGER,
    constraint Ort_ID
         foreign key(Ort_ID) references Ort
);





create table Artikel
(
    ID          INTEGER
        constraint Artikel_pk
            primary key,
    ArtNr       INTEGER,
    "Bez."      TEXT,
    Listenpreis INTEGER
);


create table Rechnung
(
    ID        INTEGER
        constraint Rechnung_pk
            primary key,
    Nr        INTEGER,
    Datum     INTEGER,
    Kunden_ID INTEGER,
    constraint Kunden_ID
        foreign key (Kunden_ID) references Kunde
);


create table RechnungsPos
(
    ID          INTEGER
        constraint RechnungsPos_pk
            primary key,
    PosNr       INTEGER,
    Artikel_ID  INTEGER,
    Rechnungs_ID  INTEGER,
   constraint Artikel_ID
        foreign key (Artikel_ID) references Artikel,
   constraint Rechnungs_ID
        foreign key (Rechnungs_ID) references Artikel

);

