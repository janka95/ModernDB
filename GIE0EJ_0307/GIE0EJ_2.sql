CREATE TABLE GYARTO (
adoszam INT NOT NULL,
nev CHAR(30),
telephely CHAR(30),
irsz CHAR(4),
varos CHAR(40),
utca CHAR(100),
PRIMARY KEY (adoszam)
);

CREATE TABLE TERMEK (
tkod INT NOT NULL,
nev CHAR(50),
ear NUMBER CHECK(ear > 0),
gyarto INT,
PRIMARY KEY (tkod),
FOREIGN KEY (gyarto) REFERENCES GYARTO(nev)  
);

CREATE TABLE EGYSEGEK (
aru NUMBER,
db NUMBER CHECK(db > 0),
FOREIGN KEY (aru) REFERENCES TERMEK(tkod)  
);

CREATE TABLE ALKATRESZ (
akod NUMBER NOT NULL,
nev CHAR(50),
PRIMARY KEY (akod)
);

CREATE TABLE KOMPONENS (
termek NUMBER,
alkatresz NUMBER,
FOREIGN KEY (termek) REFERENCES TERMEK(nev),
FOREIGN KEY (alkatresz) REFERENCES ALKATRESZ(akod)
);



