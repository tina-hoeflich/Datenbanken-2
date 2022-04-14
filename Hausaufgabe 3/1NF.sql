-- Normalform 1
DROP TABLE IF EXISTS  Personal;
create table Personal
      (
          P_ID     integer,
          P_Name   integer,
          Abt      integer,
          Abt_Name integer,
          Pj_ID    integer,
          Pj_Name  integer,
          Pj_Std   integer
      );

INSERT INTO Personal (P_ID, P_Name, Abt, Abt_Name, Pj_ID, Pj_Name, Pj_Std) VALUES (101, 'Mueller', 1, 'Motoren', 11, 'A', 60);
INSERT INTO Personal (P_ID, P_Name, Abt, Abt_Name, Pj_ID, Pj_Name, Pj_Std) VALUES (101, 'Mueller', 1, 'Motoren', 12, 'B', 40);
INSERT INTO Personal (P_ID, P_Name, Abt, Abt_Name, Pj_ID, Pj_Name, Pj_Std) VALUES (102, 'Meier', 2, 'Karosserie', 13, 'C', 100);
INSERT INTO Personal (P_ID, P_Name, Abt, Abt_Name, Pj_ID, Pj_Name, Pj_Std) VALUES (103, 'Krause', 2, 'Karosserie', 11, 'A', 20);
INSERT INTO Personal (P_ID, P_Name, Abt, Abt_Name, Pj_ID, Pj_Name, Pj_Std) VALUES (103, 'Krause', 2, 'Karosserie', 12, 'B', 50);
INSERT INTO Personal (P_ID, P_Name, Abt, Abt_Name, Pj_ID, Pj_Name, Pj_Std) VALUES (103, 'Krause', 2, 'Karosserie', 13, 'C', 30);
INSERT INTO Personal (P_ID, P_Name, Abt, Abt_Name, Pj_ID, Pj_Name, Pj_Std) VALUES (104, 'Schmidt', 1, 'Motoren', 11, 'A', 80);
INSERT INTO Personal (P_ID, P_Name, Abt, Abt_Name, Pj_ID, Pj_Name, Pj_Std) VALUES (104, 'Schmidt', 1, 'Motoren', 13, 'C', 20);
