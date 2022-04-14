create table Buecher (BuechID INT NOT NULL, autor VARCHAR, verlag VARCHAR, titel VARCHAR, Sterne INT, PRIMARY KEY (BuechID));

        insert into Buecher values(1, "Vielschreiber", "Vatikan Verlag","Wir lernen SQL", 4 );
        insert into Buecher values(2, "Gutenberg","Gutenberg und Co",19, 3);
        insert into Buecher values(3, "Galileo Galilei", "Inquisition Internationa","Eppur si muove",5);
        insert into Buecher values(4, "Charles Darwin", "Vatikan Verlag","Adam und Eva", 4);


        create table Essen( GerichteID INT NOT NULL, autor VARCHAR, PreisInEuro INT, verlag VARCHAR,  KochzeitInMin INT, BuechID INT, PRIMARY KEY (GerichteID),  FOREIGN KEY (BuechID) REFERENCES Buecher(BuechID));


        insert into Essen values(1,"Burger", 20, "USA", 30,4);
        insert into Essen values(2,"Pizza", 15, "Gutenberg und Co", 25, 3);
        insert into Essen values(3,"WOK", 10, "Inquisition Internationa", 20, 3);
        insert into Essen values(4,"Spaghetti", 10, "Gutenberg und Co", 15, 2);
        insert into Essen values(5,"Thüringer Würste", 15, "Vatikan Verlag", 25, 1);
        insert into Essen values(6,"Kebab", 20, "USA", 30,4);
        insert into Essen values(7,"Tortellini", 15, "Gutenberg und Co", 25, 2);
        insert into Essen values(8,"Frühlingsrollen", 10, "Inquisition Internationa", 20, 3);
        insert into Essen values(9,"Fallafel", 10, "Gutenberg und Co", 15, 2);
        insert into Essen values(10,"Nackensteak", 15, "Vatikan Verlag", 25, 1);


        select *FROM Essen where verlag == "Gutenberg und Co" 

        ORDER by PreisInEuro; 

        Select Buecher.autor, Buecher.titel, Essen.autor FROM Buecher JOIN Essen on Buecher.BuechID = Essen.BuechID 
        Order by Buecher.titel; 


        Select SUM(KochzeitInMin) as Gesamtzeit, verlag FROM Essen
        Group by verlag Order by Gesamtzeit; 

        Select Buecher.autor, Count(Essen.GerichteID) as Anzahl FROM Buecher JOIN Essen on Buecher.BuechID = Essen.BuechID
        Group by Buecher.autor Order by Anzahl DESC;