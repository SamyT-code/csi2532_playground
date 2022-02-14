CREATE TABLE R(
  id-c varchar(9),
  id-p varchar(9),
  semestre varchar(12),
  FOREIGN KEY (id-c) REFERENCES COURS,
  FOREIGN KEY (id-p) REFERENCES PROFS,
  PRIMARY KEY (id-c, id-p)
);

CREATE TABLE PROFS(
  id-p varchar(9),
  PRIMARY KEY (id-p)
);

CREATE TABLE COURS(
  id-c varchar(9),
  PRIMARY KEY (id-c)
);
